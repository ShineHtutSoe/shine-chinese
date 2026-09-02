import { Tabs } from 'expo-router';
import { BookOpen, Home, MessageCircle, Target, Languages } from 'lucide-react-native';
import { colors } from '../../constants/theme';

export default function TabsLayout() {
  return <Tabs screenOptions={{ headerShown: false, tabBarActiveTintColor: colors.primary, tabBarInactiveTintColor: colors.muted, tabBarLabelStyle: { fontSize: 10, fontWeight: '600', paddingBottom: 5 }, tabBarStyle: { height: 66, paddingTop: 7, borderTopColor: colors.border, backgroundColor: colors.surface }, tabBarIconStyle: { marginTop: 2 } }}>
    <Tabs.Screen name="index" options={{ title: 'ပင်မ', tabBarIcon: ({ color, size }) => <Home color={color} size={size} /> }} />
    <Tabs.Screen name="vocab" options={{ title: 'ဝေါဟာရ', tabBarIcon: ({ color, size }) => <Languages color={color} size={size} /> }} />
    <Tabs.Screen name="grammar" options={{ title: 'သဒ္ဒါ', tabBarIcon: ({ color, size }) => <BookOpen color={color} size={size} /> }} />
    <Tabs.Screen name="speaking" options={{ title: 'စကားပြော', tabBarIcon: ({ color, size }) => <MessageCircle color={color} size={size} /> }} />
    <Tabs.Screen name="practice" options={{ title: 'လေ့ကျင့်', tabBarIcon: ({ color, size }) => <Target color={color} size={size} /> }} />
  </Tabs>;
}
