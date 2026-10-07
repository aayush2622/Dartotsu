import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Core/ThemeManager/ThemeController.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../../../Widgets/Components/ThemedContainer.dart';
import 'GoogleFontsSheet.dart';
import '../../../Core/State/State.dart';

Future<void> showFontPicker(BuildContext context) =>
    showCustomBottomDialog<void>(
      context,
      const FractionallySizedBox(heightFactor: 0.75, child: _FontPickerSheet()),
    );

class _FontPickerSheet extends StatefulWidget {
  const _FontPickerSheet();

  @override
  State<_FontPickerSheet> createState() => _FontPickerSheetState();
}

class _FontPickerSheetState extends State<_FontPickerSheet> {
  final _saved = <String>[].liveList;
  final _loading = true.live;

  ThemeController get _t => find();

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  Future<void> _refresh() async {
    _loading.value = true;
    _saved.value = await _t.listSavedFonts();
    _loading.value = false;
  }

  Future<void> _importFile() async {
    final ok = await _t.pickCustomFont();
    if (!ok) {
      snackString(getString.customFontError);
      return;
    }
    if (mounted) popPage(context);
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
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                child: Text(
                  getString.customFont,
                  style: context.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Watch(() {
                  if (_loading.value) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Watch(
                        () => _tile(
                          context,
                          icon: Icons.text_fields_rounded,
                          title: getString.defaultFont,
                          subtitle: 'Poppins',
                          selected: !_t.useCustomFont.value,
                          onTap: () {
                            _t.clearCustomFont();
                            popPage(context);
                          },
                        ),
                      ),
                      if (_saved.isNotEmpty) ...[
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            getString.yourFonts,
                            style: context.textTheme.labelMedium?.copyWith(
                              color: scheme.primary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        for (final path in _saved)
                          Watch(
                            () => _tile(
                              context,
                              icon: Icons.font_download_outlined,
                              title: p.basenameWithoutExtension(path),
                              selected:
                                  _t.useCustomFont.value &&
                                  _t.customFontPath.value == path,
                              onTap: () async {
                                final ok = await _t.setCustomFont(path);
                                if (ok && context.mounted) popPage(context);
                              },
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.delete_outline_rounded,
                                  color: scheme.onSurfaceVariant,
                                ),
                                onPressed: () async {
                                  await _t.deleteSavedFont(path);
                                  await _refresh();
                                },
                              ),
                            ),
                          ),
                      ],
                      const SizedBox(height: 12),
                      _tile(
                        context,
                        icon: Icons.upload_file_rounded,
                        title: getString.addFontFile,
                        onTap: _importFile,
                      ),
                      _tile(
                        context,
                        icon: Icons.travel_explore_rounded,
                        title: getString.browseGoogleFonts,
                        onTap: () {
                          popPage(context);
                          showGoogleFontsPicker(context);
                        },
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tile(
    BuildContext context, {
    required IconData icon,
    required String title,
    String? subtitle,
    bool selected = false,
    required VoidCallback onTap,
    Widget? trailing,
  }) {
    final scheme = context.colorScheme;
    return SheetTile(
      onTap: onTap,
      selected: selected,
      leading: Icon(
        icon,
        color: selected ? scheme.onSecondaryContainer : scheme.primary,
      ),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: trailing,
    );
  }
}
