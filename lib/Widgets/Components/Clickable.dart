import 'package:flutter/material.dart';

class Clickable extends StatefulWidget {
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final Widget child;
  final bool press;
  final HitTestBehavior behavior;

  const Clickable({
    super.key,
    required this.child,
    this.onTap,
    this.onLongPress,
    this.press = true,
    this.behavior = HitTestBehavior.opaque,
  });

  @override
  State<Clickable> createState() => _ClickableState();
}

class _ClickableState extends State<Clickable> {
  bool _down = false;

  void _set(bool v) {
    if (widget.press && _down != v) setState(() => _down = v);
  }

  @override
  Widget build(BuildContext context) {
    final enabled = widget.onTap != null || widget.onLongPress != null;
    final child = widget.press
        ? AnimatedScale(
            scale: _down ? 0.96 : 1,
            duration: Durations.short3,
            curve: Curves.easeOutCubic,
            child: widget.child,
          )
        : widget.child;
    return MouseRegion(
      cursor: enabled ? SystemMouseCursors.click : MouseCursor.defer,
      child: GestureDetector(
        behavior: widget.behavior,
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        onTapDown: enabled ? (_) => _set(true) : null,
        onTapUp: enabled ? (_) => _set(false) : null,
        onTapCancel: enabled ? () => _set(false) : null,
        child: child,
      ),
    );
  }
}
