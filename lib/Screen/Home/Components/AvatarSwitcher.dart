import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Core/State/State.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';

class AvatarSwitcher extends StatefulWidget {
  final String id;
  final double size;
  final Widget child;
  final ValueChanged<int> onSwitch;

  const AvatarSwitcher({
    super.key,
    required this.id,
    required this.child,
    required this.onSwitch,
    this.size = 52,
  });

  @override
  State<AvatarSwitcher> createState() => _AvatarSwitcherState();
}

class _AvatarSwitcherState extends State<AvatarSwitcher> {
  static const _distance = 18.0;
  static const _velocity = 250.0;

  final _direction = 1.live;
  double _dragged = 0;

  void _end(DragEndDetails details) {
    final velocity = details.primaryVelocity ?? 0;
    final step = velocity.abs() > _velocity
        ? (velocity < 0 ? 1 : -1)
        : _dragged.abs() > _distance
        ? (_dragged < 0 ? 1 : -1)
        : 0;
    _dragged = 0;
    if (step == 0) return;
    _direction.value = step;
    unawaited(HapticFeedback.selectionClick());
    widget.onSwitch(step);
  }

  Widget _transition(Widget child, Animation<double> animation) {
    final incoming = child.key == ValueKey(widget.id);
    final from = _direction.peek * (incoming ? 0.9 : -0.9);
    return SlideTransition(
      position: Tween(
        begin: Offset(0, from),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic)),
      child: FadeTransition(opacity: animation, child: child),
    );
  }

  @override
  Widget build(BuildContext context) => Watch(
    () => GestureDetector(
      behavior: HitTestBehavior.opaque,
      onVerticalDragUpdate: (d) => _dragged += d.delta.dy,
      onVerticalDragEnd: _end,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: ClipRect(
          child: AnimatedSwitcher(
            duration: animDuration(260),
            transitionBuilder: _transition,
            layoutBuilder: (current, previous) => Stack(
              alignment: Alignment.center,
              children: [...previous, ?current],
            ),
            child: KeyedSubtree(
              key: ValueKey(widget.id),
              child: Center(child: widget.child),
            ),
          ),
        ),
      ),
    ),
  );
}
