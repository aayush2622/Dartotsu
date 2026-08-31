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

  static const _userStatuses = {
    'CURRENT': 'Watching',
    'REPEATING': 'Rewatching',
    'PLANNING': 'Planned',
    'PAUSED': 'On Hold',
    'COMPLETED': 'Completed',
    'DROPPED': 'Dropped',
  };

  Future<List<MediaRail>> home({required bool anime, int? userId}) async {
    final type = anime ? 'ANIME' : 'MANGA';
    final season = _seasons[_season];
    final year = DateTime.now().year;
    final loggedIn = userId != null;

    final userLists = loggedIn
        ? '''
  userList: MediaListCollection(userId: $userId, type: $type, sort: UPDATED_TIME_DESC) {
    lists { name status entries { media { $anilistMediaFragment } } }
  }'''
        : '';

    final query =
        '''
query {
$userLists
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

    final rails = <MediaRail>[];

    if (loggedIn) {
      final lists =
          (data['userList'] as Map<String, dynamic>?)?['lists'] as List? ??
          const [];
      final byStatus = <String, List<Media>>{};
      for (final l in lists.cast<Map<String, dynamic>>()) {
        final status = l['status'] as String?;
        if (status == null) continue;
        final media = (l['entries'] as List? ?? const [])
            .cast<Map<String, dynamic>>()
            .map((e) => e['media'] as Map<String, dynamic>?)
            .whereType<Map<String, dynamic>>()
            .map((m) => mapAnilistMedia(m))
            .toList();
        byStatus.putIfAbsent(status, () => []).addAll(media);
      }
      for (final entry in _userStatuses.entries) {
        final media = byStatus[entry.key];
        if (media != null && media.isNotEmpty) {
          rails.add(MediaRail(entry.value, media));
        }
      }
    }

    rails.addAll([
      MediaRail('Trending Now', rail('trending')),
      if (anime) MediaRail('Popular This Season', rail('season')),
      MediaRail(anime ? 'Popular Anime' : 'Popular Manga', rail('popular')),
      MediaRail('Highest Rated', rail('top')),
    ]);

    return rails.where((r) => r.media.isNotEmpty).toList();
  }

  Future<List<MediaRail>> dashboard({int? userId}) async {
    final loggedIn = userId != null;
    final userLists = loggedIn
        ? '''
  watching: MediaListCollection(userId: $userId, type: ANIME, status_in: [CURRENT, REPEATING], sort: UPDATED_TIME_DESC) {
    lists { entries { media { $anilistMediaFragment } } }
  }
  reading: MediaListCollection(userId: $userId, type: MANGA, status_in: [CURRENT, REPEATING], sort: UPDATED_TIME_DESC) {
    lists { entries { media { $anilistMediaFragment } } }
  }'''
        : '';
    final query =
        '''
query {
$userLists
  trendingAnime: Page(page: 1, perPage: 25) {
    media(type: ANIME, sort: TRENDING_DESC, isAdult: false) { $anilistMediaFragment }
  }
  trendingManga: Page(page: 1, perPage: 25) {
    media(type: MANGA, sort: TRENDING_DESC, isAdult: false) { $anilistMediaFragment }
  }
  popularAnime: Page(page: 1, perPage: 25) {
    media(type: ANIME, sort: POPULARITY_DESC, isAdult: false) { $anilistMediaFragment }
  }
}
''';

    final data = await client.query(query);

    List<Media> page(String key) {
      final list =
          (data[key] as Map<String, dynamic>?)?['media'] as List? ?? const [];
      return list
          .cast<Map<String, dynamic>>()
          .map((e) => mapAnilistMedia(e))
          .toList();
    }

    List<Media> collection(String key) {
      final lists =
          (data[key] as Map<String, dynamic>?)?['lists'] as List? ?? const [];
      final out = <Media>[];
      for (final l in lists.cast<Map<String, dynamic>>()) {
        for (final e
            in (l['entries'] as List? ?? const [])
                .cast<Map<String, dynamic>>()) {
          final m = e['media'] as Map<String, dynamic>?;
          if (m != null) out.add(mapAnilistMedia(m));
        }
      }
      return out;
    }

    return [
      if (loggedIn) MediaRail('Continue Watching', collection('watching')),
      if (loggedIn) MediaRail('Continue Reading', collection('reading')),
      MediaRail('Trending Anime', page('trendingAnime')),
      MediaRail('Trending Manga', page('trendingManga')),
      MediaRail('Popular Anime', page('popularAnime')),
    ].where((r) => r.media.isNotEmpty).toList();
  }

  Future<void> saveListEntry({
    required int mediaId,
    String? status,
    int? progress,
    num? score,
    bool? private,
  }) async {
    await client.query(
      '''
mutation (\$mediaId: Int, \$status: MediaListStatus, \$progress: Int, \$score: Float, \$private: Boolean) {
  SaveMediaListEntry(mediaId: \$mediaId, status: \$status, progress: \$progress, score: \$score, private: \$private) {
    id status progress score
  }
}
''',
      variables: {
        'mediaId': mediaId,
        'status': ?status,
        'progress': ?progress,
        'score': ?score,
        'private': ?private,
      },
    );
  }

  Future<void> deleteListEntry(int entryId) async {
    await client.query(
      'mutation (\$id: Int) { DeleteMediaListEntry(id: \$id) { deleted } }',
      variables: {'id': entryId},
    );
  }

  Future<Media> details(int id) async {
    final data = await client.query(
      '''
query (\$id: Int) {
  Media(id: \$id) { $anilistDetailQuery }
}
''',
      variables: {'id': id},
    );
    final media = data['Media'] as Map<String, dynamic>?;
    if (media == null) throw AnilistException('Media not found');
    return mapAnilistDetail(media);
  }

  Future<List<Media>> userList({
    required int userId,
    required bool anime,
    List<String> statuses = const ['CURRENT', 'REPEATING'],
  }) async {
    final query =
        '''
query (\$userId: Int, \$type: MediaType, \$status: [MediaListStatus]) {
  MediaListCollection(userId: \$userId, type: \$type, status_in: \$status, sort: UPDATED_TIME_DESC) {
    lists {
      entries {
        media { $anilistMediaFragment }
      }
    }
  }
}
''';
    final data = await client.query(
      query,
      variables: {
        'userId': userId,
        'type': anime ? 'ANIME' : 'MANGA',
        'status': statuses,
      },
    );

    final lists =
        (data['MediaListCollection'] as Map<String, dynamic>?)?['lists']
            as List? ??
        const [];
    final out = <Media>[];
    for (final list in lists.cast<Map<String, dynamic>>()) {
      final entries = list['entries'] as List? ?? const [];
      for (final entry in entries.cast<Map<String, dynamic>>()) {
        final media = entry['media'] as Map<String, dynamic>?;
        if (media != null) out.add(mapAnilistMedia(media));
      }
    }
    return out;
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
    final list =
        (data['Page'] as Map<String, dynamic>?)?['media'] as List? ?? const [];
    return list
        .cast<Map<String, dynamic>>()
        .map((e) => mapAnilistMedia(e))
        .toList();
  }
}
