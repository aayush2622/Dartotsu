import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Functions/Functions/GetXFunctions.dart';
import '../Widgets/DropdownMenu.dart';
import '../l10n/app_localizations.dart';
import 'ThemeController.dart';
import 'language.dart';

Widget languageSwitcher(BuildContext context) {
  final languageOptions = _getSupportedLanguages(context);
  final themeController = find<ThemeController>();
  return Obx(
    () => BuildDropdownMenu(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      value: completeLanguageName(themeController.local.value.toUpperCase()),
      options: languageOptions
          .map((e) => completeLanguageName(e.toUpperCase()))
          .toSet()
          .toList(),
      onChanged: (String? newValue) {
        final newLocale = Locale(completeLanguageCode(newValue!).toLowerCase());
        themeController.setLocale(newLocale);
      },
      prefixIcon: Icons.translate,
    ),
  );
}

AppLocalizations get getString => AppLocalizations.of(Get.context!)!;

List<String> _getSupportedLanguages(BuildContext context) {
  const supportedLocales = AppLocalizations.supportedLocales;
  return supportedLocales.map((locale) => locale.languageCode).toList();
}
