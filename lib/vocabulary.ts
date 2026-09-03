import { demoVocabulary } from '../data/demo';
import { hsk1Vocabulary } from '../data/hsk1';
import type { HskLevel, VocabularyItem } from '../data/types';

/**
 * HSK 1 rebuild mode: vocabulary is intentionally local-only.
 * Supabase/database reads are not used in this phase.
 */
export async function getPublishedVocabulary(level: HskLevel): Promise<VocabularyItem[]> {
  if (level === 1) return hsk1Vocabulary;
  return demoVocabulary.filter(item => item.hskLevel === level);
}

export async function getPublishedVocabularyDetail(id: string): Promise<VocabularyItem> {
  const item = hsk1Vocabulary.find(vocabulary => vocabulary.id === id)
    ?? demoVocabulary.find(vocabulary => vocabulary.id === id);
  if (!item) throw new Error('Vocabulary item not found');
  return item;
}
