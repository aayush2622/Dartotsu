import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html_parser;

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Function.dart';
import 'Clickable.dart';

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
  bool _expanded = false;
  bool _overflows = false;
  final _bodyKey = GlobalKey();

  dom.DocumentFragment _parse() => html_parser.parseFragment(
    widget.html.replaceAll('‎', '').replaceAll('‏', '').replaceAll('​', ''),
  );

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

  @override
  Widget build(BuildContext context) {
    _clearRecognizers();
    _spoilers = 0;
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
        if (over != _overflows) setState(() => _overflows = over);
      }
    });
    final scheme = context.colorScheme;
    final collapsed = _overflows && !_expanded;
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
        if (_overflows)
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
          SizedBox(
            width: double.infinity,
            child: Text.rich(
              TextSpan(children: _trim(inline), style: style),
              textAlign: align,
            ),
          ),
        );
      }
      inline = <InlineSpan>[];
    }

    for (final node in nodes) {
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
              textAlign: align,
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
      final text = node.text.replaceAll(RegExp(r'\s+'), ' ');
      if (text.isEmpty) return const [];
      return _markdownLinks(text, style, href);
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
              ? style
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
      ..onTap = () => setState(() {
        shown ? _revealed.remove(index) : _revealed.add(index);
      });
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
      children: [for (final c in e.nodes) ..._inlineSpans(c, hidden, null)],
    );
  }

  InlineSpan _imageSpan(dom.Element e, String? href) {
    final src = e.attributes['src'] ?? '';
    final width = (e.attributes['width'] ?? '').trim();
    final alt = e.attributes['alt'] ?? '';
    if (src.isEmpty) return const TextSpan();
    double? px;
    double? fraction;
    if (width.endsWith('%')) {
      fraction = (double.tryParse(width.replaceAll('%', '')) ?? 100) / 100;
    } else {
      px = double.tryParse(width.replaceAll('px', ''));
    }
    final image = LayoutBuilder(
      builder: (context, box) {
        final available = box.maxWidth.isFinite ? box.maxWidth : 400.0;
        final max = fraction != null
            ? available * fraction
            : (px ?? available).clamp(0.0, available);
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: max, maxHeight: 520),
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
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: href == null
          ? image
          : Clickable(press: false, onTap: () => _open(href), child: image),
    );
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
  bool _open = false;

  @override
  Widget build(BuildContext context) {
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
              onTap: () => setState(() => _open = !_open),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      _open
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      size: 18,
                      color: scheme.primary,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      _open ? 'Hide spoiler' : 'Show spoiler',
                      style: TextStyle(
                        color: scheme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    AnimatedRotation(
                      turns: _open ? 0.5 : 0,
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
              child: _open
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
