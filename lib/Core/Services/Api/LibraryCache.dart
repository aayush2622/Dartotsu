import 'dart:async';

class LibraryCache<T> {
  final Duration ttl;
  final Future<T> Function(T? previous) load;

  LibraryCache({required this.load, this.ttl = const Duration(minutes: 5)});

  T? _value;
  DateTime? _at;
  Future<T>? _loading;

  T? get value => _value;

  bool get isFresh =>
      _value != null && _at != null && DateTime.now().difference(_at!) < ttl;

  Future<T> get() {
    if (isFresh) return Future.value(_value as T);
    return _loading ??= _run();
  }

  Future<T> _run() async {
    try {
      final next = await load(_value);
      _value = next;
      _at = DateTime.now();
      return next;
    } finally {
      _loading = null;
    }
  }

  void expire() => _at = null;

  void clear() {
    _value = null;
    _at = null;
    _loading = null;
  }
}
