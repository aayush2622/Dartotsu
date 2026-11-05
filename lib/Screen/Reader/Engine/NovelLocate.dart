import '../../Detail/Watch/Data/Media/MediaRecord.dart';
import 'NovelText.dart';

final _spaces = RegExp(r'[ \t\r]+');
final _lineEdges = RegExp(r' ?\n ?');

const _snippetLength = 32;

String snippetOf(NovelBlock block) {
  if (block is! NovelParagraph) return '';
  final text = block.text;
  return text.length <= _snippetLength
      ? text
      : text.substring(0, _snippetLength);
}

NovelLocator? locatorFor(List<NovelBlock> blocks, int block, double within) {
  if (block < 0 || block >= blocks.length) return null;
  return NovelLocator(block, within.clamp(0.0, 1.0), snippetOf(blocks[block]));
}

int? resolveLocator(List<NovelBlock> blocks, NovelLocator locator) {
  final i = locator.block;
  final snippet = locator.snippet;
  if (i >= 0 && i < blocks.length) {
    if (snippet.isEmpty || snippetOf(blocks[i]) == snippet) return i;
  }
  if (snippet.isEmpty) return null;
  for (var d = 1; d < blocks.length; d++) {
    final before = i - d;
    final after = i + d;
    if (before >= 0 &&
        before < blocks.length &&
        snippetOf(blocks[before]) == snippet) {
      return before;
    }
    if (after >= 0 &&
        after < blocks.length &&
        snippetOf(blocks[after]) == snippet) {
      return after;
    }
    if (before < 0 && after >= blocks.length) break;
  }
  return null;
}

class NovelTocEntry {
  final String title;
  final int block;
  final int level;

  const NovelTocEntry(this.title, this.block, this.level);
}

List<NovelTocEntry> buildToc(List<NovelBlock> blocks) {
  final marks = <NovelTocEntry>[];
  final headings = <NovelTocEntry>[];
  for (var i = 0; i < blocks.length; i++) {
    final b = blocks[i];
    if (b is NovelMark) {
      marks.add(NovelTocEntry(b.title, i, b.level));
    } else if (b is NovelParagraph && b.heading > 0 && b.text.length <= 140) {
      headings.add(NovelTocEntry(b.text, i, b.heading));
    }
  }
  if (marks.isEmpty) {
    if (headings.length < 2) return const [];
    final top = headings.map((h) => h.level).reduce((a, b) => a < b ? a : b);
    return [
      for (final h in headings)
        NovelTocEntry(h.title, h.block, h.level - top + 1),
    ];
  }
  return marks;
}

class NovelMatch {
  final int block;
  final int start;
  final int end;
  final String before;
  final String hit;
  final String after;

  const NovelMatch({
    required this.block,
    required this.start,
    required this.end,
    required this.before,
    required this.hit,
    required this.after,
  });
}

List<NovelMatch> searchBlocks(
  List<NovelBlock> blocks,
  String query, {
  int limit = 300,
}) {
  final needle = query.trim().toLowerCase();
  if (needle.length < 2) return const [];
  final out = <NovelMatch>[];
  for (var i = 0; i < blocks.length && out.length < limit; i++) {
    final b = blocks[i];
    if (b is! NovelParagraph) continue;
    final text = b.text;
    final lower = text.toLowerCase();
    if (lower.length != text.length) continue;
    var from = 0;
    while (out.length < limit) {
      final at = lower.indexOf(needle, from);
      if (at < 0) break;
      final end = at + needle.length;
      out.add(
        NovelMatch(
          block: i,
          start: at,
          end: end,
          before: text.substring((at - 36).clamp(0, at), at),
          hit: text.substring(at, end),
          after: text.substring(end, (end + 60).clamp(end, text.length)),
        ),
      );
      from = end;
    }
  }
  return out;
}

class NovelRange {
  final int block;
  final int start;
  final int end;

  const NovelRange(this.block, this.start, this.end);
}

String cleanSelection(String text) => text
    .replaceAll(' ', '')
    .replaceAll(_spaces, ' ')
    .replaceAll(_lineEdges, '\n')
    .trim();

List<NovelRange> locateSelection(
  List<NovelBlock> blocks,
  String selected, {
  int near = 0,
}) {
  final cleaned = cleanSelection(selected);
  if (cleaned.length < 2) return const [];
  final lines = cleaned.split('\n').where((l) => l.trim().isNotEmpty).toList();
  if (lines.isEmpty) return const [];
  final order = <int>[
    for (var d = 0; d < blocks.length; d++) ...[
      if (near + d < blocks.length) near + d,
      if (d > 0 && near - d >= 0) near - d,
    ],
  ];
  int? find(String line, {required bool tail, required bool head}) {
    for (final i in order) {
      final b = blocks[i];
      if (b is! NovelParagraph) continue;
      if (tail && head) {
        if (b.text.contains(line)) return i;
      } else if (tail) {
        if (b.text.endsWith(line)) return i;
      } else if (b.text.startsWith(line)) {
        return i;
      }
    }
    return null;
  }

  if (lines.length == 1) {
    final line = lines.first;
    final i = find(line, tail: true, head: true);
    if (i == null) return const [];
    final text = (blocks[i] as NovelParagraph).text;
    final at = text.indexOf(line);
    return [NovelRange(i, at, at + line.length)];
  }

  final first = find(lines.first, tail: true, head: false);
  if (first == null) return const [];
  final out = <NovelRange>[];
  final firstText = (blocks[first] as NovelParagraph).text;
  out.add(
    NovelRange(first, firstText.length - lines.first.length, firstText.length),
  );
  var cursor = first + 1;
  for (var k = 1; k < lines.length; k++) {
    while (cursor < blocks.length &&
        !(blocks[cursor] is NovelParagraph &&
            (blocks[cursor] as NovelParagraph).text.trim().isNotEmpty)) {
      cursor++;
    }
    if (cursor >= blocks.length) break;
    final text = (blocks[cursor] as NovelParagraph).text;
    final last = k == lines.length - 1;
    if (last) {
      if (text.startsWith(lines[k])) {
        out.add(NovelRange(cursor, 0, lines[k].length));
      } else if (text.contains(lines[k])) {
        final at = text.indexOf(lines[k]);
        out.add(NovelRange(cursor, at, at + lines[k].length));
      }
    } else {
      out.add(NovelRange(cursor, 0, text.length));
    }
    cursor++;
  }
  return out;
}
