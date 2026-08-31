import '../../../Core/Services/Model/Media.dart';
import 'AnilistClient.dart';
import 'AnilistMedia.dart';

class MediaRail {
  final String title;
  final List<Media> media;
  const MediaRail(this.title, this.media);
}

class AnilistApi {
  final AnilistClient client;
  AnilistApi(this.client);

  static int get _season {
    final m = DateTime.now().month;
    if (m <= 3) return 0; // WINTER
    if (m <= 6) return 1; // SPRING
    if (m <= 9) return 2; // SUMMER
    return 3; // FALL
  }

  static const _seasons = ['WINTER', 'SPRING', 'SUMMER', 'FALL'];

  Future<List<MediaRail>> home({required bool anime}) async {
    final type = anime ? 'ANIME' : 'MANGA';
    final season = _seasons[_season];
    final year = DateTime.now().year;

    final query =
        '''
query {
  trending: Page(page: 1, perPage: 25) {
    media(type: $type, sort: TRENDING_DESC, isAdult: false) { $anilistMediaFragment }
  }
  ${anime ? '''
  season: Page(page: 1, perPage: 25) {
    media(type: ANIME, season: $season, seasonYear: $year, sort: POPULARITY_DESC, isAdult: false) { $anilistMediaFragment }
  }''' : ''}
  popular: Page(page: 1, perPage: 25) {
    media(type: $type, sort: POPULARITY_DESC, isAdult: false) { $anilistMediaFragment }
  }
  top: Page(page: 1, perPage: 25) {
    media(type: $type, sort: SCORE_DESC, isAdult: false) { $anilistMediaFragment }
  }
}
''';

    final data = await client.query(query);

    List<Media> rail(String key) {
      final page = data[key] as Map<String, dynamic>?;
      final list = page?['media'] as List? ?? const [];
      return list
          .cast<Map<String, dynamic>>()
          .map((e) => mapAnilistMedia(e))
          .toList();
    }

    return [
      MediaRail('Trending Now', rail('trending')),
      if (anime) MediaRail('Popular This Season', rail('season')),
      MediaRail(anime ? 'Popular Anime' : 'Popular Manga', rail('popular')),
      MediaRail('Highest Rated', rail('top')),
    ].where((r) => r.media.isNotEmpty).toList();
  }

  Future<List<Media>> search({
    required bool anime,
    required String term,
    int page = 1,
  }) async {
    final query =
        '''
query (\$search: String, \$page: Int) {
  Page(page: \$page, perPage: 30) {
    media(type: ${anime ? 'ANIME' : 'MANGA'}, search: \$search, sort: SEARCH_MATCH, isAdult: false) {
      $anilistMediaFragment
    }
  }
}
''';
    final data = await client.query(
      query,
      variables: {'search': term, 'page': page},
    );
    final list = (data['Page'] as Map<String, dynamic>?)?['media'] as List? ??
        const [];
    return list
        .cast<Map<String, dynamic>>()
        .map((e) => mapAnilistMedia(e))
        .toList();
  }
}
