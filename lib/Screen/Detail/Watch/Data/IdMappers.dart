import '../../../../Logger.dart';
import '../../../../Utils/Lru.dart';
import 'Providers/MetaHttp.dart';

class IdMapping {
  final int? anilistId;
  final int? malId;
  final int? tvdbId;
  final int? tmdbId;
  final String? imdbId;
  final int? simklId;
  final int? kitsuId;

  const IdMapping({
    this.anilistId,
    this.malId,
    this.tvdbId,
    this.tmdbId,
    this.imdbId,
    this.simklId,
    this.kitsuId,
  });
}

class IdMappers {
  IdMappers._();

  static const String mapperApiUrl =
      'https://Isagi2025-idmapper.hf.space/api/mapper';

  static final _anilistCache = Lru<int, IdMapping>(100);
  static final _malCache = Lru<int, IdMapping>(100);

  static Future<IdMapping?> resolve({int? anilistId, int? malId}) async {
    if (anilistId != null && anilistId > 0) {
      final hit = _anilistCache[anilistId];
      if (hit != null) return hit;
    }
    if (malId != null && malId > 0) {
      final hit = _malCache[malId];
      if (hit != null) return hit;
    }

    // 1. Try HuggingFace Mapper API (by anilistId)
    if (anilistId != null && anilistId > 0) {
      try {
        final body = await metaGet(
          mapperApiUrl,
          query: {'anilist_id': '$anilistId'},
          tag: 'IDMAPPER',
        );
        if (body is Map) {
          final mapping = parseIdMapperResponse(
            body,
            fallbackAnilistId: anilistId,
          );
          if (mapping != null) {
            _remember(mapping);
            if (mapping.tvdbId != null ||
                mapping.imdbId != null ||
                mapping.tmdbId != null) {
              return mapping;
            }
          }
        }
      } catch (e) {
        logger(
          'IdMappers HF failed: $e',
          logLevel: LogLevel.error,
          tag: 'IDMAPPER',
        );
      }
    }

    // 2. Try ani.zip API fallback (by anilistId or malId)
    if ((anilistId != null && anilistId > 0) || (malId != null && malId > 0)) {
      try {
        final query = anilistId != null && anilistId > 0
            ? {'anilist_id': '$anilistId'}
            : {'mal_id': '$malId'};
        final body = await metaGet(
          'https://api.ani.zip/mappings',
          query: query,
          tag: 'ANIZIP',
        );
        if (body is Map) {
          final mapping = parseAniZipResponse(
            body,
            fallbackAnilistId: anilistId,
            fallbackMalId: malId,
          );
          if (mapping != null) {
            _remember(mapping);
            return mapping;
          }
        }
      } catch (e) {
        logger(
          'IdMappers AniZip failed: $e',
          logLevel: LogLevel.error,
          tag: 'IDMAPPER',
        );
      }
    }

    return null;
  }

  static void _remember(IdMapping mapping) {
    if (mapping.anilistId != null) _anilistCache[mapping.anilistId!] = mapping;
    if (mapping.malId != null) _malCache[mapping.malId!] = mapping;
  }
}

int? parseTmdbId(Object? raw, [Object? showId]) {
  if (showId is num) return showId.toInt();
  if (showId is String) return int.tryParse(showId);
  if (raw is num) return raw.toInt();
  if (raw is String) return int.tryParse(raw);
  if (raw is Map) {
    final v = raw['tv'] ?? raw['movie'] ?? raw.values.firstOrNull;
    if (v is num) return v.toInt();
    if (v is String) return int.tryParse(v);
  }
  return null;
}

String? parseImdbId(Object? raw) {
  if (raw is String && raw.trim().isNotEmpty) return raw.trim();
  if (raw is List && raw.isNotEmpty) {
    for (final item in raw) {
      if (item is String && item.trim().isNotEmpty) return item.trim();
    }
  }
  return null;
}

int? parseTvdbId(Object? raw) {
  if (raw is num) return raw.toInt();
  if (raw is String) return int.tryParse(raw);
  return null;
}

IdMapping? parseIdMapperResponse(
  Map body, {
  int? fallbackAnilistId,
  int? fallbackMalId,
}) {
  final tvdb = parseTvdbId(body['tvdb_id']);
  final tmdb = parseTmdbId(body['themoviedb_id'], body['tmdb_show_id']);
  final imdb = parseImdbId(body['imdb_id']);
  final anilist = (body['anilist_id'] as num?)?.toInt() ?? fallbackAnilistId;
  final simkl = (body['simkl_id'] as num?)?.toInt();
  final kitsu = (body['kitsu_id'] as num?)?.toInt();

  int? mal = fallbackMalId;
  final malRaw = body['mal_id'];
  if (malRaw is num) {
    mal = malRaw.toInt();
  } else if (malRaw is List && malRaw.isNotEmpty) {
    final first = malRaw.first;
    if (first is num) mal = first.toInt();
    if (first is String) mal = int.tryParse(first);
  }

  return IdMapping(
    anilistId: anilist,
    malId: mal,
    tvdbId: tvdb,
    tmdbId: tmdb,
    imdbId: imdb,
    simklId: simkl,
    kitsuId: kitsu,
  );
}

IdMapping? parseAniZipResponse(
  Map body, {
  int? fallbackAnilistId,
  int? fallbackMalId,
}) {
  final mappings = body['mappings'];
  final map = mappings is Map ? mappings : const {};

  int? tvdbId = parseTvdbId(map['thetvdb_id']);
  if (tvdbId == null && body['episodes'] is Map) {
    final eps = body['episodes'] as Map;
    for (final ep in eps.values) {
      if (ep is Map && ep['tvdbShowId'] is num) {
        tvdbId = (ep['tvdbShowId'] as num).toInt();
        break;
      }
    }
  }

  final tmdbId = parseTmdbId(map['themoviedb_id']);
  final imdbId = parseImdbId(map['imdb_id']);
  final malId = (map['mal_id'] as num?)?.toInt() ?? fallbackMalId;
  final anilistId =
      (map['anilist_id'] as num?)?.toInt() ?? fallbackAnilistId;
  final kitsuId = (map['kitsu_id'] as num?)?.toInt();

  return IdMapping(
    anilistId: anilistId,
    malId: malId,
    tvdbId: tvdbId,
    tmdbId: tmdbId,
    imdbId: imdbId,
    kitsuId: kitsuId,
  );
}
