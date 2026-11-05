import 'package:flutter/material.dart';

import '../../Core/ThemeManager/GlassTheme.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Core/State/State.dart';
import 'GlassSurface.dart';

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
    this.blur = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final radius = borderRadius ?? BorderRadius.circular(28);
    final pad = padding ?? const EdgeInsets.all(8);

    if (theme.extension<GlassTheme>() != null) {
      return GlassSurface(
        margin: margin,
        padding: pad,
        alignment: alignment,
        tint: color,
        border: border,
        borderRadius: radius,
        blur: blur,
        shadow: blur,
        child: glassChild ?? child,
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
    return Watch(
      () => controller.useGlassMode.value
          ? (glassWidget ?? materialWidget)
          : materialWidget,
    );
  }
}
