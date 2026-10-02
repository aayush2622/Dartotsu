import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import '../../l10n/app_localizations.dart';
import 'LocaleController.dart';
import 'language.dart';

Widget languageSwitcher(BuildContext context) => const _LanguageSwitcher();

class _LanguageSwitcher extends StatelessWidget {
  const _LanguageSwitcher();

  void _open(BuildContext context) =>
      showCustomBottomDialog<void>(context, const _LanguageSheet());

  @override
  Widget build(BuildContext context) {
    final locale = find<LocaleController>();
    final scheme = context.colorScheme;

    return Obx(() {
      final name = completeLanguageName(locale.code.value.toUpperCase());
      return InkWell(
        onTap: () => _open(context),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              Icon(Icons.translate, size: 22, color: scheme.primary),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Language',
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      name,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                size: 18,
                color: scheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      );
    });
  }
}

class _LanguageSheet extends StatefulWidget {
  const _LanguageSheet();

  @override
  State<_LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<_LanguageSheet> {
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

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.72,
      child: ThemedContainer(
        color: scheme.surface,
        border: Border.all(
          width: 0,
          color: scheme.onSurface.withValues(alpha: 0.1),
        ),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                decoration: BoxDecoration(
                  color: scheme.onSurface.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
              child: Text(
                'Language',
                style: context.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: TextField(
                autofocus: false,
                onChanged: (v) =>
                    setState(() => _query = v.trim().toLowerCase()),
                decoration: const InputDecoration(
                  hintText: 'Search language',
                  prefixIcon: Icon(Icons.search_rounded),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 24),
                itemCount: _filtered.length,
                itemBuilder: (_, i) {
                  final name = _filtered[i];
                  final selected = name == currentName;
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    title: Text(
                      name,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: selected ? scheme.primary : null,
                        fontWeight: selected ? FontWeight.w700 : null,
                      ),
                    ),
                    trailing: selected
                        ? Icon(
                            Icons.check_rounded,
                            color: scheme.primary,
                            size: 20,
                          )
                        : null,
                    onTap: () {
                      HapticFeedback.selectionClick();
                      locale.setLocale(
                        Locale(completeLanguageCode(name).toLowerCase()),
                      );
                      Navigator.of(context).pop();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppLocalizations get getString => AppLocalizations.of(Get.context!)!;
