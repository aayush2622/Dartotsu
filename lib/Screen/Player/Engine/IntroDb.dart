import '../../Detail/Watch/Data/IdMappers.dart';
import '../../Detail/Watch/Data/Providers/MetaHttp.dart';
import 'AniSkip.dart';

List<SkipStamp> parseTheIntroDb(
  Object? body, {
  int? tvdbId,
  int? tmdbId,
  String? imdbId,
  int? episode,
}) {
  if (body is! Map) return const [];
  // In v4, responses are keyed by tvdb_id; tmdb_id is no longer returned in the body
  final stamps = <SkipStamp>[];

  void parseSegments(String key, SkipKind kind, String name) {
    final list = body[key];
    if (list is! List) return;
    for (final item in list) {
      if (item is! Map) continue;
      final startMs = (item['start_ms'] as num?)?.toDouble() ?? 0.0;
      final endMs = (item['end_ms'] as num?)?.toDouble();
      if (endMs == null || endMs <= startMs) continue;
      stamps.add(
        SkipStamp(
          name,
          kind,
          startMs / 1000.0,
          endMs / 1000.0,
        ),
      );
    }
  }

  parseSegments('intro', SkipKind.opening, 'Opening');
  parseSegments('credits', SkipKind.ending, 'Ending');
  parseSegments('recap', SkipKind.recap, 'Recap');
  parseSegments('preview', SkipKind.other, 'Preview');

  stamps.sort((a, b) => a.start.compareTo(b.start));
  return stamps;
}

List<SkipStamp> parseIntroDbApp(Object? body) {
  if (body is! Map) return const [];
  final stamps = <SkipStamp>[];

  void addSection(String key, SkipKind kind, String name) {
    final obj = body[key];
    if (obj is! Map) return;
    final startSec = (obj['start_sec'] as num?)?.toDouble() ??
        ((obj['start_ms'] as num?) != null
            ? (obj['start_ms'] as num).toDouble() / 1000.0
            : 0.0);
    final endSec = (obj['end_sec'] as num?)?.toDouble() ??
        ((obj['end_ms'] as num?) != null
            ? (obj['end_ms'] as num).toDouble() / 1000.0
            : null);
    if (endSec == null || endSec <= startSec) return;
    stamps.add(SkipStamp(name, kind, startSec, endSec));
  }

  addSection('intro', SkipKind.opening, 'Opening');
  addSection('outro', SkipKind.ending, 'Ending');
  addSection('recap', SkipKind.recap, 'Recap');

  stamps.sort((a, b) => a.start.compareTo(b.start));
  return stamps;
}

class IntroDb {
  IntroDb._();

  static const String theIntroDbBaseUrl = 'https://api.theintrodb.org/v4';
  static const String theIntroDbUrl = '$theIntroDbBaseUrl/media';
  static const String introDbAppUrl = 'https://api.introdb.app/segments';

  static Future<List<SkipStamp>> fetch({
    String? imdbId,
    int? tvdbId,
    int? tmdbId,
    int? anilistId,
    int? malId,
    int season = 1,
    required int episode,
    int? durationMs,
    String? mapping,
    bool isMovie = false,
  }) async {
    // If IDs are missing, resolve them via IdMappers if anilist/mal ID is known
    if ((tvdbId == null || tvdbId <= 0) &&
        (tmdbId == null || tmdbId <= 0) &&
        (imdbId == null || imdbId.trim().isEmpty) &&
        ((anilistId != null && anilistId > 0) || (malId != null && malId > 0))) {
      final mapped = await IdMappers.resolve(
        anilistId: anilistId,
        malId: malId,
      );
      if (mapped != null) {
        tvdbId ??= mapped.tvdbId;
        tmdbId ??= mapped.tmdbId;
        imdbId ??= mapped.imdbId;
      }
    }

    // 1. Try IntroDB App API via IMDB ID
    if (imdbId != null && imdbId.trim().isNotEmpty) {
      final fromApp = await fetchFromIntroDbApp(
        imdbId: imdbId.trim(),
        season: season,
        episode: episode,
      );
      if (fromApp.isNotEmpty) return fromApp;
    }

    // 2. Try TheIntroDB v4 API (TVDB ID preferred, TMDB ID fallback, IMDB ID fallback)
    if (tvdbId != null && tvdbId > 0) {
      final fromTvdb = await fetchFromTheIntroDb(
        tvdbId: tvdbId,
        season: season,
        episode: episode,
        durationMs: durationMs,
        mapping: mapping,
        isMovie: isMovie,
      );
      if (fromTvdb.isNotEmpty) return fromTvdb;
    }

    if (tmdbId != null && tmdbId > 0) {
      final fromTmdb = await fetchFromTheIntroDb(
        tmdbId: tmdbId,
        season: season,
        episode: episode,
        durationMs: durationMs,
        mapping: mapping,
        isMovie: isMovie,
      );
      if (fromTmdb.isNotEmpty) return fromTmdb;
    }

    if (imdbId != null && imdbId.trim().isNotEmpty) {
      final fromImdb = await fetchFromTheIntroDb(
        imdbId: imdbId.trim(),
        season: season,
        episode: episode,
        durationMs: durationMs,
        mapping: mapping,
        isMovie: isMovie,
      );
      if (fromImdb.isNotEmpty) return fromImdb;
    }

    return const [];
  }

  static Future<List<SkipStamp>> fetchFromIntroDbApp({
    required String imdbId,
    int season = 1,
    required int episode,
  }) async {
    final query = {
      'imdb_id': imdbId,
      'season': '$season',
      'episode': '$episode',
    };
    final body = await metaGet(
      introDbAppUrl,
      query: query,
      tag: 'INTRODB',
    );
    return parseIntroDbApp(body);
  }

  static Future<List<SkipStamp>> fetchFromTheIntroDb({
    int? tvdbId,
    int? tmdbId,
    String? imdbId,
    int season = 1,
    int? episode,
    int? durationMs,
    String? mapping,
    bool isMovie = false,
  }) async {
    final query = <String, String>{};
    if (tvdbId != null && tvdbId > 0) {
      query['tvdb_id'] = '$tvdbId';
    } else if (tmdbId != null && tmdbId > 0) {
      query['tmdb_id'] = '$tmdbId';
    } else if (imdbId != null && imdbId.trim().isNotEmpty) {
      query['imdb_id'] = imdbId.trim();
    } else {
      return const [];
    }

    if (!isMovie && episode != null) {
      query['season'] = '$season';
      query['episode'] = '$episode';
      if (mapping != null && mapping.trim().isNotEmpty) {
        query['mapping'] = mapping.trim();
      }
    }

    if (durationMs != null && durationMs > 0) {
      query['duration_ms'] = '$durationMs';
    }

    final body = await metaGet(
      theIntroDbUrl,
      query: query,
      tag: 'THEINTRODB',
    );
    return parseTheIntroDb(
      body,
      tvdbId: tvdbId,
      tmdbId: tmdbId,
      imdbId: imdbId,
      episode: episode,
    );
  }
}
