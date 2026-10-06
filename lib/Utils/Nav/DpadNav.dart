import 'package:dpad/dpad.dart';
export 'package:dpad/dpad.dart';

import 'package:flutter/material.dart';

import '../Extensions/ContextExtensions.dart';
import '../Functions/AppShortcuts.dart';

bool kFocused(bool rawFocused) => rawFocused && usingKeyboard;

bool kDpadFocused(DpadFocusState state) => kFocused(state.focused);

Color? dpadHighlightColor(BuildContext context, bool focused) =>
    kFocused(focused) ? context.colorScheme.secondaryContainer : null;

Widget dpadFocusHighlight(
  BuildContext context,
  DpadFocusState state,
  Widget child,
) {
  return Container(
    decoration: BoxDecoration(
      color: dpadHighlightColor(context, state.focused) ?? Colors.transparent,
      borderRadius: BorderRadius.circular(14),
    ),
    child: child,
  );
}

Widget dpadScaleFocus(
  BuildContext context,
  DpadFocusState state,
  Widget child, {
  double scale = 1.06,
}) => AnimatedScale(
  scale: kDpadFocused(state) ? scale : 1.0,
  duration: Durations.short3,
  curve: Curves.easeOutBack,
  child: child,
);

class DpadTap extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final BorderRadius? borderRadius;
  final bool ripple;
  final bool scale;
  final bool autofocus;
  final Widget child;

  const DpadTap({
    super.key,
    required this.child,
    this.onTap,
    this.onLongPress,
    this.borderRadius,
    this.ripple = true,
    this.scale = false,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    if (onTap == null && onLongPress == null) return child;
    final radius = borderRadius ?? BorderRadius.circular(14);
    return DpadFocusable(
      onSelect: onTap,
      onLongSelect: onLongPress,
      autofocus: autofocus,
      tapToSelect: false,
      builder: (context, state, inner) => scale
          ? dpadScaleFocus(context, state, inner)
          : Container(
              decoration: BoxDecoration(
                color:
                    dpadHighlightColor(context, state.focused) ??
                    Colors.transparent,
                borderRadius: radius,
              ),
              child: inner,
            ),
      child: ripple
          ? InkWell(
              onTap: onTap,
              onLongPress: onLongPress,
              borderRadius: radius,
              child: child,
            )
          : GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onTap,
              onLongPress: onLongPress,
              child: child,
            ),
    );
  }
}

class DpadLane extends StatelessWidget {
  final Widget child;
  final String? memoryKey;
  final GlobalKey<DpadRegionState>? laneKey;
  final DpadEdgeBehavior verticalEdge;
  final DpadEdgeBehavior horizontalEdge;
  final ValueChanged<TraversalDirection>? onEdge;

  const DpadLane({
    super.key,
    required this.child,
    this.memoryKey,
    this.laneKey,
    this.verticalEdge = DpadEdgeBehavior.leave,
    this.horizontalEdge = DpadEdgeBehavior.stop,
    this.onEdge,
  });

  static void focusFirst(GlobalKey<DpadRegionState> laneKey) {
    final nodes = laneKey.currentState?.focusNodes;
    if (nodes == null) return;
    for (final node in nodes) {
      node.requestFocus();
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DpadRegion(
      key: laneKey,
      horizontalEdge: horizontalEdge,
      verticalEdge: verticalEdge,
      memoryKey: memoryKey,
      onEdge: onEdge,
      child: child,
    );
  }
}
