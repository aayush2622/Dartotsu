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

void _noop() {}

/// Changes that land mid-frame wait for the frame to end, all in one callback.
class _Deferred {
  static final _queue = <_WatchState>[];
  static bool _scheduled = false;

  static void add(_WatchState state) {
    _queue.add(state);
    if (_scheduled) return;
    _scheduled = true;
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _scheduled = false;
      final waiting = List<_WatchState>.of(_queue);
      _queue.clear();
      for (final state in waiting) {
        state._queued = false;
        if (state.mounted) state._rebuild();
      }
    });
  }
}

bool _has(List<Reactive> list, Reactive item) {
  for (var i = list.length - 1; i >= 0; i--) {
    if (identical(list[i], item)) return true;
  }
  return false;
}

class _WatchState extends State<Watch> {
  List<Reactive> _deps = <Reactive>[];
  List<Reactive> _next = <Reactive>[];
  ForeignScope? _foreign;
  bool _queued = false;
  late final ReactiveListener _listener = _changed;

  void _changed() {
    if (!mounted || _queued) return;
    if (StateLog.verbose) {
      StateLog.trace(
        () =>
            'Watch ${widget.runtimeType}@${identityHashCode(this)} rebuilding',
      );
    }
    if (SchedulerBinding.instance.schedulerPhase ==
        SchedulerPhase.persistentCallbacks) {
      _queued = true;
      _Deferred.add(this);
    } else {
      _rebuild();
    }
  }

  void _rebuild() => setState(_noop);

  @override
  Widget build(BuildContext context) {
    final previous = Tracker.current;
    final next = _next..clear();
    Tracker.current = next;
    ForeignProbe.enter();
    final Widget built;
    ForeignReads? foreignReads;
    try {
      built = widget.builder();
    } finally {
      Tracker.current = previous;
      foreignReads = ForeignProbe.leave();
    }
    if (foreignReads != null || _foreign != null) {
      (_foreign ??= ForeignScope()).update(foreignReads, _listener);
    }
    _swap(next);
    return built;
  }

  void _swap(List<Reactive> next) {
    final prev = _deps;
    var same = prev.length == next.length;
    for (var i = 0; same && i < next.length; i++) {
      same = identical(prev[i], next[i]);
    }
    if (!same) {
      for (final dep in prev) {
        if (!_has(next, dep)) dep.removeListener(_listener);
      }
      for (final dep in next) {
        if (!_has(prev, dep)) dep.addListener(_listener);
      }
    }
    _next = prev;
    _deps = next;
  }

  @override
  void dispose() {
    for (final dep in _deps) {
      dep.removeListener(_listener);
    }
    _deps.clear();
    _foreign?.dispose();
    super.dispose();
  }
}
