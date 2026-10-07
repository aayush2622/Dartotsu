import 'package:flutter/widgets.dart';

import '../Preferences/PrefManager.dart';
import '../State/State.dart';

/// Owns the app locale. [code] is a shared auto-persisting [Pref.rx]; the root
/// app watches it, so changing it rebuilds strings without remounting.
class LocaleController extends AppController {
  final code = PrefName.appLocale.rx;

  Locale get locale => Locale(code.value);

  void setLocale(Locale value) {
    code.value = value.languageCode;
  }
}
