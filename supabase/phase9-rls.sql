-- Shine Chinese Phase 9: account, profile bootstrap, progress, and RLS
-- Apply only after the approved Phase 2 tables exist.
-- This migration contains no passwords, service-role keys, or private secrets.

-- 1) Automatically create one safe public profile after Supabase Auth signup.
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (
    id,
    display_name,
    native_language,
    daily_goal_minutes,
    timezone,
    status
  ) values (
    new.id,
    nullif(left(trim(coalesce(new.raw_user_meta_data ->> 'display_name', '')), 80), ''),
    'my',
    15,
    'Asia/Yangon',
    'active'
  )
  on conflict (id) do nothing;
  return new;
end;
$$;

revoke all on function public.handle_new_user() from public;
grant execute on function public.handle_new_user() to postgres;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
after insert on auth.users
for each row execute procedure public.handle_new_user();

-- 2) RLS owner boundaries.
alter table public.profiles enable row level security;
alter table public.learning_progress enable row level security;

drop policy if exists "profiles_select_own" on public.profiles;
create policy "profiles_select_own"
on public.profiles for select
to authenticated
using (id = (select auth.uid()));

drop policy if exists "profiles_update_own_preferences" on public.profiles;
create policy "profiles_update_own_preferences"
on public.profiles for update
to authenticated
using (id = (select auth.uid()))
with check (id = (select auth.uid()));

drop policy if exists "learning_progress_select_own" on public.learning_progress;
create policy "learning_progress_select_own"
on public.learning_progress for select
to authenticated
using (user_id = (select auth.uid()));

-- Keep policies for defense in depth, but revoke direct writes below so client
-- writes go through the validated owner-bound function.
drop policy if exists "learning_progress_insert_own" on public.learning_progress;
create policy "learning_progress_insert_own"
on public.learning_progress for insert
to authenticated
with check (user_id = (select auth.uid()));

drop policy if exists "learning_progress_update_own" on public.learning_progress;
create policy "learning_progress_update_own"
on public.learning_progress for update
to authenticated
using (user_id = (select auth.uid()))
with check (user_id = (select auth.uid()));

-- 3) Restrict profile updates to allow-listed preference columns. The profile
-- trigger remains the only normal profile insert path.
revoke insert, update on public.profiles from authenticated;
grant update (display_name, avatar_path, native_language, target_hsk_level_id,
              daily_goal_minutes, timezone, onboarding_completed_at)
on public.profiles to authenticated;

-- 4) One aggregate progress row per user/content target. Partial indexes avoid
-- nullable-column uniqueness issues in the approved polymorphic schema.
create unique index if not exists learning_progress_user_vocabulary_uidx
  on public.learning_progress (user_id, vocabulary_id)
  where content_type = 'vocabulary' and vocabulary_id is not null;
create unique index if not exists learning_progress_user_grammar_uidx
  on public.learning_progress (user_id, grammar_lesson_id)
  where content_type = 'grammar' and grammar_lesson_id is not null;
create unique index if not exists learning_progress_user_quiz_uidx
  on public.learning_progress (user_id, quiz_id)
  where content_type = 'quiz' and quiz_id is not null;

-- 5) Validated owner-bound progress writer. It uses auth.uid(), never a user
-- supplied owner ID, and is idempotent for repeated opens/completions.
create or replace function public.record_learning_progress(
  p_content_type text,
  p_target_id uuid,
  p_score_percent numeric default null
)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  v_user_id uuid := auth.uid();
  v_id uuid;
  v_now timestamptz := now();
begin
  if v_user_id is null then raise exception 'not authenticated' using errcode = '28000'; end if;
  if p_content_type not in ('vocabulary', 'grammar', 'quiz') then raise exception 'unsupported content type'; end if;
  if p_score_percent is not null and (p_score_percent < 0 or p_score_percent > 100) then raise exception 'invalid score'; end if;

  if p_content_type = 'vocabulary' then
    if not exists (select 1 from public.vocabulary where id = p_target_id and status = 'published') then raise exception 'content not published'; end if;
    insert into public.learning_progress (user_id, content_type, vocabulary_id, status, first_seen_at, last_seen_at, view_count, practice_count, metadata)
    values (v_user_id, 'vocabulary', p_target_id, 'started', v_now, v_now, 0, 0, '{}'::jsonb)
    on conflict do nothing;
    select id into v_id from public.learning_progress where user_id = v_user_id and content_type = 'vocabulary' and vocabulary_id = p_target_id;
    update public.learning_progress set last_seen_at = v_now, view_count = view_count + 1, updated_at = v_now where id = v_id and user_id = v_user_id;
  elsif p_content_type = 'grammar' then
    if not exists (select 1 from public.grammar_lessons where id = p_target_id and status = 'published') then raise exception 'content not published'; end if;
    insert into public.learning_progress (user_id, content_type, grammar_lesson_id, status, first_seen_at, last_seen_at, view_count, practice_count, metadata)
    values (v_user_id, 'grammar', p_target_id, 'started', v_now, v_now, 0, 0, '{}'::jsonb)
    on conflict do nothing;
    select id into v_id from public.learning_progress where user_id = v_user_id and content_type = 'grammar' and grammar_lesson_id = p_target_id;
    update public.learning_progress set last_seen_at = v_now, view_count = view_count + 1, updated_at = v_now where id = v_id and user_id = v_user_id;
  else
    if not exists (select 1 from public.quizzes where id = p_target_id and status = 'published') then raise exception 'content not published'; end if;
    insert into public.learning_progress (user_id, content_type, quiz_id, status, first_seen_at, last_seen_at, completed_at, view_count, practice_count, score_percent, metadata)
    values (v_user_id, 'quiz', p_target_id, 'completed', v_now, v_now, v_now, 0, 0, p_score_percent, '{}'::jsonb)
    on conflict do nothing;
    select id into v_id from public.learning_progress where user_id = v_user_id and content_type = 'quiz' and quiz_id = p_target_id;
    update public.learning_progress set status = 'completed', last_seen_at = v_now, completed_at = v_now, practice_count = practice_count + 1, score_percent = coalesce(p_score_percent, score_percent), updated_at = v_now where id = v_id and user_id = v_user_id;
  end if;
end;
$$;

revoke all on function public.record_learning_progress(text, uuid, numeric) from public;
grant execute on function public.record_learning_progress(text, uuid, numeric) to authenticated;
revoke insert, update, delete on public.learning_progress from authenticated;

-- There is intentionally no direct delete policy. Account deletion should use
-- the approved server-side deletion workflow and auth.users cascade.
