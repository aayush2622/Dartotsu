/// App theme-mode preference. Kept import-free so the preferences layer can
/// reference it without depending on the theme layer. The `ThemeMode`
/// conversion lives as an extension in `ThemeManager.dart`.
enum ThemeModePref { system, light, dark }
