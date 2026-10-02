import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';

List<Setting> generalSettings(BuildContext context) => [
  Setting(
    type: SettingType.custom,
    name: getString.language,
    builder: (_) => languageSwitcher(context),
  ),
];
