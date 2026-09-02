import { useCallback, useEffect, useMemo, useState } from 'react';
import { useRouter } from 'expo-router';
import { Filter, Search, SlidersHorizontal } from 'lucide-react-native';
import { Pressable, StyleSheet, Text, TextInput, View } from 'react-native';
import { ScreenContainer } from '../../components/screen-container';
import { OfflineBanner, ScreenHeader, StateCard, VocabularyCard } from '../../components/ui';
import { colors, radius } from '../../constants/theme';
import { hskLabels } from '../../data/demo';
import type { HskLevel, VocabularyItem } from '../../data/types';
import { supabaseConfigured } from '../../lib/supabase';
import { getPublishedVocabulary } from '../../lib/vocabulary';

export default function VocabularyScreen() {
  const router = useRouter();
  const [level, setLevel] = useState<HskLevel>(1);
  const [query, setQuery] = useState('');
  const [items, setItems] = useState<VocabularyItem[]>([]);
  const [status, setStatus] = useState<'loading' | 'ready' | 'error'>('loading');
  const [favorites, setFavorites] = useState<Record<string, boolean>>({});

  const loadVocabulary = useCallback(async () => {
    setStatus('loading');
    try { setItems(await getPublishedVocabulary(level)); setStatus('ready'); } catch { setItems([]); setStatus('error'); }
  }, [level]);

  useEffect(() => { void loadVocabulary(); }, [loadVocabulary]);

  const filtered = useMemo(() => {
    const normalized = query.trim().toLocaleLowerCase();
    if (!normalized) return items;
    return items.filter(item => `${item.hanzi} ${item.pinyinMarked} ${item.meaningMy} ${item.meaningEn} ${item.category ?? ''}`.toLocaleLowerCase().includes(normalized));
  }, [items, query]);

  const toggleFavorite = (id: string) => setFavorites(current => ({ ...current, [id]: !current[id] }));

  return <ScreenContainer><ScreenHeader title="ဝေါဟာရ" subtitle="Published HSK 1–3 စကားလုံးများကို လေ့လာပါ။" action="Profile" onAction={() => router.push('/profile')} />{!supabaseConfigured ? <OfflineBanner /> : null}<View style={styles.searchRow}><View style={styles.searchBox}><Search size={17} color={colors.muted} /><TextInput value={query} onChangeText={setQuery} placeholder="Hanzi, Pinyin, မြန်မာလို ရှာမယ်" placeholderTextColor={colors.muted} style={styles.searchInput} returnKeyType="search" /></View><Pressable accessibilityRole="button" accessibilityLabel="ဝေါဟာရ filter ဖွင့်မယ်" style={styles.filterButton} onPress={() => router.push('/vocab-filters')}><SlidersHorizontal size={18} color={colors.primary} /></Pressable></View><View style={styles.levelRow}>{([1, 2, 3] as HskLevel[]).map(item => <Pressable key={item} accessibilityRole="button" accessibilityState={{ selected: level === item }} onPress={() => { setQuery(''); setLevel(item); }} style={[styles.levelChip, level === item && styles.levelSelected]}><Text style={[styles.levelCode, level === item && styles.levelTextSelected]}>{hskLabels[item].title}</Text><Text style={[styles.levelSubtitle, level === item && styles.levelTextSelected]}>{hskLabels[item].subtitle}</Text></Pressable>)}</View><View style={styles.resultRow}><Text style={styles.resultText}><Text style={styles.resultDot}>● </Text>{hskLabels[level].title} · {filtered.length} လုံး</Text>{query ? <Pressable onPress={() => setQuery('')}><Text style={styles.clearText}>ရှင်းမယ်</Text></Pressable> : null}</View>{status === 'loading' ? <StateCard kind="loading" title="စကားလုံးများကို ပြင်ဆင်နေပါတယ်" message="Published content ကို ဖတ်နေပါတယ်။" /> : status === 'error' ? <StateCard kind="error" title="ဝေါဟာရဖွင့်မရသေးပါ" message="Supabase connection သို့မဟုတ် content ကို စစ်ပြီး ပြန်စမ်းကြည့်ပါ။" action="ပြန်စမ်းမယ်" onAction={() => { void loadVocabulary(); }} /> : filtered.length === 0 ? <StateCard kind="empty" title="စကားလုံးမတွေ့ပါ" message="ရှာဖွေမှု သို့မဟုတ် HSK level ကို ပြန်စစ်ကြည့်ပါ။" action="ရှင်းမယ်" onAction={() => { setQuery(''); setLevel(1); }} /> : filtered.map(item => <VocabularyCard key={item.id} item={item} favorite={favorites[item.id] ?? false} onFavorite={() => toggleFavorite(item.id)} onAudio={() => undefined} onPress={() => router.push({ pathname: '/vocab/[id]', params: { id: item.id } })} />)}<View style={styles.footerHint}><Filter size={15} color={colors.muted} /><Text style={styles.footerHintText}>Search က လက်ရှိ loaded published results ပေါ်မှာ local အဖြစ် အလုပ်လုပ်ပါတယ်။</Text></View></ScreenContainer>;
}

const styles = StyleSheet.create({ searchRow: { flexDirection: 'row', gap: 9, marginBottom: 18 }, searchBox: { flex: 1, flexDirection: 'row', alignItems: 'center', gap: 8, paddingHorizontal: 13, borderWidth: 1, borderColor: colors.border, borderRadius: radius.sm, backgroundColor: colors.surface, minHeight: 46 }, searchInput: { flex: 1, color: colors.ink, fontSize: 12 }, filterButton: { width: 46, minHeight: 46, alignItems: 'center', justifyContent: 'center', borderRadius: radius.sm, backgroundColor: colors.primarySoft }, levelRow: { flexDirection: 'row', gap: 8, marginBottom: 18 }, levelChip: { flex: 1, padding: 11, borderWidth: 1, borderColor: colors.border, borderRadius: radius.sm, backgroundColor: colors.surface }, levelSelected: { backgroundColor: colors.primary, borderColor: colors.primary }, levelCode: { color: colors.primary, fontSize: 14, fontWeight: '800' }, levelSubtitle: { color: colors.muted, fontSize: 9, marginTop: 3 }, levelTextSelected: { color: colors.white }, resultRow: { flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center', marginBottom: 12 }, resultText: { color: colors.muted, fontSize: 10, fontWeight: '600' }, resultDot: { color: colors.accent }, clearText: { color: colors.primary, fontSize: 10, fontWeight: '700' }, footerHint: { flexDirection: 'row', gap: 7, paddingTop: 13, alignItems: 'center' }, footerHintText: { color: colors.muted, fontSize: 10, flex: 1, lineHeight: 16 }, });
