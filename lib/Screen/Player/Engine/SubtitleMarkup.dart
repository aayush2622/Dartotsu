import 'package:flutter/painting.dart';

final _drawing = RegExp(r'\{[^}]*\\p[1-9][^}]*\}[^{]*');
final _ass = RegExp(r'\{\\[^}]*\}');
final _tag = RegExp(
  r'<(/?)(i|b|u|s|em|strong|font|c|v|ruby|rt|lang)\b([^>]*)>',
  caseSensitive: false,
);
final _anyTag = RegExp(r'<[^>]+>');
final _colour = RegExp(r"""color\s*=\s*["']?(#?[0-9a-fA-F]{6}|[a-zA-Z]+)""");

const _named = {
  'white': 0xFFFFFFFF,
  'yellow': 0xFFFFFF00,
  'red': 0xFFFF0000,
  'green': 0xFF00FF00,
  'blue': 0xFF0000FF,
  'cyan': 0xFF00FFFF,
  'magenta': 0xFFFF00FF,
  'orange': 0xFFFFA500,
  'pink': 0xFFFFC0CB,
};

String cleanSubtitle(String text) => text
    .replaceAll(_drawing, '')
    .replaceAll(_ass, '')
    .replaceAll(r'\N', '\n')
    .replaceAll(r'\n', '\n')
    .replaceAll(r'\h', ' ')
    .replaceAll('&nbsp;', ' ')
    .replaceAll('&lt;', '<')
    .replaceAll('&gt;', '>')
    .replaceAll('&amp;', '&');

Color? _parseColour(String raw) {
  final named = _named[raw.toLowerCase()];
  if (named != null) return Color(named);
  final hex = raw.replaceFirst('#', '');
  final value = int.tryParse(hex, radix: 16);
  return hex.length == 6 && value != null ? Color(0xFF000000 | value) : null;
}

List<InlineSpan> subtitleSpans(String source, {Paint? stroke}) {
  final text = cleanSubtitle(source)
      .replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n');
  final spans = <InlineSpan>[];
  var italic = 0;
  var bold = 0;
  var underline = 0;
  final colours = <Color?>[];
  var at = 0;

  TextStyle style() => TextStyle(
    fontStyle: italic > 0 ? FontStyle.italic : null,
    fontWeight: bold > 0 ? FontWeight.w600 : null,
    decoration: underline > 0 ? TextDecoration.underline : null,
    color: stroke == null ? colours.whereType<Color>().lastOrNull : null,
    foreground: stroke,
  );

  void add(String chunk) {
    final clean = chunk.replaceAll(_anyTag, '');
    if (clean.isNotEmpty) spans.add(TextSpan(text: clean, style: style()));
  }

  for (final m in _tag.allMatches(text)) {
    add(text.substring(at, m.start));
    at = m.end;
    final closing = m.group(1) == '/';
    final name = m.group(2)!.toLowerCase();
    final delta = closing ? -1 : 1;
    switch (name) {
      case 'i' || 'em':
        italic = (italic + delta).clamp(0, 9);
      case 'b' || 'strong':
        bold = (bold + delta).clamp(0, 9);
      case 'u':
        underline = (underline + delta).clamp(0, 9);
      case 'font':
        if (closing) {
          if (colours.isNotEmpty) colours.removeLast();
        } else {
          final raw = _colour.firstMatch(m.group(3) ?? '')?.group(1);
          colours.add(raw == null ? null : _parseColour(raw));
        }
    }
  }
  add(text.substring(at));
  return spans.isEmpty ? [TextSpan(text: text.replaceAll(_anyTag, ''))] : spans;
}
