import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../Core/State/State.dart';

class GlassStyle {
  GlassStyle._();

  static const sigma = 14.0;

  static const backdropSaturation = 1.45;

  static final filter = ui.ImageFilter.blur(
    sigmaX: sigma,
    sigmaY: sigma,
    tileMode: TileMode.mirror,
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

class GlassBlur extends StatefulWidget {
  final Widget child;

  const GlassBlur({super.key, required this.child});

  @override
  State<GlassBlur> createState() => _GlassBlurState();
}

class _GlassBlurState extends State<GlassBlur> {
  final _slot = GlobalKey();
  Animation<double>? _animation;
  Animation<double>? _secondary;
  final _settled = true.live;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    final animation = route?.animation;
    final secondary = route?.secondaryAnimation;
    if (animation == _animation && secondary == _secondary) return;
    _animation?.removeStatusListener(_onStatus);
    _secondary?.removeStatusListener(_onStatus);
    _animation = animation;
    _secondary = secondary;
    animation?.addStatusListener(_onStatus);
    secondary?.addStatusListener(_onStatus);
    _settled.value = _isSettled();
  }

  bool _isSettled() =>
      (_animation == null || _animation!.isCompleted) &&
      (_secondary == null || _secondary!.isDismissed);

  void _onStatus(AnimationStatus status) {
    final settled = _isSettled();
    if (mounted) _settled.value = settled;
  }

  @override
  void dispose() {
    _animation?.removeStatusListener(_onStatus);
    _secondary?.removeStatusListener(_onStatus);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final child = KeyedSubtree(key: _slot, child: widget.child);
    final grouped = BackdropGroup.of(context) != null;
    return Watch(() {
      if (!_settled.value) return child;
      return grouped
          ? BackdropFilter.grouped(filter: GlassStyle.filter, child: child)
          : BackdropFilter(filter: GlassStyle.filter, child: child);
    });
  }
}

class GlassBackdrop extends StatelessWidget {
  final Widget? image;

  const GlassBackdrop({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return RepaintBoundary(
      child: Stack(
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
          ?image,
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
      ),
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
    this.shadow = false,
    this.blur = false,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final dark = scheme.brightness == Brightness.dark;
    final contrast = MediaQuery.highContrastOf(context);
    final radius = borderRadius.resolve(Directionality.of(context));
    final base = tint ?? scheme.surface;
    final top = contrast ? 0.97 : (dark ? 0.50 : 0.62) * strength;
    final bottom = contrast ? 0.97 : (dark ? 0.34 : 0.44) * strength;
    final sheen = Colors.white.withValues(alpha: dark ? 0.07 : 0.28);

    Widget body = DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: radius,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.alphaBlend(sheen, base.withValues(alpha: top.clamp(0, 1))),
            base.withValues(alpha: bottom.clamp(0, 1)),
          ],
        ),
        border:
            border ??
            Border.all(
              color: Colors.white.withValues(alpha: dark ? 0.16 : 0.7),
            ),
      ),
      child: Container(
        alignment: alignment,
        padding: padding,
        child: Material(color: Colors.transparent, child: child),
      ),
    );

    body = ClipRRect(
      borderRadius: radius,
      clipBehavior: blur ? Clip.antiAlias : Clip.hardEdge,
      child: !contrast && blur ? GlassBlur(child: body) : body,
    );

    if (shadow) {
      body = CustomPaint(
        painter: _ShadowPainter(
          radius: radius,
          color: scheme.shadow.withValues(alpha: dark ? 0.26 : 0.12),
        ),
        child: body,
      );
    }
    return margin == null ? body : Padding(padding: margin!, child: body);
  }
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
        rrect.shift(const Offset(0, 6)),
        Paint()
          ..color = color
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10),
      )
      ..restore();
  }

  @override
  bool shouldRepaint(_ShadowPainter old) =>
      old.radius != radius || old.color != color;
}
