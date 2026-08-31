import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/ThemeManager/AppTheme.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import 'DropdownMenu.dart';

/// A surface that renders as a solid card normally and as a frosted-glass
/// panel when glass mode is on. Reacts to the glass-mode toggle via a single
/// [Obx].
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
    final radius = borderRadius ?? BorderRadius.circular(64);
    final pad = padding ?? const EdgeInsets.all(8);

    return Obx(() {
      if (controller.useGlassMode.value) {
        return Container(
          margin: margin,
          child: BlurBox(
            blur: 10,
            alignment: alignment,
            padding: pad,
            color: Theme.of(context).cardColor.withValues(alpha: 0.2),
            border:
                border ??
                Border.all(
                  color: scheme.onSurface.withValues(alpha: 0.2),
                  width: 0.5,
                ),
            borderRadius: radius,
            boxShadow: [
              BoxShadow(
                color: scheme.surface.withValues(alpha: 0.2),
                blurRadius: 6,
                spreadRadius: 0.5,
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
          color: color ?? Theme.of(context).cardColor,
          border:
              border ??
              Border.all(
                color: scheme.onSurface.withValues(alpha: 0.6),
                width: 0.5,
              ),
          borderRadius: radius,
          boxShadow: [
            BoxShadow(
              color: scheme.shadow.withValues(alpha: 0.1),
              blurRadius: 20,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Material(color: Colors.transparent, child: child),
      );
    });
  }
}

/// Picks between a material and a glass widget based on the glass-mode toggle.
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

/// Dropdown bound to [ThemeController.themeName], listing every [AppTheme].
Widget themeDropdown() {
  final controller = find<ThemeController>();
  final options = AppTheme.values.map((e) => e.label).toList();

  return Obx(
    () => BuildDropdownMenu(
      padding: const EdgeInsets.symmetric(vertical: 12),
      value: AppTheme.byName(controller.themeName.value).label,
      options: options,
      onChanged: (v) {
        if (v != null) controller.setTheme(v.toLowerCase());
      },
      prefixIcon: Icons.color_lens,
    ),
  );
}
