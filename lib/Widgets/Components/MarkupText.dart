import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Function.dart';

class MarkupText extends StatefulWidget {
  final String text;
  final int collapsedLines;
  final int collapseAbove;
  final bool collapsible;
  final ValueChanged<String>? onLink;
  final Color? color;

  const MarkupText({
    super.key,
    required this.text,
    this.collapsedLines = 6,
    this.collapseAbove = 320,
    this.collapsible = true,
    this.onLink,
    this.color,
  });

  @override
  State<MarkupText> createState() => _MarkupTextState();
}

class _MarkupTextState extends State<MarkupText> {
  static final _embed = RegExp(
    r'img\d*%?\(([^)\s]+)\)|\[([^\]]+)\]\(([^)\s]+)\)|(https?://[^\s)<>]+)',
  );
  static final _spoiler = RegExp(r'~!(.*?)!~', dotAll: true);
  static final _bold = RegExp(r'(__|\*\*)(.+?)\1', dotAll: true);
  static final _italic = RegExp(r'(?<![\w])(_|\*)(?!\s)(.+?)(?<!\s)\1(?![\w])');

  final _revealed = <int>{};
  final _recognizers = <TapGestureRecognizer>[];
  bool _expanded = false;

  @override
  void dispose() {
    _disposeRecognizers();
    super.dispose();
  }

  void _disposeRecognizers() {
    for (final r in _recognizers) {
      r.dispose();
    }
    _recognizers.clear();
  }

  static String _clean(String raw) {
    var text = raw
        .replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n')
        .replaceAll(RegExp(r'</?(b|strong)>', caseSensitive: false), '__')
        .replaceAll(RegExp(r'</?(i|em)>', caseSensitive: false), '_')
        .replaceAll(RegExp(r'<[^>]+>'), '')
        .replaceAll('&amp;', '&')
        .replaceAll('&quot;', '"')
        .replaceAll('&#039;', "'")
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>')
        .replaceAll('&nbsp;', ' ');
    text = text.replaceAll(RegExp(r'\n{3,}'), '\n\n');
    return text.trim();
  }

  List<InlineSpan> _inline(
    String text,
    TextStyle base, [
    GestureRecognizer? tap,
  ]) {
    final spans = <InlineSpan>[];
    var cursor = 0;
    for (final m in _embed.allMatches(text)) {
      if (m.start > cursor) {
        spans.addAll(_styled(text.substring(cursor, m.start), base, tap));
      }
      final image = m.group(1);
      final label = m.group(2);
      final url = m.group(3) ?? m.group(4);
      if (image != null) {
        spans.add(_imageSpan(image));
      } else if (url != null) {
        final recognizer = TapGestureRecognizer()
          ..onTap = () => (widget.onLink ?? openLinkInBrowser)(url);
        _recognizers.add(recognizer);
        spans.add(
          TextSpan(
            text: label ?? url,
            recognizer: recognizer,
            mouseCursor: SystemMouseCursors.click,
            style: base.copyWith(
              color: context.colorScheme.primary,
              decoration: TextDecoration.underline,
              decorationColor: context.colorScheme.primary,
            ),
          ),
        );
      }
      cursor = m.end;
    }
    if (cursor < text.length) {
      spans.addAll(_styled(text.substring(cursor), base, tap));
    }
    return spans;
  }

  InlineSpan _imageSpan(String url) => WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320, maxHeight: 320),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            url,
            fit: BoxFit.contain,
            errorBuilder: (_, _, _) => const SizedBox.shrink(),
          ),
        ),
      ),
    ),
  );

  List<InlineSpan> _styled(
    String text,
    TextStyle base, [
    GestureRecognizer? tap,
  ]) {
    final spans = <InlineSpan>[];
    var cursor = 0;
    for (final m in _bold.allMatches(text)) {
      if (m.start > cursor) {
        spans.addAll(_italics(text.substring(cursor, m.start), base, tap));
      }
      spans.addAll(
        _italics(m.group(2)!, base.copyWith(fontWeight: FontWeight.w700), tap),
      );
      cursor = m.end;
    }
    if (cursor < text.length) {
      spans.addAll(_italics(text.substring(cursor), base, tap));
    }
    return spans;
  }

  List<InlineSpan> _italics(
    String text,
    TextStyle base, [
    GestureRecognizer? tap,
  ]) {
    final spans = <InlineSpan>[];
    var cursor = 0;
    for (final m in _italic.allMatches(text)) {
      if (m.start > cursor) {
        spans.add(
          TextSpan(
            text: text.substring(cursor, m.start),
            style: base,
            recognizer: tap,
            mouseCursor: tap == null ? null : SystemMouseCursors.click,
          ),
        );
      }
      spans.add(
        TextSpan(
          text: m.group(2),
          style: base.copyWith(fontStyle: FontStyle.italic),
          recognizer: tap,
          mouseCursor: tap == null ? null : SystemMouseCursors.click,
        ),
      );
      cursor = m.end;
    }
    if (cursor < text.length) {
      spans.add(
        TextSpan(text: text.substring(cursor), style: base, recognizer: tap),
      );
    }
    return spans;
  }

  InlineSpan _spoilerSpan(int index, String text, TextStyle base) {
    final scheme = context.colorScheme;
    final shown = _revealed.contains(index);
    final recognizer = TapGestureRecognizer()
      ..onTap = () => setState(() {
        shown ? _revealed.remove(index) : _revealed.add(index);
      });
    _recognizers.add(recognizer);
    return TextSpan(
      children: _inline(
        text,
        base.copyWith(
          color: shown ? base.color : Colors.transparent,
          backgroundColor: scheme.onSurfaceVariant.withValues(
            alpha: shown ? 0.12 : 0.35,
          ),
        ),
        recognizer,
      ),
    );
  }

  List<InlineSpan> _build(String text, TextStyle base) {
    final spans = <InlineSpan>[];
    var cursor = 0;
    var index = 0;
    for (final m in _spoiler.allMatches(text)) {
      if (m.start > cursor) {
        spans.addAll(_inline(text.substring(cursor, m.start), base));
      }
      spans.add(_spoilerSpan(index++, m.group(1)!, base));
      cursor = m.end;
    }
    if (cursor < text.length) {
      spans.addAll(_inline(text.substring(cursor), base));
    }
    return spans;
  }

  @override
  Widget build(BuildContext context) {
    _disposeRecognizers();
    final text = _clean(widget.text);
    final long = widget.collapsible && text.length > widget.collapseAbove;
    final base = context.textTheme.bodyMedium!.copyWith(
      height: 1.55,
      color: widget.color ?? context.colorScheme.onSurface,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 180),
          alignment: Alignment.topCenter,
          child: Text.rich(
            TextSpan(children: _build(text, base)),
            maxLines: _expanded || !long ? null : widget.collapsedLines,
            overflow: _expanded || !long
                ? TextOverflow.clip
                : TextOverflow.ellipsis,
          ),
        ),
        if (long)
          TextButton(
            style: TextButton.styleFrom(
              visualDensity: VisualDensity.compact,
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 36),
            ),
            onPressed: () => setState(() => _expanded = !_expanded),
            child: Text(_expanded ? 'Show less' : 'Read more'),
          ),
      ],
    );
  }
}
