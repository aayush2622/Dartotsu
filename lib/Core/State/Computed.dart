import 'Live.dart';
import 'Reactive.dart';

/// A value derived from other reactive sources. Watchers of a [Computed] are
/// notified only when the derived value actually changes, so a `Watch` over
/// `isOnline` is not rebuilt by every change of the object it is derived from.
///
/// While something listens, the sources it read are subscribed and the value is
/// cached; with no listener it is recomputed on each read.
class Computed<T> with Reactive {
  final T Function() _compute;
  T? _value;
  bool _active = false;
  List<Reactive> _deps = <Reactive>[];
  late final ReactiveListener _onDep = _recompute;

  Computed(this._compute);

  T get value {
    track();
    return _active ? _value as T : _run(<Reactive>[]);
  }

  T get peek => _active ? _value as T : _compute();

  T _run(List<Reactive> deps) {
    final outer = Tracker.current;
    Tracker.current = deps;
    try {
      return _compute();
    } finally {
      Tracker.current = outer;
    }
  }

  void _recompute() {
    final next = <Reactive>[];
    final fresh = _run(next);
    _subscribe(next);
    final changed = !identical(_value, fresh) && _value != fresh;
    _value = fresh;
    if (changed) notify();
  }

  void _subscribe(List<Reactive> next) {
    for (final dep in _deps) {
      if (!next.any((d) => identical(d, dep))) dep.removeListener(_onDep);
    }
    for (final dep in next) {
      if (!_deps.any((d) => identical(d, dep))) dep.addListener(_onDep);
    }
    _deps = next;
  }

  @override
  void addListener(ReactiveListener listener) {
    super.addListener(listener);
    if (_active) return;
    _active = true;
    final next = <Reactive>[];
    _value = _run(next);
    _subscribe(next);
  }

  @override
  void removeListener(ReactiveListener listener) {
    super.removeListener(listener);
    if (!_active || hasListeners) return;
    _active = false;
    _subscribe(<Reactive>[]);
    _value = null;
  }
}

extension LiveSelect<T> on Live<T> {
  /// A value derived from this one that only notifies when the result changes.
  Computed<R> select<R>(R Function(T value) pick) =>
      Computed<R>(() => pick(value));
}
