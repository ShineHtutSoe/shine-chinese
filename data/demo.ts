import type { GrammarPreview, HskLevel, QuizPreview, SpeakingPreview, VocabularyItem } from './types';

export const demoVocabulary: VocabularyItem[] = [
  { id: 'demo-xuexi', hanzi: '学习', pinyinMarked: 'xuéxí', partOfSpeechMy: 'ကြိယာ · Verb', meaningMy: 'စာလေ့လာသည်', meaningEn: 'to study', hskLevel: 1, category: 'နေ့စဉ်ဘဝ', example: { sentenceZh: '我每天学习中文。', sentencePinyin: 'Wǒ měitiān xuéxí Zhōngwén.', translationMy: 'ငါနေ့တိုင်း တရုတ်စာလေ့လာတယ်။' } },
  { id: 'demo-xihuan', hanzi: '喜欢', pinyinMarked: 'xǐhuan', partOfSpeechMy: 'ကြိယာ · Verb', meaningMy: 'နှစ်သက်သည်', meaningEn: 'to like', hskLevel: 1, category: 'ခံစားချက်', example: { sentenceZh: '我喜欢喝茶。', sentencePinyin: 'Wǒ xǐhuan hē chá.', translationMy: 'ငါ လက်ဖက်ရည်သောက်ရတာ နှစ်သက်တယ်။' } },
  { id: 'demo-pengyou', hanzi: '朋友', pinyinMarked: 'péngyou', partOfSpeechMy: 'နာမ် · Noun', meaningMy: 'သူငယ်ချင်း', meaningEn: 'friend', hskLevel: 1, category: 'လူမှုဘဝ', example: { sentenceZh: '他是我的好朋友。', sentencePinyin: 'Tā shì wǒ de hǎo péngyou.', translationMy: 'သူက ငါ့ရဲ့ သူငယ်ချင်းကောင်းတစ်ယောက်ပါ။' } },
  { id: 'demo-xiwang', hanzi: '希望', pinyinMarked: 'xīwàng', partOfSpeechMy: 'ကြိယာ · Verb', meaningMy: 'မျှော်လင့်သည်', meaningEn: 'to hope', hskLevel: 2, category: 'ခံစားချက်', example: { sentenceZh: '我希望明天是晴天。', sentencePinyin: 'Wǒ xīwàng míngtiān shì qíngtiān.', translationMy: 'မနက်ဖြန် နေသာမယ်လို့ ငါမျှော်လင့်တယ်။' } },
  { id: 'demo-tigao', hanzi: '提高', pinyinMarked: 'tígāo', partOfSpeechMy: 'ကြိယာ · Verb', meaningMy: 'တိုးတက်အောင်လုပ်သည်', meaningEn: 'to improve', hskLevel: 3, category: 'လေ့လာမှု', example: { sentenceZh: '多听中文可以提高听力。', sentencePinyin: 'Duō tīng Zhōngwén kěyǐ tígāo tīnglì.', translationMy: 'တရုတ်စကားများများနားထောင်ရင် နားထောင်နိုင်စွမ်းတိုးတက်စေတယ်။' } },
];

export const demoGrammar: GrammarPreview[] = [
  { id: 'le', titleZh: '了', titleMy: 'ပြီးဆုံးမှု / အခြေအနေပြောင်းလဲမှု', pattern: 'Subject + Verb + 了 + Object', summaryMy: 'လုပ်ဆောင်ချက်ပြီးဆုံးသွားတာ သို့မဟုတ် အခြေအနေအသစ်ဖြစ်လာတာကို ပြောရန်။', hsk: 1 },
  { id: 'guo', titleZh: '过', titleMy: 'အတွေ့အကြုံ', pattern: 'Subject + Verb + 过 + Object', summaryMy: 'အတိတ်မှာ တစ်စုံတစ်ရာ ကြုံဖူးကြောင်း ပြောရန်။', hsk: 2 },
  { id: 'ba', titleZh: '把', titleMy: 'အရာဝတ္ထုကို အလေးပေးခြင်း', pattern: 'Subject + 把 + Object + Verb + Result', summaryMy: 'လုပ်ဆောင်ချက်ရဲ့ အကျိုးသက်ရောက်မှုကို object ပေါ် အလေးပေးရန်။', hsk: 3 },
];

export const demoSpeaking: SpeakingPreview[] = [
  { id: 'greeting', titleMy: 'နှုတ်ဆက်ခြင်း', titleZh: '你好', descriptionMy: 'နေ့စဉ်တွေ့ဆုံတဲ့အခါ အသုံးများတဲ့ စကားများ', hsk: 1 },
  { id: 'intro', titleMy: 'မိတ်ဆက်ခြင်း', titleZh: '我叫…', descriptionMy: 'မိမိကိုယ်ကို ရိုးရှင်းစွာ မိတ်ဆက်ရန်', hsk: 1 },
  { id: 'shopping', titleMy: 'စျေးဝယ်ခြင်း', titleZh: '多少钱？', descriptionMy: 'စျေးနှုန်းမေးခြင်းနှင့် ဈေးဝယ်ခြင်း', hsk: 2 },
];

export const demoQuizzes: QuizPreview[] = [
  { id: 'hsk1-words', titleMy: 'HSK 1 စကားလုံးများ', typeMy: 'ရွေးချယ်မေးခွန်း', questionCount: 10, hsk: 1 },
  { id: 'grammar-basics', titleMy: 'အခြေခံသဒ္ဒါ', typeMy: 'ဝါကျဖြည့်ခြင်း', questionCount: 8, hsk: 1 },
  { id: 'hsk2-review', titleMy: 'HSK 2 ပြန်လည်လေ့လာခြင်း', typeMy: 'ရောနှောလေ့ကျင့်ခန်း', questionCount: 12, hsk: 2 },
];

export const hskLabels: Record<HskLevel, { title: string; subtitle: string }> = { 1: { title: 'HSK 1', subtitle: 'အခြေခံ' }, 2: { title: 'HSK 2', subtitle: 'အလယ်အလတ်' }, 3: { title: 'HSK 3', subtitle: 'တိုးတက်သော' } };
