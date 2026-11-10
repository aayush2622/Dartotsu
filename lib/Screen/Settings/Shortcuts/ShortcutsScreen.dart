import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../SubSettingsScreen.dart';
import 'ShortcutSettings.dart';

class ShortcutsScreen extends StatelessWidget {
  const ShortcutsScreen({super.key});

  @override
  Widget build(BuildContext context) => SubSettingsScreen(
    title: getString.settingsShortcuts,
    settings: shortcutSettings,
  );
}
