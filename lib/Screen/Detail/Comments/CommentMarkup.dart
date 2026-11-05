import '../../../Utils/Lru.dart';

final _quoteMark = RegExp(r'^>\s?');
final _codeSlot = RegExp('\u0000(\\d+)\u0000');

final _code = RegExp(r'`([^`\n]+)`');
final _image = RegExp(r'!\[[^\]]*\]\(([^)\s]+)\)');
final _link = RegExp(r'\[([^\]]+)\]\(([^)\s]+)\)');
final _bold = RegExp(r'\*\*(.+?)\*\*|__(.+?)__', dotAll: true);
final _strike = RegExp(r'~~(.+?)~~', dotAll: true);
final _italic = RegExp(r'(?<![\w*])\*(?!\s)(.+?)(?<!\s)\*(?![\w*])');
final _spoiler = RegExp(r'\|\|(.+?)\|\|', dotAll: true);
final _bare = RegExp(r'(?<![="\x27>])(https?://[^\s<>)"]+)');

String _escape(String s) =>
    s.replaceAll('&', '&amp;').replaceAll('<', '&lt;').replaceAll('>', '&gt;');

final _cache = Lru<String, String>(400);

String commentHtml(String raw) => _cache[raw] ??= _commentHtml(raw);

String _commentHtml(String raw) {
  final codes = <String>[];
  var text = raw.replaceAllMapped(_code, (m) {
    codes.add('<code>${_escape(m[1]!)}</code>');
    return '\u0000${codes.length - 1}\u0000';
  });
  text = text
      .replaceAllMapped(_image, (m) => '<img src="${m[1]}"/>')
      .replaceAllMapped(_link, (m) => '<a href="${m[2]}">${m[1]}</a>')
      .replaceAllMapped(_bare, (m) => '<a href="${m[1]}">${m[1]}</a>')
      .replaceAllMapped(_bold, (m) => '<b>${m[1] ?? m[2]}</b>')
      .replaceAllMapped(_strike, (m) => '<del>${m[1]}</del>')
      .replaceAllMapped(_italic, (m) => '<i>${m[1]}</i>')
      .replaceAllMapped(
        _spoiler,
        (m) => "<span class='markdown_spoiler'>${m[1]}</span>",
      );
  final out = StringBuffer();
  final quote = <String>[];
  void flush() {
    if (quote.isEmpty) return;
    out.write('<blockquote>${quote.join('<br>')}</blockquote>');
    quote.clear();
  }

  final lines = text.split('\n');
  for (final (i, line) in lines.indexed) {
    if (line.startsWith('>')) {
      quote.add(line.replaceFirst(_quoteMark, ''));
      continue;
    }
    flush();
    out.write(line);
    if (i < lines.length - 1) out.write('<br>');
  }
  flush();
  return out.toString().replaceAllMapped(
    _codeSlot,
    (m) => codes[int.parse(m[1]!)],
  );
}
