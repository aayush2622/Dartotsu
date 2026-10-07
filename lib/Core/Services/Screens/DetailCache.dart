import '../../../Utils/Lru.dart';
import '../Model/Media.dart';

class DetailCache {
  static final _store = Lru<String, Media>(40);

  static Media? get(String key) => _store[key];

  static void put(String key, Media media) => _store[key] = media;

  static void remove(String key) => _store.remove(key);
}
