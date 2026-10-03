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

class DpadLane extends StatelessWidget {
  final Widget child;
  final String? memoryKey;
  final GlobalKey<DpadRegionState>? laneKey;
  final DpadEdgeBehavior verticalEdge;
  final ValueChanged<TraversalDirection>? onEdge;

  const DpadLane({
    super.key,
    required this.child,
    this.memoryKey,
    this.laneKey,
    this.verticalEdge = DpadEdgeBehavior.leave,
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
      horizontalEdge: DpadEdgeBehavior.stop,
      verticalEdge: verticalEdge,
      memoryKey: memoryKey,
      onEdge: onEdge,
      child: child,
    );
  }
}
