import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GlassStyle {
  GlassStyle._();

  static const sigma = 18.0;
  static const saturation = 1.55;

  static const backdropSaturation = 1.3;

  static final filter = ui.ImageFilter.compose(
    outer: ColorFilter.matrix(saturate(saturation)),
    inner: ui.ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
  );

  static List<Color> scrim(ColorScheme scheme) => [
    scheme.surface.withValues(alpha: 0.30),
    scheme.surface.withValues(alpha: 0.58),
  ];

  static List<double> saturate(double s) {
    final r = 0.2126 * (1 - s);
    final g = 0.7152 * (1 - s);
    final b = 0.0722 * (1 - s);
    return [
      r + s, g, b, 0, 0, //
      r, g + s, b, 0, 0, //
      r, g, b + s, 0, 0, //
      0, 0, 0, 1, 0,
    ];
  }
}

class GlassBlur extends StatelessWidget {
  final Widget child;

  const GlassBlur({super.key, required this.child});

  @override
  Widget build(BuildContext context) => BackdropGroup.of(context) != null
      ? BackdropFilter.grouped(filter: GlassStyle.filter, child: child)
      : BackdropFilter(filter: GlassStyle.filter, child: child);
}

class GlassBackdrop extends StatelessWidget {
  final Widget? image;

  const GlassBackdrop({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Stack(
      fit: StackFit.expand,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Color.alphaBlend(scheme.primaryContainer, scheme.surface),
                scheme.surface.withValues(alpha: 1),
                Color.alphaBlend(scheme.secondaryContainer, scheme.surface),
              ],
            ),
          ),
        ),
        if (image != null) RepaintBoundary(child: image!),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: GlassStyle.scrim(scheme),
            ),
          ),
        ),
      ],
    );
  }
}

class GlassSurface extends StatelessWidget {
  final Widget child;
  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;
  final Color? tint;
  final Border? border;
  final double strength;
  final bool shadow;
  final bool blur;

  const GlassSurface({
    super.key,
    required this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(28)),
    this.padding = const EdgeInsets.all(8),
    this.margin,
    this.alignment,
    this.tint,
    this.border,
    this.strength = 1,
    this.shadow = true,
    this.blur = true,
  });

  bool get _edge {
    final b = border;
    return b == null || !(b.isUniform && b.top.style == BorderStyle.none);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final dark = scheme.brightness == Brightness.dark;
    final contrast = MediaQuery.highContrastOf(context);
    final radius = borderRadius.resolve(Directionality.of(context));
    final base = tint ?? scheme.surface;
    final lift = Color.alphaBlend(
      Colors.white.withValues(alpha: dark ? 0.07 : 0.0),
      base,
    );
    final top = contrast ? 0.97 : (dark ? 0.52 : 0.62) * strength;
    final bottom = contrast ? 0.97 : (dark ? 0.38 : 0.48) * strength;

    final direction = Directionality.of(context);
    final highlight = dark ? 0.10 : 0.32;
    final topColor = Color.alphaBlend(
      Colors.white.withValues(alpha: highlight),
      lift.withValues(alpha: top.clamp(0.0, 1.0)),
    );
    final midColor = Color.lerp(
      lift.withValues(alpha: top.clamp(0.0, 1.0)),
      base.withValues(alpha: bottom.clamp(0.0, 1.0)),
      0.45,
    )!;
    final bottomColor = base.withValues(alpha: bottom.clamp(0.0, 1.0));

    Widget body = CustomPaint(
      painter: _FillPainter(
        radius: radius,
        colors: [topColor, midColor, bottomColor],
      ),
      child: Container(
        alignment: alignment,
        padding: padding,
        child: Material(color: Colors.transparent, child: child),
      ),
    );

    body = CustomPaint(
      foregroundPainter: _EdgePainter(
        radius: radius,
        direction: direction,
        dark: dark,
        show: _edge,
        flat: border != null && border!.isUniform && _edge ? border!.top : null,
      ),
      child: body,
    );

    Widget clipped = ClipRRect(borderRadius: radius, child: body);
    if (!contrast && blur) {
      clipped = ClipRRect(
        borderRadius: radius,
        child: GlassBlur(child: body),
      );
    }

    if (shadow) {
      clipped = CustomPaint(
        painter: _ShadowPainter(
          radius: radius,
          color: scheme.shadow.withValues(alpha: dark ? 0.22 : 0.10),
        ),
        child: clipped,
      );
    }
    return margin == null ? clipped : Padding(padding: margin!, child: clipped);
  }
}

class _FillPainter extends CustomPainter {
  final BorderRadius radius;
  final List<Color> colors;

  const _FillPainter({required this.radius, required this.colors});

  @override
  void paint(Canvas canvas, Size size) {
    if (size.isEmpty) return;
    final rect = Offset.zero & size;
    canvas.drawRRect(
      radius.toRRect(rect),
      Paint()
        ..shader = ui.Gradient.linear(
          rect.topCenter,
          rect.bottomCenter,
          colors,
          const [0, 0.45, 1],
        ),
    );
  }

  @override
  bool shouldRepaint(_FillPainter old) =>
      old.radius != radius || !listEquals(old.colors, colors);
}

class _EdgePainter extends CustomPainter {
  final BorderRadius radius;
  final bool dark;
  final bool show;
  final BorderSide? flat;
  final TextDirection direction;

  const _EdgePainter({
    required this.radius,
    required this.direction,
    required this.dark,
    required this.show,
    required this.flat,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (!show || size.isEmpty) return;
    final rect = Offset.zero & size;
    final rrect = radius.toRRect(rect).deflate(0.5);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = flat?.width ?? 1;
    if (flat != null) {
      paint.color = flat!.color;
    } else {
      final hi = dark ? 0.34 : 0.85;
      final lo = dark ? 0.05 : 0.22;
      paint.shader = LinearGradient(
        begin: AlignmentDirectional.topStart,
        end: AlignmentDirectional.bottomEnd,
        colors: [
          Colors.white.withValues(alpha: hi),
          Colors.white.withValues(alpha: lo),
          Colors.white.withValues(alpha: hi * 0.55),
        ],
        stops: const [0, 0.55, 1],
      ).createShader(rect, textDirection: direction);
    }
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(_EdgePainter old) =>
      old.radius != radius ||
      old.dark != dark ||
      old.show != show ||
      old.flat != flat ||
      old.direction != direction;
}

class _ShadowPainter extends CustomPainter {
  final BorderRadius radius;
  final Color color;

  const _ShadowPainter({required this.radius, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    if (size.isEmpty) return;
    final rrect = radius.toRRect(Offset.zero & size);
    final outside = Path()
      ..fillType = PathFillType.evenOdd
      ..addRect(Rect.fromLTRB(-120, -120, size.width + 120, size.height + 160))
      ..addRRect(rrect);
    canvas
      ..save()
      ..clipPath(outside)
      ..drawRRect(
        rrect.shift(const Offset(0, 4)),
        Paint()
          ..color = color
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8),
      )
      ..restore();
  }

  @override
  bool shouldRepaint(_ShadowPainter old) =>
      old.radius != radius || old.color != color;
}
