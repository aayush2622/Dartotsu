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
  'total_chapters',
  'status',
];

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
    final row = [
      for (final c in const [
        'mangabaka_id',
        'anilist_id',
        'mal_id',
        'mangaupdates_id',
        'kitsu_id',
        'total_chapters',
        'status',
      ])
        (c == 'total_chapters' && r[c] is num)
            ? ((r[c] as num) * 100).round()
            : (r[c] is int ? r[c] as int : 0),
    ];
    if (row.take(5).where((v) => v > 0).length < 2) continue;
    out.addAll(row);
  }
  return out;
}

List<int> decodeIndex(String raw) => (jsonDecode(raw) as List).cast<int>();

class SyncIdIndex {
  final List<int> _flat;
  final List<String> _columns;
  late final Map<String, Map<int, int>> _by = _build();

  SyncIdIndex(this._flat, {List<String>? columns, bool anime = true})
    : _columns = columns ?? (anime ? _animeColumns : _detectMangaColumns(_flat));

  static List<String> _detectMangaColumns(List<int> flat) {
    if (flat.isEmpty) return _mangaColumns;
    if (flat.length % _mangaColumns.length == 0) return _mangaColumns;
    return const [
      SyncKey.mangabaka,
      SyncKey.anilist,
      SyncKey.mal,
      SyncKey.mangaupdates,
      SyncKey.kitsu,
    ];
  }

  List<int> get flat => _flat;
  List<String> get columns => _columns;

  int get rows => _flat.length ~/ _columns.length;

  Map<String, Map<int, int>> _build() {
    final by = {for (final c in _columns) c: <int, int>{}};
    for (var row = 0; row < rows; row++) {
      for (var c = 0; c < _columns.length; c++) {
        final v = _flat[row * _columns.length + c];
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
        final v = _flat[row * _columns.length + i];
        if (v > 0) out.putIfAbsent(_columns[i], () => v);
      }
      return out;
    }
    return ids;
  }

  int? totalChaptersOf(String service, int id) {
    final row = _by[service]?[id];
    if (row == null) return null;
    final col = _columns.indexOf('total_chapters');
    if (col < 0) return null;
    final val = _flat[row * _columns.length + col];
    if (val <= 0) return null;
    return (val / 100).floor();
  }

  String? statusOf(String service, int id) {
    final row = _by[service]?[id];
    if (row == null) return null;
    final col = _columns.indexOf('status');
    if (col < 0) return null;
    final code = _flat[row * _columns.length + col];
    return switch (code) {
      1 => 'RELEASING',
      2 => 'COMPLETED',
      3 => 'HIATUS',
      4 => 'CANCELLED',
      5 => 'NOT_YET_RELEASED',
      _ => null,
    };
  }
}
