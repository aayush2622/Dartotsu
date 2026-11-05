import 'dart:convert';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../Data/Mapper.dart';

/// Base URL for all raw GitHub CDN assets in the media index repo.
const _kBaseUrl =
    'https://raw.githubusercontent.com/itsmechinmoy/dartotsu-media-index/main';

/// How many AniList IDs live in each shard file.
const _kShardSize = 5000;

/// A lightweight client that reads the static
/// [dartotsu-media-index](https://github.com/itsmechinmoy/dartotsu-media-index)
/// repository hosted on GitHub's raw CDN.
///
/// Used as an **offline / rate-limit fallback** when the live AniList
/// GraphQL API is unavailable. Only metadata is stored in the index;
/// user-specific fields (list status, scores, favourites) are always
/// fetched live and are never returned here.
class MediaIndexClient {
  NetworkManager get _net => find();

  // ── in-memory caches ────────────────────────────────────────────────

  /// shard key → list of raw JSON records
  final Map<String, List<Map<String, dynamic>>> _shardCache = {};

  /// "anime" or "manga" → flat title list
  final Map<String, List<Map<String, dynamic>>> _titleCache = {};

  // ── public API ──────────────────────────────────────────────────────

  /// Fetch a single media entry by its AniList [id].
  ///
  /// [isAnime] must match the entry's type so we look in the correct
  /// shard directory. Returns `null` when not found.
  Future<Media?> getById(int id, {required bool isAnime}) async {
    final sub   = isAnime ? 'anime' : 'manga';
    final shard = (id ~/ _kShardSize).toString().padLeft(4, '0');
    final key   = '$sub/$shard';

    final records = await _loadShard(key);
    final json    = records.firstWhere(
      (r) => r['id'] == id,
      orElse: () => const {},
    );
    if (json.isEmpty) return null;
    return mapAnilistMedia(json);
  }

  /// Search the flat title index for entries whose romaji, english, or
  /// native title contains [query] (case-insensitive).
  ///
  /// Returns up to [limit] fully-hydrated [Media] objects fetched from
  /// the matching shards.
  Future<List<Media>> searchByTitle(
    String query, {
    required bool isAnime,
    int limit = 30,
  }) async {
    if (query.isEmpty) return const [];
    final sub    = isAnime ? 'anime' : 'manga';
    final titles = await _loadTitles(sub);
    final lower  = query.toLowerCase();

    final hits = titles
        .where((t) =>
            (t['romaji']  as String? ?? '').toLowerCase().contains(lower) ||
            (t['english'] as String? ?? '').toLowerCase().contains(lower) ||
            (t['native']  as String? ?? '').toLowerCase().contains(lower))
        .take(limit)
        .toList();

    if (hits.isEmpty) return const [];

    // Group hit IDs by shard so we do at most one fetch per shard
    final byShardKey = <String, List<int>>{};
    for (final h in hits) {
      final id  = h['id'] as int;
      final key = '$sub/${(id ~/ _kShardSize).toString().padLeft(4, '0')}';
      byShardKey.putIfAbsent(key, () => []).add(id);
    }

    final result = <Media>[];
    for (final entry in byShardKey.entries) {
      final records = await _loadShard(entry.key);
      final ids     = entry.value.toSet();
      for (final r in records) {
        if (ids.contains(r['id'])) {
          result.add(mapAnilistMedia(r));
        }
      }
    }
    return result;
  }

  // ── private helpers ─────────────────────────────────────────────────

  Future<List<Map<String, dynamic>>> _loadShard(String key) async {
    if (_shardCache.containsKey(key)) return _shardCache[key]!;
    final url  = '$_kBaseUrl/data/$key.json';
    final raw  = await _get(url);
    if (raw == null) return const [];
    final list = (jsonDecode(raw) as List)
        .cast<Map<String, dynamic>>();
    _shardCache[key] = list;
    return list;
  }

  Future<List<Map<String, dynamic>>> _loadTitles(String sub) async {
    if (_titleCache.containsKey(sub)) return _titleCache[sub]!;
    final url  = '$_kBaseUrl/search/${sub}_titles.json';
    final raw  = await _get(url);
    if (raw == null) return const [];
    final list = (jsonDecode(raw) as List)
        .cast<Map<String, dynamic>>();
    _titleCache[sub] = list;
    return list;
  }

  Future<String?> _get(String url) async {
    try {
      final res = await _net.get(url, decodeJson: false);
      if (res.statusCode == 200) return res.data as String?;
    } catch (_) {}
    return null;
  }
}
