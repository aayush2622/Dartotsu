import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../Logger.dart';
import '../../Preferences/PrefManager.dart';
import '../Model/Media.dart';

class LocalListStore {
  final String serviceId;

  const LocalListStore(this.serviceId);

  static const _cap = 300;

  static final Map<String, List<Media>> _decoded = {};

  static void clearCache() => _decoded.clear();

  String get _key => 'localList/$serviceId';

  ContinueOrder get order => ContinueOrder(serviceId);

  List<Media> read() => _decoded[_key] ??= _load();

  List<Media> _load() {
    final items = loadCustomData<Map<String, dynamic>>(_key)?['items'];
    if (items is! List) return [];
    try {
      return [for (final e in items) _decode(Map<String, dynamic>.from(e))];
    } catch (e) {
      logger('LocalListStore($serviceId) read failed: $e');
      return [];
    }
  }

  Media _decode(Map<String, dynamic> entry) {
    final raw = entry['media'];
    final media = Media.fromJson(
      raw is Map ? Map<String, dynamic>.from(raw) : entry,
    );
    final source = entry['source'];
    if (source is Map) {
      media.sourceData = Source.fromJson(Map<String, dynamic>.from(source));
    }
    return media;
  }

  void _write(List<Media> items) {
    final capped = items.length > _cap ? items.sublist(0, _cap) : items;
    _decoded[_key] = capped;
    try {
      saveCustomData<Map<String, dynamic>>(_key, {
        'items': [
          for (final m in capped)
            {
              'media': m.toJson(),
              if (m.sourceData != null) 'source': m.sourceData!.toJson(),
            },
        ],
      });
    } catch (e) {
      logger('LocalListStore($serviceId) write failed: $e');
    }
  }

  void upsert(Media media) {
    media.userUpdatedAt = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final items = read().toList()..removeWhere((m) => m.id == media.id);
    _write([media, ...items]);
  }

  void touch(Media media) {
    order.touch(media.id, anime: media.isAnime);
    upsert(media);
  }

  void remove(String id) =>
      _write(read().toList()..removeWhere((m) => m.id == id));

  Map<String, List<Media>> sections({bool? anime}) {
    final out = <String, List<Media>>{
      'Continue Watching': [],
      'Continue Reading': [],
      'Planned Anime': [],
      'Planned Manga': [],
      'Completed Anime': [],
      'Completed Manga': [],
    };
    for (final media in read()) {
      final isAnime = media.isAnime;
      if (anime != null && isAnime != anime) continue;
      final section = switch (media.userStatus) {
        'CURRENT' ||
        'REPEATING' ||
        null => isAnime ? 'Continue Watching' : 'Continue Reading',
        'PLANNING' => isAnime ? 'Planned Anime' : 'Planned Manga',
        'COMPLETED' => isAnime ? 'Completed Anime' : 'Completed Manga',
        _ => null,
      };
      if (section == null) continue;
      if (section.startsWith('Continue')) media.cameFromContinue = true;
      out[section]!.add(media);
    }
    out.removeWhere((_, v) => v.isEmpty);
    return out;
  }
}

class ContinueOrder {
  final String serviceId;

  const ContinueOrder(this.serviceId);

  static const _cap = 100;

  String _key(bool anime) =>
      'continueOrder/$serviceId/${anime ? 'anime' : 'manga'}';

  List<String> read({required bool anime}) =>
      loadCustomData<List<String>>(_key(anime)) ?? const [];

  void touch(String id, {required bool anime}) {
    final list = read(anime: anime).toList()..remove(id);
    list.add(id);
    saveCustomData<List<String>>(
      _key(anime),
      list.length > _cap ? list.sublist(list.length - _cap) : list,
    );
  }
}
