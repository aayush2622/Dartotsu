import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import 'ChartData.dart';
import '../../Core/State/State.dart';

class ColumnChart extends StatefulWidget {
  final List<ChartDatum> data;
  final double height;
  final double minBarWidth;

  const ColumnChart({
    super.key,
    required this.data,
    this.height = 190,
    this.minBarWidth = 30,
  });

  @override
  State<ColumnChart> createState() => _ColumnChartState();
}

class _ColumnChartState extends State<ColumnChart> {
  final _active = Live<int?>(null);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final data = widget.data;
    if (data.isEmpty) return const SizedBox.shrink();
    final max = niceMax(data.fold(0.0, (m, d) => math.max(m, d.value)));
    final active = _active.value;
    return LayoutBuilder(
      builder: (context, box) {
        final width = math.max(box.maxWidth, data.length * widget.minBarWidth);
        final slot = width / data.length;
        const labelHeight = 22.0;
        const topPad = 26.0;
        final plot = widget.height - labelHeight - topPad;
        final chart = SizedBox(
          width: width,
          height: widget.height,
          child: MouseRegion(
            onHover: (e) {
              final i = (e.localPosition.dx / slot).floor();
              final next = i >= 0 && i < data.length ? i : null;
              if (next != _active.value) _active.value = next;
            },
            onExit: (_) => _active.value = null,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTapDown: (d) {
                final i = (d.localPosition.dx / slot).floor();
                _active.value =
                    (i == _active.value || i < 0 || i >= data.length)
                    ? null
                    : i;
              },
              child: TweenAnimationBuilder<double>(
                key: ValueKey(data.length),
                tween: Tween(begin: 0, end: 1),
                duration: const Duration(milliseconds: 750),
                curve: Curves.easeOutCubic,
                builder: (_, t, _) => CustomPaint(
                  painter: _ColumnPainter(
                    data: data,
                    max: max,
                    progress: t,
                    active: active,
                    color: scheme.primary,
                    muted: scheme.primary.withValues(alpha: 0.35),
                    grid: scheme.outlineVariant.withValues(alpha: 0.4),
                    text: scheme.onSurfaceVariant,
                    strong: scheme.onSurface,
                    labelHeight: labelHeight,
                    topPad: topPad,
                    plot: plot,
                  ),
                ),
              ),
            ),
          ),
        );
        return width > box.maxWidth
            ? SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: chart,
              )
            : chart;
      },
    );
  }
}

class _ColumnPainter extends CustomPainter {
  final List<ChartDatum> data;
  final double max;
  final double progress;
  final int? active;
  final Color color;
  final Color muted;
  final Color grid;
  final Color text;
  final Color strong;
  final double labelHeight;
  final double topPad;
  final double plot;

  _ColumnPainter({
    required this.data,
    required this.max,
    required this.progress,
    required this.active,
    required this.color,
    required this.muted,
    required this.grid,
    required this.text,
    required this.strong,
    required this.labelHeight,
    required this.topPad,
    required this.plot,
  });

  void _text(
    Canvas c,
    String s,
    Offset center,
    Color color,
    double size, {
    FontWeight weight = FontWeight.w500,
  }) {
    final tp = TextPainter(
      text: TextSpan(
        text: s,
        style: TextStyle(color: color, fontSize: size, fontWeight: weight),
      ),
      textDirection: TextDirection.ltr,
      maxLines: 1,
      ellipsis: '…',
    )..layout(maxWidth: 60);
    tp.paint(c, center - Offset(tp.width / 2, tp.height / 2));
  }

  @override
  void paint(Canvas canvas, Size size) {
    final slot = size.width / data.length;
    final base = topPad + plot;
    final linePaint = Paint()
      ..color = grid
      ..strokeWidth = 1;
    for (var i = 0; i <= 3; i++) {
      final y = topPad + plot * (i / 3);
      canvas.drawLine(Offset(0, y), Offset(size.width, y), linePaint);
    }
    final barWidth = math.min(slot * 0.62, 38.0);
    for (var i = 0; i < data.length; i++) {
      final d = data[i];
      final h = max <= 0 ? 0.0 : d.value / max * plot * progress;
      final cx = slot * i + slot / 2;
      final rect = RRect.fromRectAndCorners(
        Rect.fromLTWH(cx - barWidth / 2, base - h, barWidth, h),
        topLeft: const Radius.circular(8),
        topRight: const Radius.circular(8),
      );
      final isActive = active == i;
      canvas.drawRRect(
        rect,
        Paint()
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [isActive ? color : color.withValues(alpha: 0.9), muted],
          ).createShader(rect.outerRect),
      );
      _text(
        canvas,
        d.label,
        Offset(cx, base + labelHeight / 2 + 2),
        isActive ? strong : text,
        11,
        weight: isActive ? FontWeight.w800 : FontWeight.w500,
      );
      if (isActive) {
        final tip = d.display;
        final tp = TextPainter(
          text: TextSpan(
            text: tip,
            style: TextStyle(
              color: strong,
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ),
          ),
          textDirection: TextDirection.ltr,
        )..layout();
        final bubble = RRect.fromRectAndRadius(
          Rect.fromCenter(
            center: Offset(
              cx.clamp(tp.width / 2 + 10, size.width - tp.width / 2 - 10),
              math.max(12, base - h - 14),
            ),
            width: tp.width + 16,
            height: 22,
          ),
          const Radius.circular(11),
        );
        canvas.drawRRect(bubble, Paint()..color = grid.withValues(alpha: 0.95));
        tp.paint(canvas, bubble.center - Offset(tp.width / 2, tp.height / 2));
      }
    }
  }

  @override
  bool shouldRepaint(_ColumnPainter old) =>
      old.progress != progress ||
      old.active != active ||
      old.data != data ||
      old.max != max ||
      old.color != color;
}
