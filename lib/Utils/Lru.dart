/// A size-capped map that drops the least recently used entry first.
class Lru<K, V> {
  final int capacity;
  final _items = <K, V>{};

  Lru(this.capacity);

  V? operator [](K key) {
    final value = _items.remove(key);
    if (value != null) _items[key] = value;
    return value;
  }

  void operator []=(K key, V value) {
    _items.remove(key);
    _items[key] = value;
    if (_items.length > capacity) _items.remove(_items.keys.first);
  }

  V? remove(K key) => _items.remove(key);

  void clear() => _items.clear();

  int get length => _items.length;
}
