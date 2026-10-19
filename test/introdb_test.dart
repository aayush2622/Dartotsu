import 'package:flutter_test/flutter_test.dart';

import 'package:dartotsu/Screen/Detail/Watch/Data/IdMappers.dart';
import 'package:dartotsu/Screen/Player/Engine/AniSkip.dart';
import 'package:dartotsu/Screen/Player/Engine/IntroDb.dart';

void main() {
  group('TheIntroDB v4 API Integration', () {
    test('verifies base URL is /v4 and media endpoint is /v4/media', () {
      expect(IntroDb.theIntroDbBaseUrl, 'https://api.theintrodb.org/v4');
      expect(IntroDb.theIntroDbUrl, 'https://api.theintrodb.org/v4/media');
    });

    test('parses v4 MediaResponse keyed by tvdb_id (tmdb_id absent)', () {
      final json = {
        'tvdb_id': 81797,
        'type': 'tv',
        'season': 1,
        'episode': 1,
        'intro': [
          {'start_ms': null, 'end_ms': 124000},
        ],
        'recap': [
          {'start_ms': 0, 'end_ms': 0},
        ],
        'credits': [
          {'start_ms': 46881, 'end_ms': 124500},
        ],
        'preview': [
          {'start_ms': 1459000, 'end_ms': 1500000},
        ],
      };

      final stamps = parseTheIntroDb(json, tvdbId: 81797, episode: 1);
      expect(stamps.length, 3);

      final intro = stamps[0];
      expect(intro.kind, SkipKind.opening);
      expect(intro.name, 'Opening');
      expect(intro.start, 0.0);
      expect(intro.end, 124.0);

      final credits = stamps[1];
      expect(credits.kind, SkipKind.ending);
      expect(credits.name, 'Ending');
      expect(credits.start, closeTo(46.881, 0.001));
      expect(credits.end, 124.5);

      final preview = stamps[2];
      expect(preview.kind, SkipKind.other);
      expect(preview.name, 'Preview');
      expect(preview.start, 1459.0);
      expect(preview.end, 1500.0);
    });

    test('parses movie response without season/episode', () {
      final json = {
        'tvdb_id': 169,
        'type': 'movie',
        'intro': [
          {'start_ms': null, 'end_ms': 23000},
        ],
        'credits': [
          {'start_ms': 5801777, 'end_ms': 6371111},
        ],
      };

      final stamps = parseTheIntroDb(json, tvdbId: 169);
      expect(stamps.length, 2);
      expect(stamps[0].kind, SkipKind.opening);
      expect(stamps[0].start, 0.0);
      expect(stamps[0].end, 23.0);
      expect(stamps[1].kind, SkipKind.ending);
      expect(stamps[1].start, closeTo(5801.777, 0.001));
      expect(stamps[1].end, closeTo(6371.111, 0.001));
    });
  });

  group('IntroDB App API Integration', () {
    test('asserts introdb app URL', () {
      expect(IntroDb.introDbAppUrl, 'https://api.introdb.app/segments');
    });

    test('parses introdb.app segments with start_sec/end_sec', () {
      final json = {
        'imdb_id': 'tt0388629',
        'media_type': 'tv',
        'season': 1,
        'episode': 1,
        'intro': {'start_sec': 28.783, 'end_sec': 118.783},
        'outro': {'start_sec': 1382.0, 'end_sec': 1422.0},
        'recap': {'start_sec': 5.0, 'end_sec': 25.0},
      };

      final stamps = parseIntroDbApp(json);
      expect(stamps.length, 3);
      expect(stamps[0].kind, SkipKind.recap);
      expect(stamps[0].start, 5.0);
      expect(stamps[0].end, 25.0);
      expect(stamps[1].kind, SkipKind.opening);
      expect(stamps[1].start, 28.783);
      expect(stamps[1].end, 118.783);
      expect(stamps[2].kind, SkipKind.ending);
      expect(stamps[2].start, 1382.0);
      expect(stamps[2].end, 1422.0);
    });
  });

  group('IdMappers', () {
    test('parses HuggingFace ID mapper JSON', () {
      final json = {
        'type': 'TV',
        'anilist_id': 21,
        'tvdb_id': 81797,
        'imdb_id': ['tt0388629', 'tt0975705'],
        'themoviedb_id': {'tv': 37854},
        'mal_id': [21, 1094],
        'simkl_id': 38636,
        'kitsu_id': 12,
      };

      final mapping = parseIdMapperResponse(json);
      expect(mapping, isNotNull);
      expect(mapping!.anilistId, 21);
      expect(mapping.tvdbId, 81797);
      expect(mapping.tmdbId, 37854);
      expect(mapping.imdbId, 'tt0388629');
      expect(mapping.malId, 21);
      expect(mapping.simklId, 38636);
      expect(mapping.kitsuId, 12);
    });

    test('parses ani.zip mappings JSON', () {
      final json = {
        'mappings': {
          'thetvdb_id': 76885,
          'themoviedb_id': '30991',
          'imdb_id': 'tt0213338',
          'mal_id': 1,
          'anilist_id': 1,
        },
        'episodes': {
          '1': {'tvdbShowId': 76885, 'tvdbId': 219123},
        },
      };

      final mapping = parseAniZipResponse(json);
      expect(mapping, isNotNull);
      expect(mapping!.anilistId, 1);
      expect(mapping.tvdbId, 76885);
      expect(mapping.tmdbId, 30991);
      expect(mapping.imdbId, 'tt0213338');
      expect(mapping.malId, 1);
    });
  });
}
