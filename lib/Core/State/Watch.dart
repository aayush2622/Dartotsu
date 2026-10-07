import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

import 'GetBridge.dart';
import 'Reactive.dart';
import 'StateLog.dart';

/// Rebuilds when any [Reactive] read *while [builder] runs* changes. Reads made
/// later, inside lazy callbacks, are not tracked — read the value first.
class Watch extends StatefulWidget {
  final Widget Function() builder;

  const Watch(this.builder, {super.key});

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  Set<Reactive> _deps = {};
  Set<Reactive> _next = {};
  ForeignScope? _foreign;
  bool _scheduled = false;

  void _changed() {
    if (!mounted || _scheduled) return;
    StateLog.trace(
      () => 'Watch ${widget.runtimeType}@${identityHashCode(this)} rebuilding',
    );
    final scheduler = SchedulerBinding.instance;
    if (scheduler.schedulerPhase == SchedulerPhase.persistentCallbacks) {
      _scheduled = true;
      scheduler.addPostFrameCallback((_) {
        _scheduled = false;
        if (mounted) setState(() {});
      });
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final foreign = _foreign ??= ForeignScope();
    final previous = Tracker.current;
    final next = _next..clear();
    Tracker.current = next;
    foreign.begin();
    final Widget built;
    try {
      built = widget.builder();
    } finally {
      Tracker.current = previous;
      foreign.end(_changed);
    }
    for (final dep in _deps) {
      if (!next.contains(dep)) dep.removeListener(_changed);
    }
    for (final dep in next) {
      if (!_deps.contains(dep)) dep.addListener(_changed);
    }
    _next = _deps;
    _deps = next;
    return built;
  }

  @override
  void dispose() {
    for (final dep in _deps) {
      dep.removeListener(_changed);
    }
    _deps.clear();
    _foreign?.dispose();
    super.dispose();
  }
}
