import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

import '../../Core/State/State.dart';
import '../../Logger.dart';
import '../../Utils/Animation/WidgetAnimations.dart';

final _animation = RegExp(
  r'<(?:animate|animateTransform|animateMotion|set)\b|@keyframes|animation(?:-name)?\s*:',
  caseSensitive: false,
);
final _rootTag = RegExp(r'<svg\b[^>]*>', caseSensitive: false);

bool svgIsAnimated(String svg) => _animation.hasMatch(svg);

double? svgAspect(String svg) {
  final root = _rootTag.firstMatch(svg)?.group(0);
  if (root == null) return null;
  String? attr(String name) => RegExp(
    '(?:^|\\s)$name\\s*=\\s*["\']([^"\']*)["\']',
    caseSensitive: false,
  ).firstMatch(root)?.group(1);
  final box = (attr('viewBox') ?? '')
      .trim()
      .split(RegExp(r'[\s,]+'))
      .map(double.tryParse)
      .toList();
  if (box.length == 4 && box[2] != null && box[3] != null && box[3]! > 0) {
    return box[2]! / box[3]!;
  }
  double? number(String? v) =>
      v == null ? null : double.tryParse(v.replaceAll(RegExp('[a-z%]'), ''));
  final w = number(attr('width'));
  final h = number(attr('height'));
  return w != null && h != null && h > 0 ? w / h : null;
}

class AnimatedSvg extends StatefulWidget {
  final String svg;
  final String? url;
  final double? width;
  final Widget still;

  const AnimatedSvg({
    super.key,
    required this.svg,
    required this.still,
    this.url,
    this.width,
  });

  static bool get supported =>
      Platform.isAndroid || Platform.isIOS || Platform.isMacOS;

  @override
  State<AnimatedSvg> createState() => _AnimatedSvgState();
}

class _AnimatedSvgState extends State<AnimatedSvg> {
  static const _maxLive = 3;
  static int _live = 0;

  final ready = false.live;
  late final bool _claimed;
  Timer? _fallback;
  final view = Live<WebViewController?>(null);

  @override
  void initState() {
    super.initState();
    _claimed = AnimatedSvg.supported && _live < _maxLive;
    if (!_claimed) return;
    _live++;
    unawaited(_start());
  }

  @override
  void dispose() {
    _fallback?.cancel();
    if (_claimed) _live--;
    super.dispose();
  }

  Future<void> _start() async {
    try {
      final controller = WebViewController();
      await controller.setJavaScriptMode(JavaScriptMode.disabled);
      await controller.setBackgroundColor(Colors.transparent);
      await controller.setNavigationDelegate(
        NavigationDelegate(onPageFinished: (_) => ready.value = true),
      );
      final source = widget.url == null
          ? 'data:image/svg+xml;base64,${base64Encode(utf8.encode(widget.svg))}'
          : const HtmlEscape(HtmlEscapeMode.attribute).convert(widget.url!);
      await controller.loadHtmlString(
        '<!doctype html><html><head>'
        '<meta name="viewport" content="width=device-width,initial-scale=1">'
        '<style>html,body{margin:0;padding:0;height:100%;background:transparent;'
        'overflow:hidden}object{display:block;width:100%;height:100%}'
        '</style></head><body>'
        '<object type="image/svg+xml" data="$source"></object></body></html>',
      );
      if (!mounted) return;
      view.value = controller;
      logger('Animated SVG started', tag: 'SVG');
      _fallback = Timer(const Duration(milliseconds: 1200), () {
        if (!ready.value) ready.value = true;
      });
    } catch (e, st) {
      logError('AnimatedSvg', e, st);
    }
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    if (!_claimed) return widget.still;
    final shown = ready.value;
    final controller = view.value;
    final aspect = svgAspect(widget.svg) ?? 2.0;
    return LayoutBuilder(
      builder: (context, box) {
        final available = box.maxWidth.isFinite ? box.maxWidth : 600.0;
        final width = math.min(widget.width ?? available, available);
        return SizedBox(
          width: width,
          height: width / aspect,
          child: Stack(
            fit: StackFit.expand,
            children: [
              widget.still,
              if (controller != null)
                AnimatedOpacity(
                  opacity: shown ? 1 : 0,
                  duration: animDuration(160),
                  child: IgnorePointer(
                    child: WebViewWidget(controller: controller),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
