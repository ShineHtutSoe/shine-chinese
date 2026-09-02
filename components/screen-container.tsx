import type { ReactNode } from 'react';
import { ScrollView, StyleSheet, View } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { colors } from '../constants/theme';

export function ScreenContainer({ children, scroll = true, contentContainerStyle }: { children: ReactNode; scroll?: boolean; contentContainerStyle?: object }) {
  return <SafeAreaView edges={['top', 'left', 'right']} style={styles.safe}><View style={styles.background}>{scroll ? <ScrollView contentContainerStyle={[styles.content, contentContainerStyle]} showsVerticalScrollIndicator={false}>{children}</ScrollView> : <View style={[styles.content, contentContainerStyle]}>{children}</View>}</View></SafeAreaView>;
}

const styles = StyleSheet.create({ safe: { flex: 1, backgroundColor: colors.background }, background: { flex: 1, backgroundColor: colors.background }, content: { paddingHorizontal: 20, paddingTop: 20, paddingBottom: 35 }, });
