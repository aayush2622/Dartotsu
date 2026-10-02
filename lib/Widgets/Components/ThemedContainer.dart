import 'dart:async';

import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import 'package:flutter/services.dart';

import '../../Core/ThemeManager/AppTheme.dart';
import '../../Core/ThemeManager/CustomColorPicker.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';

class ThemedContainer extends StatelessWidget {
  final Widget child;
  final Widget? glassChild;
  final Color? color;
  final Border? border;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;

  const ThemedContainer({
    super.key,
    required this.child,
    this.glassChild,
    this.color,
    this.border,
    this.borderRadius,
    this.padding,
    this.margin,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    final controller = find<ThemeController>();
    final scheme = Theme.of(context).colorScheme;
    final radius = borderRadius ?? BorderRadius.circular(28);
    final pad = padding ?? const EdgeInsets.all(8);

    return Obx(() {
      if (controller.useGlassMode.value) {
        return Container(
          margin: margin,
          child: BlurBox(
            blur: 12,
            alignment: alignment,
            padding: pad,
            color: scheme.surface.withValues(alpha: 0.12),
            border:
                border ??
                Border.all(
                  color: scheme.onSurface.withValues(alpha: 0.14),
                  width: 0.75,
                ),
            borderRadius: radius,
            boxShadow: [
              BoxShadow(
                color: scheme.shadow.withValues(alpha: 0.16),
                blurRadius: 24,
                offset: const Offset(0, 8),
              ),
            ],
            child: Material(
              color: Colors.transparent,
              child: glassChild ?? child,
            ),
          ),
        );
      }

      return Container(
        padding: pad,
        alignment: alignment,
        margin: margin,
        decoration: BoxDecoration(
          color: color ?? scheme.surfaceContainerHigh,
          border: border,
          borderRadius: radius,
          boxShadow: [
            BoxShadow(
              color: scheme.shadow.withValues(alpha: 0.08),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(color: Colors.transparent, child: child),
      );
    });
  }
}

class ThemedWidget extends StatelessWidget {
  final Widget materialWidget;
  final Widget? glassWidget;

  const ThemedWidget({
    super.key,
    required this.materialWidget,
    this.glassWidget,
  });

  @override
  Widget build(BuildContext context) {
    final controller = find<ThemeController>();
    return Obx(
      () => controller.useGlassMode.value
          ? (glassWidget ?? materialWidget)
          : materialWidget,
    );
  }
}

Widget themeDropdown() => const _ThemeDropdown();

class _ThemeDropdown extends StatelessWidget {
  const _ThemeDropdown();

  void _open(BuildContext context) => showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    useSafeArea: true,
    builder: (_) => const FractionallySizedBox(
      heightFactor: 0.6,
      child: _ThemePickerSheet(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final controller = find<ThemeController>();
    final scheme = context.colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Obx(() {
      final current = AppTheme.byName(controller.themeName.value);
      final swatch =
          current.themeFor(isDark ? Brightness.dark : Brightness.light).colorScheme.primary;

      return InkWell(
        onTap: () => _open(context),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              Icon(Icons.color_lens, size: 22, color: scheme.primary),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  'Theme',
                  style: context.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                current.label,
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: scheme.onSurfaceVariant),
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
  const _ThemePickerSheet();

  @override
  Widget build(BuildContext context) {
    final controller = find<ThemeController>();
    final scheme = context.colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      child: Material(
        color: scheme.surface,
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
                  final customColor =
                      customArgb != 0 ? Color(customArgb) : null;

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
                        if (i == AppTheme.values.length) {
                          final selected = isCustom;
                          final displayColor = customColor ?? scheme.primary;
                          return GestureDetector(
                            onTap: () async {
                              unawaited(HapticFeedback.selectionClick());
                              final picked = await showColorPickerDialog(
                                context,
                                displayColor,
                                showTransparent: false,
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
                        final t = AppTheme.values[i];
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
          width: selected ? 2 : 1,
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
                      fontWeight:
                          selected ? FontWeight.w700 : FontWeight.normal,
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
    final line = scheme.onSurface.withValues(alpha: 0.12);
    final img = primary.withValues(alpha: isDark ? 0.5 : 0.35);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
      child: Container(
        color: bg,
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Nav bar
            Container(
              height: 9,
              decoration: BoxDecoration(
                color: card,
                borderRadius: BorderRadius.circular(3),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              child: Row(
                children: [
                  Container(
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                      color: primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 3),
                  Expanded(
                    child: Container(
                      height: 3,
                      decoration: BoxDecoration(
                        color: line,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                      color: primary.withValues(alpha: 0.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            // Card 1
            _miniCard(card, img, line),
            const SizedBox(height: 3),
            // Card 2
            _miniCard(card, img, line),
            const SizedBox(height: 4),
            // Chip row
            Row(
              children: [
                _chip(primary, 22),
                const SizedBox(width: 3),
                _chip(primary.withValues(alpha: 0.3), 16),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _miniCard(Color card, Color img, Color line) => Container(
    height: 20,
    decoration: BoxDecoration(
      color: card,
      borderRadius: BorderRadius.circular(4),
    ),
    padding: const EdgeInsets.all(3),
    child: Row(
      children: [
        Container(
          width: 14,
          decoration: BoxDecoration(
            color: img,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 3),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 3,
                decoration: BoxDecoration(
                  color: line,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 3),
              Container(
                height: 3,
                width: 16,
                decoration: BoxDecoration(
                  color: line.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            color: primary,
            shape: BoxShape.circle,
          ),
        ),
      ],
    ),
  );

  Widget _chip(Color color, double width) => Container(
    height: 7,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(99),
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
