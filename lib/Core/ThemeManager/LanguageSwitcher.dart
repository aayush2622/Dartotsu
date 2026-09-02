import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/AppDropdown.dart';
import '../../l10n/app_localizations.dart';
import 'LocaleController.dart';
import 'language.dart';

Widget languageSwitcher(BuildContext context) {
  final locale = find<LocaleController>();
  final options = AppLocalizations.supportedLocales
      .map((l) => completeLanguageName(l.languageCode.toUpperCase()))
      .toSet()
      .toList();

  return Obx(
    () => AppDropdown(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      value: completeLanguageName(locale.code.value.toUpperCase()),
      options: options,
      onChanged: (newValue) {
        if (newValue == null) return;
        locale.setLocale(Locale(completeLanguageCode(newValue).toLowerCase()));
      },
      prefixIcon: Icons.translate,
    ),
  );
}

AppLocalizations get getString => AppLocalizations.of(Get.context!)!;
