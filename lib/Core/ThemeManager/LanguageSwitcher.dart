import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/SheetTile.dart';
import '../../l10n/app_localizations.dart';
import 'LocaleController.dart';
import 'language.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  var _query = '';

  late final _options =
      AppLocalizations.supportedLocales
          .map((l) => completeLanguageName(l.languageCode.toUpperCase()))
          .toSet()
          .toList()
        ..sort();

  List<String> get _filtered => _query.isEmpty
      ? _options
      : _options.where((l) => l.toLowerCase().contains(_query)).toList();

  @override
  Widget build(BuildContext context) {
    final locale = find<LocaleController>();
    final scheme = context.colorScheme;
    final currentName = completeLanguageName(locale.code.value.toUpperCase());

    return CustomBottomDialog(
      title: getString.language,
      viewList: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: TextField(
            onChanged: (v) => setState(() => _query = v.trim().toLowerCase()),
            decoration: InputDecoration(
              hintText: 'Search language',
              prefixIcon: Icon(
                Icons.search_rounded,
                color: scheme.onSurfaceVariant,
              ),
              filled: true,
              fillColor: scheme.surfaceContainerHigh,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),
        for (final name in _filtered)
          SheetTile(
            selected: name == currentName,
            title: Text(name),
            onTap: () {
              HapticFeedback.selectionClick();
              locale.setLocale(Locale(completeLanguageCode(name).toLowerCase()));
              popPage(context);
            },
          ),
      ],
    );
  }
}

AppLocalizations get getString => AppLocalizations.of(Get.context!)!;
