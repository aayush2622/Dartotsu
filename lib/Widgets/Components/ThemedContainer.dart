import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/ThemeManager/ThemeController.dart';
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
  final bool blur;

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
    this.blur = true,
  });

  @override
  Widget build(BuildContext context) {
    final controller = find<ThemeController>();
    final scheme = Theme.of(context).colorScheme;
    final radius = borderRadius ?? BorderRadius.circular(28);
    final pad = padding ?? const EdgeInsets.all(8);

    return Obx(() {
      if (controller.useGlassMode.value && !blur) {
        return Container(
          margin: margin,
          padding: pad,
          alignment: alignment,
          decoration: BoxDecoration(
            color: scheme.surface.withValues(alpha: 0.28),
            border:
                border ??
                Border.all(
                  color: scheme.onSurface.withValues(alpha: 0.14),
                  width: 0.75,
                ),
            borderRadius: radius,
          ),
          child: Material(
            color: Colors.transparent,
            child: glassChild ?? child,
          ),
        );
      }
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
