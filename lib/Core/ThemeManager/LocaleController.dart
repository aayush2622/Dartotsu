import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/widgets.dart';

import '../Preferences/PrefManager.dart';
import '../../l10n/app_localizations.dart';
import '../State/State.dart';

/// Owns the app locale. [code] is a shared auto-persisting [Pref.rx]; the root
/// app watches it, so changing it rebuilds strings without remounting.
class LocaleController extends AppController {
  final code = PrefName.appLocale.rx;

  Locale get locale => Locale(code.value);

  static String? get deviceLanguage {
    final supported = {
      for (final l in AppLocalizations.supportedLocales) l.languageCode,
    };
    for (final l in PlatformDispatcher.instance.locales) {
      if (supported.contains(l.languageCode)) return l.languageCode;
    }
    return null;
  }

  void setLocale(Locale value) {
    code.value = value.languageCode;
  }
}
