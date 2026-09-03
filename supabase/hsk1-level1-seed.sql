-- Shine Chinese HSK 2.0 Level 1 seed (150 words)
-- Safe to run after the Phase 2 tables exist. Does not drop or recreate tables.
-- The actor is selected from public.profiles; run as an authenticated editorial/admin user.

BEGIN;

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a1c65775-48f1-cea3-d7ad-8ec129b39946', 1, NULL, '爱', 'ai4', 'ài', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'ချစ်သည်၊ နှစ်သက်သည်', 'to love; to like', 'ချစ်သည်၊ နှစ်သက်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '爱' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '99e0caf2-8a63-e5d5-5f1f-39c51b19e39a', 'a1c65775-48f1-cea3-d7ad-8ec129b39946', '我爱我的妈妈。', 'Wǒ ài wǒ de māma.', 'ကျွန်တော်/ကျွန်မ အမေကို ချစ်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a1c65775-48f1-cea3-d7ad-8ec129b39946')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a1c65775-48f1-cea3-d7ad-8ec129b39946' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a099fe76-5e5c-1f38-ba00-75a80deb28b5', 1, NULL, '八', 'ba1', 'bā', ARRAY[1]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'ရှစ်', 'eight', 'ရှစ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '八' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'b2337e98-cb94-e657-8fcc-cfc98dfcc3e6', 'a099fe76-5e5c-1f38-ba00-75a80deb28b5', '我有八本书。', 'Wǒ yǒu bā běn shū.', 'ကျွန်တော်/ကျွန်မမှာ စာအုပ်ရှစ်အုပ်ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a099fe76-5e5c-1f38-ba00-75a80deb28b5')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a099fe76-5e5c-1f38-ba00-75a80deb28b5' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'ae4cba1b-a9c0-7c28-acc9-03142dbb994f', 1, NULL, '爸爸', 'baba4', 'bàba', ARRAY[4]::smallint[], 'နာမ် · Noun', 'အဖေ', 'father', 'အဖေ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '爸爸' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '65aec133-6088-6f8b-1124-9ae4ff954c69', 'ae4cba1b-a9c0-7c28-acc9-03142dbb994f', '我爸爸是老师。', 'Wǒ bàba shì lǎoshī.', 'ကျွန်တော်/ကျွန်မ အဖေက ဆရာပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'ae4cba1b-a9c0-7c28-acc9-03142dbb994f')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'ae4cba1b-a9c0-7c28-acc9-03142dbb994f' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '02452d43-9dc5-5aec-daf4-8bb63a10d729', 1, NULL, '杯子', 'beizi1', 'bēizi', ARRAY[1]::smallint[], 'နာမ် · Noun', 'ခွက်', 'cup; glass', 'ခွက်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '杯子' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '565ebe2e-50ee-28d5-ed2a-5b550ad6e181', '02452d43-9dc5-5aec-daf4-8bb63a10d729', '这个杯子很漂亮。', 'Zhège bēizi hěn piàoliang.', 'ဒီခွက်က အရမ်းလှတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '02452d43-9dc5-5aec-daf4-8bb63a10d729')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '02452d43-9dc5-5aec-daf4-8bb63a10d729' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '7355df67-f07a-9316-4b66-58906ffd2951', 1, NULL, '北京', 'Beijing3', 'Běijīng', ARRAY[3]::smallint[], 'နာမ် · Noun', 'ပေကျင်းမြို့', 'Beijing', 'ပေကျင်းမြို့', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '北京' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '6883fba2-18c9-df33-2365-23ed33df352c', '7355df67-f07a-9316-4b66-58906ffd2951', '北京是中国的首都。', 'Běijīng shì Zhōngguó de shǒudū.', 'ပေကျင်းက တရုတ်နိုင်ငံရဲ့ မြို့တော်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '7355df67-f07a-9316-4b66-58906ffd2951')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '7355df67-f07a-9316-4b66-58906ffd2951' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a79c4976-3c05-946f-af53-04692f8ec4bb', 1, NULL, '本', 'ben3', 'běn', ARRAY[3]::smallint[], 'အရေအတွက်ပြစကား · Quantifier', 'စာအုပ်များအတွက် ရေတွက်စကား', 'classifier for books', 'စာအုပ်များအတွက် ရေတွက်စကား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '本' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '9b9c598b-9da9-38bf-51fd-42ca300c167e', 'a79c4976-3c05-946f-af53-04692f8ec4bb', '我有一本汉语书。', 'Wǒ yǒu yì běn Hànyǔ shū.', 'ကျွန်တော်/ကျွန်မမှာ တရုတ်စာအုပ်တစ်အုပ်ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a79c4976-3c05-946f-af53-04692f8ec4bb')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a79c4976-3c05-946f-af53-04692f8ec4bb' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'ead21c88-2992-3253-7997-c738c820d375', 1, NULL, '不客气', 'bu2 keqi4', 'bú kèqi', ARRAY[2,4]::smallint[], 'အမူအရာစကား · Expression', 'ရပါတယ်၊ အားမနာပါနဲ့', 'you''re welcome', 'ရပါတယ်၊ အားမနာပါနဲ့', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '不客气' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'd08f4a33-d47b-19ed-b3b5-d2803be0aab1', 'ead21c88-2992-3253-7997-c738c820d375', '谢谢你！—不客气。', 'Xièxie nǐ! — Bú kèqi.', 'ကျေးဇူးတင်ပါတယ်။ — ရပါတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'ead21c88-2992-3253-7997-c738c820d375')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'ead21c88-2992-3253-7997-c738c820d375' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '77d1b111-a195-c29a-e5a3-9aa9b8de2f89', 1, NULL, '不', 'bu4', 'bù', ARRAY[4]::smallint[], 'ကြိယာဝိသေသန · Adverb', 'မ…ဘူး၊ မဟုတ်', 'not; no', 'မ…ဘူး၊ မဟုတ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '不' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '6fd19084-b447-7f01-52f2-bc1396f010ac', '77d1b111-a195-c29a-e5a3-9aa9b8de2f89', '我不喝茶。', 'Wǒ bù hē chá.', 'ကျွန်တော်/ကျွန်မ လက်ဖက်ရည်မသောက်ဘူး။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '77d1b111-a195-c29a-e5a3-9aa9b8de2f89')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '77d1b111-a195-c29a-e5a3-9aa9b8de2f89' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '34a6ab6e-339e-7490-e562-e8e0f2f0cafa', 1, NULL, '菜', 'cai4', 'cài', ARRAY[4]::smallint[], 'နာမ် · Noun', 'ဟင်း၊ ဟင်းသီးဟင်းရွက်', 'dish; vegetable', 'ဟင်း၊ ဟင်းသီးဟင်းရွက်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '菜' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '95461d94-d61b-421d-88da-a8fbda74ee3f', '34a6ab6e-339e-7490-e562-e8e0f2f0cafa', '这个菜很好吃。', 'Zhège cài hěn hǎochī.', 'ဒီဟင်းက အရမ်းစားကောင်းတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '34a6ab6e-339e-7490-e562-e8e0f2f0cafa')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '34a6ab6e-339e-7490-e562-e8e0f2f0cafa' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '91685565-cb1d-a5e1-ffa6-30c431c5bbc5', 1, NULL, '茶', 'cha2', 'chá', ARRAY[2]::smallint[], 'နာမ် · Noun', 'လက်ဖက်ရည်', 'tea', 'လက်ဖက်ရည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '茶' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '59e728da-d086-6de4-70ea-23e3e3f57233', '91685565-cb1d-a5e1-ffa6-30c431c5bbc5', '我喜欢喝茶。', 'Wǒ xǐhuan hē chá.', 'ကျွန်တော်/ကျွန်မ လက်ဖက်ရည်သောက်ရတာ ကြိုက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '91685565-cb1d-a5e1-ffa6-30c431c5bbc5')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '91685565-cb1d-a5e1-ffa6-30c431c5bbc5' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '9ee867e3-cbe3-7d74-2ddf-aa118eab3d4e', 1, NULL, '吃', 'chi1', 'chī', ARRAY[1]::smallint[], 'ကြိယာ · Verb', 'စားသည်', 'to eat', 'စားသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '吃' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '0121981f-dbc5-4ec7-792d-0a502d2d7430', '9ee867e3-cbe3-7d74-2ddf-aa118eab3d4e', '我们在饭店吃饭。', 'Wǒmen zài fàndiàn chī fàn.', 'ကျွန်တော်တို့ စားသောက်ဆိုင်မှာ ထမင်းစားတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '9ee867e3-cbe3-7d74-2ddf-aa118eab3d4e')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '9ee867e3-cbe3-7d74-2ddf-aa118eab3d4e' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '08009629-b168-a8d6-5240-a9452f1142ad', 1, NULL, '出租车', 'chuzuche1', 'chūzūchē', ARRAY[1]::smallint[], 'နာမ် · Noun', 'တက္ကစီ', 'taxi', 'တက္ကစီ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '出租车' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'e7c55d17-cd79-9367-95e1-272b7f814d28', '08009629-b168-a8d6-5240-a9452f1142ad', '我坐出租车去学校。', 'Wǒ zuò chūzūchē qù xuéxiào.', 'ကျွန်တော်/ကျွန်မ တက္ကစီစီးပြီး ကျောင်းသွားတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '08009629-b168-a8d6-5240-a9452f1142ad')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '08009629-b168-a8d6-5240-a9452f1142ad' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'e460b40b-84e7-7d1b-0b20-ac2e3d431194', 1, NULL, '打电话', 'da3 dianhua4', 'dǎ diànhuà', ARRAY[3,4]::smallint[], 'ကြိယာ · Verb', 'ဖုန်းဆက်သည်', 'to make a phone call', 'ဖုန်းဆက်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '打电话' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '0d86d203-f782-531a-12b6-d765455bc3ee', 'e460b40b-84e7-7d1b-0b20-ac2e3d431194', '我晚上给妈妈打电话。', 'Wǒ wǎnshang gěi māma dǎ diànhuà.', 'ကျွန်တော်/ကျွန်မ ညမှာ အမေ့ကို ဖုန်းဆက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'e460b40b-84e7-7d1b-0b20-ac2e3d431194')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'e460b40b-84e7-7d1b-0b20-ac2e3d431194' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'eb6269be-7846-3c66-56d4-7030d7ea322e', 1, NULL, '大', 'da4', 'dà', ARRAY[4]::smallint[], 'နာမဝိသေသန · Adjective', 'ကြီးသော', 'big; large', 'ကြီးသော', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '大' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '6dde50eb-b6c3-68cf-9677-0ed83b7b74a7', 'eb6269be-7846-3c66-56d4-7030d7ea322e', '这个学校很大。', 'Zhège xuéxiào hěn dà.', 'ဒီကျောင်းက အရမ်းကြီးတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'eb6269be-7846-3c66-56d4-7030d7ea322e')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'eb6269be-7846-3c66-56d4-7030d7ea322e' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '87a27240-c364-0640-bf19-8a4a296e5d45', 1, NULL, '的', 'de5', 'de', ARRAY[5]::smallint[], 'အကူစကား · Auxiliary', 'ပိုင်ဆိုင်မှု/ဖော်ပြချက်ပြ စကားလုံး', 'possessive or attributive particle', 'ပိုင်ဆိုင်မှု/ဖော်ပြချက်ပြ စကားလုံး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '的' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '26a9ec9c-bcc1-d4df-91bc-64238e2c701b', '87a27240-c364-0640-bf19-8a4a296e5d45', '这是我的书。', 'Zhè shì wǒ de shū.', 'ဒါက ကျွန်တော်/ကျွန်မရဲ့ စာအုပ်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '87a27240-c364-0640-bf19-8a4a296e5d45')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '87a27240-c364-0640-bf19-8a4a296e5d45' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '29ba611c-3ad7-9447-dcb7-279ec54360e6', 1, NULL, '点', 'dian3', 'diǎn', ARRAY[3]::smallint[], 'နာမ် · Noun', 'နာရီ၊ အချိန်မှတ်', 'o''clock; point', 'နာရီ၊ အချိန်မှတ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '点' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '11a1912f-5cc8-a9fb-7011-1ba3a673be10', '29ba611c-3ad7-9447-dcb7-279ec54360e6', '现在三点。', 'Xiànzài sān diǎn.', 'အခု သုံးနာရီရှိပြီ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '29ba611c-3ad7-9447-dcb7-279ec54360e6')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '29ba611c-3ad7-9447-dcb7-279ec54360e6' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '5c6618a9-b44f-79be-abe9-8de545b4fce4', 1, NULL, '电脑', 'diannao4', 'diànnǎo', ARRAY[4]::smallint[], 'နာမ် · Noun', 'ကွန်ပျူတာ', 'computer', 'ကွန်ပျူတာ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '电脑' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '8efbab5a-a969-c8b2-6418-91bfbad0076d', '5c6618a9-b44f-79be-abe9-8de545b4fce4', '我的电脑在桌子上。', 'Wǒ de diànnǎo zài zhuōzi shàng.', 'ကျွန်တော်/ကျွန်မရဲ့ ကွန်ပျူတာက စားပွဲပေါ်မှာ ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '5c6618a9-b44f-79be-abe9-8de545b4fce4')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '5c6618a9-b44f-79be-abe9-8de545b4fce4' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'b336fc13-2f46-b212-4d33-86fcdea7949a', 1, NULL, '电视', 'dianshi4', 'diànshì', ARRAY[4]::smallint[], 'နာမ် · Noun', 'ရုပ်မြင်သံကြား', 'television; TV', 'ရုပ်မြင်သံကြား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '电视' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '8c96a172-89f8-eb14-0164-0c90399f9dbe', 'b336fc13-2f46-b212-4d33-86fcdea7949a', '爸爸在看电视。', 'Bàba zài kàn diànshì.', 'အဖေ ရုပ်မြင်သံကြားကြည့်နေတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'b336fc13-2f46-b212-4d33-86fcdea7949a')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'b336fc13-2f46-b212-4d33-86fcdea7949a' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '6b601ad0-43e9-3857-7a76-224de3417e69', 1, NULL, '电影', 'dianying4', 'diànyǐng', ARRAY[4]::smallint[], 'နာမ် · Noun', 'ရုပ်ရှင်', 'movie; film', 'ရုပ်ရှင်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '电影' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '1ff7c27b-bd0f-de79-19d8-80d255cb1802', '6b601ad0-43e9-3857-7a76-224de3417e69', '我们晚上看电影。', 'Wǒmen wǎnshang kàn diànyǐng.', 'ကျွန်တော်တို့ ညမှာ ရုပ်ရှင်ကြည့်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '6b601ad0-43e9-3857-7a76-224de3417e69')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '6b601ad0-43e9-3857-7a76-224de3417e69' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '2e6cdeaa-90c8-cceb-1c46-3926905e86b9', 1, NULL, '东西', 'dongxi1', 'dōngxi', ARRAY[1]::smallint[], 'နာမ် · Noun', 'ပစ္စည်း၊ အရာ', 'thing; stuff', 'ပစ္စည်း၊ အရာ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '东西' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'd611f131-e6f3-5a0b-cb03-42701503e8c8', '2e6cdeaa-90c8-cceb-1c46-3926905e86b9', '桌子上有很多东西。', 'Zhuōzi shàng yǒu hěn duō dōngxi.', 'စားပွဲပေါ်မှာ ပစ္စည်းအများကြီးရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '2e6cdeaa-90c8-cceb-1c46-3926905e86b9')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '2e6cdeaa-90c8-cceb-1c46-3926905e86b9' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '3e145f16-0935-1ee2-0dbc-f70bcc7499bb', 1, NULL, '都', 'dou1', 'dōu', ARRAY[1]::smallint[], 'ကြိယာဝိသေသန · Adverb', 'အားလုံး၊ နှစ်ခုလုံး', 'all; both', 'အားလုံး၊ နှစ်ခုလုံး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '都' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'c8b2bdc4-fd95-c531-e951-b10258347095', '3e145f16-0935-1ee2-0dbc-f70bcc7499bb', '我们都是学生。', 'Wǒmen dōu shì xuésheng.', 'ကျွန်တော်တို့အားလုံး ကျောင်းသားတွေပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '3e145f16-0935-1ee2-0dbc-f70bcc7499bb')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '3e145f16-0935-1ee2-0dbc-f70bcc7499bb' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '1280d7f5-8de4-e5ec-5679-96f41ab478ac', 1, NULL, '读', 'du2', 'dú', ARRAY[2]::smallint[], 'ကြိယာ · Verb', 'ဖတ်သည်', 'to read', 'ဖတ်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '读' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'a486f56e-65cd-3a0e-414c-5b8ae1abeae2', '1280d7f5-8de4-e5ec-5679-96f41ab478ac', '我每天读汉语书。', 'Wǒ měitiān dú Hànyǔ shū.', 'ကျွန်တော်/ကျွန်မ နေ့တိုင်း တရုတ်စာအုပ်ဖတ်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '1280d7f5-8de4-e5ec-5679-96f41ab478ac')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '1280d7f5-8de4-e5ec-5679-96f41ab478ac' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '51d23134-db6b-7c81-084c-ae176de6d5a3', 1, NULL, '对不起', 'duibuqi4', 'duìbuqǐ', ARRAY[4]::smallint[], 'အမူအရာစကား · Expression', 'တောင်းပန်ပါတယ်', 'I''m sorry; excuse me', 'တောင်းပန်ပါတယ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '对不起' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'ec0f7f9e-c7ef-52d7-d960-99a20a304765', '51d23134-db6b-7c81-084c-ae176de6d5a3', '对不起，我来晚了。', 'Duìbuqǐ, wǒ lái wǎn le.', 'တောင်းပန်ပါတယ်၊ ကျွန်တော်/ကျွန်မ နောက်ကျပြီးလာတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '51d23134-db6b-7c81-084c-ae176de6d5a3')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '51d23134-db6b-7c81-084c-ae176de6d5a3' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'bb2a5f25-7b80-52a4-4516-e70917b629ef', 1, NULL, '多', 'duo1', 'duō', ARRAY[1]::smallint[], 'နာမဝိသေသန · Adjective', 'များသော', 'many; much', 'များသော', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '多' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '5d06ba27-46fc-d4b8-b158-85cb1ab4e90b', 'bb2a5f25-7b80-52a4-4516-e70917b629ef', '这里有很多人。', 'Zhèlǐ yǒu hěn duō rén.', 'ဒီမှာ လူအများကြီးရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'bb2a5f25-7b80-52a4-4516-e70917b629ef')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'bb2a5f25-7b80-52a4-4516-e70917b629ef' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'e0bca47e-3e42-8360-a0ce-c9bd78cdb6ca', 1, NULL, '多少', 'duoshao1', 'duōshao', ARRAY[1]::smallint[], 'မေးခွန်းစကား · Interrogative', 'ဘယ်လောက်၊ ဘယ်နှစ်', 'how much; how many', 'ဘယ်လောက်၊ ဘယ်နှစ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '多少' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '759c02f0-e8f0-3389-fb9c-26a14d1d9ffd', 'e0bca47e-3e42-8360-a0ce-c9bd78cdb6ca', '这本书多少钱？', 'Zhè běn shū duōshao qián?', 'ဒီစာအုပ် ဘယ်လောက်ကျသလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'e0bca47e-3e42-8360-a0ce-c9bd78cdb6ca')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'e0bca47e-3e42-8360-a0ce-c9bd78cdb6ca' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '51f286c6-874e-95ca-4446-5ca6b24d1453', 1, NULL, '儿子', 'erzi2', 'érzi', ARRAY[2]::smallint[], 'နာမ် · Noun', 'သား', 'son', 'သား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '儿子' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '04c334cc-dc3d-7683-667d-1eafac730311', '51f286c6-874e-95ca-4446-5ca6b24d1453', '她有一个儿子。', 'Tā yǒu yí ge érzi.', 'သူမမှာ သားတစ်ယောက်ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '51f286c6-874e-95ca-4446-5ca6b24d1453')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '51f286c6-874e-95ca-4446-5ca6b24d1453' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '4f760072-66d2-d05c-70f3-a81ab2381b01', 1, NULL, '二', 'er4', 'èr', ARRAY[4]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'နှစ်', 'two', 'နှစ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '二' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '471ec20c-6cde-cd70-70f5-852bd9a007a3', '4f760072-66d2-d05c-70f3-a81ab2381b01', '我家有二个人。', 'Wǒ jiā yǒu liǎng ge rén.', 'ကျွန်တော်/ကျွန်မအိမ်မှာ လူနှစ်ယောက်ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '4f760072-66d2-d05c-70f3-a81ab2381b01')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '4f760072-66d2-d05c-70f3-a81ab2381b01' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '05f024a8-96e5-23e1-377b-ecd82c7e9a8e', 1, NULL, '饭店', 'fandian4', 'fàndiàn', ARRAY[4]::smallint[], 'နာမ် · Noun', 'စားသောက်ဆိုင်', 'restaurant', 'စားသောက်ဆိုင်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '饭店' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'cc33f879-fda7-c374-8393-c07c0ccaac71', '05f024a8-96e5-23e1-377b-ecd82c7e9a8e', '这家饭店很好。', 'Zhè jiā fàndiàn hěn hǎo.', 'ဒီစားသောက်ဆိုင်က အရမ်းကောင်းတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '05f024a8-96e5-23e1-377b-ecd82c7e9a8e')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '05f024a8-96e5-23e1-377b-ecd82c7e9a8e' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '03b88ae9-224c-a5b4-c083-c0447063c7be', 1, NULL, '飞机', 'feiji1', 'fēijī', ARRAY[1]::smallint[], 'နာမ် · Noun', 'လေယာဉ်', 'airplane', 'လေယာဉ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '飞机' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '007c05cf-bea6-953e-e226-51784b509fd1', '03b88ae9-224c-a5b4-c083-c0447063c7be', '我坐飞机去北京。', 'Wǒ zuò fēijī qù Běijīng.', 'ကျွန်တော်/ကျွန်မ လေယာဉ်စီးပြီး ပေကျင်းသွားတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '03b88ae9-224c-a5b4-c083-c0447063c7be')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '03b88ae9-224c-a5b4-c083-c0447063c7be' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'cce42c84-d1ff-5250-efee-b731c92251a8', 1, NULL, '分钟', 'fenzhong1', 'fēnzhōng', ARRAY[1]::smallint[], 'နာမ် · Noun', 'မိနစ်', 'minute', 'မိနစ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '分钟' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '9499b686-5d2f-1d07-8c6d-f2a5c19dbe14', 'cce42c84-d1ff-5250-efee-b731c92251a8', '我等你十分钟。', 'Wǒ děng nǐ shí fēnzhōng.', 'ကျွန်တော်/ကျွန်မ မင်းကို ဆယ်မိနစ်စောင့်မယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'cce42c84-d1ff-5250-efee-b731c92251a8')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'cce42c84-d1ff-5250-efee-b731c92251a8' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'b270f13b-b63b-77a0-a535-88033648c176', 1, NULL, '高兴', 'gaoxing1', 'gāoxìng', ARRAY[1]::smallint[], 'နာမဝိသေသန · Adjective', 'ပျော်ရွှင်သော', 'happy; glad', 'ပျော်ရွှင်သော', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '高兴' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '1dae23f9-42d0-f033-8c39-0c9a9379ccd5', 'b270f13b-b63b-77a0-a535-88033648c176', '认识你我很高兴。', 'Rènshi nǐ wǒ hěn gāoxìng.', 'မင်းနဲ့ သိကျွမ်းရတာ ကျွန်တော်/ကျွန်မ အရမ်းဝမ်းသာတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'b270f13b-b63b-77a0-a535-88033648c176')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'b270f13b-b63b-77a0-a535-88033648c176' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'ba4e2943-80be-80dc-7fb8-7b0bb201bd05', 1, NULL, '个', 'ge4', 'gè', ARRAY[4]::smallint[], 'အရေအတွက်ပြစကား · Quantifier', 'လူနှင့် အရာများအတွက် ရေတွက်စကား', 'general classifier', 'လူနှင့် အရာများအတွက် ရေတွက်စကား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '个' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '170b4e27-63b9-77ad-fe42-f0bd5fd9fe9c', 'ba4e2943-80be-80dc-7fb8-7b0bb201bd05', '我有三个朋友。', 'Wǒ yǒu sān ge péngyou.', 'ကျွန်တော်/ကျွန်မမှာ သူငယ်ချင်းသုံးယောက်ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'ba4e2943-80be-80dc-7fb8-7b0bb201bd05')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'ba4e2943-80be-80dc-7fb8-7b0bb201bd05' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'c6b5ca74-028f-41a3-f522-d4022836861c', 1, NULL, '工作', 'gongzuo1', 'gōngzuò', ARRAY[1]::smallint[], 'နာမ် · Noun', 'အလုပ်', 'work; job', 'အလုပ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '工作' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'dbeddfc5-34a0-de0a-f4df-0308ef04cb31', 'c6b5ca74-028f-41a3-f522-d4022836861c', '爸爸在医院工作。', 'Bàba zài yīyuàn gōngzuò.', 'အဖေ ဆေးရုံမှာ အလုပ်လုပ်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'c6b5ca74-028f-41a3-f522-d4022836861c')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'c6b5ca74-028f-41a3-f522-d4022836861c' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '76680628-6ebf-4910-e25a-1dde2b36902f', 1, NULL, '狗', 'gou3', 'gǒu', ARRAY[3]::smallint[], 'နာမ် · Noun', 'ခွေး', 'dog', 'ခွေး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '狗' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'a14d9136-08f6-04a4-1c51-68802128d384', '76680628-6ebf-4910-e25a-1dde2b36902f', '我喜欢这只狗。', 'Wǒ xǐhuan zhè zhī gǒu.', 'ကျွန်တော်/ကျွန်မ ဒီခွေးကို ကြိုက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '76680628-6ebf-4910-e25a-1dde2b36902f')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '76680628-6ebf-4910-e25a-1dde2b36902f' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '4ab3a1d7-09a1-6038-4293-b86619f94c15', 1, NULL, '汉语', 'Hanyu4', 'Hànyǔ', ARRAY[4]::smallint[], 'နာမ် · Noun', 'တရုတ်ဘာသာစကား', 'Chinese language', 'တရုတ်ဘာသာစကား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '汉语' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '7f68bf1a-ee3c-72ee-794a-6915cddc1f7a', '4ab3a1d7-09a1-6038-4293-b86619f94c15', '我会说汉语。', 'Wǒ huì shuō Hànyǔ.', 'ကျွန်တော်/ကျွန်မ တရုတ်စကားပြောတတ်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '4ab3a1d7-09a1-6038-4293-b86619f94c15')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '4ab3a1d7-09a1-6038-4293-b86619f94c15' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'e27a398f-db73-55df-3e30-5260ffebfe30', 1, NULL, '好', 'hao3', 'hǎo', ARRAY[3]::smallint[], 'နာမဝိသေသန · Adjective', 'ကောင်းသော', 'good; well', 'ကောင်းသော', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '好' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '27c77dd2-e5f3-0a93-5385-a6f9883118b3', 'e27a398f-db73-55df-3e30-5260ffebfe30', '今天天气很好。', 'Jīntiān tiānqì hěn hǎo.', 'ဒီနေ့ ရာသီဥတု အရမ်းကောင်းတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'e27a398f-db73-55df-3e30-5260ffebfe30')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'e27a398f-db73-55df-3e30-5260ffebfe30' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'b3ed03af-5967-63ae-be06-51b8d3d8c7ff', 1, NULL, '号', 'hao4', 'hào', ARRAY[4]::smallint[], 'နာမ် · Noun', 'ရက်စွဲနံပါတ်', 'date number; number', 'ရက်စွဲနံပါတ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '号' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'eca780bd-c282-7c30-84bc-119cac88df02', 'b3ed03af-5967-63ae-be06-51b8d3d8c7ff', '今天是几号？', 'Jīntiān shì jǐ hào?', 'ဒီနေ့ ရက်ဘယ်နှရက်လဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'b3ed03af-5967-63ae-be06-51b8d3d8c7ff')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'b3ed03af-5967-63ae-be06-51b8d3d8c7ff' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '00f17c29-b0d4-5667-82bc-5f2a63eae22f', 1, NULL, '喝', 'he1', 'hē', ARRAY[1]::smallint[], 'ကြိယာ · Verb', 'သောက်သည်', 'to drink', 'သောက်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '喝' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '39b8c813-e8bb-fe7b-281b-02492ddd27c7', '00f17c29-b0d4-5667-82bc-5f2a63eae22f', '你喝水吗？', 'Nǐ hē shuǐ ma?', 'မင်း ရေသောက်လား။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '00f17c29-b0d4-5667-82bc-5f2a63eae22f')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '00f17c29-b0d4-5667-82bc-5f2a63eae22f' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a4c190d2-5c0e-deec-edf8-e483c5e241c4', 1, NULL, '和', 'he2', 'hé', ARRAY[2]::smallint[], 'ဆက်စပ်စကား · Conjunction', 'နှင့်', 'and', 'နှင့်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '和' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '16d69748-e264-ae65-ecfd-2cb54037930b', 'a4c190d2-5c0e-deec-edf8-e483c5e241c4', '我和朋友去商店。', 'Wǒ hé péngyou qù shāngdiàn.', 'ကျွန်တော်/ကျွန်မနဲ့ သူငယ်ချင်း စတိုးဆိုင်သွားတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a4c190d2-5c0e-deec-edf8-e483c5e241c4')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a4c190d2-5c0e-deec-edf8-e483c5e241c4' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'b8b7a1db-88e6-4a14-2af3-9021b80d2933', 1, NULL, '很', 'hen3', 'hěn', ARRAY[3]::smallint[], 'ကြိယာဝိသေသန · Adverb', 'အလွန်၊ တော်တော်', 'very; quite', 'အလွန်၊ တော်တော်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '很' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'c351a75c-c04a-c7a6-1c46-c997b29fb876', 'b8b7a1db-88e6-4a14-2af3-9021b80d2933', '她很漂亮。', 'Tā hěn piàoliang.', 'သူမက အရမ်းလှတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'b8b7a1db-88e6-4a14-2af3-9021b80d2933')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'b8b7a1db-88e6-4a14-2af3-9021b80d2933' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '0f2608b0-5133-3554-43ed-92e4ac0dd890', 1, NULL, '后面', 'houmian4', 'hòumiàn', ARRAY[4]::smallint[], 'နာမ် · Noun', 'နောက်ဘက်', 'behind; back', 'နောက်ဘက်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '后面' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '21dd5b69-6d2f-483a-ba63-e597344e9bbc', '0f2608b0-5133-3554-43ed-92e4ac0dd890', '学校在医院后面。', 'Xuéxiào zài yīyuàn hòumiàn.', 'ကျောင်းက ဆေးရုံနောက်မှာ ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '0f2608b0-5133-3554-43ed-92e4ac0dd890')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '0f2608b0-5133-3554-43ed-92e4ac0dd890' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '8e198729-61ee-f441-b9f7-6115c4205c5a', 1, NULL, '回', 'hui2', 'huí', ARRAY[2]::smallint[], 'ကြိယာ · Verb', 'ပြန်သည်', 'to return; go back', 'ပြန်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '回' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '90b1e721-979e-4035-809d-1c13c4fa2772', '8e198729-61ee-f441-b9f7-6115c4205c5a', '我下午回家。', 'Wǒ xiàwǔ huí jiā.', 'ကျွန်တော်/ကျွန်မ နေ့လယ်နောက်ပိုင်း အိမ်ပြန်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '8e198729-61ee-f441-b9f7-6115c4205c5a')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '8e198729-61ee-f441-b9f7-6115c4205c5a' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'fa5d6192-1f35-7d1b-a325-4da16f641996', 1, NULL, '会', 'hui4', 'huì', ARRAY[4]::smallint[], 'ကြိယာဝိသေသန · Modal Verb', 'တတ်သည်၊ နိုင်သည်', 'can; know how to', 'တတ်သည်၊ နိုင်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '会' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '01d3032f-48db-cda0-264d-c2b3f2c060bd', 'fa5d6192-1f35-7d1b-a325-4da16f641996', '我会写汉字。', 'Wǒ huì xiě Hànzì.', 'ကျွန်တော်/ကျွန်မ တရုတ်အက္ခရာရေးတတ်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'fa5d6192-1f35-7d1b-a325-4da16f641996')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'fa5d6192-1f35-7d1b-a325-4da16f641996' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '63e7a13a-72b3-c117-a6d8-e46da4ca8abc', 1, NULL, '几', 'ji3', 'jǐ', ARRAY[3]::smallint[], 'မေးခွန်းစကား · Interrogative', 'ဘယ်နှစ်၊ အနည်းငယ်', 'how many; several', 'ဘယ်နှစ်၊ အနည်းငယ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '几' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '3adf1f4f-c16d-e0b2-82f8-202ffa2b9a41', '63e7a13a-72b3-c117-a6d8-e46da4ca8abc', '你有几个朋友？', 'Nǐ yǒu jǐ ge péngyou?', 'မင်းမှာ သူငယ်ချင်းဘယ်နှယောက်ရှိလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '63e7a13a-72b3-c117-a6d8-e46da4ca8abc')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '63e7a13a-72b3-c117-a6d8-e46da4ca8abc' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '440d47d6-7399-bfce-ab44-59b20fb30cd2', 1, NULL, '家', 'jia1', 'jiā', ARRAY[1]::smallint[], 'နာမ် · Noun', 'အိမ်၊ မိသားစု', 'home; family', 'အိမ်၊ မိသားစု', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '家' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'e2b114de-656c-79e9-116b-d872a15aecb2', '440d47d6-7399-bfce-ab44-59b20fb30cd2', '我家在北京。', 'Wǒ jiā zài Běijīng.', 'ကျွန်တော်/ကျွန်မအိမ်က ပေကျင်းမှာရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '440d47d6-7399-bfce-ab44-59b20fb30cd2')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '440d47d6-7399-bfce-ab44-59b20fb30cd2' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '5cb5b36c-14fc-ba75-b0ef-251ccd57a3f8', 1, NULL, '叫', 'jiao4', 'jiào', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'ခေါ်သည်၊ အမည်ဖြစ်သည်', 'to be called; call', 'ခေါ်သည်၊ အမည်ဖြစ်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '叫' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '6c03bf25-601f-a9db-7f16-90ffaad947a9', '5cb5b36c-14fc-ba75-b0ef-251ccd57a3f8', '我叫小明。', 'Wǒ jiào Xiǎomíng.', 'ကျွန်တော်/ကျွန်မနာမည် ရှောင်မင်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '5cb5b36c-14fc-ba75-b0ef-251ccd57a3f8')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '5cb5b36c-14fc-ba75-b0ef-251ccd57a3f8' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '196e1e55-b997-bb3e-78d7-cac682c30fa0', 1, NULL, '今天', 'jintian1', 'jīntiān', ARRAY[1]::smallint[], 'နာမ် · Noun', 'ဒီနေ့', 'today', 'ဒီနေ့', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '今天' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '4ae67440-3253-3f11-afbb-bb2fe41971a4', '196e1e55-b997-bb3e-78d7-cac682c30fa0', '今天是星期一。', 'Jīntiān shì xīngqī yī.', 'ဒီနေ့ တနင်္လာနေ့ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '196e1e55-b997-bb3e-78d7-cac682c30fa0')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '196e1e55-b997-bb3e-78d7-cac682c30fa0' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'dca27bf4-cc7a-d54c-1179-491639a8d191', 1, NULL, '九', 'jiu3', 'jiǔ', ARRAY[3]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'ကိုး', 'nine', 'ကိုး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '九' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '545cc266-5aca-9e52-7494-8f48a2c6d940', 'dca27bf4-cc7a-d54c-1179-491639a8d191', '现在九点。', 'Xiànzài jiǔ diǎn.', 'အခု ကိုးနာရီရှိပြီ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'dca27bf4-cc7a-d54c-1179-491639a8d191')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'dca27bf4-cc7a-d54c-1179-491639a8d191' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '31893b70-b33b-ae72-09f3-e46f58694cfc', 1, NULL, '开', 'kai1', 'kāi', ARRAY[1]::smallint[], 'ကြိယာ · Verb', 'ဖွင့်သည်၊ စတင်သည်', 'to open; turn on', 'ဖွင့်သည်၊ စတင်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '开' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '9694c9b9-f4c4-c248-7226-9e2fa3ba7006', '31893b70-b33b-ae72-09f3-e46f58694cfc', '请开门。', 'Qǐng kāi mén.', 'ကျေးဇူးပြုပြီး တံခါးဖွင့်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '31893b70-b33b-ae72-09f3-e46f58694cfc')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '31893b70-b33b-ae72-09f3-e46f58694cfc' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '0d6e6252-202b-868f-fee0-7fe372bb9cd9', 1, NULL, '看', 'kan4', 'kàn', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'ကြည့်သည်', 'to look at; watch', 'ကြည့်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '看' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '60a89375-c6a0-6f30-1e20-d1f69e52ae6f', '0d6e6252-202b-868f-fee0-7fe372bb9cd9', '我喜欢看书。', 'Wǒ xǐhuan kàn shū.', 'ကျွန်တော်/ကျွန်မ စာဖတ်ရတာ ကြိုက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '0d6e6252-202b-868f-fee0-7fe372bb9cd9')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '0d6e6252-202b-868f-fee0-7fe372bb9cd9' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'c0c7cca4-6d9b-8cb4-bb02-1fd78cd87d6f', 1, NULL, '看见', 'kanjian4', 'kànjiàn', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'မြင်သည်', 'to see', 'မြင်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '看见' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '4f65dce0-4a50-ff74-60c9-b83b9f47e581', 'c0c7cca4-6d9b-8cb4-bb02-1fd78cd87d6f', '我看见老师了。', 'Wǒ kànjiàn lǎoshī le.', 'ကျွန်တော်/ကျွန်မ ဆရာကို တွေ့မြင်လိုက်ပြီ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'c0c7cca4-6d9b-8cb4-bb02-1fd78cd87d6f')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'c0c7cca4-6d9b-8cb4-bb02-1fd78cd87d6f' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '3ff2d014-7c76-ad93-d202-0c21c76f64a6', 1, NULL, '块', 'kuai4', 'kuài', ARRAY[4]::smallint[], 'အရေအတွက်ပြစကား · Quantifier', 'ငွေကြေး/အတုံးအခဲ ရေတွက်စကား', 'piece; colloquial yuan', 'ငွေကြေး/အတုံးအခဲ ရေတွက်စကား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '块' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '995460cc-3499-8bdd-4e13-10d58bd717f2', '3ff2d014-7c76-ad93-d202-0c21c76f64a6', '这个苹果三块钱。', 'Zhège píngguǒ sān kuài qián.', 'ဒီပန်းသီး သုံးယွမ်ကျတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '3ff2d014-7c76-ad93-d202-0c21c76f64a6')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '3ff2d014-7c76-ad93-d202-0c21c76f64a6' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '0db90cde-6610-954a-3a8b-bb304e43ce51', 1, NULL, '来', 'lai2', 'lái', ARRAY[2]::smallint[], 'ကြိယာ · Verb', 'လာသည်', 'to come', 'လာသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '来' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '3dcb5ede-96dd-b92f-e81a-025806891cd0', '0db90cde-6610-954a-3a8b-bb304e43ce51', '明天你来我家吧。', 'Míngtiān nǐ lái wǒ jiā ba.', 'မနက်ဖြန် ငါ့အိမ်လာပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '0db90cde-6610-954a-3a8b-bb304e43ce51')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '0db90cde-6610-954a-3a8b-bb304e43ce51' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'de3ca24a-0227-46be-0fba-981b00991415', 1, NULL, '老师', 'laoshi3', 'lǎoshī', ARRAY[3]::smallint[], 'နာမ် · Noun', 'ဆရာ၊ ဆရာမ', 'teacher', 'ဆရာ၊ ဆရာမ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '老师' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '31422b46-337d-9665-7877-3135860a8140', 'de3ca24a-0227-46be-0fba-981b00991415', '老师在教室里。', 'Lǎoshī zài jiàoshì lǐ.', 'ဆရာက စာသင်ခန်းထဲမှာ ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'de3ca24a-0227-46be-0fba-981b00991415')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'de3ca24a-0227-46be-0fba-981b00991415' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'b2230d12-7135-0393-fd2e-626ae5448631', 1, NULL, '了', 'le5', 'le', ARRAY[5]::smallint[], 'အကူစကား · Auxiliary', 'ပြီးဆုံးမှု/အခြေအနေပြောင်းလဲမှု ပြစကား', 'completed-action or change particle', 'ပြီးဆုံးမှု/အခြေအနေပြောင်းလဲမှု ပြစကား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '了' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '1a311ec0-01ec-2459-28c8-a6ef5e32112d', 'b2230d12-7135-0393-fd2e-626ae5448631', '我吃饭了。', 'Wǒ chī fàn le.', 'ကျွန်တော်/ကျွန်မ ထမင်းစားပြီးပြီ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'b2230d12-7135-0393-fd2e-626ae5448631')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'b2230d12-7135-0393-fd2e-626ae5448631' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'be34ad48-648f-77f7-626b-d1c6dc8fa2be', 1, NULL, '冷', 'leng3', 'lěng', ARRAY[3]::smallint[], 'နာမဝိသေသန · Adjective', 'အေးသော', 'cold', 'အေးသော', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '冷' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '845b51ba-61f9-a36c-43ed-0c6e95bdcb8b', 'be34ad48-648f-77f7-626b-d1c6dc8fa2be', '今天很冷。', 'Jīntiān hěn lěng.', 'ဒီနေ့ အရမ်းအေးတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'be34ad48-648f-77f7-626b-d1c6dc8fa2be')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'be34ad48-648f-77f7-626b-d1c6dc8fa2be' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '22c94260-61d2-562b-5523-4ea3d689ad98', 1, NULL, '里面', 'limian3', 'lǐmiàn', ARRAY[3]::smallint[], 'နာမ် · Noun', 'အတွင်း၊ ထဲမှာ', 'inside; within', 'အတွင်း၊ ထဲမှာ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '里面' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '1c4224f2-74be-c037-1160-6c7c0519a0b9', '22c94260-61d2-562b-5523-4ea3d689ad98', '书在桌子里面。', 'Shū zài zhuōzi lǐmiàn.', 'စာအုပ်က စားပွဲအတွင်းမှာ ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '22c94260-61d2-562b-5523-4ea3d689ad98')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '22c94260-61d2-562b-5523-4ea3d689ad98' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a56b879a-f862-8430-73c4-651f95745de3', 1, NULL, '六', 'liu4', 'liù', ARRAY[4]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'ခြောက်', 'six', 'ခြောက်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '六' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'acf96049-2530-9896-a5d9-8cae6932ed5d', 'a56b879a-f862-8430-73c4-651f95745de3', '我六点回家。', 'Wǒ liù diǎn huí jiā.', 'ကျွန်တော်/ကျွန်မ ခြောက်နာရီ အိမ်ပြန်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a56b879a-f862-8430-73c4-651f95745de3')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a56b879a-f862-8430-73c4-651f95745de3' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '414e9cd2-a656-776a-fb1d-dd7eb3250934', 1, NULL, '吗', 'ma5', 'ma', ARRAY[5]::smallint[], 'အကူစကား · Auxiliary', 'မေးခွန်းအဆုံးသတ် စကားလုံး', 'question particle', 'မေးခွန်းအဆုံးသတ် စကားလုံး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '吗' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '33403673-fb83-7256-23d7-09c678b3aba4', '414e9cd2-a656-776a-fb1d-dd7eb3250934', '你是学生吗？', 'Nǐ shì xuésheng ma?', 'မင်းက ကျောင်းသားလား။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '414e9cd2-a656-776a-fb1d-dd7eb3250934')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '414e9cd2-a656-776a-fb1d-dd7eb3250934' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'aaac0a13-7f79-265e-ce8c-21d5b2696551', 1, NULL, '妈妈', 'mama1', 'māma', ARRAY[1]::smallint[], 'နာမ် · Noun', 'အမေ', 'mother', 'အမေ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '妈妈' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'cd7996b0-09b8-ce66-d110-4624dd4a694f', 'aaac0a13-7f79-265e-ce8c-21d5b2696551', '妈妈在家。', 'Māma zài jiā.', 'အမေ အိမ်မှာရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'aaac0a13-7f79-265e-ce8c-21d5b2696551')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'aaac0a13-7f79-265e-ce8c-21d5b2696551' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'fb8946fc-7dd6-a22a-2f57-8ac189b82805', 1, NULL, '买', 'mai3', 'mǎi', ARRAY[3]::smallint[], 'ကြိယာ · Verb', 'ဝယ်သည်', 'to buy', 'ဝယ်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '买' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'd8f7f372-5be7-8d19-18ef-aa0ba6980141', 'fb8946fc-7dd6-a22a-2f57-8ac189b82805', '我要买苹果。', 'Wǒ yào mǎi píngguǒ.', 'ကျွန်တော်/ကျွန်မ ပန်းသီးဝယ်ချင်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'fb8946fc-7dd6-a22a-2f57-8ac189b82805')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'fb8946fc-7dd6-a22a-2f57-8ac189b82805' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'adaf9a98-48dd-4d1f-c15c-18ddc012585c', 1, NULL, '猫', 'mao1', 'māo', ARRAY[1]::smallint[], 'နာမ် · Noun', 'ကြောင်', 'cat', 'ကြောင်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '猫' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'cc50a754-156b-a900-ade4-8a3ab7792e4c', 'adaf9a98-48dd-4d1f-c15c-18ddc012585c', '那只猫很小。', 'Nà zhī māo hěn xiǎo.', 'အဲဒီကြောင်က အရမ်းသေးတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'adaf9a98-48dd-4d1f-c15c-18ddc012585c')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'adaf9a98-48dd-4d1f-c15c-18ddc012585c' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a6cb5044-a955-a388-4d41-f17d8cc417c8', 1, NULL, '没关系', 'meiguanxi2', 'méiguānxi', ARRAY[2]::smallint[], 'အမူအရာစကား · Expression', 'ကိစ္စမရှိပါဘူး', 'it doesn''t matter', 'ကိစ္စမရှိပါဘူး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '没关系' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'a4c11dab-0d92-056d-5125-53c9241f0918', 'a6cb5044-a955-a388-4d41-f17d8cc417c8', '对不起。—没关系。', 'Duìbuqǐ. — Méiguānxi.', 'တောင်းပန်ပါတယ်။ — ကိစ္စမရှိပါဘူး။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a6cb5044-a955-a388-4d41-f17d8cc417c8')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a6cb5044-a955-a388-4d41-f17d8cc417c8' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '505fbcfb-fcf7-19c9-0261-6130a104204a', 1, NULL, '没', 'mei2', 'méi', ARRAY[2]::smallint[], 'ကြိယာဝိသေသန · Adverb', 'မ…သေး၊ မရှိ', 'not; have not', 'မ…သေး၊ မရှိ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '没' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'eba0efad-363a-bc12-0766-3167bfd90ecf', '505fbcfb-fcf7-19c9-0261-6130a104204a', '我没喝茶。', 'Wǒ méi hē chá.', 'ကျွန်တော်/ကျွန်မမှာ ပိုက်ဆံမရှိဘူး။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '505fbcfb-fcf7-19c9-0261-6130a104204a')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '505fbcfb-fcf7-19c9-0261-6130a104204a' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '6fc9e75a-da0e-ef34-314a-445b8af4d793', 1, NULL, '米饭', 'mifan3', 'mǐfàn', ARRAY[3]::smallint[], 'နာမ် · Noun', 'ထမင်း', 'cooked rice', 'ထမင်း', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '米饭' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'd4718986-2e23-24fa-95af-ac25ae8562c3', '6fc9e75a-da0e-ef34-314a-445b8af4d793', '我喜欢吃米饭。', 'Wǒ xǐhuan chī mǐfàn.', 'ကျွန်တော်/ကျွန်မ ထမင်းစားရတာ ကြိုက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '6fc9e75a-da0e-ef34-314a-445b8af4d793')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '6fc9e75a-da0e-ef34-314a-445b8af4d793' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'daf98e37-7525-1014-1123-6b9e54129e46', 1, NULL, '名字', 'mingzi2', 'míngzi', ARRAY[2]::smallint[], 'နာမ် · Noun', 'အမည်', 'name', 'အမည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '名字' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '473fcf1c-fb35-0079-8e32-213e8cf1df54', 'daf98e37-7525-1014-1123-6b9e54129e46', '你的名字叫什么？', 'Nǐ de míngzi jiào shénme?', 'မင်းနာမည် ဘာခေါ်လဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'daf98e37-7525-1014-1123-6b9e54129e46')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'daf98e37-7525-1014-1123-6b9e54129e46' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '6f94502b-6b5a-98ac-e9ab-5393a62285cc', 1, NULL, '明天', 'mingtian2', 'míngtiān', ARRAY[2]::smallint[], 'နာမ် · Noun', 'မနက်ဖြန်', 'tomorrow', 'မနက်ဖြန်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '明天' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'd9f3c656-83ca-b2c2-6c41-e56315eec1fa', '6f94502b-6b5a-98ac-e9ab-5393a62285cc', '明天我去学校。', 'Míngtiān wǒ qù xuéxiào.', 'မနက်ဖြန် ကျွန်တော်/ကျွန်မ ကျောင်းသွားမယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '6f94502b-6b5a-98ac-e9ab-5393a62285cc')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '6f94502b-6b5a-98ac-e9ab-5393a62285cc' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '2a495b05-fc35-b0ce-0aeb-ccb40eada423', 1, NULL, '哪', 'na3', 'nǎ', ARRAY[3]::smallint[], 'မေးခွန်းစကား · Interrogative', 'ဘယ်ဟာ၊ ဘယ်', 'which', 'ဘယ်ဟာ၊ ဘယ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '哪' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'bea70ed3-a030-e526-0312-76e42e7e540e', '2a495b05-fc35-b0ce-0aeb-ccb40eada423', '你是哪国人？', 'Nǐ shì nǎ guó rén?', 'မင်း ဘယ်နိုင်ငံကလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '2a495b05-fc35-b0ce-0aeb-ccb40eada423')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '2a495b05-fc35-b0ce-0aeb-ccb40eada423' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '5ad507e5-ee4f-2143-6aa1-049eb78ce607', 1, NULL, '哪儿', 'nar3', 'nǎr', ARRAY[3]::smallint[], 'မေးခွန်းစကား · Interrogative', 'ဘယ်မှာ၊ ဘယ်နေရာ', 'where', 'ဘယ်မှာ၊ ဘယ်နေရာ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '哪儿' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '5122edf7-58d5-f18f-e58d-fe31f026071d', '5ad507e5-ee4f-2143-6aa1-049eb78ce607', '你去哪儿？', 'Nǐ qù nǎr?', 'မင်း ဘယ်ကိုသွားမလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '5ad507e5-ee4f-2143-6aa1-049eb78ce607')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '5ad507e5-ee4f-2143-6aa1-049eb78ce607' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'd9a65382-6a73-4159-8f9d-f246dbbf7e50', 1, NULL, '那', 'na4', 'nà', ARRAY[4]::smallint[], 'ညွှန်ပြနာမ်စား · Demonstrative Pronoun', 'အဲဒီ၊ ထို', 'that; there', 'အဲဒီ၊ ထို', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '那' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'a1b5e30c-1d3d-8ba6-6ef6-b4c1d8be3c92', 'd9a65382-6a73-4159-8f9d-f246dbbf7e50', '那儿是我的学校。', 'Nàr shì wǒ de xuéxiào.', 'အဲဒီနေရာက ကျွန်တော်/ကျွန်မရဲ့ ကျောင်းပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'd9a65382-6a73-4159-8f9d-f246dbbf7e50')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'd9a65382-6a73-4159-8f9d-f246dbbf7e50' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '12ca108a-f4d5-5628-f01e-79ede88c1ee6', 1, NULL, '呢', 'ne5', 'ne', ARRAY[5]::smallint[], 'အကူစကား · Auxiliary', 'လည်းကော၊ မေးခွန်းအဆုံးသတ် စကားလုံး', 'question particle', 'လည်းကော၊ မေးခွန်းအဆုံးသတ် စကားလုံး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '呢' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'bf10b3df-4503-3a6d-049e-9fb36264b960', '12ca108a-f4d5-5628-f01e-79ede88c1ee6', '你呢？', 'Nǐ ne?', 'မင်းကော။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '12ca108a-f4d5-5628-f01e-79ede88c1ee6')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '12ca108a-f4d5-5628-f01e-79ede88c1ee6' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'f754f997-e19a-a8a4-6c1e-3d37e8f5eebc', 1, NULL, '能', 'neng2', 'néng', ARRAY[2]::smallint[], 'ကြိယာဝိသေသန · Modal Verb', 'နိုင်သည်၊ လုပ်နိုင်စွမ်းရှိသည်', 'can; be able to', 'နိုင်သည်၊ လုပ်နိုင်စွမ်းရှိသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '能' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '5438c64a-5f35-13d0-4154-6f4702b8cfc6', 'f754f997-e19a-a8a4-6c1e-3d37e8f5eebc', '我能坐这里吗？', 'Wǒ néng zuò zhèlǐ ma?', 'ကျွန်တော်/ကျွန်မ ဒီမှာ ထိုင်လို့ရလား။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'f754f997-e19a-a8a4-6c1e-3d37e8f5eebc')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'f754f997-e19a-a8a4-6c1e-3d37e8f5eebc' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'c32a02a9-c459-2254-2fc8-f21ec04ba48c', 1, NULL, '你', 'ni3', 'nǐ', ARRAY[3]::smallint[], 'နာမ်စား · Pronoun', 'သင်၊ မင်း', 'you', 'သင်၊ မင်း', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '你' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'dd337f52-0c94-eb9a-8677-c6721e06686b', 'c32a02a9-c459-2254-2fc8-f21ec04ba48c', '你好吗？', 'Nǐ hǎo ma?', 'မင်းနေကောင်းလား။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'c32a02a9-c459-2254-2fc8-f21ec04ba48c')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'c32a02a9-c459-2254-2fc8-f21ec04ba48c' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '4c94f573-4451-e77f-5103-1e453e46f979', 1, NULL, '年', 'nian2', 'nián', ARRAY[2]::smallint[], 'နာမ် · Noun', 'နှစ်', 'year', 'နှစ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '年' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '7313ee47-e9e1-feab-4b8e-ae7f669e141d', '4c94f573-4451-e77f-5103-1e453e46f979', '我学习汉语一年了。', 'Wǒ xuéxí Hànyǔ yì nián le.', 'ကျွန်တော်/ကျွန်မ တရုတ်စာလေ့လာတာ တစ်နှစ်ရှိပြီ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '4c94f573-4451-e77f-5103-1e453e46f979')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '4c94f573-4451-e77f-5103-1e453e46f979' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a5abce23-08d7-bb05-d141-aed50ffbd81c', 1, NULL, '女儿', 'nv''er', 'nǚ''ér', ARRAY[3]::smallint[], 'နာမ် · Noun', 'သမီး', 'daughter', 'သမီး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '女儿' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '73b87264-aa8a-5182-8342-baaca8af3a5f', 'a5abce23-08d7-bb05-d141-aed50ffbd81c', '我女儿是学生。', 'Wǒ nǚ''ér shì xuésheng.', 'ကျွန်တော်/ကျွန်မသမီးက ကျောင်းသူပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a5abce23-08d7-bb05-d141-aed50ffbd81c')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a5abce23-08d7-bb05-d141-aed50ffbd81c' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'cafffe5a-7446-511c-c8d7-ae7b1c19b47f', 1, NULL, '朋友', 'pengyou2', 'péngyou', ARRAY[2]::smallint[], 'နာမ် · Noun', 'သူငယ်ချင်း', 'friend', 'သူငယ်ချင်း', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '朋友' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '85110103-696e-2ada-4860-f56393d6f03a', 'cafffe5a-7446-511c-c8d7-ae7b1c19b47f', '他是我的朋友。', 'Tā shì wǒ de péngyou.', 'သူက ကျွန်တော်/ကျွန်မရဲ့ သူငယ်ချင်းပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'cafffe5a-7446-511c-c8d7-ae7b1c19b47f')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'cafffe5a-7446-511c-c8d7-ae7b1c19b47f' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'dddff1d0-68ad-95f9-00a7-8fbb28962d57', 1, NULL, '漂亮', 'piaoliang4', 'piàoliang', ARRAY[4]::smallint[], 'နာမဝိသေသန · Adjective', 'လှပသော', 'pretty; beautiful', 'လှပသော', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '漂亮' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'd1d41594-f0ce-2104-401a-290649be0d26', 'dddff1d0-68ad-95f9-00a7-8fbb28962d57', '她的衣服很漂亮。', 'Tā de yīfu hěn piàoliang.', 'သူမရဲ့ အဝတ်အစားက အရမ်းလှတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'dddff1d0-68ad-95f9-00a7-8fbb28962d57')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'dddff1d0-68ad-95f9-00a7-8fbb28962d57' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '801e4fd8-e128-efc1-9072-8e4762d8b48e', 1, NULL, '苹果', 'pingguo2', 'píngguǒ', ARRAY[2]::smallint[], 'နာမ် · Noun', 'ပန်းသီး', 'apple', 'ပန်းသီး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '苹果' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'a63c17b4-b461-5f70-002b-e1d0085a86c2', '801e4fd8-e128-efc1-9072-8e4762d8b48e', '我每天吃一个苹果。', 'Wǒ měitiān chī yí ge píngguǒ.', 'ကျွန်တော်/ကျွန်မ နေ့တိုင်း ပန်းသီးတစ်လုံးစားတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '801e4fd8-e128-efc1-9072-8e4762d8b48e')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '801e4fd8-e128-efc1-9072-8e4762d8b48e' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'fa60a646-5c7c-ae45-c58b-dd238d2a0bdf', 1, NULL, '七', 'qi1', 'qī', ARRAY[1]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'ခုနစ်', 'seven', 'ခုနစ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '七' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'bdf3e485-f43b-948d-401d-97e187cce38e', 'fa60a646-5c7c-ae45-c58b-dd238d2a0bdf', '现在七点半。', 'Xiànzài qī diǎn bàn.', 'အခု ခုနစ်နာရီခွဲရှိပြီ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'fa60a646-5c7c-ae45-c58b-dd238d2a0bdf')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'fa60a646-5c7c-ae45-c58b-dd238d2a0bdf' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '07394e6a-e461-7571-4ada-f483012eae9a', 1, NULL, '前面', 'qianmian2', 'qiánmiàn', ARRAY[2]::smallint[], 'နာမ် · Noun', 'ရှေ့ဘက်', 'in front; ahead', 'ရှေ့ဘက်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '前面' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '480a1f04-5beb-8eb7-dabc-28ff632048d7', '07394e6a-e461-7571-4ada-f483012eae9a', '我在学校前面等你。', 'Wǒ zài xuéxiào qiánmiàn děng nǐ.', 'ကျွန်တော်/ကျွန်မ ကျောင်းရှေ့မှာ မင်းကိုစောင့်နေတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '07394e6a-e461-7571-4ada-f483012eae9a')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '07394e6a-e461-7571-4ada-f483012eae9a' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '6542abac-8e69-d1f4-3ab7-355cf41306f4', 1, NULL, '钱', 'qian2', 'qián', ARRAY[2]::smallint[], 'နာမ် · Noun', 'ပိုက်ဆံ', 'money', 'ပိုက်ဆံ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '钱' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '5c958b0b-74cb-5ec2-8548-9a7aa2adfc34', '6542abac-8e69-d1f4-3ab7-355cf41306f4', '我没有很多钱。', 'Wǒ méiyǒu hěn duō qián.', 'ကျွန်တော်/ကျွန်မမှာ ပိုက်ဆံအများကြီးမရှိဘူး။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '6542abac-8e69-d1f4-3ab7-355cf41306f4')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '6542abac-8e69-d1f4-3ab7-355cf41306f4' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '087b8689-0258-28d6-45b9-8324e1c4bf9e', 1, NULL, '请', 'qing3', 'qǐng', ARRAY[3]::smallint[], 'ကြိယာ · Verb', 'ကျေးဇူးပြု၍၊ ဖိတ်ခေါ်သည်', 'please; invite', 'ကျေးဇူးပြု၍၊ ဖိတ်ခေါ်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '请' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '363fd5f9-f71b-76ee-bb7b-b3e9375899e2', '087b8689-0258-28d6-45b9-8324e1c4bf9e', '请坐。', 'Qǐng zuò.', 'ကျေးဇူးပြုပြီး ထိုင်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '087b8689-0258-28d6-45b9-8324e1c4bf9e')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '087b8689-0258-28d6-45b9-8324e1c4bf9e' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '9903703e-4831-b6f2-cb91-5af694c5a56f', 1, NULL, '去', 'qu4', 'qù', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'သွားသည်', 'to go', 'သွားသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '去' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '501ab9d4-7b8f-f25c-841a-d76278e5a521', '9903703e-4831-b6f2-cb91-5af694c5a56f', '我去商店买东西。', 'Wǒ qù shāngdiàn mǎi dōngxi.', 'ကျွန်တော်/ကျွန်မ စတိုးဆိုင်သွားပြီး ပစ္စည်းဝယ်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '9903703e-4831-b6f2-cb91-5af694c5a56f')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '9903703e-4831-b6f2-cb91-5af694c5a56f' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '256bbf0a-5b9f-2965-32ae-422d798eac5d', 1, NULL, '热', 're4', 'rè', ARRAY[4]::smallint[], 'နာမဝိသေသန · Adjective', 'ပူသော', 'hot; warm', 'ပူသော', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '热' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '6cf94d93-3dd2-3e27-94bb-fbe7f3b01d26', '256bbf0a-5b9f-2965-32ae-422d798eac5d', '今天太热了。', 'Jīntiān tài rè le.', 'ဒီနေ့ အရမ်းပူတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '256bbf0a-5b9f-2965-32ae-422d798eac5d')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '256bbf0a-5b9f-2965-32ae-422d798eac5d' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '38ca8296-ebca-f941-021c-11ef186e2890', 1, NULL, '人', 'ren2', 'rén', ARRAY[2]::smallint[], 'နာမ် · Noun', 'လူ', 'person; people', 'လူ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '人' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '9b01f7fe-bff5-02cf-e4ff-79227aa18329', '38ca8296-ebca-f941-021c-11ef186e2890', '这里有很多人。', 'Zhèlǐ yǒu hěn duō rén.', 'ဒီမှာ လူအများကြီးရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '38ca8296-ebca-f941-021c-11ef186e2890')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '38ca8296-ebca-f941-021c-11ef186e2890' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '3a52cd05-991a-5604-c294-4317320fa0e8', 1, NULL, '认识', 'renshi4', 'rènshi', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'သိကျွမ်းသည်၊ မှတ်မိသည်', 'to know; recognize', 'သိကျွမ်းသည်၊ မှတ်မိသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '认识' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'b9553a19-5897-7860-80a9-b89913900a6e', '3a52cd05-991a-5604-c294-4317320fa0e8', '我认识那个老师。', 'Wǒ rènshi nàge lǎoshī.', 'ကျွန်တော်/ကျွန်မ အဲဒီဆရာကို သိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '3a52cd05-991a-5604-c294-4317320fa0e8')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '3a52cd05-991a-5604-c294-4317320fa0e8' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '66d3d5df-ee73-b22f-d4f1-76968cd495ec', 1, NULL, '三', 'san1', 'sān', ARRAY[1]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'သုံး', 'three', 'သုံး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '三' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '068ffdc1-05ad-6735-3028-2e30b6dd0aba', '66d3d5df-ee73-b22f-d4f1-76968cd495ec', '我有三个杯子。', 'Wǒ yǒu sān ge bēizi.', 'ကျွန်တော်/ကျွန်မမှာ ခွက်သုံးလုံးရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '66d3d5df-ee73-b22f-d4f1-76968cd495ec')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '66d3d5df-ee73-b22f-d4f1-76968cd495ec' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '1d7052c6-e54c-41e1-bad9-2535baf0602d', 1, NULL, '商店', 'shangdian1', 'shāngdiàn', ARRAY[1]::smallint[], 'နာမ် · Noun', 'စတိုးဆိုင်', 'store; shop', 'စတိုးဆိုင်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '商店' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '06a4cedb-fcc0-f02d-45b0-5ef30dfff3bb', '1d7052c6-e54c-41e1-bad9-2535baf0602d', '商店在学校后面。', 'Shāngdiàn zài xuéxiào hòumiàn.', 'စတိုးဆိုင်က ကျောင်းနောက်မှာရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '1d7052c6-e54c-41e1-bad9-2535baf0602d')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '1d7052c6-e54c-41e1-bad9-2535baf0602d' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '40a5d584-f0d9-35b1-b396-f4b523a252cd', 1, NULL, '上', 'shang4', 'shàng', ARRAY[4]::smallint[], 'နာမ် · Noun', 'အပေါ်၊ ပေါ်မှာ', 'up; on', 'အပေါ်၊ ပေါ်မှာ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '上' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '029a5d01-20b6-d468-b8ca-f91241b04152', '40a5d584-f0d9-35b1-b396-f4b523a252cd', '书在桌子上。', 'Shū zài zhuōzi shàng.', 'စာအုပ်က စားပွဲပေါ်မှာ ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '40a5d584-f0d9-35b1-b396-f4b523a252cd')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '40a5d584-f0d9-35b1-b396-f4b523a252cd' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '8c9410fe-85f4-336e-0b99-300164952322', 1, NULL, '上午', 'shangwu4', 'shàngwǔ', ARRAY[4]::smallint[], 'နာမ် · Noun', 'မနက်ပိုင်း', 'morning', 'မနက်ပိုင်း', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '上午' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '517b2672-61eb-48bd-34eb-2561387b940f', '8c9410fe-85f4-336e-0b99-300164952322', '我上午学习汉语。', 'Wǒ shàngwǔ xuéxí Hànyǔ.', 'ကျွန်တော်/ကျွန်မ မနက်ပိုင်းမှာ တရုတ်စာလေ့လာတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '8c9410fe-85f4-336e-0b99-300164952322')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '8c9410fe-85f4-336e-0b99-300164952322' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '88cf5666-1387-e1bc-e639-af558e0936e0', 1, NULL, '少', 'shao3', 'shǎo', ARRAY[3]::smallint[], 'နာမဝိသေသန · Adjective', 'နည်းသော', 'few; little', 'နည်းသော', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '少' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'b130c940-e72e-338b-2ba1-f9613c5db438', '88cf5666-1387-e1bc-e639-af558e0936e0', '这里的人很少。', 'Zhèlǐ de rén hěn shǎo.', 'ဒီမှာ လူနည်းတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '88cf5666-1387-e1bc-e639-af558e0936e0')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '88cf5666-1387-e1bc-e639-af558e0936e0' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '635abef5-a23e-afed-c953-422876c8c135', 1, NULL, '谁', 'shei2', 'shéi', ARRAY[2]::smallint[], 'မေးခွန်းစကား · Interrogative', 'ဘယ်သူ', 'who', 'ဘယ်သူ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '谁' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '2e389caf-cba3-f156-df40-298a60d16648', '635abef5-a23e-afed-c953-422876c8c135', '那个人是谁？', 'Nàge rén shì shéi?', 'အဲဒီလူက ဘယ်သူလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '635abef5-a23e-afed-c953-422876c8c135')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '635abef5-a23e-afed-c953-422876c8c135' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '73fca7dd-288f-7d60-9091-da53e4da2e0a', 1, NULL, '什么', 'shenme2', 'shénme', ARRAY[2]::smallint[], 'မေးခွန်းစကား · Interrogative', 'ဘာ', 'what', 'ဘာ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '什么' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '2c335552-5b60-f788-679f-5b7ed2c871b4', '73fca7dd-288f-7d60-9091-da53e4da2e0a', '你想吃什么？', 'Nǐ xiǎng chī shénme?', 'မင်း ဘာစားချင်လဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '73fca7dd-288f-7d60-9091-da53e4da2e0a')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '73fca7dd-288f-7d60-9091-da53e4da2e0a' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'f52fc332-3db4-0cc8-da4c-a1946b9999bc', 1, NULL, '十', 'shi2', 'shí', ARRAY[2]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'ဆယ်', 'ten', 'ဆယ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '十' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '33612df0-bdb6-09a2-2c2c-17c8950d1c22', 'f52fc332-3db4-0cc8-da4c-a1946b9999bc', '我十点睡觉。', 'Wǒ shí diǎn shuìjiào.', 'ကျွန်တော်/ကျွန်မ ဆယ်နာရီမှာ အိပ်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'f52fc332-3db4-0cc8-da4c-a1946b9999bc')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'f52fc332-3db4-0cc8-da4c-a1946b9999bc' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'f9e9c32d-e79f-cc2c-3cbc-7790d6da0438', 1, NULL, '时候', 'shihou2', 'shíhou', ARRAY[2]::smallint[], 'နာမ် · Noun', 'အချိန်', 'time; moment', 'အချိန်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '时候' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'b3dc91b9-9556-8cc1-6e3f-eafd8d4f28ac', 'f9e9c32d-e79f-cc2c-3cbc-7790d6da0438', '你什么时候回家？', 'Nǐ shénme shíhou huí jiā?', 'မင်း ဘယ်အချိန် အိမ်ပြန်မလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'f9e9c32d-e79f-cc2c-3cbc-7790d6da0438')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'f9e9c32d-e79f-cc2c-3cbc-7790d6da0438' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'b6a63171-f28e-dcfe-556e-28753b31211b', 1, NULL, '是', 'shi4', 'shì', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'ဖြစ်သည်', 'to be', 'ဖြစ်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '是' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '2af7145e-74c4-6918-3cda-b83f280cd5b8', 'b6a63171-f28e-dcfe-556e-28753b31211b', '她是我的老师。', 'Tā shì wǒ de lǎoshī.', 'သူမက ကျွန်တော်/ကျွန်မရဲ့ ဆရာမပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'b6a63171-f28e-dcfe-556e-28753b31211b')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'b6a63171-f28e-dcfe-556e-28753b31211b' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '3077bfec-9b24-8beb-adfc-4655b38752f3', 1, NULL, '书', 'shu1', 'shū', ARRAY[1]::smallint[], 'နာမ် · Noun', 'စာအုပ်', 'book', 'စာအုပ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '书' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '654fa4f9-e48a-2782-b4ac-b78b88d87ed3', '3077bfec-9b24-8beb-adfc-4655b38752f3', '这是一本书。', 'Zhè shì yì běn shū.', 'ဒါက စာအုပ်တစ်အုပ်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '3077bfec-9b24-8beb-adfc-4655b38752f3')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '3077bfec-9b24-8beb-adfc-4655b38752f3' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '085dc5cc-4500-f0fb-d91c-7e92c35e33c8', 1, NULL, '水', 'shui3', 'shuǐ', ARRAY[3]::smallint[], 'နာမ် · Noun', 'ရေ', 'water', 'ရေ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '水' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '6674f6ac-4060-65c3-c93f-8d2cecefda52', '085dc5cc-4500-f0fb-d91c-7e92c35e33c8', '请给我一杯水。', 'Qǐng gěi wǒ yì bēi shuǐ.', 'ကျေးဇူးပြုပြီး ကျွန်တော်/ကျွန်မကို ရေတစ်ခွက်ပေးပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '085dc5cc-4500-f0fb-d91c-7e92c35e33c8')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '085dc5cc-4500-f0fb-d91c-7e92c35e33c8' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'dc19499f-0632-6ec8-570b-dfc1b2d691f2', 1, NULL, '水果', 'shuiguo3', 'shuǐguǒ', ARRAY[3]::smallint[], 'နာမ် · Noun', 'သစ်သီး', 'fruit', 'သစ်သီး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '水果' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '4ebb4d22-2d44-17d1-62d4-161190284a74', 'dc19499f-0632-6ec8-570b-dfc1b2d691f2', '我喜欢吃水果。', 'Wǒ xǐhuan chī shuǐguǒ.', 'ကျွန်တော်/ကျွန်မ သစ်သီးစားရတာ ကြိုက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'dc19499f-0632-6ec8-570b-dfc1b2d691f2')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'dc19499f-0632-6ec8-570b-dfc1b2d691f2' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '772d6106-756f-9481-7704-305beb55fb2a', 1, NULL, '睡觉', 'shuijiao4', 'shuìjiào', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'အိပ်သည်', 'to sleep', 'အိပ်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '睡觉' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'b9ffb810-bc62-dcea-6ed1-b0e2ba49f36d', '772d6106-756f-9481-7704-305beb55fb2a', '我晚上十点睡觉。', 'Wǒ wǎnshang shí diǎn shuìjiào.', 'ကျွန်တော်/ကျွန်မ ညဆယ်နာရီမှာ အိပ်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '772d6106-756f-9481-7704-305beb55fb2a')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '772d6106-756f-9481-7704-305beb55fb2a' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'ef3a8d69-1ea5-2b53-0501-63b0491f26f6', 1, NULL, '说', 'shuo1', 'shuō', ARRAY[1]::smallint[], 'ကြိယာ · Verb', 'ပြောသည်', 'to speak; say', 'ပြောသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '说' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'd19ddf1a-ab8f-0dc7-99a4-935db6db5da7', 'ef3a8d69-1ea5-2b53-0501-63b0491f26f6', '请说汉语。', 'Qǐng shuō Hànyǔ.', 'ကျေးဇူးပြုပြီး တရုတ်စကားပြောပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'ef3a8d69-1ea5-2b53-0501-63b0491f26f6')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'ef3a8d69-1ea5-2b53-0501-63b0491f26f6' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '89eeae4d-528a-db4a-ef48-a6ed4c612e62', 1, NULL, '四', 'si4', 'sì', ARRAY[4]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'လေး', 'four', 'လေး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '四' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '11cf9771-5d88-b3ac-b385-1ba4577f68ed', '89eeae4d-528a-db4a-ef48-a6ed4c612e62', '我四点下课。', 'Wǒ sì diǎn xiàkè.', 'ကျွန်တော်/ကျွန်မ လေးနာရီမှာ အတန်းဆင်းတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '89eeae4d-528a-db4a-ef48-a6ed4c612e62')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '89eeae4d-528a-db4a-ef48-a6ed4c612e62' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '8b4466db-b8b8-d4cd-0597-ff22bf7f0526', 1, NULL, '岁', 'sui4', 'suì', ARRAY[4]::smallint[], 'အရေအတွက်ပြစကား · Quantifier', 'အသက်နှစ် ရေတွက်စကား', 'classifier for age; years old', 'အသက်နှစ် ရေတွက်စကား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '岁' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '87976d72-da9d-dcdb-ddac-ffa44c5ac83d', '8b4466db-b8b8-d4cd-0597-ff22bf7f0526', '我今年十八岁。', 'Wǒ jīnnián shíbā suì.', 'ကျွန်တော်/ကျွန်မ ဒီနှစ် အသက် ဆယ့်ရှစ်နှစ်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '8b4466db-b8b8-d4cd-0597-ff22bf7f0526')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '8b4466db-b8b8-d4cd-0597-ff22bf7f0526' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '0dca854e-40fb-91c9-d210-c562c159a167', 1, NULL, '他', 'ta1', 'tā', ARRAY[1]::smallint[], 'နာမ်စား · Pronoun', 'သူ (ယောကျ်ား)', 'he; him', 'သူ (ယောကျ်ား)', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '他' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'ac8cc28b-240c-b1f3-f2a4-dfc07e864192', '0dca854e-40fb-91c9-d210-c562c159a167', '他是我的同学。', 'Tā shì wǒ de tóngxué.', 'သူက ကျွန်တော်/ကျွန်မရဲ့ အတန်းဖော်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '0dca854e-40fb-91c9-d210-c562c159a167')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '0dca854e-40fb-91c9-d210-c562c159a167' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '0a3fd6dd-0463-331a-116b-87d8ac4af0e2', 1, NULL, '她', 'ta1', 'tā', ARRAY[1]::smallint[], 'နာမ်စား · Pronoun', 'သူမ', 'she; her', 'သူမ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '她' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '4fe0beaa-28e5-201d-b66f-058dce6cda74', '0a3fd6dd-0463-331a-116b-87d8ac4af0e2', '她喜欢喝水。', 'Tā xǐhuan hē shuǐ.', 'သူမက ရေသောက်ရတာ ကြိုက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '0a3fd6dd-0463-331a-116b-87d8ac4af0e2')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '0a3fd6dd-0463-331a-116b-87d8ac4af0e2' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '4be9d703-fa83-c349-c014-a921477ac5cf', 1, NULL, '太', 'tai4', 'tài', ARRAY[4]::smallint[], 'ကြိယာဝိသေသန · Adverb', 'အလွန်၊ လွန်လွန်း', 'too; extremely', 'အလွန်၊ လွန်လွန်း', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '太' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'ba4b0664-12e0-4c41-be21-72a98ed612d0', '4be9d703-fa83-c349-c014-a921477ac5cf', '这个菜太好了。', 'Zhège cài tài hǎo le.', 'ဒီဟင်းက အရမ်းကောင်းတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '4be9d703-fa83-c349-c014-a921477ac5cf')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '4be9d703-fa83-c349-c014-a921477ac5cf' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '1212d789-bf87-3557-6bb8-3c69161b16c2', 1, NULL, '天气', 'tianqi1', 'tiānqì', ARRAY[1]::smallint[], 'နာမ် · Noun', 'ရာသီဥတု', 'weather', 'ရာသီဥတု', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '天气' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '1cf5292d-0312-ec45-ad41-b8cf26ba1c26', '1212d789-bf87-3557-6bb8-3c69161b16c2', '北京的天气很冷。', 'Běijīng de tiānqì hěn lěng.', 'ပေကျင်းရဲ့ ရာသီဥတုက အရမ်းအေးတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '1212d789-bf87-3557-6bb8-3c69161b16c2')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '1212d789-bf87-3557-6bb8-3c69161b16c2' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '3ece8eb2-6883-9573-f522-430414bc2ba1', 1, NULL, '听', 'ting1', 'tīng', ARRAY[1]::smallint[], 'ကြိယာ · Verb', 'နားထောင်သည်', 'to listen', 'နားထောင်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '听' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'e91dc168-cc1d-a534-9abe-f3b58388b53c', '3ece8eb2-6883-9573-f522-430414bc2ba1', '我喜欢听音乐。', 'Wǒ xǐhuan tīng yīnyuè.', 'ကျွန်တော်/ကျွန်မ သီချင်းနားထောင်ရတာ ကြိုက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '3ece8eb2-6883-9573-f522-430414bc2ba1')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '3ece8eb2-6883-9573-f522-430414bc2ba1' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '0f45eac7-b5ec-bc8a-62e5-6ff223df862f', 1, NULL, '同学', 'tongxue2', 'tóngxué', ARRAY[2]::smallint[], 'နာမ် · Noun', 'အတန်းဖော်', 'classmate', 'အတန်းဖော်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '同学' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '91c58325-99d7-d9dc-1b25-275bdadcdd49', '0f45eac7-b5ec-bc8a-62e5-6ff223df862f', '他是我的同学。', 'Tā shì wǒ de tóngxué.', 'သူက ကျွန်တော်/ကျွန်မရဲ့ အတန်းဖော်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '0f45eac7-b5ec-bc8a-62e5-6ff223df862f')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '0f45eac7-b5ec-bc8a-62e5-6ff223df862f' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '7294b69b-898a-7f7c-c9d5-bb8a859e6efe', 1, NULL, '喂', 'wei4', 'wèi', ARRAY[4]::smallint[], 'အာမေဍိတ် · Interjection', 'ဟယ်လို (ဖုန်းဖြေစကား)', 'hello (on the phone)', 'ဟယ်လို (ဖုန်းဖြေစကား)', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '喂' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '6e17faa6-422a-df17-362b-d4104cacc6fb', '7294b69b-898a-7f7c-c9d5-bb8a859e6efe', '喂，你好！', 'Wèi, nǐ hǎo!', 'ဟယ်လို၊ မင်္ဂလာပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '7294b69b-898a-7f7c-c9d5-bb8a859e6efe')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '7294b69b-898a-7f7c-c9d5-bb8a859e6efe' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'd630d462-d26a-b19d-ab0a-98fa09282919', 1, NULL, '我', 'wo3', 'wǒ', ARRAY[3]::smallint[], 'နာမ်စား · Pronoun', 'ကျွန်တော်၊ ကျွန်မ', 'I; me', 'ကျွန်တော်၊ ကျွန်မ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '我' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '65f72977-a178-eadc-ae42-b74e56991128', 'd630d462-d26a-b19d-ab0a-98fa09282919', '我是学生。', 'Wǒ shì xuésheng.', 'ကျွန်တော်/ကျွန်မက ကျောင်းသား/သူပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'd630d462-d26a-b19d-ab0a-98fa09282919')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'd630d462-d26a-b19d-ab0a-98fa09282919' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a613fea0-b2ba-1881-747f-4cb0da79ae9b', 1, NULL, '我们', 'women3', 'wǒmen', ARRAY[3]::smallint[], 'နာမ်စား · Pronoun', 'ကျွန်တော်တို့၊ ကျွန်မတို့', 'we; us', 'ကျွန်တော်တို့၊ ကျွန်မတို့', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '我们' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '22c1ec8e-6c18-ea91-76d5-992a670ec091', 'a613fea0-b2ba-1881-747f-4cb0da79ae9b', '我们一起学习。', 'Wǒmen yìqǐ xuéxí.', 'ကျွန်တော်တို့ အတူတူလေ့လာတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a613fea0-b2ba-1881-747f-4cb0da79ae9b')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a613fea0-b2ba-1881-747f-4cb0da79ae9b' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '81fa50f3-743b-b66c-d4f0-e66e52598edb', 1, NULL, '五', 'wu3', 'wǔ', ARRAY[3]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'ငါး', 'five', 'ငါး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '五' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '9188921a-f7ed-9faa-0f99-097433245fbd', '81fa50f3-743b-b66c-d4f0-e66e52598edb', '我有五本书。', 'Wǒ yǒu wǔ běn shū.', 'ကျွန်တော်/ကျွန်မမှာ စာအုပ်ငါးအုပ်ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '81fa50f3-743b-b66c-d4f0-e66e52598edb')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '81fa50f3-743b-b66c-d4f0-e66e52598edb' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'ad2c6cb1-c274-fde3-6e67-e846ac42a0a5', 1, NULL, '喜欢', 'xihuan3', 'xǐhuan', ARRAY[3]::smallint[], 'ကြိယာ · Verb', 'နှစ်သက်သည်', 'to like', 'နှစ်သက်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '喜欢' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '688fbd26-33ae-b734-5654-1290483a46f1', 'ad2c6cb1-c274-fde3-6e67-e846ac42a0a5', '我喜欢这个电影。', 'Wǒ xǐhuan zhège diànyǐng.', 'ကျွန်တော်/ကျွန်မ ဒီရုပ်ရှင်ကို ကြိုက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'ad2c6cb1-c274-fde3-6e67-e846ac42a0a5')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'ad2c6cb1-c274-fde3-6e67-e846ac42a0a5' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'fba60fe7-b914-a27c-20a4-a78d9192db83', 1, NULL, '下', 'xia4', 'xià', ARRAY[4]::smallint[], 'နာမ် · Noun', 'အောက်၊ အောက်မှာ', 'down; below', 'အောက်၊ အောက်မှာ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '下' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '3fc970a8-0a37-7918-bbe1-e684d7b16d24', 'fba60fe7-b914-a27c-20a4-a78d9192db83', '猫在桌子下。', 'Māo zài zhuōzi xià.', 'ကြောင်က စားပွဲအောက်မှာ ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'fba60fe7-b914-a27c-20a4-a78d9192db83')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'fba60fe7-b914-a27c-20a4-a78d9192db83' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '86719cc7-31d9-e008-58d5-714313aa967e', 1, NULL, '下午', 'xiawu4', 'xiàwǔ', ARRAY[4]::smallint[], 'နာမ် · Noun', 'နေ့လယ်နောက်ပိုင်း', 'afternoon', 'နေ့လယ်နောက်ပိုင်း', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '下午' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '4b6d2eb6-666d-22ed-a6a2-fb55f3c2d47a', '86719cc7-31d9-e008-58d5-714313aa967e', '下午我去商店。', 'Xiàwǔ wǒ qù shāngdiàn.', 'နေ့လယ်နောက်ပိုင်း ကျွန်တော်/ကျွန်မ စတိုးဆိုင်သွားတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '86719cc7-31d9-e008-58d5-714313aa967e')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '86719cc7-31d9-e008-58d5-714313aa967e' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '2bcd1060-9247-9d40-1a08-19ba8f9fde98', 1, NULL, '下雨', 'xiayu4', 'xiàyǔ', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'မိုးရွာသည်', 'to rain', 'မိုးရွာသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '下雨' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '0a8b2589-595c-d21f-8a56-596a4db366a4', '2bcd1060-9247-9d40-1a08-19ba8f9fde98', '今天下雨了。', 'Jīntiān xiàyǔ le.', 'ဒီနေ့ မိုးရွာနေပြီ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '2bcd1060-9247-9d40-1a08-19ba8f9fde98')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '2bcd1060-9247-9d40-1a08-19ba8f9fde98' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '0e73a91a-cda6-233a-e272-5602523b41f1', 1, NULL, '先生', 'xiansheng1', 'xiānsheng', ARRAY[1]::smallint[], 'နာမ် · Noun', 'မစ္စတာ၊ အမျိုးသား', 'Mr.; sir', 'မစ္စတာ၊ အမျိုးသား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '先生' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'e7073abb-74d5-0df5-a15f-379ae53f7399', '0e73a91a-cda6-233a-e272-5602523b41f1', '那位先生是医生。', 'Nà wèi xiānsheng shì yīshēng.', 'အဲဒီအမျိုးသားက ဆရာဝန်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '0e73a91a-cda6-233a-e272-5602523b41f1')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '0e73a91a-cda6-233a-e272-5602523b41f1' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'daffc194-eaab-e21c-7f59-c488aa2d0aa3', 1, NULL, '现在', 'xianzai4', 'xiànzài', ARRAY[4]::smallint[], 'နာမ် · Noun', 'အခု', 'now', 'အခု', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '现在' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '32732d46-bb6c-3b98-9c20-cde696d23049', 'daffc194-eaab-e21c-7f59-c488aa2d0aa3', '现在你忙吗？', 'Xiànzài nǐ máng ma?', 'အခု မင်းအလုပ်များလား။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'daffc194-eaab-e21c-7f59-c488aa2d0aa3')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'daffc194-eaab-e21c-7f59-c488aa2d0aa3' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '4a462e57-8c65-7b92-0a31-65fc6a10af4d', 1, NULL, '想', 'xiang3', 'xiǎng', ARRAY[3]::smallint[], 'ကြိယာ · Verb', 'ချင်သည်၊ စဉ်းစားသည်', 'to want; would like', 'ချင်သည်၊ စဉ်းစားသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '想' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '81cce9c7-cc37-859f-19b6-1960a08798ac', '4a462e57-8c65-7b92-0a31-65fc6a10af4d', '我想喝茶。', 'Wǒ xiǎng hē chá.', 'ကျွန်တော်/ကျွန်မ လက်ဖက်ရည်သောက်ချင်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '4a462e57-8c65-7b92-0a31-65fc6a10af4d')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '4a462e57-8c65-7b92-0a31-65fc6a10af4d' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '53969477-0a98-cc6d-b369-212963faa93c', 1, NULL, '小', 'xiao3', 'xiǎo', ARRAY[3]::smallint[], 'နာမဝိသေသန · Adjective', 'သေးသော', 'small', 'သေးသော', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '小' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '708e4c5c-17ba-809d-610f-dffcaf467463', '53969477-0a98-cc6d-b369-212963faa93c', '我的房间很小。', 'Wǒ de fángjiān hěn xiǎo.', 'ကျွန်တော်/ကျွန်မရဲ့ အခန်းက အရမ်းသေးတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '53969477-0a98-cc6d-b369-212963faa93c')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '53969477-0a98-cc6d-b369-212963faa93c' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '5c31eaf4-331f-e88b-d338-58e8dbd2283f', 1, NULL, '小姐', 'xiaojie3', 'xiǎojie', ARRAY[3]::smallint[], 'နာမ် · Noun', 'မိန်းမငယ်၊ မစ္စ', 'Miss; young woman', 'မိန်းမငယ်၊ မစ္စ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '小姐' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '0ba47e6c-40c6-d2ed-2db0-870e23c4e481', '5c31eaf4-331f-e88b-d338-58e8dbd2283f', '小姐，请问医院在哪儿？', 'Xiǎojie, qǐngwèn yīyuàn zài nǎr?', 'မစ္စ၊ ဆေးရုံက ဘယ်မှာလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '5c31eaf4-331f-e88b-d338-58e8dbd2283f')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '5c31eaf4-331f-e88b-d338-58e8dbd2283f' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a21328a4-68f7-4f42-255b-828302eef66a', 1, NULL, '些', 'xie1', 'xiē', ARRAY[1]::smallint[], 'အရေအတွက်ပြစကား · Quantifier', 'အချို့၊ အနည်းငယ်', 'some; several', 'အချို့၊ အနည်းငယ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '些' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '37aa1798-822e-f3f2-f266-930fbcabba97', 'a21328a4-68f7-4f42-255b-828302eef66a', '我买了些水果。', 'Wǒ mǎi le xiē shuǐguǒ.', 'ကျွန်တော်/ကျွန်မ သစ်သီးနည်းနည်းဝယ်ခဲ့တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a21328a4-68f7-4f42-255b-828302eef66a')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a21328a4-68f7-4f42-255b-828302eef66a' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '392acf6b-30e9-8544-c693-f0b771cd393e', 1, NULL, '写', 'xie3', 'xiě', ARRAY[3]::smallint[], 'ကြိယာ · Verb', 'ရေးသည်', 'to write', 'ရေးသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '写' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '63cafdf2-2f3c-1b4b-ad7e-62d904603aba', '392acf6b-30e9-8544-c693-f0b771cd393e', '请写你的名字。', 'Qǐng xiě nǐ de míngzi.', 'ကျေးဇူးပြုပြီး မင်းနာမည်ရေးပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '392acf6b-30e9-8544-c693-f0b771cd393e')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '392acf6b-30e9-8544-c693-f0b771cd393e' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '233bf0dc-9e3c-1237-45e3-752bc162bb07', 1, NULL, '谢谢', 'xiexie4', 'xièxie', ARRAY[4]::smallint[], 'အမူအရာစကား · Expression', 'ကျေးဇူးတင်ပါတယ်', 'thank you', 'ကျေးဇူးတင်ပါတယ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '谢谢' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '9f7cfbe3-49cc-feeb-4f08-f6555f9c9176', '233bf0dc-9e3c-1237-45e3-752bc162bb07', '谢谢你的帮助。', 'Xièxie nǐ de bāngzhù.', 'မင်းရဲ့အကူအညီအတွက် ကျေးဇူးတင်ပါတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '233bf0dc-9e3c-1237-45e3-752bc162bb07')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '233bf0dc-9e3c-1237-45e3-752bc162bb07' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'da4503da-6abc-dd87-6709-9f7f4ed486fb', 1, NULL, '星期', 'xingqi1', 'xīngqī', ARRAY[1]::smallint[], 'နာမ် · Noun', 'အပတ်၊ ရက်သတ္တပတ်', 'week', 'အပတ်၊ ရက်သတ္တပတ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '星期' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '16e646b1-8107-213e-c09f-bb4c763dec0c', 'da4503da-6abc-dd87-6709-9f7f4ed486fb', '今天星期几？', 'Jīntiān xīngqī jǐ?', 'ဒီနေ့ ဘာနေ့လဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'da4503da-6abc-dd87-6709-9f7f4ed486fb')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'da4503da-6abc-dd87-6709-9f7f4ed486fb' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '02e6c3af-36b3-783b-a4dd-afbd5748a256', 1, NULL, '学生', 'xuesheng2', 'xuésheng', ARRAY[2]::smallint[], 'နာမ် · Noun', 'ကျောင်းသား၊ ကျောင်းသူ', 'student', 'ကျောင်းသား၊ ကျောင်းသူ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '学生' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'da2c825e-5eea-f80a-c0e1-0c67f67396dc', '02e6c3af-36b3-783b-a4dd-afbd5748a256', '我是中国学生。', 'Wǒ shì Zhōngguó xuésheng.', 'ကျွန်တော်/ကျွန်မက တရုတ်ကျောင်းသား/သူပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '02e6c3af-36b3-783b-a4dd-afbd5748a256')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '02e6c3af-36b3-783b-a4dd-afbd5748a256' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '76d84ef3-eb6b-ae04-1a2b-ad8a9ad64592', 1, NULL, '学习', 'xuexi2', 'xuéxí', ARRAY[2]::smallint[], 'ကြိယာ · Verb', 'လေ့လာသည်', 'to study', 'လေ့လာသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '学习' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '486abc9c-2278-a218-71a3-15fc791389c7', '76d84ef3-eb6b-ae04-1a2b-ad8a9ad64592', '我每天学习汉语。', 'Wǒ měitiān xuéxí Hànyǔ.', 'ကျွန်တော်/ကျွန်မ နေ့တိုင်း တရုတ်စာလေ့လာတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '76d84ef3-eb6b-ae04-1a2b-ad8a9ad64592')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '76d84ef3-eb6b-ae04-1a2b-ad8a9ad64592' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '9c6e1cb0-b9ea-f48b-5605-462ad1594eb2', 1, NULL, '学校', 'xuexiao2', 'xuéxiào', ARRAY[2]::smallint[], 'နာမ် · Noun', 'ကျောင်း', 'school', 'ကျောင်း', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '学校' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '699f3a0e-99cc-aae2-236a-6e484da72b8d', '9c6e1cb0-b9ea-f48b-5605-462ad1594eb2', '我的学校很大。', 'Wǒ de xuéxiào hěn dà.', 'ကျွန်တော်/ကျွန်မရဲ့ ကျောင်းက အရမ်းကြီးတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '9c6e1cb0-b9ea-f48b-5605-462ad1594eb2')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '9c6e1cb0-b9ea-f48b-5605-462ad1594eb2' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '378a3c1b-8a51-47be-dfdc-0f3914addd43', 1, NULL, '一', 'yi1', 'yī', ARRAY[1]::smallint[], 'ကိန်းဂဏန်း · Numeral', 'တစ်', 'one', 'တစ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '一' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'f7f152b3-59fc-76d8-7586-ccf515b7ce4f', '378a3c1b-8a51-47be-dfdc-0f3914addd43', '我有一个苹果。', 'Wǒ yǒu yí ge píngguǒ.', 'ကျွန်တော်/ကျွန်မမှာ ပန်းသီးတစ်လုံးရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '378a3c1b-8a51-47be-dfdc-0f3914addd43')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '378a3c1b-8a51-47be-dfdc-0f3914addd43' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '0b7d1b9f-678c-bb49-0548-ca6d52b55990', 1, NULL, '一点儿', 'yidianr4', 'yìdiǎnr', ARRAY[4]::smallint[], 'အရေအတွက်ပြစကား · Quantifier', 'အနည်းငယ်', 'a little bit', 'အနည်းငယ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '一点儿' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '6ab1ed74-c19c-fa7e-35e6-449036b0b6ff', '0b7d1b9f-678c-bb49-0548-ca6d52b55990', '请给我一点儿水。', 'Qǐng gěi wǒ yìdiǎnr shuǐ.', 'ကျေးဇူးပြုပြီး ကျွန်တော်/ကျွန်မကို ရေနည်းနည်းပေးပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '0b7d1b9f-678c-bb49-0548-ca6d52b55990')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '0b7d1b9f-678c-bb49-0548-ca6d52b55990' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '8eea26d7-be2c-0687-80fb-387a57e5144d', 1, NULL, '医生', 'yisheng1', 'yīshēng', ARRAY[1]::smallint[], 'နာမ် · Noun', 'ဆရာဝန်', 'doctor', 'ဆရာဝန်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '医生' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '105008d3-9b76-5ef3-f9ea-07ffa1c97a34', '8eea26d7-be2c-0687-80fb-387a57e5144d', '她是医生。', 'Tā shì yīshēng.', 'သူမက ဆရာဝန်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '8eea26d7-be2c-0687-80fb-387a57e5144d')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '8eea26d7-be2c-0687-80fb-387a57e5144d' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'ac57e676-d085-c945-209d-00052f2030d3', 1, NULL, '医院', 'yiyuan1', 'yīyuàn', ARRAY[1]::smallint[], 'နာမ် · Noun', 'ဆေးရုံ', 'hospital', 'ဆေးရုံ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '医院' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'b8dfeaf1-8d59-7359-1182-2dd460abeb43', 'ac57e676-d085-c945-209d-00052f2030d3', '医院在商店前面。', 'Yīyuàn zài shāngdiàn qiánmiàn.', 'ဆေးရုံက စတိုးဆိုင်ရှေ့မှာရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'ac57e676-d085-c945-209d-00052f2030d3')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'ac57e676-d085-c945-209d-00052f2030d3' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'e91f961a-67b7-537a-667e-8d2ae8481769', 1, NULL, '衣服', 'yifu1', 'yīfu', ARRAY[1]::smallint[], 'နာမ် · Noun', 'အဝတ်အစား', 'clothes', 'အဝတ်အစား', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '衣服' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'eaef6d3d-4dc3-77bb-d809-4aac27102118', 'e91f961a-67b7-537a-667e-8d2ae8481769', '我的衣服在椅子上。', 'Wǒ de yīfu zài yǐzi shàng.', 'ကျွန်တော်/ကျွန်မရဲ့ အဝတ်အစားက ထိုင်ခုံပေါ်မှာ ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'e91f961a-67b7-537a-667e-8d2ae8481769')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'e91f961a-67b7-537a-667e-8d2ae8481769' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '3481ed8d-4411-855e-da68-004c01a714b9', 1, NULL, '椅子', 'yizi3', 'yǐzi', ARRAY[3]::smallint[], 'နာမ် · Noun', 'ထိုင်ခုံ', 'chair', 'ထိုင်ခုံ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '椅子' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'c91a19ee-aac4-22af-ec3c-3027f81c1e5e', '3481ed8d-4411-855e-da68-004c01a714b9', '请坐在椅子上。', 'Qǐng zuò zài yǐzi shàng.', 'ကျေးဇူးပြုပြီး ထိုင်ခုံပေါ်မှာ ထိုင်ပါ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '3481ed8d-4411-855e-da68-004c01a714b9')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '3481ed8d-4411-855e-da68-004c01a714b9' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '35b8a980-0364-e26e-556b-358ed86ef1bc', 1, NULL, '有', 'you3', 'yǒu', ARRAY[3]::smallint[], 'ကြိယာ · Verb', 'ရှိသည်၊ ပိုင်ဆိုင်သည်', 'to have; there is', 'ရှိသည်၊ ပိုင်ဆိုင်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '有' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '38a20d0f-03a8-0878-ad74-30757ab4aeb0', '35b8a980-0364-e26e-556b-358ed86ef1bc', '桌子上有一本书。', 'Zhuōzi shàng yǒu yì běn shū.', 'စားပွဲပေါ်မှာ စာအုပ်တစ်အုပ်ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '35b8a980-0364-e26e-556b-358ed86ef1bc')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '35b8a980-0364-e26e-556b-358ed86ef1bc' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'b7eeffe4-1de6-7891-ed1b-138b79b220fe', 1, NULL, '月', 'yue4', 'yuè', ARRAY[4]::smallint[], 'နာမ် · Noun', 'လ', 'month; moon', 'လ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '月' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '046a541e-f90d-f6d0-a26f-dd184fbdb6c0', 'b7eeffe4-1de6-7891-ed1b-138b79b220fe', '我学了三个月汉语。', 'Wǒ xué le sān ge yuè Hànyǔ.', 'ကျွန်တော်/ကျွန်မ တရုတ်စာ သုံးလလေ့လာခဲ့တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'b7eeffe4-1de6-7891-ed1b-138b79b220fe')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'b7eeffe4-1de6-7891-ed1b-138b79b220fe' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '11575a1f-9de9-47ff-ea6e-7eb3613a922c', 1, NULL, '再见', 'zaijian4', 'zàijiàn', ARRAY[4]::smallint[], 'အမူအရာစကား · Expression', 'နောက်မှတွေ့မယ်', 'goodbye', 'နောက်မှတွေ့မယ်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '再见' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '45671f19-6490-3071-445c-78c0e3328b12', '11575a1f-9de9-47ff-ea6e-7eb3613a922c', '老师，再见！', 'Lǎoshī, zàijiàn!', 'ဆရာ၊ နောက်မှတွေ့မယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '11575a1f-9de9-47ff-ea6e-7eb3613a922c')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '11575a1f-9de9-47ff-ea6e-7eb3613a922c' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'beb38b94-47fe-bd11-4c3e-684f2253bc5b', 1, NULL, '在', 'zai4', 'zài', ARRAY[4]::smallint[], 'ဝိဘတ် · Preposition', 'မှာ၊ တွင်', 'at; in', 'မှာ၊ တွင်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '在' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '49273805-d063-c561-34dd-a2f379d0727a', 'beb38b94-47fe-bd11-4c3e-684f2253bc5b', '我在家学习。', 'Wǒ zài jiā xuéxí.', 'ကျွန်တော်/ကျွန်မ အိမ်မှာ စာလေ့လာတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'beb38b94-47fe-bd11-4c3e-684f2253bc5b')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'beb38b94-47fe-bd11-4c3e-684f2253bc5b' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a5ff183a-18dd-d85b-b4d2-a0c882769331', 1, NULL, '怎么', 'zenme3', 'zěnme', ARRAY[3]::smallint[], 'မေးခွန်းစကား · Interrogative', 'ဘယ်လို', 'how', 'ဘယ်လို', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '怎么' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '1602d0e1-d2a4-bd88-a088-76c9f9ca05fa', 'a5ff183a-18dd-d85b-b4d2-a0c882769331', '这个字怎么读？', 'Zhège zì zěnme dú?', 'ဒီစာလုံးကို ဘယ်လိုဖတ်လဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a5ff183a-18dd-d85b-b4d2-a0c882769331')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a5ff183a-18dd-d85b-b4d2-a0c882769331' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'ccb7dead-2306-b7be-4138-49a87b3ee20e', 1, NULL, '怎么样', 'zenmeyang3', 'zěnmeyàng', ARRAY[3]::smallint[], 'မေးခွန်းစကား · Interrogative', 'ဘယ်လိုလဲ', 'how about; how is it', 'ဘယ်လိုလဲ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '怎么样' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '6d888464-b964-678f-5ca4-5af022e8d4ba', 'ccb7dead-2306-b7be-4138-49a87b3ee20e', '你的汉语怎么样？', 'Nǐ de Hànyǔ zěnmeyàng?', 'မင်းရဲ့ တရုတ်စကား ဘယ်လိုလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'ccb7dead-2306-b7be-4138-49a87b3ee20e')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'ccb7dead-2306-b7be-4138-49a87b3ee20e' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'c8513f0b-4def-6e55-16ed-06cb7050a2e3', 1, NULL, '这', 'zhe4', 'zhè', ARRAY[4]::smallint[], 'ညွှန်ပြနာမ်စား · Demonstrative Pronoun', 'ဒီ၊ ဒီမှာ', 'this; here', 'ဒီ၊ ဒီမှာ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '这' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'e18bbd46-9e41-10bd-5383-b9ee53a1c28e', 'c8513f0b-4def-6e55-16ed-06cb7050a2e3', '这儿有一家饭店。', 'Zhèr yǒu yì jiā fàndiàn.', 'ဒီမှာ စားသောက်ဆိုင်တစ်ဆိုင်ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'c8513f0b-4def-6e55-16ed-06cb7050a2e3')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'c8513f0b-4def-6e55-16ed-06cb7050a2e3' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'a66fe115-eb6e-9bcc-b20f-22a29355a29c', 1, NULL, '中国', 'Zhongguo1', 'Zhōngguó', ARRAY[1]::smallint[], 'နာမ် · Noun', 'တရုတ်နိုင်ငံ', 'China', 'တရုတ်နိုင်ငံ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '中国' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '1df88097-3760-6d06-13b7-046efb0cca1f', 'a66fe115-eb6e-9bcc-b20f-22a29355a29c', '我喜欢中国。', 'Wǒ xǐhuan Zhōngguó.', 'ကျွန်တော်/ကျွန်မ တရုတ်နိုင်ငံကို ကြိုက်တယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'a66fe115-eb6e-9bcc-b20f-22a29355a29c')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'a66fe115-eb6e-9bcc-b20f-22a29355a29c' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '3e6189a0-2a7d-ea3a-3ad4-99764d9dcb1c', 1, NULL, '中午', 'zhongwu1', 'zhōngwǔ', ARRAY[1]::smallint[], 'နာမ် · Noun', 'မွန်းတည့်', 'noon', 'မွန်းတည့်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '中午' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '79206795-e451-c176-021c-7515fe653593', '3e6189a0-2a7d-ea3a-3ad4-99764d9dcb1c', '我们中午吃米饭。', 'Wǒmen zhōngwǔ chī mǐfàn.', 'ကျွန်တော်တို့ မွန်းတည့်မှာ ထမင်းစားတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '3e6189a0-2a7d-ea3a-3ad4-99764d9dcb1c')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '3e6189a0-2a7d-ea3a-3ad4-99764d9dcb1c' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '02adeba1-130b-374e-bd0b-47f3c94b560a', 1, NULL, '住', 'zhu4', 'zhù', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'နေထိုင်သည်', 'to live; reside', 'နေထိုင်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '住' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '8b7fc17f-ee6e-e68c-afed-14cfc6149776', '02adeba1-130b-374e-bd0b-47f3c94b560a', '我住在北京。', 'Wǒ zhù zài Běijīng.', 'ကျွန်တော်/ကျွန်မ ပေကျင်းမှာ နေတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '02adeba1-130b-374e-bd0b-47f3c94b560a')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '02adeba1-130b-374e-bd0b-47f3c94b560a' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '2566a10c-be55-9380-1f95-d66057d13b1b', 1, NULL, '桌子', 'zhuozi1', 'zhuōzi', ARRAY[1]::smallint[], 'နာမ် · Noun', 'စားပွဲ', 'table; desk', 'စားပွဲ', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '桌子' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '2b16297c-23af-8bb3-9fd6-5c87be4646f1', '2566a10c-be55-9380-1f95-d66057d13b1b', '电脑在桌子上。', 'Diànnǎo zài zhuōzi shàng.', 'ကွန်ပျူတာက စားပွဲပေါ်မှာ ရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '2566a10c-be55-9380-1f95-d66057d13b1b')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '2566a10c-be55-9380-1f95-d66057d13b1b' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '576b7a2d-4bc8-1825-8999-622febe6b4bc', 1, NULL, '字', 'zi4', 'zì', ARRAY[4]::smallint[], 'နာမ် · Noun', 'စာလုံး', 'Chinese character; word', 'စာလုံး', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '字' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '29982fce-80f1-d30a-3c83-1d48dc88bcd6', '576b7a2d-4bc8-1825-8999-622febe6b4bc', '这个字怎么写？', 'Zhège zì zěnme xiě?', 'ဒီစာလုံးကို ဘယ်လိုရေးလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '576b7a2d-4bc8-1825-8999-622febe6b4bc')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '576b7a2d-4bc8-1825-8999-622febe6b4bc' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'aedab069-53e6-dee7-bb4a-d149669f5ce9', 1, NULL, '昨天', 'zuotian2', 'zuótiān', ARRAY[2]::smallint[], 'နာမ် · Noun', 'မနေ့က', 'yesterday', 'မနေ့က', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '昨天' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'a98ca254-1e73-bae4-5e72-3de739779703', 'aedab069-53e6-dee7-bb4a-d149669f5ce9', '昨天我在学校。', 'Zuótiān wǒ zài xuéxiào.', 'မနေ့က ကျွန်တော်/ကျွန်မ ကျောင်းမှာရှိတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'aedab069-53e6-dee7-bb4a-d149669f5ce9')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'aedab069-53e6-dee7-bb4a-d149669f5ce9' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT 'e6ebf261-f5dd-8a55-d40d-206e34135727', 1, NULL, '做', 'zuo4', 'zuò', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'လုပ်သည်', 'to do; make', 'လုပ်သည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '做' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT 'f9461d0a-6b15-4d84-380f-e1db0575790f', 'e6ebf261-f5dd-8a55-d40d-206e34135727', '你在做什么？', 'Nǐ zài zuò shénme?', 'မင်း ဘာလုပ်နေတာလဲ။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = 'e6ebf261-f5dd-8a55-d40d-206e34135727')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = 'e6ebf261-f5dd-8a55-d40d-206e34135727' AND sort_order = 1);

INSERT INTO public.vocabulary (id, hsk_level_id, category_id, hanzi, pinyin_numbered, pinyin_marked, tone_numbers, part_of_speech, meaning_my, meaning_en, definition_my, usage_notes_my, status, version, published_at, created_by, updated_by)
SELECT '69c4f343-6e0c-b845-8b72-0012163b6e47', 1, NULL, '坐', 'zuo4', 'zuò', ARRAY[4]::smallint[], 'ကြိယာ · Verb', 'ထိုင်သည်၊ စီးသည်', 'to sit; take (transport)', 'ထိုင်သည်၊ စီးသည်', NULL, 'published', 1, now(), actor.id, actor.id
FROM (SELECT id FROM public.profiles ORDER BY created_at LIMIT 1) actor
WHERE NOT EXISTS (SELECT 1 FROM public.vocabulary WHERE hanzi = '坐' AND hsk_level_id = 1 AND status <> 'archived');

INSERT INTO public.vocabulary_examples (id, vocabulary_id, sentence_zh, sentence_pinyin, translation_my, translation_en, sort_order, status)
SELECT '13cbbea6-a257-4884-e9d2-2a7f00a16807', '69c4f343-6e0c-b845-8b72-0012163b6e47', '我坐飞机去中国。', 'Wǒ zuò fēijī qù Zhōngguó.', 'ကျွန်တော်/ကျွန်မ လေယာဉ်စီးပြီး တရုတ်နိုင်ငံသွားတယ်။', NULL, 1, 'published'
WHERE EXISTS (SELECT 1 FROM public.vocabulary WHERE id = '69c4f343-6e0c-b845-8b72-0012163b6e47')
  AND NOT EXISTS (SELECT 1 FROM public.vocabulary_examples WHERE vocabulary_id = '69c4f343-6e0c-b845-8b72-0012163b6e47' AND sort_order = 1);

COMMIT;
