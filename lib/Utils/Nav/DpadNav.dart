import '../Animation/WidgetAnimations.dart';

import 'package:dpad/dpad.dart' hide DpadFocusable;
import 'package:dpad/dpad.dart' as base show DpadFocusable;
export 'package:dpad/dpad.dart' hide DpadFocusable;

import 'package:flutter/material.dart';

import '../Extensions/ClickCursor.dart';

import '../Extensions/ContextExtensions.dart';
import 'KeyboardMode.dart';

class DpadFocusable extends StatefulWidget {
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
  State<DpadFocusable> createState() => _DpadFocusableState();
}

class _DpadFocusableState extends State<DpadFocusable> {
  FocusNode? _own;

  FocusNode get _node => widget.focusNode ?? (_own ??= FocusNode());

  @override
  void dispose() {
    _own?.dispose();
    super.dispose();
  }

  void _reveal() {
    final node = _node;
    final theme = DpadTheme.of(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !node.hasFocus) return;
      DpadScroll.ensureVisible(
        node,
        padding: widget.scrollPadding ?? theme.scrollPadding,
        duration: widget.scrollDuration ?? theme.scrollDuration,
        curve: widget.scrollCurve ?? theme.scrollCurve,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final clickable =
        widget.enabled &&
        widget.tapToSelect &&
        (widget.onSelect != null || widget.onLongSelect != null);
    return MouseRegion(
      cursor: clickable ? SystemMouseCursors.click : MouseCursor.defer,
      child: base.DpadFocusable(
        effects: widget.effects,
        builder: widget.builder,
        onSelect: widget.onSelect,
        onLongSelect: widget.onLongSelect,
        onFocusChange: (focused) {
          if (focused && widget.autoScroll && usingKeyboard) _reveal();
          widget.onFocusChange?.call(focused);
        },
        onDirection: widget.onDirection,
        autofocus: widget.autofocus,
        enabled: widget.enabled,
        entry: widget.entry,
        focusNode: _node,
        debugLabel: widget.debugLabel,
        autoScroll: false,
        scrollPadding: widget.scrollPadding,
        scrollDuration: widget.scrollDuration,
        scrollCurve: widget.scrollCurve,
        excludeChildFocus: widget.excludeChildFocus,
        tapToSelect: widget.tapToSelect,
        child: widget.child,
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
      borderRadius: BorderRadius.circular(16),
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
  duration: animDuration(150),
  curve: Curves.easeOutBack,
  child: child,
);

Widget Function(BuildContext, DpadFocusState, Widget) dpadIconFocus({
  double scale = 1.1,
  double? radius,
}) => (context, state, child) {
  final focused = kDpadFocused(state);
  return AnimatedScale(
    scale: focused ? scale : 1.0,
    duration: animDuration(150),
    curve: Curves.easeOutBack,
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: focused
            ? Theme.of(context).colorScheme.secondaryContainer
            : Colors.transparent,
        shape: radius == null ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: radius == null ? null : BorderRadius.circular(radius),
      ),
      child: child,
    ),
  );
};

class DpadTap extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final BorderRadiusGeometry? borderRadius;
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
    final radius = (borderRadius ?? BorderRadius.circular(16)).resolve(
      Directionality.of(context),
    );
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
