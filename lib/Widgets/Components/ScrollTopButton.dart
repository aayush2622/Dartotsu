import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/State/State.dart';
import '../../Utils/Animation/WidgetAnimations.dart';

class ScrollTopButton extends StatefulWidget {
  final Widget child;

  const ScrollTopButton({super.key, required this.child});

  @override
  State<ScrollTopButton> createState() => _ScrollTopButtonState();
}

class _ScrollTopButtonState extends State<ScrollTopButton> {
  final shown = false.live;
  final _far = <int, bool>{};
  BuildContext? _origin;
  Timer? _hide;

  bool _onScroll(ScrollNotification n) {
    if (n.depth > 1 || n.metrics.axis != Axis.vertical) return false;
    if (n is ScrollUpdateNotification || n is ScrollEndNotification) {
      _far[n.depth] = n.metrics.pixels > n.metrics.viewportDimension * 1.2;
      if (n.context != null && _far[n.depth] == true) _origin = n.context;
      final any = _far.values.any((v) => v);
      if (shown.value != any) shown.value = any;
      _hide?.cancel();
      if (any) {
        _hide = Timer(const Duration(seconds: 3), () => shown.value = false);
      }
    }
    return false;
  }

  void _top() {
    var context = _origin;
    while (context != null && context.mounted) {
      final scrollable = Scrollable.maybeOf(context);
      if (scrollable == null) break;
      final position = scrollable.position;
      if (position.axis == Axis.vertical &&
          position.hasPixels &&
          position.pixels > position.minScrollExtent) {
        position.animateTo(
          position.minScrollExtent,
          duration: animDuration(450),
          curve: Curves.easeOutCubic,
        );
      }
      context = scrollable.context;
      final next = Scrollable.maybeOf(context);
      if (next == null || identical(next, scrollable)) break;
    }
  }

  Widget _build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return NotificationListener<ScrollNotification>(
      onNotification: _onScroll,
      child: Stack(
        children: [
          widget.child,
          PositionedDirectional(
            end: 16,
            bottom: 96 + MediaQuery.paddingOf(context).bottom,
            child: IgnorePointer(
              ignoring: !shown.value,
              child: AnimatedScale(
                scale: shown.value ? 1 : 0.6,
                duration: animDuration(180),
                child: AnimatedOpacity(
                  opacity: shown.value ? 1 : 0,
                  duration: animDuration(180),
                  child: FloatingActionButton.small(
                    heroTag: null,
                    elevation: 2,
                    backgroundColor: scheme.secondaryContainer,
                    foregroundColor: scheme.onSecondaryContainer,
                    onPressed: _top,
                    child: const Icon(Icons.keyboard_arrow_up_rounded),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _hide?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));
}
