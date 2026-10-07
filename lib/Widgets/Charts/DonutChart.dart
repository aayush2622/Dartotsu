import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import 'ChartData.dart';
import '../../Core/State/State.dart';

class DonutChart extends StatefulWidget {
  final List<ChartDatum> data;
  final String centerLabel;
  final String? centerValue;

  const DonutChart({
    super.key,
    required this.data,
    this.centerLabel = 'Total',
    this.centerValue,
  });

  @override
  State<DonutChart> createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  final _active = Live<int?>(null);

  double get _total =>
      widget.data.fold(0.0, (s, d) => s + math.max(0, d.value));

  int? _hit(Offset p, double size) {
    final center = Offset(size / 2, size / 2);
    final d = p - center;
    final r = d.distance;
    final outer = size / 2;
    if (r < outer * 0.5 || r > outer + 6) return null;
    var angle = math.atan2(d.dy, d.dx) + math.pi / 2;
    if (angle < 0) angle += math.pi * 2;
    var acc = 0.0;
    final total = _total;
    if (total <= 0) return null;
    for (var i = 0; i < widget.data.length; i++) {
      final sweep = math.max(0, widget.data[i].value) / total * math.pi * 2;
      if (angle >= acc && angle <= acc + sweep) return i;
      acc += sweep;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final colors = chartPalette(scheme, widget.data.length);
    final total = _total;
    final active = _active.value;
    final shown = active == null ? null : widget.data[active];
    return LayoutBuilder(
      builder: (context, box) {
        final wide = box.maxWidth > 520;
        final size = math.min(210.0, wide ? box.maxWidth * 0.4 : box.maxWidth);
        final chart = SizedBox(
          width: size,
          height: size,
          child: MouseRegion(
            cursor: active == null
                ? MouseCursor.defer
                : SystemMouseCursors.click,
            onHover: (e) {
              final hit = _hit(e.localPosition, size);
              if (hit != _active.value) _active.value = hit;
            },
            onExit: (_) => _active.value = null,
            child: GestureDetector(
              onTapDown: (d) {
                final hit = _hit(d.localPosition, size);
                _active.value = hit == _active.value ? null : hit;
              },
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: 1),
                duration: const Duration(milliseconds: 900),
                curve: Curves.easeOutCubic,
                builder: (_, progress, _) => CustomPaint(
                  painter: _DonutPainter(
                    values: [for (final d in widget.data) math.max(0, d.value)],
                    colors: colors,
                    progress: progress,
                    active: active,
                    track: scheme.surfaceContainerHighest,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          shown?.display ??
                              widget.centerValue ??
                              compactNumber(total),
                          style: context.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          shown?.label ?? widget.centerLabel,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.labelSmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
        final legend = Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < widget.data.length; i++)
              _legendRow(context, i, colors[i], total),
          ],
        );
        return wide
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  chart,
                  const SizedBox(width: 24),
                  Expanded(child: legend),
                ],
              )
            : Column(
                children: [
                  Center(child: chart),
                  const SizedBox(height: 14),
                  legend,
                ],
              );
      },
    );
  }

  Widget _legendRow(BuildContext context, int i, Color color, double total) {
    final d = widget.data[i];
    final scheme = context.colorScheme;
    final selected = _active.value == i;
    final percent = total <= 0 ? 0 : d.value / total * 100;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => _active.value = i,
      onExit: (_) => _active.value = null,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _active.value = selected ? null : i,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          decoration: BoxDecoration(
            color: selected ? color.withValues(alpha: 0.14) : null,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  d.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: selected ? FontWeight.w800 : FontWeight.w500,
                  ),
                ),
              ),
              Text(
                d.display,
                style: context.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                width: 52,
                child: Text(
                  '${percent.toStringAsFixed(percent < 10 ? 1 : 0)}%',
                  textAlign: TextAlign.end,
                  style: context.textTheme.labelMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
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

class _DonutPainter extends CustomPainter {
  final List<double> values;
  final List<Color> colors;
  final double progress;
  final int? active;
  final Color track;

  _DonutPainter({
    required this.values,
    required this.colors,
    required this.progress,
    required this.active,
    required this.track,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final total = values.fold(0.0, (s, v) => s + v);
    final stroke = size.width * 0.17;
    final rect = Rect.fromLTWH(
      stroke / 2 + 4,
      stroke / 2 + 4,
      size.width - stroke - 8,
      size.height - stroke - 8,
    );
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.butt
      ..isAntiAlias = true;
    paint.color = track.withValues(alpha: 0.5);
    canvas.drawArc(rect, 0, math.pi * 2, false, paint);
    if (total <= 0) return;
    final gap = values.length > 1 ? 0.035 : 0.0;
    var start = -math.pi / 2;
    for (var i = 0; i < values.length; i++) {
      final sweep = values[i] / total * math.pi * 2 * progress;
      final isActive = active == i;
      paint
        ..color = colors[i]
        ..strokeWidth = isActive ? stroke + 8 : stroke;
      final drawn = math.max(0.0, sweep - gap);
      if (drawn > 0) canvas.drawArc(rect, start + gap / 2, drawn, false, paint);
      start += sweep;
    }
  }

  @override
  bool shouldRepaint(_DonutPainter old) =>
      old.progress != progress ||
      old.active != active ||
      old.values != values ||
      old.colors != colors;
}
