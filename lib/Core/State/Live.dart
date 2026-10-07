import 'dart:async';
import 'dart:collection';

import 'Reactive.dart';

/// A reactive value. Reading [value] while a [Watch] builds subscribes that
/// widget; assigning a different value rebuilds every subscriber.
class Live<T> with Reactive {
  T _value;
  StreamController<T>? _controller;

  Live(this._value);

  T get value {
    track();
    return _value;
  }

  set value(T next) {
    if (identical(_value, next) || _value == next) return;
    _value = next;
    _emit();
  }

  /// Notifies even though the value is the same object — after mutating it.
  void refresh() => _emit();

  void _emit() {
    notify();
    _controller?.add(_value);
  }

  /// Created on first use, so a value nobody streams costs nothing.
  Stream<T> get stream =>
      (_controller ??= StreamController<T>.broadcast(sync: true)).stream;

  Disposer listen(void Function(T value) onChange) {
    void listener() => onChange(_value);
    addListener(listener);
    return Disposer(() => removeListener(listener));
  }

  void close() {
    unawaited(_controller?.close());
    _controller = null;
    clearListeners();
  }

  @override
  String toString() => '$_value';
}

extension LiveBool on Live<bool> {
  void toggle() => value = !value;

  bool get isTrue => value;

  bool get isFalse => !value;
}

extension LiveValue<T> on T {
  Live<T> get live => Live<T>(this);
}

extension LiveListValue<T> on List<T> {
  LiveList<T> get liveList => LiveList<T>(this);
}

extension LiveMapValue<K, V> on Map<K, V> {
  LiveMap<K, V> get liveMap => LiveMap<K, V>(this);
}

/// A list that notifies watchers when its contents change.
class LiveList<T> extends ListBase<T> with Reactive {
  final List<T> _items;

  LiveList([Iterable<T> initial = const []]) : _items = List<T>.of(initial);

  @override
  int get length {
    track();
    return _items.length;
  }

  @override
  set length(int n) {
    _items.length = n;
    notify();
  }

  @override
  T operator [](int index) {
    track();
    return _items[index];
  }

  @override
  void operator []=(int index, T value) {
    _items[index] = value;
    notify();
  }

  @override
  Iterator<T> get iterator {
    track();
    return _items.iterator;
  }

  @override
  void add(T element) {
    _items.add(element);
    notify();
  }

  @override
  void addAll(Iterable<T> iterable) {
    _items.addAll(iterable);
    notify();
  }

  @override
  bool remove(Object? element) {
    final removed = _items.remove(element);
    if (removed) notify();
    return removed;
  }

  @override
  T removeAt(int index) {
    final removed = _items.removeAt(index);
    notify();
    return removed;
  }

  @override
  void removeWhere(bool Function(T element) test) {
    final before = _items.length;
    _items.removeWhere(test);
    if (_items.length != before) notify();
  }

  @override
  void insert(int index, T element) {
    _items.insert(index, element);
    notify();
  }

  @override
  void clear() {
    if (_items.isEmpty) return;
    _items.clear();
    notify();
  }

  @override
  void sort([int Function(T a, T b)? compare]) {
    _items.sort(compare);
    notify();
  }

  void assignAll(Iterable<T> items) {
    final next = List<T>.of(items);
    _items
      ..clear()
      ..addAll(next);
    notify();
  }

  /// The list itself — reads are tracked.
  List<T> get value => this;

  set value(Iterable<T> items) => assignAll(items);

  void refresh() => notify();
}

/// A map that notifies watchers when its entries change.
class LiveMap<K, V> extends MapBase<K, V> with Reactive {
  final Map<K, V> _items;

  LiveMap([Map<K, V> initial = const {}]) : _items = Map<K, V>.of(initial);

  @override
  V? operator [](Object? key) {
    track();
    return _items[key];
  }

  @override
  void operator []=(K key, V value) {
    _items[key] = value;
    notify();
  }

  @override
  void clear() {
    if (_items.isEmpty) return;
    _items.clear();
    notify();
  }

  @override
  Iterable<K> get keys {
    track();
    return _items.keys;
  }

  @override
  V? remove(Object? key) {
    final had = _items.containsKey(key);
    final removed = _items.remove(key);
    if (had) notify();
    return removed;
  }

  @override
  int get length {
    track();
    return _items.length;
  }

  @override
  bool containsKey(Object? key) {
    track();
    return _items.containsKey(key);
  }

  void refresh() => notify();
}

/// Re-runs the watchers that called [track] after [fire] — for data that
/// changes without being reactive itself.
class Trigger with Reactive {
  int _count = 0;

  void fire() {
    _count++;
    notify();
  }

  int get count => _count;
}

/// Handle for a subscription or effect; call [dispose] to stop it.
class Disposer {
  final void Function() _stop;
  bool _done = false;

  Disposer(this._stop);

  void dispose() {
    if (_done) return;
    _done = true;
    _stop();
  }
}

/// Runs [callback] each time [live] changes.
Disposer onChange<T>(Live<T> live, void Function(T value) callback) =>
    live.listen(callback);

/// Runs [callback] each time any of [sources] changes.
Disposer onAnyChange(List<Reactive> sources, void Function() callback) {
  for (final source in sources) {
    source.addListener(callback);
  }
  return Disposer(() {
    for (final source in sources) {
      source.removeListener(callback);
    }
  });
}

/// Runs [callback] the first time [live] changes.
Disposer onFirstChange<T>(Live<T> live, void Function(T value) callback) {
  late final Disposer subscription;
  subscription = live.listen((value) {
    subscription.dispose();
    callback(value);
  });
  return subscription;
}
