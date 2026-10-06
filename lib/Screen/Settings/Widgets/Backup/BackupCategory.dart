import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

extension BackupCategory on PrefLocation {
  String get label => switch (this) {
    PrefLocation.THEME => getString.backupCatTheme,
    PrefLocation.COMMON => getString.backupCatCommon,
    PrefLocation.PLAYER => getString.backupCatPlayer,
    PrefLocation.READER => getString.backupCatReader,
    PrefLocation.PROTECTED => getString.backupCatProtected,
    PrefLocation.OTHER || PrefLocation.CACHE => getString.backupCatOther,
  };

  String get description => switch (this) {
    PrefLocation.THEME => getString.backupCatThemeDesc,
    PrefLocation.COMMON => getString.backupCatCommonDesc,
    PrefLocation.PLAYER => getString.backupCatPlayerDesc,
    PrefLocation.READER => getString.backupCatReaderDesc,
    PrefLocation.PROTECTED => getString.backupCatProtectedDesc,
    PrefLocation.OTHER || PrefLocation.CACHE => getString.backupCatOtherDesc,
  };

  IconData get icon => switch (this) {
    PrefLocation.THEME => Icons.palette_outlined,
    PrefLocation.COMMON => Icons.tune_rounded,
    PrefLocation.PLAYER => Icons.play_circle_outline_rounded,
    PrefLocation.READER => Icons.menu_book_outlined,
    PrefLocation.PROTECTED => Icons.key_rounded,
    PrefLocation.OTHER ||
    PrefLocation.CACHE => Icons.dashboard_customize_outlined,
  };
}
