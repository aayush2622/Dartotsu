import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import 'ChartData.dart';

class RadarChart extends StatefulWidget {
  final List<ChartDatum> data;
  final double size;

  const RadarChart({super.key, required this.data, this.size = 300});

  @override
  State<RadarChart> createState() => _RadarChartState();
}

class _RadarChartState extends State<RadarChart> {
  int? _active;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final data = widget.data;
    if (data.length < 3) return const SizedBox.shrink();
    final max = niceMax(data.fold(0.0, (m, d) => math.max(m, d.value)));
    return LayoutBuilder(
      builder: (context, box) {
        final size = math.min(widget.size, box.maxWidth);
        int? hit(Offset p) {
          final c = Offset(size / 2, size / 2);
          final d = p - c;
          if (d.distance < 12) return null;
          var a = math.atan2(d.dy, d.dx) + math.pi / 2;
          if (a < 0) a += math.pi * 2;
          return ((a / (math.pi * 2)) * data.length).round() % data.length;
        }

        return Center(
          child: SizedBox(
            width: size,
            height: size,
            child: MouseRegion(
              onHover: (e) {
                final i = hit(e.localPosition);
                if (i != _active) setState(() => _active = i);
              },
              onExit: (_) => setState(() => _active = null),
              child: GestureDetector(
                onTapDown: (d) =>
                    setState(() => _active = hit(d.localPosition)),
                child: TweenAnimationBuilder<double>(
                  key: ValueKey(data.length),
                  tween: Tween(begin: 0, end: 1),
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.easeOutBack,
                  builder: (_, t, _) => CustomPaint(
                    painter: _RadarPainter(
                      data: data,
                      max: max,
                      progress: t.clamp(0.0, 1.2),
                      active: _active,
                      color: scheme.primary,
                      grid: scheme.outlineVariant.withValues(alpha: 0.5),
                      text: scheme.onSurfaceVariant,
                      strong: scheme.onSurface,
                    ),
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

class _RadarPainter extends CustomPainter {
  final List<ChartDatum> data;
  final double max;
  final double progress;
  final int? active;
  final Color color;
  final Color grid;
  final Color text;
  final Color strong;

  _RadarPainter({
    required this.data,
    required this.max,
    required this.progress,
    required this.active,
    required this.color,
    required this.grid,
    required this.text,
    required this.strong,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final n = data.length;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 46;
    Offset at(int i, double r) {
      final a = -math.pi / 2 + i * math.pi * 2 / n;
      return center + Offset(math.cos(a), math.sin(a)) * r;
    }

    final gridPaint = Paint()
      ..color = grid
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    for (var ring = 1; ring <= 4; ring++) {
      final path = Path();
      for (var i = 0; i < n; i++) {
        final p = at(i, radius * ring / 4);
        i == 0 ? path.moveTo(p.dx, p.dy) : path.lineTo(p.dx, p.dy);
      }
      canvas.drawPath(path..close(), gridPaint);
    }
    for (var i = 0; i < n; i++) {
      canvas.drawLine(center, at(i, radius), gridPaint);
    }

    final poly = Path();
    for (var i = 0; i < n; i++) {
      final v = max <= 0 ? 0.0 : data[i].value / max;
      final p = at(i, radius * v * progress);
      i == 0 ? poly.moveTo(p.dx, p.dy) : poly.lineTo(p.dx, p.dy);
    }
    poly.close();
    canvas.drawPath(poly, Paint()..color = color.withValues(alpha: 0.25));
    canvas.drawPath(
      poly,
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.5
        ..strokeJoin = StrokeJoin.round,
    );

    for (var i = 0; i < n; i++) {
      final v = max <= 0 ? 0.0 : data[i].value / max;
      final p = at(i, radius * v * progress);
      final isActive = active == i;
      canvas.drawCircle(p, isActive ? 6 : 4, Paint()..color = color);
      final label = isActive
          ? '${data[i].label} · ${data[i].display}'
          : data[i].label;
      final tp = TextPainter(
        text: TextSpan(
          text: label,
          style: TextStyle(
            color: isActive ? strong : text,
            fontSize: 11,
            fontWeight: isActive ? FontWeight.w800 : FontWeight.w500,
          ),
        ),
        textDirection: TextDirection.ltr,
        maxLines: 1,
        ellipsis: '…',
      )..layout(maxWidth: 96);
      final lp = at(i, radius + 20);
      tp.paint(
        canvas,
        Offset(
          (lp.dx - tp.width / 2).clamp(0.0, size.width - tp.width),
          lp.dy - tp.height / 2,
        ),
      );
    }
  }

  @override
  bool shouldRepaint(_RadarPainter old) =>
      old.progress != progress ||
      old.active != active ||
      old.data != data ||
      old.max != max ||
      old.color != color;
}
