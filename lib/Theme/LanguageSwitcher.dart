import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import '../Screens/Settings/language.dart';
import '../Widgets/DropdownMenu.dart';

AppLocalizations get getString => AppLocalizations.of(Get.context!)!;

Widget languageSwitcher(BuildContext context) {
  final languageOptions = _getSupportedLanguages(context);

  return buildDropdownMenu(
    currentValue: completeLanguageName(Get.locale!.languageCode.toUpperCase()),
    options: languageOptions.map((e) => completeLanguageName(e.toUpperCase())).toList(),
    onChanged: (String newValue) {
      final newLocale = Locale(completeLanguageCode(newValue).toLowerCase());
      Get.updateLocale(newLocale);
    },
    prefixIcon: Icons.language,
  );
}

List<String> _getSupportedLanguages(BuildContext context) {
  const supportedLocales = AppLocalizations.supportedLocales;
  return supportedLocales.map((locale) => locale.languageCode).toList();
}
