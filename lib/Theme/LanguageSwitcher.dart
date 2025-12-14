import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Preferences/PrefManager.dart';
import '../Widgets/DropdownMenu.dart';
import '../l10n/app_localizations.dart';
import 'language.dart';

AppLocalizations get getString => AppLocalizations.of(Get.context!)!;

Widget languageSwitcher(BuildContext context) {
  final languageOptions = _getSupportedLanguages(context);

  return buildDropdownMenu(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    currentValue: completeLanguageName(Get.locale!.languageCode.toUpperCase()),
    options: languageOptions
        .map((e) => completeLanguageName(e.toUpperCase()))
        .toSet()
        .toList(),
    onChanged: (String newValue) {
      final newLocale = Locale(completeLanguageCode(newValue).toLowerCase());
      Get.updateLocale(newLocale);
      saveData(PrefName.defaultLanguage, newLocale.languageCode);
    },
    prefixIcon: Icons.translate,
  );
}

List<String> _getSupportedLanguages(BuildContext context) {
  const supportedLocales = AppLocalizations.supportedLocales;
  return supportedLocales.map((locale) => locale.languageCode).toList();
}
