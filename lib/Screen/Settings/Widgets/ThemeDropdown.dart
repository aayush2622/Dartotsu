import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/ThemeManager/AppTheme.dart';
import '../../../Core/ThemeManager/CustomColorPicker.dart';
import '../../../Core/ThemeManager/ThemeController.dart';
import '../../../Core/ThemeManager/Themes/DynamicThemes.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/ThemedContainer.dart';

String themeLabel(ThemeController t) {
  if (t.useCustomColor.value) return 'Custom';
  return AppTheme.byName(t.themeName.value).label;
}

Future<void> openThemePicker(BuildContext context) =>
    showCustomBottomDialog<void>(
      context,
      FractionallySizedBox(
        heightFactor: 0.65,
        child: _ThemePickerSheet(
          openColorPicker: (current) =>
              showColorPickerDialog(context, current, showTransparent: false),
        ),
      ),
    );

class _ThemePickerSheet extends StatelessWidget {
  final Future<Color?> Function(Color current) openColorPicker;
  const _ThemePickerSheet({required this.openColorPicker});

  @override
  Widget build(BuildContext context) {
    final controller = find<ThemeController>();
    final scheme = context.colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
                  'Theme',
                  style: context.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Obx(() {
                  final current = controller.themeName.value;
                  final isCustom = controller.useCustomColor.value;
                  final customArgb = controller.customColor.value;
                  final customColor = customArgb != 0
                      ? Color(customArgb)
                      : null;

                  final itemCount = AppTheme.values.length + 1;
                  return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 0.72,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                          ),
                      itemCount: itemCount,
                      itemBuilder: (ctx, i) {
                        if (i == 0) {
                          final selected = isCustom;
                          final displayColor = customColor ?? scheme.primary;
                          final previewScheme = customColor == null
                              ? null
                              : (isDark
                                        ? getCustomDarkTheme(
                                            customColor.toARGB32(),
                                          )
                                        : getCustomLightTheme(
                                            customColor.toARGB32(),
                                          ))
                                    .colorScheme;
                          return GestureDetector(
                            onTap: () async {
                              unawaited(HapticFeedback.selectionClick());
                              final picked = await openColorPicker(
                                displayColor,
                              );
                              if (picked != null) {
                                controller.setCustomColor(picked);
                                controller.setUseCustomColor(true);
                              }
                            },
                            child: _ThemeCell(
                              label: 'Custom',
                              previewScheme: previewScheme,
                              selected: selected,
                              isCustom: true,
                              scheme: scheme,
                            ),
                          );
                        }
                        final t = AppTheme.values[i - 1];
                        final previewScheme = t
                            .themeFor(
                              isDark ? Brightness.dark : Brightness.light,
                            )
                            .colorScheme;
                        final selected = !isCustom && t.name == current;
                        return GestureDetector(
                          onTap: () {
                            HapticFeedback.selectionClick();
                            controller.setTheme(t.name);
                          },
                          child: _ThemeCell(
                            label: t.label,
                            previewScheme: previewScheme,
                            selected: selected,
                            scheme: scheme,
                          ),
                        );
                      },
                    ),
                  );
                }),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FilledButton(
                    onPressed: () => popPage(context),
                    child: const Text('Done'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ThemeCell extends StatelessWidget {
  final String label;
  final ColorScheme? previewScheme;
  final bool selected;
  final bool isCustom;
  final ColorScheme scheme;

  const _ThemeCell({
    required this.label,
    required this.previewScheme,
    required this.selected,
    this.isCustom = false,
    required this.scheme,
  });

  @override
  Widget build(BuildContext context) {
    final color = previewScheme?.primary ?? scheme.primary;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: selected
            ? color.withValues(alpha: 0.12)
            : scheme.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: selected ? color : scheme.onSurface.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: previewScheme == null
                ? _RainbowPreview()
                : _UiSkeletonPreview(previewScheme: previewScheme!),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 5, 6, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (selected) ...[
                  Icon(Icons.check_rounded, size: 11, color: color),
                  const SizedBox(width: 3),
                ],
                Flexible(
                  child: Text(
                    label,
                    style: context.textTheme.labelSmall?.copyWith(
                      color: selected ? color : scheme.onSurface,
                      fontWeight: selected
                          ? FontWeight.w700
                          : FontWeight.normal,
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UiSkeletonPreview extends StatelessWidget {
  final ColorScheme previewScheme;

  const _UiSkeletonPreview({required this.previewScheme});

  @override
  Widget build(BuildContext context) {
    final bg = previewScheme.surface;
    final onBg = previewScheme.onSurface;
    final primary = previewScheme.primary;
    final secondary = previewScheme.secondary;
    final tertiary = previewScheme.tertiary;
    final navBg = previewScheme.surfaceContainerHigh;

    const topBarH = 13.0;
    const navH = 15.0;
    const gap = 4.0;
    const side = 5.0;

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
      child: Container(
        color: bg,
        child: LayoutBuilder(
          builder: (_, cs) {
            final posterH =
                (cs.maxHeight - topBarH - navH - gap * 2).clamp(
                  0.0,
                  cs.maxHeight,
                ) *
                0.62;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: topBarH,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: side,
                      vertical: 3,
                    ),
                    child: Row(
                      children: [
                        _line(onBg.withValues(alpha: 0.85), 4, width: 26),
                        const Spacer(),
                        Icon(
                          Icons.search_rounded,
                          size: 9,
                          color: onBg.withValues(alpha: 0.6),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: gap),
                SizedBox(
                  height: posterH,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: side),
                    child: Row(
                      children: [
                        Expanded(child: _poster(primary, bg)),
                        const SizedBox(width: 4),
                        Expanded(child: _poster(secondary, bg)),
                        const SizedBox(width: 4),
                        Expanded(child: _poster(tertiary, bg)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: side),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _line(onBg.withValues(alpha: 0.75), 2.5, width: 32),
                      const SizedBox(height: 3),
                      _line(onBg.withValues(alpha: 0.4), 2, width: 20),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: navH,
                  color: navBg,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _navIcon(Icons.home_rounded, primary, active: true),
                      _navIcon(
                        Icons.explore_outlined,
                        onBg.withValues(alpha: 0.45),
                      ),
                      _navIcon(
                        Icons.person_outline_rounded,
                        onBg.withValues(alpha: 0.45),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _poster(Color color, Color bg) => AspectRatio(
    aspectRatio: 2 / 3,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Container(
        color: color,
        alignment: Alignment.center,
        child: Icon(
          Icons.play_arrow_rounded,
          size: 10,
          color: bg.withValues(alpha: 0.7),
        ),
      ),
    ),
  );

  Widget _navIcon(IconData icon, Color color, {bool active = false}) =>
      Container(
        padding: const EdgeInsets.all(2),
        decoration: active
            ? BoxDecoration(
                color: color.withValues(alpha: 0.18),
                borderRadius: BorderRadius.circular(5),
              )
            : null,
        child: Icon(icon, size: 8, color: color),
      );

  Widget _line(Color color, double height, {double? width}) => Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(2),
    ),
  );
}

class _RainbowPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
    child: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFF6B6B),
            Color(0xFFFFD93D),
            Color(0xFF6BCB77),
            Color(0xFF4D96FF),
            Color(0xFFCC5DE8),
          ],
        ),
      ),
      child: const Center(
        child: Icon(Icons.palette_rounded, color: Colors.white, size: 26),
      ),
    ),
  );
}
