import '../Animation/WidgetAnimations.dart';

import 'package:flutter/material.dart';

import '../Functions/AppShortcuts.dart';
import '../Functions/NavigateToScreen.dart';
import 'DpadNav.dart';

final shellLaneKey = GlobalKey<DpadRegionState>(debugLabel: 'shell');
final shellRailKey = GlobalKey<DpadRegionState>(debugLabel: 'shellRail');

GlobalKey<DpadRegionState> get _activeShellKey =>
    shellRailKey.currentState != null ? shellRailKey : shellLaneKey;

bool _inRegion(GlobalKey<DpadRegionState> key, FocusNode? node) {
  final nodes = key.currentState?.focusNodes;
  return nodes != null && node != null && nodes.contains(node);
}

bool layerBack() {
  if (guardedBack()) return true;
  final shellKey = _activeShellKey;
  final shell = shellKey.currentState;
  if (shell == null) return false;
  if (_inRegion(shellKey, FocusManager.instance.primaryFocus)) {
    return false;
  }
  final target = shell.lastFocused ?? shell.focusNodes.firstOrNull;
  if (target == null) return false;
  target.requestFocus();
  return true;
}

class DpadRow extends StatelessWidget {
  final Widget child;
  final String? memoryKey;
  final bool wrap;

  const DpadRow({
    super.key,
    required this.child,
    this.memoryKey,
    this.wrap = false,
  });

  @override
  Widget build(BuildContext context) => DpadRegion(
    memoryKey: memoryKey,
    horizontalEdge: wrap ? DpadEdgeBehavior.wrap : DpadEdgeBehavior.stop,
    verticalEdge: DpadEdgeBehavior.leave,
    child: child,
  );
}

class DpadColumn extends StatelessWidget {
  final Widget child;
  final String? memoryKey;

  const DpadColumn({super.key, required this.child, this.memoryKey});

  @override
  Widget build(BuildContext context) => DpadRegion(
    memoryKey: memoryKey,
    horizontalEdge: DpadEdgeBehavior.stop,
    verticalEdge: DpadEdgeBehavior.leave,
    child: child,
  );
}

class DpadPanel extends StatelessWidget {
  final Widget child;

  const DpadPanel({super.key, required this.child});

  @override
  Widget build(BuildContext context) => DpadRegion(
    horizontalEdge: DpadEdgeBehavior.stop,
    verticalEdge: DpadEdgeBehavior.stop,
    child: child,
  );
}

class DpadIcon extends StatelessWidget {
  final Widget child;
  final VoidCallback? onSelect;
  final VoidCallback? onLongSelect;
  final bool autofocus;
  final double scale;
  final bool round;

  const DpadIcon({
    super.key,
    required this.child,
    this.onSelect,
    this.onLongSelect,
    this.autofocus = false,
    this.scale = 1.14,
    this.round = true,
  });

  @override
  Widget build(BuildContext context) => DpadFocusable(
    onSelect: onSelect,
    onLongSelect: onLongSelect,
    autofocus: autofocus,
    builder: (context, state, inner) {
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
            shape: round ? BoxShape.circle : BoxShape.rectangle,
            borderRadius: round ? null : BorderRadius.circular(16),
          ),
          child: inner,
        ),
      );
    },
    child: child,
  );
}

abstract interface class NativeViewPage {}

class DpadEnter extends StatefulWidget {
  final Widget child;

  const DpadEnter({super.key, required this.child});

  @override
  State<DpadEnter> createState() => _DpadEnterState();
}

class _DpadEnterState extends State<DpadEnter> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _enter());
    Future<void>.delayed(const Duration(milliseconds: 700), _enter);
  }

  void _enter() {
    if (!mounted) return;
    final scope = FocusScope.of(context);
    final focused = scope.focusedChild;
    if (focused != null && focused.hasPrimaryFocus) return;
    final candidates = scope.traversalDescendants;
    if (candidates.isEmpty) return;
    if (usingKeyboard) {
      scope.nextFocus();
      return;
    }
    for (final node in candidates) {
      final ctx = node.context;
      if (ctx == null) continue;
      final text =
          ctx.widget is EditableText ||
          ctx.findAncestorWidgetOfExactType<EditableText>() != null;
      if (text) continue;
      node.requestFocus();
      return;
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
