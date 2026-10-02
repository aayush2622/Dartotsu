import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/ThemeManager/CustomFontLoader.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Core/ThemeManager/ThemeController.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/ThemedContainer.dart';

Future<void> showGoogleFontsPicker(BuildContext context) =>
    showCustomBottomDialog<void>(
      context,
      const FractionallySizedBox(
        heightFactor: 0.85,
        child: _GoogleFontsSheet(),
      ),
    );

class _GoogleFontsSheet extends StatefulWidget {
  const _GoogleFontsSheet();

  @override
  State<_GoogleFontsSheet> createState() => _GoogleFontsSheetState();
}

class _GoogleFontsSheetState extends State<_GoogleFontsSheet> {
  late final List<String> _all = CustomFontLoader.googleFontFamilies();
  final _query = ''.obs;
  final _downloading = ''.obs;

  ThemeController get _t => find();

  Future<void> _apply(String family) async {
    _downloading.value = family;
    final ok = await _t.setGoogleFont(family);
    _downloading.value = '';
    if (ok) {
      if (mounted) Navigator.of(context).pop();
    } else {
      snackString(getString.googleFontError);
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      child: ThemedContainer(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        padding: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24, top: 12),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: scheme.onSurface.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                child: TextField(
                  onChanged: (v) => _query.value = v.trim().toLowerCase(),
                  decoration: InputDecoration(
                    hintText: getString.searchGoogleFonts,
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
              Expanded(
                child: Obx(() {
                  final q = _query.value;
                  final filtered = q.isEmpty
                      ? _all
                      : _all.where((f) => f.toLowerCase().contains(q)).toList();
                  final busy = _downloading.value;
                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemCount: filtered.length,
                    itemBuilder: (_, i) {
                      final family = filtered[i];
                      final isBusy = busy == family;
                      return ListTile(
                        enabled: busy.isEmpty,
                        onTap: () => _apply(family),
                        title: Text(family),
                        trailing: isBusy
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
