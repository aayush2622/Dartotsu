import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import 'ChartData.dart';

class LineChart extends StatefulWidget {
  final List<ChartDatum> data;
  final double height;

  const LineChart({super.key, required this.data, this.height = 200});

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  int? _active;

  int? _index(double dx, double width) {
    final n = widget.data.length;
    if (n < 2) return n == 1 ? 0 : null;
    const pad = 12.0;
    final t = ((dx - pad) / (width - pad * 2)).clamp(0.0, 1.0);
    return (t * (n - 1)).round();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    if (widget.data.isEmpty) return const SizedBox.shrink();
    final max = niceMax(widget.data.fold(0.0, (m, d) => math.max(m, d.value)));
    return LayoutBuilder(
      builder: (context, box) {
        final width = box.maxWidth;
        return SizedBox(
          width: width,
          height: widget.height,
          child: MouseRegion(
            onHover: (e) {
              final i = _index(e.localPosition.dx, width);
              if (i != _active) setState(() => _active = i);
            },
            onExit: (_) => setState(() => _active = null),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTapDown: (d) =>
                  setState(() => _active = _index(d.localPosition.dx, width)),
              onHorizontalDragUpdate: (d) =>
                  setState(() => _active = _index(d.localPosition.dx, width)),
              child: TweenAnimationBuilder<double>(
                key: ValueKey(widget.data.length),
                tween: Tween(begin: 0, end: 1),
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeOutCubic,
                builder: (_, t, _) => CustomPaint(
                  painter: _LinePainter(
                    data: widget.data,
                    max: max,
                    progress: t,
                    active: _active,
                    color: scheme.primary,
                    grid: scheme.outlineVariant.withValues(alpha: 0.4),
                    text: scheme.onSurfaceVariant,
                    strong: scheme.onSurface,
                    bubble: scheme.surfaceContainerHighest,
                    surface: scheme.surface,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _LinePainter extends CustomPainter {
  final List<ChartDatum> data;
  final double max;
  final double progress;
  final int? active;
  final Color color;
  final Color grid;
  final Color text;
  final Color strong;
  final Color bubble;
  final Color surface;

  _LinePainter({
    required this.data,
    required this.max,
    required this.progress,
    required this.active,
    required this.color,
    required this.grid,
    required this.text,
    required this.strong,
    required this.bubble,
    required this.surface,
  });

  TextPainter _tp(String s, Color c, double size, FontWeight w) => TextPainter(
    text: TextSpan(
      text: s,
      style: TextStyle(color: c, fontSize: size, fontWeight: w),
    ),
    textDirection: TextDirection.ltr,
  )..layout();

  @override
  void paint(Canvas canvas, Size size) {
    const padX = 12.0;
    const top = 30.0;
    const bottom = 24.0;
    final w = size.width - padX * 2;
    final h = size.height - top - bottom;
    final n = data.length;
    Offset point(int i) => Offset(
      padX + (n == 1 ? w / 2 : w * i / (n - 1)),
      top + h - (max <= 0 ? 0 : data[i].value / max * h),
    );

    final gridPaint = Paint()
      ..color = grid
      ..strokeWidth = 1;
    for (var i = 0; i <= 3; i++) {
      final y = top + h * (i / 3);
      canvas.drawLine(Offset(padX, y), Offset(size.width - padX, y), gridPaint);
    }

    final points = [for (var i = 0; i < n; i++) point(i)];
    final path = Path();
    if (n == 1) {
      path
        ..moveTo(points[0].dx - 20, points[0].dy)
        ..lineTo(points[0].dx + 20, points[0].dy);
    } else {
      path.moveTo(points[0].dx, points[0].dy);
      for (var i = 0; i < n - 1; i++) {
        final a = points[i];
        final b = points[i + 1];
        final mid = (a.dx + b.dx) / 2;
        path.cubicTo(mid, a.dy, mid, b.dy, b.dx, b.dy);
      }
    }

    final metrics = path.computeMetrics().toList();
    final drawn = Path();
    for (final m in metrics) {
      drawn.addPath(m.extractPath(0, m.length * progress), Offset.zero);
    }

    final area = Path.from(drawn);
    final lastX = metrics.isEmpty
        ? points.last.dx
        : metrics.last
                  .getTangentForOffset(metrics.last.length * progress)
                  ?.position
                  .dx ??
              points.last.dx;
    area
      ..lineTo(lastX, top + h)
      ..lineTo(points.first.dx, top + h)
      ..close();
    canvas.drawPath(
      area,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            color.withValues(alpha: 0.35),
            color.withValues(alpha: 0.02),
          ],
        ).createShader(Rect.fromLTWH(0, top, size.width, h)),
    );
    canvas.drawPath(
      drawn,
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round,
    );

    final step = math.max(1, (n / 6).ceil());
    for (var i = 0; i < n; i += step) {
      final tp = _tp(data[i].label, text, 11, FontWeight.w500);
      tp.paint(canvas, Offset(points[i].dx - tp.width / 2, size.height - 18));
    }

    final a = active;
    if (a != null && a < n) {
      final p = points[a];
      canvas.drawLine(
        Offset(p.dx, top),
        Offset(p.dx, top + h),
        Paint()
          ..color = color.withValues(alpha: 0.5)
          ..strokeWidth = 1.5,
      );
      canvas.drawCircle(p, 6, Paint()..color = surface);
      canvas.drawCircle(p, 4.5, Paint()..color = color);
      final tp = _tp(
        '${data[a].label} · ${data[a].display}',
        strong,
        12,
        FontWeight.w800,
      );
      final cx = p.dx.clamp(tp.width / 2 + 10, size.width - tp.width / 2 - 10);
      final rect = RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(cx, 12),
          width: tp.width + 18,
          height: 24,
        ),
        const Radius.circular(12),
      );
      canvas.drawRRect(rect, Paint()..color = bubble);
      tp.paint(canvas, rect.center - Offset(tp.width / 2, tp.height / 2));
    }
  }

  @override
  bool shouldRepaint(_LinePainter old) =>
      old.progress != progress ||
      old.active != active ||
      old.data != data ||
      old.max != max ||
      old.color != color;
}
