typedef ReactiveListener = void Function();

/// Collects the sources read while a [Watch] builds. Single-threaded, so one
/// slot is enough; a build saves and restores the previous one. A plain list:
/// a build reads a handful of sources, where a scan beats hashing.
class Tracker {
  static List<Reactive>? current;
}

/// Anything that can be read reactively and notifies when it changes.
mixin Reactive {
  List<ReactiveListener?>? _listeners;
  int _count = 0;
  int _depth = 0;
  bool _holes = false;
  int _hint = 0;

  /// Registers this source as a dependency of the build in progress.
  void track() {
    final deps = Tracker.current;
    if (deps == null) return;
    final last = deps.length - 1;
    if (last >= 0 && identical(deps[last], this)) return;
    for (var i = last - 1; i >= 0; i--) {
      if (identical(deps[i], this)) return;
    }
    deps.add(this);
  }

  void addListener(ReactiveListener listener) {
    (_listeners ??= <ReactiveListener?>[]).add(listener);
    _count++;
  }

  void removeListener(ReactiveListener listener) {
    final listeners = _listeners;
    if (listeners == null || _count == 0) return;
    var at = -1;
    if (_hint < listeners.length && identical(listeners[_hint], listener)) {
      at = _hint;
    } else {
      for (var i = listeners.length - 1; i >= 0; i--) {
        if (identical(listeners[i], listener)) {
          at = i;
          break;
        }
      }
    }
    if (at < 0) {
      for (var i = listeners.length - 1; i >= 0; i--) {
        if (listeners[i] == listener) {
          at = i;
          break;
        }
      }
    }
    if (at < 0) return;
    _hint = at;
    _count--;
    if (_depth > 0) {
      listeners[at] = null;
      _holes = true;
    } else if (at == listeners.length - 1) {
      listeners.removeLast();
    } else {
      listeners.removeAt(at);
    }
  }

  bool get hasListeners => _count > 0;

  /// Calls every listener registered when the call starts. Listeners added
  /// meanwhile wait for the next change; ones removed meanwhile are skipped.
  void notify() {
    final listeners = _listeners;
    if (listeners == null || _count == 0) return;
    final size = listeners.length;
    if (size == 1) {
      listeners[0]?.call();
      return;
    }
    _depth++;
    try {
      for (var i = 0; i < size; i++) {
        listeners[i]?.call();
      }
    } finally {
      if (--_depth == 0 && _holes) {
        listeners.removeWhere((listener) => listener == null);
        _holes = false;
      }
    }
  }

  void clearListeners() {
    final listeners = _listeners;
    if (listeners == null) return;
    _count = 0;
    if (_depth > 0) {
      for (var i = 0; i < listeners.length; i++) {
        listeners[i] = null;
      }
      _holes = true;
    } else {
      listeners.clear();
    }
  }
}
