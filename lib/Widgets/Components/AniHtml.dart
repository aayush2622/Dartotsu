import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html_parser;

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Function.dart';
import 'Clickable.dart';
import '../../Core/State/State.dart';

typedef AniLinkCardBuilder =
    Widget? Function(BuildContext context, String url, bool centered);

class AniHtml extends StatefulWidget {
  final String html;
  final Color? color;
  final ValueChanged<String>? onLink;
  final AniLinkCardBuilder? linkCard;
  final double fontSize;
  final double? collapsedHeight;

  const AniHtml({
    super.key,
    required this.html,
    this.color,
    this.onLink,
    this.linkCard,
    this.fontSize = 14,
    this.collapsedHeight,
  });

  @override
  State<AniHtml> createState() => _AniHtmlState();
}

class _AniHtmlState extends State<AniHtml> {
  static const _blockTags = {
    'p',
    'div',
    'center',
    'h1',
    'h2',
    'h3',
    'h4',
    'h5',
    'h6',
    'hr',
    'ul',
    'ol',
    'pre',
    'blockquote',
    'video',
    'details',
    'table',
  };

  static final _media = RegExp(r'anilist\.co/(anime|manga)/(\d+)');
  static final _youtube = RegExp(
    r'(?:v=|youtu\.be/|embed/|shorts/)([0-9A-Za-z_-]{11})',
  );

  late dom.DocumentFragment _tree = _parse();
  final _revealed = <int>{};
  final _recognizers = <TapGestureRecognizer>[];
  int _spoilers = 0;
  final _expanded = false.live;
  final _overflows = false.live;
  final _revealTick = Trigger();
  final _bodyKey = GlobalKey();

  dom.DocumentFragment _parse() =>
      html_parser.parseFragment(_normalize(widget.html));

  static final _spoilerOpen = RegExp(
    r'''<span[^>]*class=['"]?markdown_spoiler['"]?[^>]*>''',
    caseSensitive: false,
  );
  static final _spanTag = RegExp(r'<(/?)span\b[^>]*>', caseSensitive: false);
  static final _anchorOpen = RegExp(r'<a\b', caseSensitive: false);
  static final _anchorClose = RegExp(r'</a\s*>', caseSensitive: false);

  static final _escapedImg = RegExp(
    r'&lt;img\b(.*?)&gt;',
    caseSensitive: false,
    dotAll: true,
  );
  static final _anyTag = RegExp(r'<[^>]*>');

  static String _unescapeImages(String html) =>
      html.replaceAllMapped(_escapedImg, (m) {
        final attrs = m
            .group(1)!
            .replaceAll(_anyTag, '')
            .replaceAll('&quot;', '"')
            .replaceAll('&#39;', "'")
            .replaceAll('&amp;', '&')
            .replaceAll(RegExp(r'\s*=\s*'), '=');
        return '<img $attrs>';
      });

  static String _normalize(String source) {
    final html = _unescapeImages(source);
    final out = StringBuffer();
    var cursor = 0;
    while (true) {
      final open = _spoilerOpen.firstMatch(html.substring(cursor));
      if (open == null) break;
      final start = cursor + open.start;
      final innerStart = cursor + open.end;
      var depth = 1;
      var innerEnd = html.length;
      var after = html.length;
      for (final m in _spanTag.allMatches(html.substring(innerStart))) {
        depth += m.group(1) == '/' ? -1 : 1;
        if (depth == 0) {
          innerEnd = innerStart + m.start;
          after = innerStart + m.end;
          break;
        }
      }
      var inner = html.substring(innerStart, innerEnd);
      final surplus =
          _anchorClose.allMatches(inner).length -
          _anchorOpen.allMatches(inner).length;
      if (surplus > 0) {
        var removed = 0;
        inner = inner.replaceAllMapped(_anchorClose, (m) {
          return removed++ < surplus ? '' : m.group(0)!;
        });
      }
      out
        ..write(html.substring(cursor, start))
        ..write(surplus > 0 ? '</a>' * surplus : '')
        ..write("<span class='markdown_spoiler'>")
        ..write(inner)
        ..write('</span>');
      cursor = after;
    }
    out.write(html.substring(cursor));
    return out.toString();
  }

  @override
  void didUpdateWidget(AniHtml old) {
    super.didUpdateWidget(old);
    if (old.html != widget.html) {
      _tree = _parse();
      _revealed.clear();
    }
  }

  @override
  void dispose() {
    _clearRecognizers();
    super.dispose();
  }

  void _clearRecognizers() {
    for (final r in _recognizers) {
      r.dispose();
    }
    _recognizers.clear();
  }

  void _open(String url) => (widget.onLink ?? openLinkInBrowser)(url);

  TextStyle get _base => context.textTheme.bodyMedium!.copyWith(
    fontSize: widget.fontSize,
    height: 1.55,
    color: widget.color ?? context.colorScheme.onSurface,
  );

  double _maxWidth = 600;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, box) {
      if (box.maxWidth.isFinite) _maxWidth = box.maxWidth;
      return Watch(() => _buildBody(context));
    },
  );

  Widget _buildBody(BuildContext context) {
    _clearRecognizers();
    _spoilers = 0;
    _revealTick.track();
    final blocks = _blocks(_tree.nodes, _base, TextAlign.start);
    final body = Column(
      key: _bodyKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: blocks,
    );
    final limit = widget.collapsedHeight;
    if (limit == null) return body;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final height = _bodyKey.currentContext?.size?.height;
      if (height != null && mounted) {
        final over = height > limit + 24;
        if (over != _overflows.value) _overflows.value = over;
      }
    });
    final scheme = context.colorScheme;
    final collapsed = _overflows.value && !_expanded.value;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 240),
          curve: Curves.easeOutCubic,
          alignment: Alignment.topCenter,
          child: collapsed
              ? SizedBox(
                  height: limit,
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: body,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        height: 48,
                        child: IgnorePointer(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  scheme.surface.withValues(alpha: 0),
                                  scheme.surface.withValues(alpha: 0.9),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : body,
        ),
        if (_overflows.value)
          TextButton(
            style: TextButton.styleFrom(
              visualDensity: VisualDensity.compact,
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 36),
            ),
            onPressed: () => _expanded.value = !_expanded.value,
            child: Text(_expanded.value ? 'Show less' : 'Read more'),
          ),
      ],
    );
  }

  bool _isBlock(dom.Node n) {
    if (n is! dom.Element) return false;
    final tag = n.localName;
    if (_blockTags.contains(tag)) return true;
    if (tag == 'span' && n.classes.contains('markdown_spoiler')) {
      return _containsBlockish(n);
    }
    return false;
  }

  bool _containsBlockish(dom.Element e) {
    for (final d in e.querySelectorAll(
      'img, video, div, center, p, hr, ul, ol, pre, blockquote, h1, h2, h3',
    )) {
      if (d.localName != null) return true;
    }
    return false;
  }

  bool _isBareMediaLink(dom.Node n) {
    if (n is! dom.Element || n.localName != 'a') return false;
    final href = n.attributes['href'] ?? '';
    return _media.hasMatch(href) && n.text.trim().startsWith('http');
  }

  List<Widget> _blocks(
    List<dom.Node> nodes,
    TextStyle style,
    TextAlign align, {
    bool centered = false,
  }) {
    final out = <Widget>[];
    var inline = <InlineSpan>[];

    void flush() {
      final hasContent = inline.any(
        (s) => s is WidgetSpan || (s is TextSpan && _spanHasText(s)),
      );
      if (hasContent) {
        out.add(
          _Paragraph(
            span: TextSpan(children: _trim(inline), style: style),
            align: align,
          ),
        );
      }
      inline = <InlineSpan>[];
    }

    for (var index = 0; index < nodes.length; index++) {
      final node = nodes[index];
      if (_floatSide(node) case final side?) {
        final image = _imageWidget(node as dom.Element, null);
        if (image != null) {
          flush();
          final rest = _blocks(
            nodes.sublist(index + 1),
            style,
            align,
            centered: centered,
          );
          out.add(
            _FloatFlow(right: side == 'right', float: image, blocks: rest),
          );
          break;
        }
      }
      if (widget.linkCard != null && _isBareMediaLink(node)) {
        final card = widget.linkCard!(
          context,
          (node as dom.Element).attributes['href']!,
          centered,
        );
        if (card != null) {
          flush();
          out.add(card);
          continue;
        }
      }
      if (_isBlock(node)) {
        flush();
        final block = _block(node as dom.Element, style, align, centered);
        if (block != null) out.add(block);
      } else {
        inline.addAll(_inlineSpans(node, style, null));
      }
    }
    flush();
    return out;
  }

  String? _floatSide(dom.Node n) {
    if (n is! dom.Element || n.localName != 'img') return null;
    final side = (n.attributes['align'] ?? '').toLowerCase();
    return side == 'left' || side == 'right' ? side : null;
  }

  bool _spanHasText(TextSpan s) {
    if ((s.text ?? '').trim().isNotEmpty) return true;
    return (s.children ?? const []).any(
      (c) => c is WidgetSpan || (c is TextSpan && _spanHasText(c)),
    );
  }

  List<InlineSpan> _trim(List<InlineSpan> spans) {
    final result = [...spans];
    while (result.isNotEmpty) {
      final first = result.first;
      if (first is TextSpan &&
          (first.children?.isEmpty ?? true) &&
          (first.text ?? '').trim().isEmpty) {
        result.removeAt(0);
      } else {
        break;
      }
    }
    while (result.isNotEmpty) {
      final last = result.last;
      if (last is TextSpan &&
          (last.children?.isEmpty ?? true) &&
          (last.text ?? '').trim().isEmpty) {
        result.removeLast();
      } else {
        break;
      }
    }
    return result;
  }

  bool _isCentered(dom.Element e) {
    if ((e.attributes['align'] ?? '').toLowerCase() == 'center') return true;
    final style = (e.attributes['style'] ?? '').replaceAll(' ', '');
    return style.contains('text-align:center');
  }

  Widget? _block(
    dom.Element e,
    TextStyle style,
    TextAlign align,
    bool centered,
  ) {
    final scheme = context.colorScheme;
    switch (e.localName) {
      case 'center':
        final children = _blocks(
          e.nodes,
          style,
          TextAlign.center,
          centered: true,
        );
        if (children.isEmpty) return null;
        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        );
      case 'p':
        final here = centered || _isCentered(e);
        final children = _blocks(
          e.nodes,
          style,
          here ? TextAlign.center : align,
          centered: here,
        );
        if (children.isEmpty) return null;
        if (children.length == 1 && children.first is _Paragraph) {
          final only = children.first as _Paragraph;
          return _Paragraph(
            span: only.span,
            align: only.align,
            padding: const EdgeInsets.symmetric(vertical: 4),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: here
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: children,
            ),
          ),
        );
      case 'div':
        if (e.classes.contains('youtube')) return _youtubeTile(e);
        if (e.attributes['rel'] == 'spoiler') {
          return _SpoilerBlock(
            children: _blocks(e.nodes, style, align, centered: centered),
          );
        }
        final here = centered || _isCentered(e);
        final children = _blocks(
          e.nodes,
          style,
          here ? TextAlign.center : align,
          centered: here,
        );
        if (children.isEmpty) return null;
        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: here
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: children,
          ),
        );
      case 'details':
        return _SpoilerBlock(
          children: _blocks(
            [
              for (final n in e.nodes)
                if (!(n is dom.Element && n.localName == 'summary')) n,
            ],
            style,
            align,
            centered: centered,
          ),
        );
      case 'span':
        return _SpoilerBlock(
          children: _blocks(e.nodes, style, align, centered: centered),
        );
      case 'h1' || 'h2' || 'h3' || 'h4' || 'h5' || 'h6':
        final size = switch (e.localName) {
          'h1' => 1.5,
          'h2' => 1.35,
          'h3' => 1.2,
          _ => 1.1,
        };
        final headingStyle = style.copyWith(
          fontSize: (style.fontSize ?? 14) * size,
          fontWeight: FontWeight.w800,
          height: 1.3,
        );
        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 4),
          child: SizedBox(
            width: double.infinity,
            child: Text.rich(
              TextSpan(
                children: _trim(
                  _inlineSpans(e, headingStyle, null, descend: true),
                ),
                style: headingStyle,
              ),
              textAlign:
                  centered ||
                      _isCentered(e) ||
                      e.querySelector('center') != null
                  ? TextAlign.center
                  : align,
            ),
          ),
        );
      case 'hr':
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Divider(
            height: 1,
            color: scheme.outlineVariant.withValues(alpha: 0.6),
          ),
        );
      case 'ul' || 'ol':
        final ordered = e.localName == 'ol';
        var index = 0;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final li in e.children.where((c) => c.localName == 'li'))
                Padding(
                  padding: const EdgeInsets.only(left: 6, bottom: 2),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 22,
                        child: Text(
                          ordered ? '${++index}.' : '•',
                          style: style,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _blocks(li.nodes, style, align),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      case 'pre':
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: scheme.surfaceContainerHighest.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(12),
          ),
          child: SelectableText(
            e.text,
            style: style.copyWith(fontFamily: 'monospace', fontSize: 12.5),
          ),
        );
      case 'blockquote':
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
          decoration: BoxDecoration(
            color: scheme.primary.withValues(alpha: 0.07),
            border: Border(left: BorderSide(color: scheme.primary, width: 3)),
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _blocks(e.nodes, style, align),
          ),
        );
      case 'video':
        return _videoTile(e);
      default:
        final children = _blocks(e.nodes, style, align, centered: centered);
        if (children.isEmpty) return null;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        );
    }
  }

  Widget _youtubeTile(dom.Element e) {
    final token = e.attributes['id'] ?? e.text;
    final id = _youtube.firstMatch(token)?.group(1);
    final url = id == null ? token : 'https://www.youtube.com/watch?v=$id';
    final thumb = id == null
        ? null
        : 'https://img.youtube.com/vi/$id/hqdefault.jpg';
    return _MediaTile(
      thumbnail: thumb,
      icon: Icons.play_circle_fill_rounded,
      label: 'YouTube',
      onTap: () => openLinkInBrowser(url),
    );
  }

  Widget _videoTile(dom.Element e) {
    var src = e.attributes['src'] ?? '';
    if (src.isEmpty) {
      for (final c in e.children) {
        if (c.localName == 'source' && (c.attributes['src'] ?? '').isNotEmpty) {
          src = c.attributes['src']!;
          break;
        }
      }
    }
    if (src.isEmpty) return const SizedBox.shrink();
    return _MediaTile(
      icon: Icons.play_circle_outline_rounded,
      label: 'Video',
      onTap: () => openLinkInBrowser(src),
    );
  }

  List<InlineSpan> _inlineSpans(
    dom.Node node,
    TextStyle style,
    String? href, {
    bool descend = false,
  }) {
    if (node is dom.Text) {
      final parts = node.text.split('\n');
      final spans = <InlineSpan>[];
      for (var i = 0; i < parts.length; i++) {
        final text = parts[i].replaceAll(RegExp(r'[ \t\r\f]+'), ' ');
        if (i > 0) spans.add(const TextSpan(text: '\n'));
        if (text.trim().isNotEmpty || (parts.length == 1 && text.isNotEmpty)) {
          spans.addAll(_markdownLinks(text, style, href));
        }
      }
      return spans;
    }
    if (node is! dom.Element) return const [];
    if (descend) {
      return [for (final c in node.nodes) ..._inlineSpans(c, style, href)];
    }
    final scheme = context.colorScheme;
    switch (node.localName) {
      case 'br':
        return [const TextSpan(text: '\n')];
      case 'strong' || 'b':
        return _children(
          node,
          style.copyWith(fontWeight: FontWeight.w800),
          href,
        );
      case 'em' || 'i':
        return _children(
          node,
          style.copyWith(fontStyle: FontStyle.italic),
          href,
        );
      case 'del' || 's' || 'strike':
        return _children(
          node,
          style.copyWith(decoration: TextDecoration.lineThrough),
          href,
        );
      case 'u':
        return _children(
          node,
          style.copyWith(decoration: TextDecoration.underline),
          href,
        );
      case 'code':
        return _children(
          node,
          style.copyWith(
            fontFamily: 'monospace',
            fontSize: (style.fontSize ?? 14) * 0.92,
            backgroundColor: scheme.surfaceContainerHighest.withValues(
              alpha: 0.7,
            ),
          ),
          href,
        );
      case 'a':
        final link = node.attributes['href'];
        return _children(
          node,
          link == null
              ? style.copyWith(color: scheme.primary)
              : style.copyWith(
                  color: scheme.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: scheme.primary.withValues(alpha: 0.5),
                ),
          link ?? href,
        );
      case 'img':
        return [_imageSpan(node, href)];
      case 'span':
        if (node.classes.contains('markdown_spoiler')) {
          return [_spoilerSpan(node, style)];
        }
        return _children(node, style, href);
      default:
        return _children(node, style, href);
    }
  }

  List<InlineSpan> _children(dom.Element e, TextStyle style, String? href) => [
    for (final c in e.nodes) ..._inlineSpans(c, style, href),
  ];

  static final _mdLink = RegExp(r'\[([^\]\n]+)\]\((https?://[^)\s]+)\)');

  List<InlineSpan> _markdownLinks(String text, TextStyle style, String? href) {
    if (href != null || !text.contains('](')) {
      return [_textSpan(text, style, href)];
    }
    final scheme = context.colorScheme;
    final out = <InlineSpan>[];
    var last = 0;
    for (final m in _mdLink.allMatches(text)) {
      if (m.start > last) {
        out.add(_textSpan(text.substring(last, m.start), style, null));
      }
      out.add(
        _textSpan(
          m.group(1)!,
          style.copyWith(
            color: scheme.primary,
            decoration: TextDecoration.underline,
            decorationColor: scheme.primary.withValues(alpha: 0.5),
          ),
          m.group(2),
        ),
      );
      last = m.end;
    }
    if (last < text.length) {
      out.add(_textSpan(text.substring(last), style, null));
    }
    return out;
  }

  TextSpan _textSpan(String text, TextStyle style, String? href) {
    TapGestureRecognizer? recognizer;
    if (href != null) {
      recognizer = TapGestureRecognizer()..onTap = () => _open(href);
      _recognizers.add(recognizer);
    }
    return TextSpan(
      text: text,
      style: style,
      recognizer: recognizer,
      mouseCursor: href == null ? null : SystemMouseCursors.click,
    );
  }

  InlineSpan _spoilerSpan(dom.Element e, TextStyle style) {
    final index = _spoilers++;
    final shown = _revealed.contains(index);
    final scheme = context.colorScheme;
    final recognizer = TapGestureRecognizer()
      ..onTap = () {
        shown ? _revealed.remove(index) : _revealed.add(index);
        _revealTick.fire();
      };
    _recognizers.add(recognizer);
    final hidden = style.copyWith(
      color: shown ? style.color : Colors.transparent,
      backgroundColor: scheme.onSurfaceVariant.withValues(
        alpha: shown ? 0.12 : 0.35,
      ),
    );
    return TextSpan(
      recognizer: recognizer,
      mouseCursor: SystemMouseCursors.click,
      children: shown
          ? [for (final c in e.nodes) ..._inlineSpans(c, hidden, null)]
          : [
              TextSpan(
                recognizer: recognizer,
                mouseCursor: SystemMouseCursors.click,
                text: ' Spoiler, click to view ',
                style: style.copyWith(
                  fontSize: (style.fontSize ?? 14) * 0.8,
                  color: scheme.onSurfaceVariant,
                  backgroundColor: scheme.onSurfaceVariant.withValues(
                    alpha: 0.18,
                  ),
                  decoration: TextDecoration.none,
                ),
              ),
            ],
    );
  }

  InlineSpan _imageSpan(dom.Element e, String? href) {
    final child = _imageWidget(e, href);
    if (child == null) return const TextSpan();
    return WidgetSpan(alignment: PlaceholderAlignment.middle, child: child);
  }

  Widget? _imageWidget(dom.Element e, String? href) {
    final src = e.attributes['src'] ?? '';
    final width = (e.attributes['width'] ?? '').trim();
    final alt = e.attributes['alt'] ?? '';
    if (src.isEmpty) return null;
    double? px;
    double? fraction;
    if (width.endsWith('%')) {
      fraction = (double.tryParse(width.replaceAll('%', '')) ?? 100) / 100;
    } else {
      px = double.tryParse(width.replaceAll('px', ''));
    }
    final image = LayoutBuilder(
      builder: (context, box) {
        final available = box.maxWidth.isFinite ? box.maxWidth : _maxWidth;
        final max = fraction != null
            ? available * fraction
            : (px ?? available).clamp(0.0, available);
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: max, maxHeight: 6000),
          child: Image.network(
            src,
            width: px != null || fraction != null ? max : null,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.medium,
            loadingBuilder: (context, child, progress) => progress == null
                ? child
                : SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          value: progress.expectedTotalBytes == null
                              ? null
                              : progress.cumulativeBytesLoaded /
                                    progress.expectedTotalBytes!,
                        ),
                      ),
                    ),
                  ),
            errorBuilder: (context, _, _) => _RemoteSvg(
              url: src,
              width: px != null || fraction != null ? max : null,
              fallback: _BrokenImage(
                url: src,
                label: alt,
                onTap: () => openLinkInBrowser(href ?? src),
              ),
            ),
          ),
        );
      },
    );
    return href == null
        ? image
        : Clickable(press: false, onTap: () => _open(href), child: image);
  }
}

class _BrokenImage extends StatelessWidget {
  final String url;
  final String label;
  final VoidCallback onTap;

  const _BrokenImage({
    required this.url,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Clickable(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHighest.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.image_not_supported_outlined,
              size: 18,
              color: scheme.onSurfaceVariant,
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                label.isEmpty ? 'Open image' : label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: scheme.onSurfaceVariant),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MediaTile extends StatelessWidget {
  final String? thumbnail;
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _MediaTile({
    this.thumbnail,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Clickable(
            onTap: onTap,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ColoredBox(color: scheme.surfaceContainerHighest),
                    if (thumbnail != null)
                      Image.network(
                        thumbnail!,
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) => const SizedBox.shrink(),
                      ),
                    ColoredBox(color: Colors.black.withValues(alpha: 0.28)),
                    Center(child: Icon(icon, size: 56, color: Colors.white)),
                    Positioned(
                      left: 12,
                      bottom: 10,
                      child: Text(
                        label,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
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
  }
}

class _SpoilerBlock extends StatefulWidget {
  final List<Widget> children;

  const _SpoilerBlock({required this.children});

  @override
  State<_SpoilerBlock> createState() => _SpoilerBlockState();
}

class _SpoilerBlockState extends State<_SpoilerBlock> {
  final _open = false.live;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHighest.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Clickable(
              press: false,
              onTap: () => _open.value = !_open.value,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      _open.value
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      size: 18,
                      color: scheme.primary,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      _open.value ? 'Hide spoiler' : 'Show spoiler',
                      style: TextStyle(
                        color: scheme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    AnimatedRotation(
                      turns: _open.value ? 0.5 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: Icon(
                        Icons.expand_more_rounded,
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOutCubic,
              alignment: Alignment.topCenter,
              child: _open.value
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(14, 0, 14, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.children,
                      ),
                    )
                  : const SizedBox(width: double.infinity),
            ),
          ],
        ),
      ),
    );
  }
}

class _RemoteSvg extends StatefulWidget {
  final String url;
  final double? width;
  final Widget fallback;

  const _RemoteSvg({required this.url, this.width, required this.fallback});

  @override
  State<_RemoteSvg> createState() => _RemoteSvgState();
}

class _RemoteSvgState extends State<_RemoteSvg> {
  late final Future<String?> _svg = _load();

  Future<String?> _load() async {
    try {
      final res = await find<NetworkManager>().get(widget.url);
      if (!res.isOk) return null;
      final raw = res.data;
      final text = raw is String
          ? raw
          : (res.rawBytes == null ? null : utf8.decode(res.rawBytes!));
      if (text == null || !text.contains('<svg')) return null;
      if (text.contains('<foreignObject')) return null;
      return text;
    } catch (_) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) => FutureBuilder<String?>(
    future: _svg,
    builder: (context, snap) {
      if (snap.connectionState != ConnectionState.done) {
        return const SizedBox(
          width: 48,
          height: 48,
          child: Center(
            child: SizedBox(
              width: 18,
              height: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        );
      }
      final svg = snap.data;
      if (svg == null) return widget.fallback;
      return SvgPicture.string(
        svg,
        width: widget.width,
        fit: BoxFit.contain,
        errorBuilder: (context, _, _) => widget.fallback,
      );
    },
  );
}

class _Paragraph extends StatelessWidget {
  final TextSpan span;
  final TextAlign align;
  final EdgeInsets padding;

  const _Paragraph({
    required this.span,
    required this.align,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: padding,
    child: SizedBox(
      width: double.infinity,
      child: Text.rich(span, textAlign: align),
    ),
  );
}

class _FloatFlow extends StatefulWidget {
  final bool right;
  final Widget float;
  final List<Widget> blocks;

  const _FloatFlow({
    required this.right,
    required this.float,
    required this.blocks,
  });

  @override
  State<_FloatFlow> createState() => _FloatFlowState();
}

class _FloatFlowState extends State<_FloatFlow> {
  final _layoutKey = GlobalKey();
  final _splits = <int, int>{};
  var _order = <int>[];
  final _relayout = Trigger();
  double _width = -1;
  bool _measuring = false;

  static int _signature(List<Widget> blocks) => Object.hashAll([
    blocks.length,
    for (final b in blocks)
      if (b is _Paragraph) b.span.toPlainText(includePlaceholders: true),
  ]);

  late int _sig = _signature(widget.blocks);

  @override
  void didUpdateWidget(_FloatFlow old) {
    super.didUpdateWidget(old);
    final next = _signature(widget.blocks);
    if (next != _sig) {
      _sig = next;
      _splits.clear();
    }
  }

  static bool _plain(InlineSpan span) {
    var plain = true;
    span.visitChildren((child) {
      if (child is! TextSpan) plain = false;
      return plain;
    });
    return plain;
  }

  static int _length(InlineSpan span) =>
      span.toPlainText(includePlaceholders: true).length;

  static TextSpan? _slice(TextSpan s, int start, int from, int to) {
    var pos = start;
    String? own;
    final text = s.text ?? '';
    if (text.isNotEmpty) {
      final a = (from > pos ? from : pos) - pos;
      final end = pos + text.length;
      final b = (to < end ? to : end) - pos;
      if (b > a) own = text.substring(a, b);
      pos += text.length;
    }
    final kids = <InlineSpan>[];
    for (final c in s.children ?? const <InlineSpan>[]) {
      final length = _length(c);
      if (c is TextSpan && pos + length > from && pos < to) {
        final k = _slice(c, pos, from, to);
        if (k != null) kids.add(k);
      }
      pos += length;
    }
    if (own == null && kids.isEmpty) return null;
    return TextSpan(
      text: own,
      children: kids.isEmpty ? null : kids,
      style: s.style,
      recognizer: s.recognizer,
      mouseCursor: s.mouseCursor,
      semanticsLabel: s.semanticsLabel,
    );
  }

  void _measure() {
    if (!mounted || _measuring) return;
    final render = _layoutKey.currentContext?.findRenderObject();
    if (render is! _RenderFloatFlow || !render.hasSize) return;
    final floatH = render.floatHeight;
    final narrow = render.narrowWidth;
    if (narrow <= 120) return;
    final scaler = MediaQuery.textScalerOf(context);
    var changed = false;
    var index = 0;
    var child = render.childAfter(render.firstChild!);
    while (child != null && index < _order.length) {
      final original = _order[index];
      final data = child.parentData! as _FloatParentData;
      final block = original >= 0 ? widget.blocks[original] : null;
      final y = data.offset.dy;
      if (block is _Paragraph &&
          !data.full &&
          y < floatH &&
          y + child.size.height > floatH + 0.5 &&
          _plain(block.span) &&
          !_splits.containsKey(original)) {
        final painter = TextPainter(
          text: block.span,
          textAlign: block.align,
          textDirection: TextDirection.ltr,
          textScaler: scaler,
        )..layout(maxWidth: narrow);
        final room = floatH - y - block.padding.top;
        var used = 0.0;
        var lines = 0;
        for (final line in painter.computeLineMetrics()) {
          if (used + line.height > room + 0.5) break;
          used += line.height;
          lines++;
        }
        final total = painter.computeLineMetrics().length;
        if (lines < total) {
          final at = lines == 0
              ? 0
              : painter
                    .getPositionForOffset(Offset(1, used + 1))
                    .offset
                    .clamp(0, _length(block.span));
          _splits[original] = at;
          changed = true;
        } else {
          _splits[original] = -1;
        }
        painter.dispose();
      }
      child = render.childAfter(child);
      index++;
    }
    if (changed) {
      _measuring = true;
      _relayout.fire();
      WidgetsBinding.instance.addPostFrameCallback((_) => _measuring = false);
    }
  }

  @override
  Widget build(BuildContext context) => Watch(() {
    _relayout.track();
    return LayoutBuilder(
      builder: (context, box) {
        if (box.maxWidth != _width) {
          _width = box.maxWidth;
          _splits.clear();
        }
        final children = <Widget>[widget.float];
        _order = [];
        for (var i = 0; i < widget.blocks.length; i++) {
          final block = widget.blocks[i];
          final at = _splits[i];
          if (block is _Paragraph && at != null && at >= 0) {
            final length = _length(block.span);
            final head = at == 0 ? null : _slice(block.span, 0, 0, at);
            final tail = at >= length
                ? null
                : _slice(block.span, 0, at, length);
            if (head != null) {
              children.add(
                _Paragraph(
                  span: head,
                  align: block.align,
                  padding: EdgeInsets.only(
                    left: block.padding.left,
                    right: block.padding.right,
                    top: block.padding.top,
                  ),
                ),
              );
              _order.add(-1);
            }
            if (tail != null) {
              children.add(
                _FlowPart(
                  child: _Paragraph(
                    span: tail,
                    align: block.align,
                    padding: EdgeInsets.only(
                      left: block.padding.left,
                      right: block.padding.right,
                      bottom: block.padding.bottom,
                    ),
                  ),
                ),
              );
              _order.add(-1);
            }
            continue;
          }
          children.add(block);
          _order.add(i);
        }
        WidgetsBinding.instance.addPostFrameCallback((_) => _measure());
        return _FloatFlowLayout(
          key: _layoutKey,
          right: widget.right,
          children: children,
        );
      },
    );
  });
}

class _FlowPart extends ParentDataWidget<_FloatParentData> {
  const _FlowPart({required super.child});

  @override
  void applyParentData(RenderObject renderObject) {
    final data = renderObject.parentData! as _FloatParentData;
    if (!data.full) {
      data.full = true;
      renderObject.parent?.markNeedsLayout();
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => _FloatFlowLayout;
}

class _FloatFlowLayout extends MultiChildRenderObjectWidget {
  final bool right;

  const _FloatFlowLayout({
    super.key,
    required this.right,
    required super.children,
  });

  @override
  RenderObject createRenderObject(BuildContext context) =>
      _RenderFloatFlow(right);

  @override
  void updateRenderObject(BuildContext context, _RenderFloatFlow renderObject) {
    renderObject.right = right;
  }
}

class _FloatParentData extends ContainerBoxParentData<RenderBox> {
  bool full = false;
}

class _RenderFloatFlow extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, _FloatParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, _FloatParentData> {
  static const _gap = 12.0;

  bool _right;
  double floatHeight = 0;
  double narrowWidth = 0;

  _RenderFloatFlow(this._right);

  set right(bool value) {
    if (_right == value) return;
    _right = value;
    markNeedsLayout();
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! _FloatParentData) {
      child.parentData = _FloatParentData();
    }
  }

  @override
  double computeMinIntrinsicWidth(double height) => 0;

  @override
  double computeMaxIntrinsicWidth(double height) => 0;

  @override
  double computeMinIntrinsicHeight(double width) => 0;

  @override
  double computeMaxIntrinsicHeight(double width) => 0;

  @override
  Size computeDryLayout(BoxConstraints constraints) =>
      Size(constraints.maxWidth, 0);

  @override
  void performLayout() {
    final width = constraints.maxWidth;
    final float = firstChild!;
    float.layout(BoxConstraints(maxWidth: width), parentUsesSize: true);
    final floatW = float.size.width;
    final floatH = float.size.height;
    final narrow = (width - floatW - _gap).clamp(0.0, width);
    floatHeight = floatH;
    narrowWidth = narrow;
    (float.parentData! as _FloatParentData).offset = Offset(
      _right ? width - floatW : 0,
      0,
    );
    var y = 0.0;
    var child = childAfter(float);
    while (child != null) {
      final beside =
          !(child.parentData! as _FloatParentData).full &&
          y < floatH &&
          narrow > 120;
      final w = beside ? narrow : width;
      child.layout(BoxConstraints(maxWidth: w), parentUsesSize: true);
      (child.parentData! as _FloatParentData).offset = Offset(
        beside && !_right ? floatW + _gap : 0,
        y,
      );
      y += child.size.height;
      child = childAfter(child);
    }
    size = constraints.constrain(Size(width, y > floatH ? y : floatH));
  }

  @override
  void paint(PaintingContext context, Offset offset) =>
      defaultPaint(context, offset);

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) =>
      defaultHitTestChildren(result, position: position);
}
