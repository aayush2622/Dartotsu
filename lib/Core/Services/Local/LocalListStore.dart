import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import 'package:flutter/foundation.dart';
import '../../Preferences/Incognito.dart';
import '../../Preferences/PrefManager.dart';
import '../Model/Media.dart';

class LocalListStore {
  final String serviceId;

  const LocalListStore(this.serviceId);

  static const _cap = 3000;

  static final Map<String, List<Media>> _decoded = {};

  String get _key => 'localList/$serviceId';

  List<Media> read() => _decoded[_key] ??= _load();

  List<Media> _load() {
    final items = loadCustomData<Map<String, dynamic>>(_key)?['items'];
    if (items is! List) return [];
    try {
      return [for (final e in items) _decode(Map<String, dynamic>.from(e))];
    } catch (e) {
      debugPrint('LocalListStore($serviceId) read failed: $e');
      return [];
    }
  }

  Media _decode(Map<String, dynamic> entry) {
    final raw = entry['media'];
    final media = Media.fromJson(
      raw is Map ? Map<String, dynamic>.from(raw) : entry,
    );
    media.minimal = false;
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
      debugPrint('LocalListStore($serviceId) write failed: $e');
    }
  }

  void upsert(Media media) {
    media.minimal = false;
    media.userUpdatedAt = DateTime.now().millisecondsSinceEpoch;
    final items = read().toList()..removeWhere((m) => m.id == media.id);
    _write([media, ...items]);
  }

  int addAll(List<Media> incoming, {required bool merge}) {
    final existing = read().toList();
    final byId = {for (final m in existing) m.id: m};
    var added = 0;
    final result = <Media>[];
    for (final media in incoming) {
      media.minimal = false;
      final current = byId[media.id];
      if (current == null) {
        result.add(media);
        added++;
      } else if (merge) {
        if ((media.userProgress ?? 0) > (current.userProgress ?? 0)) {
          current.userProgress = media.userProgress;
          current.userStatus = media.userStatus ?? current.userStatus;
          current.userUpdatedAt = media.userUpdatedAt ?? current.userUpdatedAt;
        }
        current.cover ??= media.cover;
        current.description ??= media.description;
        if (current.genres.isEmpty) current.genres = media.genres;
      } else {
        byId.remove(media.id);
        result.add(media);
        added++;
      }
    }
    final all = [...result, ...byId.values]
      ..sort((a, b) => (b.userUpdatedAt ?? 0).compareTo(a.userUpdatedAt ?? 0));
    _write(all);
    return added;
  }

  void touch(Media media) {
    if (isIncognito) return;
    ContinueOrder(serviceId).touch(media.id, anime: media.isAnime);
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

  Map<String, int> read({required bool anime}) {
    final raw = loadCustomData<Map<String, dynamic>>(_key(anime));
    if (raw == null) return {};
    return {for (final e in raw.entries) e.key: e.value as int};
  }

  void touch(String id, {required bool anime}) {
    if (isIncognito) return;
    final entries = read(anime: anime)
      ..[id] = DateTime.now().millisecondsSinceEpoch;
    final newest = entries.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    saveCustomData<Map<String, dynamic>>(_key(anime), {
      for (final e in newest.take(_cap)) e.key: e.value,
    });
  }
}
