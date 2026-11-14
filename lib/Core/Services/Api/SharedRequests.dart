import '../../../Utils/Lru.dart';

class SingleFlight<T> {
  Future<T>? _running;

  Future<T> run(Future<T> Function() job) =>
      _running ??= job().whenComplete(() {
        _running = null;
      });
}

class ResponseCache {
  final Lru<String, (DateTime, dynamic)> _entries;
  final _loading = <String, Future<dynamic>>{};

  ResponseCache(int capacity) : _entries = Lru(capacity);

  Future<dynamic> fetch(
    String key,
    Future<dynamic> Function() load, {
    Duration ttl = Duration.zero,
  }) {
    final keep = ttl > Duration.zero;
    if (keep) {
      final hit = _entries[key];
      if (hit != null && DateTime.now().difference(hit.$1) < ttl) {
        return Future.value(hit.$2);
      }
    }
    return _loading[key] ??= load()
        .then((data) {
          if (keep) _entries[key] = (DateTime.now(), data);
          return data;
        })
        .whenComplete(() {
          _loading.remove(key);
        });
  }
}

Iterable<Map<String, dynamic>> jsonRows(Object? body) => [
  for (final item in body is List ? body : const [])
    if (item is Map) item.cast<String, dynamic>(),
];
