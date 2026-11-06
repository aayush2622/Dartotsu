import 'package:flutter/painting.dart';

class TextMark {
  final int start;
  final int end;
  final int priority;
  final Color color;
  final bool underline;

  const TextMark(
    this.start,
    this.end,
    this.priority,
    this.color, {
    this.underline = false,
  });
}

List<InlineSpan> buildSpans(
  String text,
  TextStyle style,
  List<TextMark> marks, {
  int from = 0,
  int? to,
  String prefix = '',
}) {
  final end = (to ?? text.length).clamp(0, text.length);
  from = from.clamp(0, end);
  final spans = <InlineSpan>[];
  if (prefix.isNotEmpty) spans.add(TextSpan(text: prefix));
  if (marks.isEmpty) {
    spans.add(TextSpan(text: text.substring(from, end)));
    return spans;
  }
  final cuts = <int>{from, end};
  for (final m in marks) {
    if (m.end <= from || m.start >= end) continue;
    cuts
      ..add(m.start.clamp(from, end))
      ..add(m.end.clamp(from, end));
  }
  final sorted = cuts.toList()..sort();
  for (var i = 0; i < sorted.length - 1; i++) {
    final a = sorted[i];
    final b = sorted[i + 1];
    if (b <= a) continue;
    TextMark? top;
    for (final m in marks) {
      if (m.start <= a &&
          m.end >= b &&
          (top == null || m.priority > top.priority)) {
        top = m;
      }
    }
    spans.add(
      TextSpan(
        text: text.substring(a, b),
        style: top == null
            ? null
            : TextStyle(
                backgroundColor: top.color,
                decoration: top.underline ? TextDecoration.underline : null,
                decorationStyle: TextDecorationStyle.dotted,
                decorationColor: style.color,
              ),
      ),
    );
  }
  return spans;
}
