typedef ReactiveListener = void Function();

/// Collects the sources read while a [Watch] builds. Single-threaded, so one
/// slot is enough; a build saves and restores the previous one.
class Tracker {
  static Set<Reactive>? current;
}

/// Anything that can be read reactively and notifies when it changes.
mixin Reactive {
  List<ReactiveListener>? _listeners;

  /// Registers this source as a dependency of the build in progress.
  void track() => Tracker.current?.add(this);

  void addListener(ReactiveListener listener) =>
      (_listeners ??= <ReactiveListener>[]).add(listener);

  void removeListener(ReactiveListener listener) =>
      _listeners?.remove(listener);

  bool get hasListeners => _listeners?.isNotEmpty ?? false;

  void notify() {
    final listeners = _listeners;
    if (listeners == null || listeners.isEmpty) return;
    if (listeners.length == 1) return listeners[0]();
    for (final listener in List.of(listeners)) {
      listener();
    }
  }

  void clearListeners() => _listeners?.clear();
}
