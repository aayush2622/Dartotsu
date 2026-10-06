import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../Core/Services/Model/Social.dart';
import '../../Utils/Extensions/ContextExtensions.dart';

class ActivityHeatmap extends StatefulWidget {
  final List<ActivityDay> days;

  const ActivityHeatmap({super.key, required this.days});

  @override
  State<ActivityHeatmap> createState() => _ActivityHeatmapState();
}

class _ActivityHeatmapState extends State<ActivityHeatmap> {
  static const _cell = 13.0;
  static const _gap = 3.0;
  static const _step = _cell + _gap;
  static const _left = 30.0;
  static const _top = 22.0;
  static const _months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  final _scroll = ScrollController();
  DateTime? _hover;
  bool _jumped = false;

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  static DateTime _day(DateTime d) => DateTime(d.year, d.month, d.day);

  late final Map<DateTime, ActivityDay> _byDay = {
    for (final d in widget.days) _day(d.date): d,
  };

  DateTime get _today => _day(DateTime.now());

  DateTime get _start {
    final earliest = widget.days.isEmpty
        ? _today.subtract(const Duration(days: 180))
        : _day(
            widget.days
                .map((d) => d.date)
                .reduce((a, b) => a.isBefore(b) ? a : b),
          );
    final from = _today.subtract(const Duration(days: 365));
    final first = earliest.isBefore(from) ? from : earliest;
    return first.subtract(Duration(days: first.weekday % 7));
  }

  int get _weeks => (_today.difference(_start).inDays / 7).floor() + 1;

  ({int total, int active, int longest, int current}) _summary() {
    var total = 0;
    var active = 0;
    var longest = 0;
    var run = 0;
    var cursor = _start;
    while (!cursor.isAfter(_today)) {
      final amount = _byDay[cursor]?.amount ?? 0;
      total += amount;
      if (amount > 0) {
        active++;
        run++;
        longest = math.max(longest, run);
      } else {
        run = 0;
      }
      cursor = cursor.add(const Duration(days: 1));
    }
    var current = 0;
    var back = _today;
    if ((_byDay[back]?.amount ?? 0) == 0) {
      back = back.subtract(const Duration(days: 1));
    }
    while ((_byDay[back]?.amount ?? 0) > 0) {
      current++;
      back = back.subtract(const Duration(days: 1));
    }
    return (total: total, active: active, longest: longest, current: current);
  }

  DateTime? _at(Offset p) {
    final x = p.dx - _left;
    final y = p.dy - _top;
    if (x < 0 || y < 0) return null;
    final col = (x / _step).floor();
    final row = (y / _step).floor();
    if (col >= _weeks || row > 6) return null;
    final date = _start.add(Duration(days: col * 7 + row));
    return date.isAfter(_today) ? null : date;
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final summary = _summary();
    final width = _left + _weeks * _step + 8;
    if (!_jumped) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scroll.hasClients) {
          _scroll.jumpTo(_scroll.position.maxScrollExtent);
          _jumped = true;
        }
      });
    }
    final hover = _hover;
    final hoverDay = hover == null ? null : _byDay[hover];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            _tile(context, 'Activities', '${summary.total}'),
            _tile(context, 'Active days', '${summary.active}'),
            _tile(context, 'Longest streak', '${summary.longest} d'),
            _tile(context, 'Current streak', '${summary.current} d'),
          ],
        ),
        const SizedBox(height: 14),
        SingleChildScrollView(
          controller: _scroll,
          scrollDirection: Axis.horizontal,
          child: MouseRegion(
            onHover: (e) {
              final d = _at(e.localPosition);
              if (d != _hover) setState(() => _hover = d);
            },
            onExit: (_) => setState(() => _hover = null),
            child: GestureDetector(
              onTapDown: (d) {
                final day = _at(d.localPosition);
                setState(() => _hover = day == _hover ? null : day);
              },
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: 1),
                duration: const Duration(milliseconds: 900),
                curve: Curves.easeOutCubic,
                builder: (_, t, _) => CustomPaint(
                  size: Size(width, _top + 7 * _step + 4),
                  painter: _HeatPainter(
                    start: _start,
                    today: _today,
                    weeks: _weeks,
                    byDay: _byDay,
                    hover: hover,
                    progress: t,
                    primary: scheme.primary,
                    empty: scheme.surfaceContainerHighest.withValues(
                      alpha: 0.55,
                    ),
                    text: scheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 150),
                child: Text(
                  hover == null
                      ? 'Tap or hover a day'
                      : '${_months[hover.month - 1]} ${hover.day}, ${hover.year} · '
                            '${hoverDay?.amount ?? 0} '
                            '${(hoverDay?.amount ?? 0) == 1 ? 'activity' : 'activities'}',
                  key: ValueKey(hover),
                  style: context.textTheme.labelMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                    fontWeight: hover == null
                        ? FontWeight.w400
                        : FontWeight.w700,
                  ),
                ),
              ),
            ),
            Text('Less', style: context.textTheme.labelSmall),
            const SizedBox(width: 6),
            for (final level in const [0, 2, 4, 7, 10])
              Container(
                width: 12,
                height: 12,
                margin: const EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                  color: level == 0
                      ? scheme.surfaceContainerHighest.withValues(alpha: 0.55)
                      : scheme.primary.withValues(alpha: 0.2 + level * 0.08),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            const SizedBox(width: 3),
            Text('More', style: context.textTheme.labelSmall),
          ],
        ),
      ],
    );
  }

  Widget _tile(BuildContext context, String label, String value) {
    final scheme = context.colorScheme;
    return Container(
      width: 132,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            label,
            style: context.textTheme.labelSmall?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _HeatPainter extends CustomPainter {
  final DateTime start;
  final DateTime today;
  final int weeks;
  final Map<DateTime, ActivityDay> byDay;
  final DateTime? hover;
  final double progress;
  final Color primary;
  final Color empty;
  final Color text;

  _HeatPainter({
    required this.start,
    required this.today,
    required this.weeks,
    required this.byDay,
    required this.hover,
    required this.progress,
    required this.primary,
    required this.empty,
    required this.text,
  });

  void _label(Canvas c, String s, Offset at) {
    final tp = TextPainter(
      text: TextSpan(
        text: s,
        style: TextStyle(color: text, fontSize: 10),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    tp.paint(c, at);
  }

  @override
  void paint(Canvas canvas, Size size) {
    const step = _ActivityHeatmapState._step;
    const cell = _ActivityHeatmapState._cell;
    const left = _ActivityHeatmapState._left;
    const top = _ActivityHeatmapState._top;
    const days = ['', 'Mon', '', 'Wed', '', 'Fri', ''];
    for (var r = 0; r < 7; r++) {
      if (days[r].isNotEmpty) {
        _label(canvas, days[r], Offset(0, top + r * step + 1));
      }
    }
    int? lastMonth;
    var lastLabelX = -100.0;
    for (var col = 0; col < weeks; col++) {
      final weekStart = start.add(Duration(days: col * 7));
      if (weekStart.month != lastMonth) {
        lastMonth = weekStart.month;
        final x = left + col * step;
        if (x - lastLabelX > 30) {
          _label(
            canvas,
            _ActivityHeatmapState._months[weekStart.month - 1],
            Offset(x, 2),
          );
          lastLabelX = x;
        }
      }
      for (var row = 0; row < 7; row++) {
        final date = start.add(Duration(days: col * 7 + row));
        if (date.isAfter(today)) continue;
        final day = byDay[DateTime(date.year, date.month, date.day)];
        final level = day?.level ?? 0;
        final order = (col / weeks);
        final reveal = ((progress * 1.4) - order * 0.4).clamp(0.0, 1.0);
        final color = level == 0
            ? empty
            : primary.withValues(alpha: (0.2 + level.clamp(1, 10) * 0.08));
        final rect = RRect.fromRectAndRadius(
          Rect.fromLTWH(
            left + col * step + (1 - reveal) * cell / 2,
            top + row * step + (1 - reveal) * cell / 2,
            cell * reveal,
            cell * reveal,
          ),
          const Radius.circular(4),
        );
        canvas.drawRRect(rect, Paint()..color = color);
        if (hover != null &&
            hover!.year == date.year &&
            hover!.month == date.month &&
            hover!.day == date.day) {
          canvas.drawRRect(
            rect.inflate(1.5),
            Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1.8
              ..color = primary,
          );
        }
      }
    }
  }

  @override
  bool shouldRepaint(_HeatPainter old) =>
      old.progress != progress ||
      old.hover != hover ||
      old.byDay != byDay ||
      old.primary != primary;
}
