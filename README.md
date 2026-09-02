# Shine Chinese — Android Foundation + Learning Core + Account/Progress Foundation

Shine Chinese is a React Native + Expo + TypeScript Burmese-first Chinese learning app for Myanmar learners. The current implementation includes the production navigation shell, published vocabulary/grammar/speaking content, session-based quizzes, Supabase email/password authentication, secure session persistence, authenticated profile states, and user-owned learning progress summaries.

## Implemented through Phase 9

- Expo SDK 57 React Native project with TypeScript.
- Expo Router root stack and persistent five-tab bottom navigation.
- Burmese-labeled Home, Vocabulary, Grammar, Speaking, and Practice tabs.
- Profile, vocabulary detail, grammar detail, speaking detail, quiz/listening/progress/favorites/settings foundation routes so core actions do not dead-end.
- Burmese-first UI copy with correctly rendered Chinese characters and tone-marked Pinyin.
- Reusable screen container, headers, buttons, audio control, favorite control, progress bar, cards, lesson cards, loading/empty/error states, and offline banner.
- Supabase client configured through `EXPO_PUBLIC_SUPABASE_URL` and `EXPO_PUBLIC_SUPABASE_ANON_KEY`.
- Vocabulary list queries only `status = 'published'`, supports HSK 1/2/3 filtering, and performs local search across Hanzi, Pinyin, Burmese, English, and category labels.
- Vocabulary detail fetches a single published word and its ordered vocabulary examples from Supabase.
- A typed `lib/vocabulary.ts` repository maps Phase 2 database columns and nested examples into view models.
- Grammar list queries only `status = 'published'`, supports HSK-range filtering, and performs local search across Hanzi, English, Burmese, meaning, and pattern fields.
- Grammar detail fetches one published lesson with its ordered grammar examples and renders meaning, pattern, usage, common mistakes, Chinese, Pinyin, Burmese, and optional English translations.
- A typed `lib/grammar.ts` repository maps Phase 2 grammar tables and nested examples into view models.
- Speaking list queries only `status = 'published'`, supports HSK filtering, and performs local search across lesson metadata and dialogue lines.
- Speaking detail fetches one published lesson with ordered dialogue lines and renders Chinese, tone-marked Pinyin, Burmese meaning, context, and practice guidance.
- A typed `lib/speaking.ts` repository maps Phase 2 `speaking_lessons` and `dialogue_lines` into view models.
- Practice now loads published quiz collections from Supabase rather than demo-only records.
- Quiz list supports published-only loading, HSK 1/2/3 filtering, local search, loading, empty, and error states.
- Quiz sessions support `multiple_choice`, `fill_blank`, `matching`, and `sentence_ordering` questions with large touch targets, progress, deterministic feedback, next-question flow, final score, and retry.
- A typed `lib/quiz.ts` repository maps quizzes, questions, options, accepted answers, and structured payloads from the Phase 2 schema.
- Supabase email/password sign-up, login, logout, auth loading state, and Burmese error messages are exposed through `contexts/auth.tsx`.
- Login and Register screens use the public anon key only and persist sessions through the existing SecureStore-backed Supabase client.
- Profile shows authenticated account information, logged-out Login/Register actions, and a secure logout action.
- Progress queries are scoped by the authenticated user and summarize vocabulary, grammar, and quiz activity from `learning_progress`.
- Vocabulary Detail, Grammar Detail, and completed Quiz sessions record authenticated learning progress where the approved schema supports it.
- Progress is queried only for the authenticated user and displays vocabulary, grammar, and quiz summaries with a clear new-user empty state.
- An idempotent `supabase/phase9-rls.sql` migration bootstraps `public.profiles` from `auth.users`, enables RLS, adds owner-only policies, adds progress uniqueness indexes, and exposes an owner-bound progress RPC.
- A reviewed local fallback dataset is used only when environment variables are not present.
- SecureStore-backed Supabase session persistence boundary.
- Android package identity `com.shinechinese.app` and deep-link scheme `shinechinese`.

## Project structure

```text
shine-chinese-mobile/
├── app/
│   ├── _layout.tsx                 # Root Safe Area and stack
│   ├── (tabs)/
│   │   ├── _layout.tsx             # Bottom tabs
│   │   ├── index.tsx               # Home
│   │   ├── vocab.tsx               # Vocabulary + Supabase query boundary
│   │   ├── grammar.tsx             # Grammar list
│   │   ├── speaking.tsx            # Speaking scenarios
│   │   └── practice.tsx            # Practice entry point
│   ├── profile.tsx
│   ├── login.tsx
│   ├── register.tsx
│   ├── vocab/[id].tsx
│   ├── grammar/[id].tsx
│   ├── speaking/[id].tsx
│   ├── vocab-filters.tsx
│   ├── listening.tsx
│   ├── quiz.tsx
│   ├── quiz/[id].tsx
│   ├── progress.tsx
│   ├── favorites.tsx
│   └── settings.tsx
├── components/
│   ├── foundation-screen.tsx       # Secondary route foundation state
│   ├── screen-container.tsx        # Safe-area scroll shell
│   └── ui.tsx                      # Shared visual primitives
├── constants/theme.ts              # Color, spacing, radius, shadow tokens
├── data/demo.ts                    # Small reviewed UI fallback dataset
├── data/types.ts                   # Shared content types
├── contexts/auth.tsx               # Supabase auth session provider
├── lib/supabase.ts                 # Supabase client and session storage
├── lib/progress.ts                 # User-owned progress queries/upserts
├── supabase/phase9-rls.sql         # Required owner-only RLS policies
├── assets/                         # Expo app icons and splash assets
├── app.json
├── package.json
└── .env.example
```

## Install and run

```bash
cd /home/ubuntu/shine-chinese-mobile
npm install
cp .env.example .env.local
# Edit .env.local with the Supabase project URL and public anon key.
npm start
```

Then choose one of the following:

```bash
npm run android   # Opens the Android target through Expo tooling
npm start         # Scan the QR code with Expo Go or use an Android emulator
```

For a physical Android device, install Expo Go, ensure the phone and development machine can reach the same network, and scan the QR code printed by `npm start`. For a production binary, configure an EAS project and run the normal Expo Android build pipeline after the application ID, signing, privacy, and release configuration are approved.

## Supabase configuration

Create a `.env.local` file from `.env.example`:

```bash
EXPO_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
EXPO_PUBLIC_SUPABASE_ANON_KEY=your-public-anon-key
```

Only the Supabase project URL and public anonymous key belong in the mobile client. Never place a service-role key, database password, or private signing secret in `.env.local` or any app bundle. Apply the Phase 2 migrations and RLS policies before enabling real production writes.

The current vocabulary query expects published rows with these fields:

```text
id, hanzi, pinyin_marked, part_of_speech, meaning_my, meaning_en, hsk_level_id, status
```

The screen currently uses a small local fallback when Supabase values are not configured. That fallback exists to keep the foundation navigable during development; it is not the production content source.

The current grammar query expects published `grammar_lessons` rows with:

```text
id, title_zh, title_en, title_my, short_label_my, meaning_my, pattern,
when_to_use_my, common_mistakes_my, hsk_min, hsk_max, status, sort_order
```

It also expects related `grammar_examples` rows with:

```text
grammar_lesson_id, sentence_zh, sentence_pinyin, translation_my,
translation_en, sort_order
```

The approved Phase 2 grammar schema has no `category_id` on `grammar_lessons`, so the Grammar screen uses HSK-range filtering and explicitly indicates that category filtering is not available yet.

The approved Phase 2 Speaking schema is sufficient for the implemented core. It provides `speaking_lessons` and `dialogue_lines`, including title, English title, Chinese title, Burmese description, scenario type, HSK level, Chinese sentence, Pinyin, Burmese translation, and ordering. It does not provide line-level English meaning, a dedicated usage explanation, or a database practice-prompt field. This phase therefore uses `description_my` and `scenario_type` for situation/context, shows `title_en` as the available English support, and presents the practice prompt as fixed Burmese UI guidance. No database migration was created.

The Quiz Core uses `quizzes`, `quiz_questions`, `quiz_options`, and `quiz_question_answers`. It filters parent quizzes by `status = 'published'`, loads questions in `sort_order`, uses options for multiple choice, normalized answer rows for fill-in-the-blank, and `payload_json` for matching and sentence ordering. Score is session-local: each question contributes its configured `points`, and the final percentage is `round((earnedPoints / maxPoints) * 100)`.

Phase 9 uses `auth.users` as the identity source and `public.profiles` for optional profile metadata. User-owned progress reads and writes use `public.learning_progress` with `user_id = auth.uid()` and the approved target columns (`vocabulary_id`, `grammar_lesson_id`, and `quiz_id`). The mobile client does not contain a service-role key.

Apply `supabase/phase9-rls.sql` after the Phase 2 tables exist. The migration creates an `auth.users` insert trigger that safely copies a trimmed `display_name` into `public.profiles`, enables RLS, allows authenticated users to select/update only their own profile preferences, allows only owner-scoped progress reads, and routes progress writes through `record_learning_progress()` using `auth.uid()`. Account deletion should use the approved server-side deletion workflow.

## Verification performed

- `npx tsc --noEmit` passes.
- `npx expo export --platform android` passes and creates an Android Hermes bundle.
- Supabase client is isolated in `lib/supabase.ts` and does not require credentials to bundle.
- Core tab routes and secondary foundation routes are defined through Expo Router.
- Auth session restoration uses SecureStore-backed Supabase persistence.
- Progress queries are always filtered by the authenticated user ID; database RLS must enforce the same boundary.

## Known warnings and unresolved items

The initial Expo install reports moderate transitive `npm audit` findings. They should be reviewed with the eventual lockfile/update policy before a production release; no `npm audit fix --force` was applied because it can introduce breaking changes.

Supabase credentials have not been supplied in this environment, so the Vocabulary screen is currently in local fallback mode. Production content queries will become active after `.env.local` is configured and the Phase 2 schema is migrated.

For this phase, local scoring requires the quiz payload to include answer keys in the client session. The Phase 2 specification correctly recommends omitting `quiz_options.is_correct` from learner reads; before a public production release with real question security, replace the direct answer-key query with a server-side scoring RPC or Edge Function that returns only feedback after submission. No database migration was silently added here.

The approved Phase 2 schema is sufficient for the implemented account and progress foundation. The project owner must apply `supabase/phase9-rls.sql` in Supabase. After it is applied, `public.profiles` bootstrap is automatic on new Auth sign-up. The app does not create profile rows or mutate role/status fields from the client.

The following are intentionally deferred to the next feature phase: social login, password reset UI, complete HSK 1–3 data ingestion, server-side quiz scoring, quiz attempt persistence, leaderboard, audio questions, speech-to-text, pronunciation evaluation, admin panel, account deletion workflow, and EAS release signing.
