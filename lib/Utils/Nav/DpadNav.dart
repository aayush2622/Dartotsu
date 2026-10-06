import 'package:dpad/dpad.dart' hide DpadFocusable;
import 'package:dpad/dpad.dart' as base show DpadFocusable;
export 'package:dpad/dpad.dart' hide DpadFocusable;

import 'package:flutter/material.dart';

import '../Extensions/ClickCursor.dart';

import '../Extensions/ContextExtensions.dart';
import '../Functions/AppShortcuts.dart';

class DpadFocusable extends StatelessWidget {
  final Widget child;
  final List<DpadEffect>? effects;
  final DpadFocusableBuilder? builder;
  final VoidCallback? onSelect;
  final VoidCallback? onLongSelect;
  final ValueChanged<bool>? onFocusChange;
  final DpadDirectionCallback? onDirection;
  final bool autofocus;
  final bool enabled;
  final bool entry;
  final FocusNode? focusNode;
  final String? debugLabel;
  final bool autoScroll;
  final double? scrollPadding;
  final Duration? scrollDuration;
  final Curve? scrollCurve;
  final bool excludeChildFocus;
  final bool tapToSelect;

  const DpadFocusable({
    super.key,
    required this.child,
    this.effects,
    this.builder,
    this.onSelect,
    this.onLongSelect,
    this.onFocusChange,
    this.onDirection,
    this.autofocus = false,
    this.enabled = true,
    this.entry = false,
    this.focusNode,
    this.debugLabel,
    this.autoScroll = true,
    this.scrollPadding,
    this.scrollDuration,
    this.scrollCurve,
    this.excludeChildFocus = true,
    this.tapToSelect = true,
  });

  @override
  Widget build(BuildContext context) {
    final clickable =
        enabled && tapToSelect && (onSelect != null || onLongSelect != null);
    return MouseRegion(
      cursor: clickable ? SystemMouseCursors.click : MouseCursor.defer,
      child: base.DpadFocusable(
        effects: effects,
        builder: builder,
        onSelect: onSelect,
        onLongSelect: onLongSelect,
        onFocusChange: onFocusChange,
        onDirection: onDirection,
        autofocus: autofocus,
        enabled: enabled,
        entry: entry,
        focusNode: focusNode,
        debugLabel: debugLabel,
        autoScroll: autoScroll,
        scrollPadding: scrollPadding,
        scrollDuration: scrollDuration,
        scrollCurve: scrollCurve,
        excludeChildFocus: excludeChildFocus,
        tapToSelect: tapToSelect,
        child: child,
      ),
    );
  }
}

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
              mouseCursor: kClickCursor,
              onTap: onTap,
              onLongPress: onLongPress,
              borderRadius: radius,
              child: child,
            )
          : MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onTap,
                onLongPress: onLongPress,
                child: child,
              ),
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
