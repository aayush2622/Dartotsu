import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/ThemeManager/AppTheme.dart';
import '../../../Core/ThemeManager/CustomColorPicker.dart';
import '../../../Core/ThemeManager/ThemeController.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/ThemedContainer.dart';

Widget themeDropdown() => const _ThemeDropdown();

class _ThemeDropdown extends StatelessWidget {
  const _ThemeDropdown();

  void _open(BuildContext context) => showCustomBottomDialog<void>(
    context,
    FractionallySizedBox(
      heightFactor: 0.65,
      child: _ThemePickerSheet(
        openColorPicker: (current) =>
            showColorPickerDialog(context, current, showTransparent: false),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final controller = find<ThemeController>();
    final scheme = context.colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Obx(() {
      final isCustom = controller.useCustomColor.value;
      final customArgb = controller.customColor.value;
      final current = AppTheme.byName(controller.themeName.value);
      final label = isCustom ? 'Custom' : current.label;
      final swatch = isCustom && customArgb != 0
          ? Color(customArgb)
          : current
                .themeFor(isDark ? Brightness.dark : Brightness.light)
                .colorScheme
                .primary;

      return InkWell(
        onTap: () => _open(context),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              Icon(Icons.color_lens, size: 22, color: scheme.onSurfaceVariant),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  'Theme',
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                label,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color: swatch,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: scheme.onSurface.withValues(alpha: 0.18),
                    width: 2,
                  ),
                ),
              ),
              const SizedBox(width: 6),
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
                              primaryColor: customColor,
                              selected: selected,
                              isCustom: true,
                              isDark: isDark,
                              scheme: scheme,
                            ),
                          );
                        }
                        final t = AppTheme.values[i - 1];
                        final color = t
                            .themeFor(
                              isDark ? Brightness.dark : Brightness.light,
                            )
                            .colorScheme
                            .primary;
                        final selected = !isCustom && t.name == current;
                        return GestureDetector(
                          onTap: () {
                            HapticFeedback.selectionClick();
                            controller.setTheme(t.name);
                          },
                          child: _ThemeCell(
                            label: t.label,
                            primaryColor: color,
                            selected: selected,
                            isDark: isDark,
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
                    onPressed: () => Navigator.of(context).pop(),
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
  final Color? primaryColor;
  final bool selected;
  final bool isCustom;
  final bool isDark;
  final ColorScheme scheme;

  const _ThemeCell({
    required this.label,
    required this.primaryColor,
    required this.selected,
    this.isCustom = false,
    required this.isDark,
    required this.scheme,
  });

  @override
  Widget build(BuildContext context) {
    final color = primaryColor ?? scheme.primary;

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
            child: isCustom && primaryColor == null
                ? _RainbowPreview()
                : _UiSkeletonPreview(
                    primary: color,
                    isDark: isDark,
                    scheme: scheme,
                  ),
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
  final Color primary;
  final bool isDark;
  final ColorScheme scheme;

  const _UiSkeletonPreview({
    required this.primary,
    required this.isDark,
    required this.scheme,
  });

  @override
  Widget build(BuildContext context) {
    final bg = isDark
        ? Color.lerp(const Color(0xFF0D0D0D), primary, 0.07)!
        : Color.lerp(const Color(0xFFF8F8F8), primary, 0.05)!;
    final card = isDark
        ? Color.lerp(const Color(0xFF1A1A1A), primary, 0.10)!
        : Color.lerp(Colors.white, primary, 0.08)!;
    final line = scheme.onSurface.withValues(alpha: 0.13);
    final img = primary.withValues(alpha: isDark ? 0.45 : 0.3);

    const barH = 11.0;
    const gap = 5.0;

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
      child: LayoutBuilder(
        builder: (_, cs) {
          final h = cs.maxHeight;
          // Split the space left after the two bars evenly: half to the
          // hero image, half to the two list rows below it.
          final available = (h - barH * 2 - gap * 3 - 4).clamp(0.0, h);
          final heroH = available * 0.5;
          final rowH = available * 0.25;
          final heroTop = barH + gap;
          final row1Top = heroTop + heroH + gap;
          final row2Top = row1Top + rowH + 4;

          return Stack(
            children: [
              Positioned.fill(child: Container(color: bg)),

              // ── app bar ──
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: barH,
                child: Container(
                  color: card,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 3,
                  ),
                  child: Row(
                    children: [
                      _dot(primary, 3.5),
                      const SizedBox(width: 3),
                      Expanded(child: _line(line, 2.5)),
                      const SizedBox(width: 4),
                      _dot(line, 3),
                      const SizedBox(width: 2),
                      _dot(line, 3),
                    ],
                  ),
                ),
              ),

              // ── hero image block ──
              Positioned(
                top: heroTop,
                left: 5,
                right: 5,
                height: heroH,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    color: img,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.image_rounded,
                      size: 14,
                      color: bg.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ),

              // ── list rows ──
              Positioned(
                top: row1Top,
                left: 5,
                right: 5,
                height: rowH,
                child: _listRow(card, img, line),
              ),
              Positioned(
                top: row2Top,
                left: 5,
                right: 5,
                height: rowH,
                child: _listRow(card, img.withValues(alpha: 0.5), line),
              ),

              // ── bottom nav ──
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: barH,
                child: Container(
                  color: card,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [_dot(primary, 4), _dot(line, 4), _dot(line, 4)],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _dot(Color color, double size) => Container(
    width: size,
    height: size,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );

  Widget _line(Color color, double height, {double? width}) => Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(2),
    ),
  );

  Widget _listRow(Color card, Color img, Color line) => Container(
    padding: const EdgeInsets.all(3),
    decoration: BoxDecoration(
      color: card,
      borderRadius: BorderRadius.circular(4),
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: Container(width: 14, color: img),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _line(line, 2.5, width: 28),
              const SizedBox(height: 2.5),
              _line(line.withValues(alpha: 0.6), 2, width: 18),
            ],
          ),
        ),
      ],
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
