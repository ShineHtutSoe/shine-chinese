export type HskLevel = 1 | 2 | 3;

export type VocabularyItem = { id: string; hanzi: string; pinyinMarked: string; partOfSpeechMy: string; meaningMy: string; meaningEn: string; hskLevel: HskLevel; category?: string; example?: { sentenceZh: string; sentencePinyin: string; translationMy: string } };
export type GrammarExample = { sentenceZh: string; sentencePinyin: string; translationMy: string; translationEn?: string };
export type GrammarItem = { id: string; titleZh: string; titleEn: string; titleMy: string; shortLabelMy: string; meaningMy: string; pattern: string; whenToUseMy: string; commonMistakesMy: string; hskMin: HskLevel; hskMax: HskLevel; examples: GrammarExample[] };
export type SpeakingLine = { id: string; speakerKey: string; speakerLabelMy?: string; sentenceZh: string; sentencePinyin: string; translationMy: string; sortOrder: number };
export type SpeakingItem = { id: string; titleMy: string; titleEn: string; titleZh?: string; descriptionMy: string; scenarioType: string; hskLevel?: HskLevel; category?: string; lines: SpeakingLine[] };
export type QuizQuestionType = 'multiple_choice' | 'fill_blank' | 'matching' | 'sentence_ordering';
export type QuizOption = { id: string; key: string; optionZh?: string; optionPinyin?: string; optionMy?: string; isCorrect: boolean };
export type QuizQuestion = { id: string; type: QuizQuestionType; promptZh?: string; promptPinyin?: string; promptMy: string; explanationMy: string; points: number; sortOrder: number; options: QuizOption[]; acceptedAnswers: string[]; payload?: { pairs?: Array<{ left: string; right: string }>; tokens?: string[]; answer?: string[] } };
export type QuizItem = { id: string; titleMy: string; titleEn: string; descriptionMy?: string; quizType: string; hskLevel?: HskLevel; questionCount: number; questions: QuizQuestion[] };
export type GrammarPreview = { id: string; titleZh: string; titleMy: string; pattern: string; summaryMy: string; hsk: HskLevel };
export type SpeakingPreview = { id: string; titleMy: string; titleZh: string; descriptionMy: string; hsk: HskLevel };
export type QuizPreview = { id: string; titleMy: string; typeMy: string; questionCount: number; hsk: HskLevel };
