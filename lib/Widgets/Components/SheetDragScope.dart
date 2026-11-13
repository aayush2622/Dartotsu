import 'package:flutter/material.dart';

import '../../Core/State/State.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import 'ScrollConfig.dart';

class SheetDragScope extends StatefulWidget {
  final Widget child;

  const SheetDragScope({super.key, required this.child});

  @override
  State<SheetDragScope> createState() => _SheetDragScopeState();
}

class _SheetDragScopeState extends State<SheetDragScope> {
  final _dy = 0.0.live;
  final _dragging = false.live;

  bool _onScroll(ScrollNotification n) {
    if (n.metrics.axis != Axis.vertical) return false;
    if (n is OverscrollNotification &&
        n.dragDetails != null &&
        n.overscroll < 0) {
      _dragging.value = true;
      _dy.value = (_dy.value - n.overscroll).clamp(0, double.infinity);
    } else if (n is ScrollUpdateNotification &&
        _dy.value > 0 &&
        n.dragDetails != null &&
        (n.scrollDelta ?? 0) > 0) {
      _dy.value = (_dy.value - n.scrollDelta!).clamp(0, double.infinity);
    } else if (n is ScrollEndNotification && _dy.value > 0) {
      final velocity = n.dragDetails?.primaryVelocity ?? 0;
      _dragging.value = false;
      if (_dy.value > 120 || velocity > 700) {
        Navigator.of(context).maybePop();
      }
      _dy.value = 0;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) =>
      NotificationListener<ScrollNotification>(
        onNotification: _onScroll,
        child: Watch(
          () => AnimatedContainer(
            duration: _dragging.value ? Duration.zero : animDuration(200),
            curve: Curves.easeOutCubic,
            transform: Matrix4.translationValues(0, _dy.value, 0),
            child: ScrollConfig(
              context,
              physics: const ClampingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: widget.child,
            ),
          ),
        ),
      );
}
