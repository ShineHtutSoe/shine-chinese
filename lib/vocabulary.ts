import { demoVocabulary } from '../data/demo';
import type { HskLevel, VocabularyItem } from '../data/types';
import { supabase, supabaseConfigured } from './supabase';

type VocabularyRow = {
  id: string;
  hanzi: string;
  pinyin_marked: string;
  part_of_speech: string;
  meaning_my: string;
  meaning_en: string;
  hsk_level_id: number;
  category?: { name_my?: string } | null;
  vocabulary_examples?: Array<{ sentence_zh: string; sentence_pinyin: string; translation_my: string; sort_order: number }>;
};

function mapVocabulary(row: VocabularyRow): VocabularyItem {
  const example = row.vocabulary_examples?.sort((a, b) => a.sort_order - b.sort_order)[0];
  return {
    id: row.id,
    hanzi: row.hanzi,
    pinyinMarked: row.pinyin_marked,
    partOfSpeechMy: row.part_of_speech,
    meaningMy: row.meaning_my,
    meaningEn: row.meaning_en,
    hskLevel: row.hsk_level_id as HskLevel,
    category: row.category?.name_my,
    example: example ? { sentenceZh: example.sentence_zh, sentencePinyin: example.sentence_pinyin, translationMy: example.translation_my } : undefined,
  };
}

export async function getPublishedVocabulary(level: HskLevel): Promise<VocabularyItem[]> {
  if (!supabaseConfigured) return demoVocabulary.filter(item => item.hskLevel === level);
  const { data, error } = await supabase.from('vocabulary').select('id, hanzi, pinyin_marked, part_of_speech, meaning_my, meaning_en, hsk_level_id, category:categories(name_my), vocabulary_examples(sentence_zh, sentence_pinyin, translation_my, sort_order)').eq('status', 'published').eq('hsk_level_id', level).order('hanzi').limit(100);
  if (error) throw error;
  return ((data ?? []) as unknown as VocabularyRow[]).map(mapVocabulary);
}

export async function getPublishedVocabularyDetail(id: string): Promise<VocabularyItem> {
  if (!supabaseConfigured) { const item = demoVocabulary.find(vocabulary => vocabulary.id === id); if (!item) throw new Error('Vocabulary item not found'); return item; }
  const { data, error } = await supabase.from('vocabulary').select('id, hanzi, pinyin_marked, part_of_speech, meaning_my, meaning_en, hsk_level_id, category:categories(name_my), vocabulary_examples(sentence_zh, sentence_pinyin, translation_my, sort_order)').eq('id', id).eq('status', 'published').maybeSingle();
  if (error) throw error;
  if (!data) throw new Error('Vocabulary item not found');
  return mapVocabulary(data as unknown as VocabularyRow);
}
