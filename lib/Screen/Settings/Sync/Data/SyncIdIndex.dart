import 'dart:convert';

import 'SyncModels.dart';

const _animeColumns = [
  SyncKey.anilist,
  SyncKey.mal,
  SyncKey.kitsu,
  SyncKey.simkl,
];

const _mangaColumns = [
  SyncKey.mangabaka,
  SyncKey.anilist,
  SyncKey.mal,
  SyncKey.mangaupdates,
  SyncKey.kitsu,
];

const _mangaExtras = 1;

List<int> compactAnimeIndex(String raw) {
  final rows = jsonDecode(raw) as List;
  final out = <int>[];
  for (final r in rows) {
    if (r is! Map) continue;
    final row = [
      for (final c in const ['anilist_id', 'mal_id', 'kitsu_id', 'simkl_id'])
        r[c] is int ? r[c] as int : 0,
    ];
    if (row.where((v) => v > 0).length < 2) continue;
    out.addAll(row);
  }
  return out;
}

List<int> compactMangaIndex(String raw) {
  final rows = jsonDecode(raw) as List;
  final out = <int>[];
  for (final r in rows) {
    if (r is! Map) continue;
    final ids = [
      for (final c in const [
        'mangabaka_id',
        'anilist_id',
        'mal_id',
        'mangaupdates_id',
        'kitsu_id',
      ])
        r[c] is int ? r[c] as int : 0,
    ];
    if (ids.where((v) => v > 0).length < 2) continue;
    final chapters = r['total_chapters'];
    out
      ..addAll(ids)
      ..add(chapters is num && chapters > 0 ? chapters.floor() : 0);
  }
  return out;
}

List<int> decodeIndex(String raw) => (jsonDecode(raw) as List).cast<int>();

class SyncIdIndex {
  final List<int> _flat;
  final List<String> _columns;
  final int _extras;
  late final Map<String, Map<int, int>> _by = _build();

  SyncIdIndex(this._flat, {List<String>? columns, bool anime = true})
    : _columns = columns ?? (anime ? _animeColumns : _mangaColumns),
      _extras = columns == null && !anime ? _mangaExtras : 0;

  int get _stride => _columns.length + _extras;

  List<int> get flat => _flat;
  List<String> get columns => _columns;

  int get rows => _flat.length ~/ _stride;

  Map<String, Map<int, int>> _build() {
    final by = {for (final c in _columns) c: <int, int>{}};
    for (var row = 0; row < rows; row++) {
      for (var c = 0; c < _columns.length; c++) {
        final v = _flat[row * _stride + c];
        if (v > 0) by[_columns[c]]!.putIfAbsent(v, () => row);
      }
    }
    return by;
  }

  Map<String, int> expand(Map<String, int> ids, {String? prefer}) {
    final order = [
      ?prefer,
      for (final c in _columns)
        if (c != prefer) c,
    ];
    for (final c in order) {
      final id = ids[c];
      final row = id == null ? null : _by[c]?[id];
      if (row == null) continue;
      final out = {...ids};
      for (var i = 0; i < _columns.length; i++) {
        final v = _flat[row * _stride + i];
        if (v > 0) out.putIfAbsent(_columns[i], () => v);
      }
      return out;
    }
    return ids;
  }

  int? chaptersOf(String service, int id) {
    if (_extras == 0) return null;
    final row = _by[service]?[id];
    if (row == null) return null;
    final value = _flat[row * _stride + _columns.length];
    return value > 0 ? value : null;
  }
}
