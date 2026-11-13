import 'dart:async';
import 'dart:collection';
import 'dart:math' show Random;

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

  /// The current value without subscribing the build in progress.
  T get peek => _value;

  set value(T next) {
    if (identical(_value, next) || _value == next) return;
    _value = next;
    _emit();
  }

  void update(T Function(T current) change) => value = change(_value);

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

/// A list that notifies watchers when its contents change. Every read tracks
/// once, however many elements it touches, and every bulk edit notifies once.
class LiveList<T> extends ListBase<T> with Reactive {
  final List<T> _items;

  LiveList([Iterable<T> initial = const []]) : _items = List<T>.of(initial);

  List<T> get _read {
    track();
    return _items;
  }

  @override
  int get length {
    track();
    return _items.length;
  }

  @override
  set length(int n) {
    if (n == _items.length) return;
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
  Iterator<T> get iterator => _read.iterator;

  @override
  bool get isEmpty => _read.isEmpty;

  @override
  bool get isNotEmpty => _read.isNotEmpty;

  @override
  T get first => _read.first;

  @override
  T get last => _read.last;

  @override
  Iterable<T> get reversed => _read.reversed;

  @override
  T elementAt(int index) => _read.elementAt(index);

  @override
  bool contains(Object? element) => _read.contains(element);

  @override
  int indexOf(Object? element, [int start = 0]) {
    final items = _read;
    for (var i = start; i < items.length; i++) {
      if (items[i] == element) return i;
    }
    return -1;
  }

  @override
  int lastIndexOf(Object? element, [int? start]) {
    final items = _read;
    for (
      var i = start == null || start >= items.length ? items.length - 1 : start;
      i >= 0;
      i--
    ) {
      if (items[i] == element) return i;
    }
    return -1;
  }

  @override
  int indexWhere(bool Function(T element) test, [int start = 0]) =>
      _read.indexWhere(test, start);

  @override
  T firstWhere(bool Function(T element) test, {T Function()? orElse}) =>
      _read.firstWhere(test, orElse: orElse);

  @override
  T lastWhere(bool Function(T element) test, {T Function()? orElse}) =>
      _read.lastWhere(test, orElse: orElse);

  @override
  bool any(bool Function(T element) test) => _read.any(test);

  @override
  bool every(bool Function(T element) test) => _read.every(test);

  @override
  void forEach(void Function(T element) action) => _read.forEach(action);

  @override
  Iterable<R> map<R>(R Function(T e) f) => _read.map(f);

  @override
  Iterable<T> where(bool Function(T element) test) => _read.where(test);

  @override
  R fold<R>(R initialValue, R Function(R previousValue, T element) combine) =>
      _read.fold(initialValue, combine);

  @override
  String join([String separator = '']) => _read.join(separator);

  @override
  Iterable<T> take(int count) => _read.take(count);

  @override
  Iterable<T> skip(int count) => _read.skip(count);

  @override
  List<T> toList({bool growable = true}) => _read.toList(growable: growable);

  @override
  Set<T> toSet() => _read.toSet();

  @override
  List<T> sublist(int start, [int? end]) => _read.sublist(start, end);

  @override
  Iterable<T> getRange(int start, int end) => _read.getRange(start, end);

  @override
  void add(T element) {
    _items.add(element);
    notify();
  }

  @override
  void addAll(Iterable<T> iterable) {
    final before = _items.length;
    _items.addAll(iterable);
    if (_items.length != before) notify();
  }

  @override
  void insert(int index, T element) {
    _items.insert(index, element);
    notify();
  }

  @override
  void insertAll(int index, Iterable<T> iterable) {
    final before = _items.length;
    _items.insertAll(index, iterable);
    if (_items.length != before) notify();
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
  T removeLast() {
    final removed = _items.removeLast();
    notify();
    return removed;
  }

  @override
  void removeRange(int start, int end) {
    if (start == end) return;
    _items.removeRange(start, end);
    notify();
  }

  @override
  void removeWhere(bool Function(T element) test) {
    final before = _items.length;
    _items.removeWhere(test);
    if (_items.length != before) notify();
  }

  @override
  void retainWhere(bool Function(T element) test) {
    final before = _items.length;
    _items.retainWhere(test);
    if (_items.length != before) notify();
  }

  @override
  void replaceRange(int start, int end, Iterable<T> newContents) {
    _items.replaceRange(start, end, newContents);
    notify();
  }

  @override
  void setRange(int start, int end, Iterable<T> iterable, [int skipCount = 0]) {
    if (start == end) return;
    _items.setRange(start, end, iterable, skipCount);
    notify();
  }

  @override
  void fillRange(int start, int end, [T? fill]) {
    if (start == end) return;
    _items.fillRange(start, end, fill);
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

  @override
  void shuffle([Random? random]) {
    _items.shuffle(random);
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

/// A map that notifies watchers when its entries change. Every read tracks
/// once, and every bulk edit notifies once.
class LiveMap<K, V> extends MapBase<K, V> with Reactive {
  final Map<K, V> _items;

  LiveMap([Map<K, V> initial = const {}]) : _items = Map<K, V>.of(initial);

  Map<K, V> get _read {
    track();
    return _items;
  }

  @override
  V? operator [](Object? key) => _read[key];

  @override
  void operator []=(K key, V value) {
    _items[key] = value;
    notify();
  }

  @override
  void addAll(Map<K, V> other) {
    if (other.isEmpty) return;
    _items.addAll(other);
    notify();
  }

  @override
  void clear() {
    if (_items.isEmpty) return;
    _items.clear();
    notify();
  }

  @override
  Iterable<K> get keys => _read.keys;

  @override
  Iterable<V> get values => _read.values;

  @override
  Iterable<MapEntry<K, V>> get entries => _read.entries;

  @override
  V? remove(Object? key) {
    final had = _items.containsKey(key);
    final removed = _items.remove(key);
    if (had) notify();
    return removed;
  }

  @override
  void removeWhere(bool Function(K key, V value) test) {
    final before = _items.length;
    _items.removeWhere(test);
    if (_items.length != before) notify();
  }

  @override
  int get length => _read.length;

  @override
  bool get isEmpty => _read.isEmpty;

  @override
  bool get isNotEmpty => _read.isNotEmpty;

  @override
  bool containsKey(Object? key) => _read.containsKey(key);

  @override
  bool containsValue(Object? value) => _read.containsValue(value);

  @override
  void forEach(void Function(K key, V value) action) => _read.forEach(action);

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
