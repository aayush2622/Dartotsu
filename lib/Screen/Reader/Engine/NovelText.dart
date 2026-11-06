import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html_parser;

sealed class NovelBlock {
  const NovelBlock();
}

class NovelParagraph extends NovelBlock {
  final String text;
  final int heading;

  const NovelParagraph(this.text, {this.heading = 0});
}

class NovelPicture extends NovelBlock {
  final String url;
  final double? width;
  final double? fraction;

  const NovelPicture(this.url, {this.width, this.fraction});
}

final _cssWidth = RegExp(
  r'(?:^|;)\s*(?:max-)?width\s*:\s*([\d.]+)\s*(%|px|em|rem)?',
);

NovelPicture _picture(String src, dom.Element img) {
  final style = _cssWidth.firstMatch(img.attributes['style'] ?? '');
  final raw = style?.group(1) ?? img.attributes['width'];
  final unit = style?.group(2) ?? '';
  final value = raw == null ? null : double.tryParse(raw.replaceAll('%', ''));
  if (value == null || value <= 0) return NovelPicture(src);
  if (unit == '%' || (raw?.endsWith('%') ?? false)) {
    return NovelPicture(src, fraction: (value / 100).clamp(0.05, 1.0));
  }
  return NovelPicture(
    src,
    width: unit == 'em' || unit == 'rem' ? value * 16 : value,
  );
}

class NovelRule extends NovelBlock {
  const NovelRule();
}

class NovelMark extends NovelBlock {
  final String title;
  final int level;

  const NovelMark(this.title, {this.level = 1});
}

const _blockTags = {
  'p',
  'div',
  'li',
  'ul',
  'ol',
  'blockquote',
  'pre',
  'section',
  'article',
  'tr',
  'table',
  'center',
};

final _headingTag = RegExp(r'^h([1-6])$');
final _spaces = RegExp(r'[ \t\r\n ]+');

List<NovelBlock> parseNovel(String source) {
  if (source.trim().isEmpty) return const [];
  if (!source.contains(RegExp(r'<[a-zA-Z!/]'))) return _plain(source);
  final doc = html_parser.parse(source);
  final out = <NovelBlock>[];
  final buffer = StringBuffer();

  void flush(int heading) {
    final text = buffer.toString().replaceAll(_spaces, ' ').trim();
    buffer.clear();
    if (text.isNotEmpty) out.add(NovelParagraph(text, heading: heading));
  }

  void walk(dom.Node node, int heading) {
    if (node is dom.Text) {
      buffer.write(node.text);
      return;
    }
    if (node is! dom.Element) return;
    final tag = node.localName ?? '';
    final mark = node.attributes['data-toc'];
    if (mark != null && mark.trim().isNotEmpty) {
      flush(heading);
      out.add(
        NovelMark(
          mark.trim(),
          level: int.tryParse(node.attributes['data-level'] ?? '') ?? 1,
        ),
      );
      return;
    }
    if (tag == 'script' || tag == 'style' || tag == 'head') return;
    if (tag == 'br') {
      flush(heading);
      return;
    }
    if (tag == 'img') {
      flush(heading);
      final src = node.attributes['src'] ?? node.attributes['data-src'];
      if (src != null && src.isNotEmpty) out.add(_picture(src, node));
      return;
    }
    if (tag == 'hr') {
      flush(heading);
      out.add(const NovelRule());
      return;
    }
    final match = _headingTag.firstMatch(tag);
    final level = match != null ? int.parse(match.group(1)!) : heading;
    final block = match != null || _blockTags.contains(tag);
    if (block) flush(heading);
    for (final child in node.nodes) {
      walk(child, level);
    }
    if (block) flush(level);
  }

  walk(doc.body ?? doc.documentElement!, 0);
  flush(0);
  return out.isEmpty ? _plain(doc.body?.text ?? source) : out;
}

List<NovelBlock> _plain(String text) => [
  for (final line in text.split(RegExp(r'\r?\n+')))
    if (line.trim().isNotEmpty) NovelParagraph(line.trim()),
];
