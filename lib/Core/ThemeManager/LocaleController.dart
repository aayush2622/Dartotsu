import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../Preferences/PrefManager.dart';

/// Owns the app locale. [code] is a shared auto-persisting [Pref.rx]; changing
/// it also drives `Get.updateLocale` so the running app rebuilds strings
/// without remounting.
class LocaleController extends GetxController {
  final code = PrefName.appLocale.rx;

  Locale get locale => Locale(code.value);

  void setLocale(Locale value) {
    code.value = value.languageCode;
    Get.updateLocale(value);
  }
}
