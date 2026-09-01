import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/ServiceApi.dart';
import 'AnilistClient.dart';
import 'AnilistMedia.dart';
import 'AnilistNotification.dart';

class AnilistApi implements ServiceApi, ServiceMutations {
  final AnilistClient client;
  final int? Function() _userId;

  AnilistApi(this.client, this._userId);

  static const _seasons = ['WINTER', 'SPRING', 'SUMMER', 'FALL'];

  static String get _season {
    final m = DateTime.now().month;
    return _seasons[m <= 3
        ? 0
        : m <= 6
        ? 1
        : m <= 9
        ? 2
        : 3];
  }

  static const _userStatusRails = {
    'CURRENT': 'Watching',
    'REPEATING': 'Rewatching',
    'PLANNING': 'Planned',
    'PAUSED': 'On Hold',
    'COMPLETED': 'Completed',
    'DROPPED': 'Dropped',
  };

  List<Media> _page(Map<String, dynamic> data, String key) {
    final list =
        (data[key] as Map<String, dynamic>?)?['media'] as List? ?? const [];
    return list
        .cast<Map<String, dynamic>>()
        .map((e) => mapAnilistMedia(e))
        .toList();
  }

  List<Media> _collection(Map<String, dynamic> data, String key) {
    final lists =
        (data[key] as Map<String, dynamic>?)?['lists'] as List? ?? const [];
    final out = <Media>[];
    for (final l in lists.cast<Map<String, dynamic>>()) {
      for (final e
          in (l['entries'] as List? ?? const []).cast<Map<String, dynamic>>()) {
        final m = e['media'] as Map<String, dynamic>?;
        if (m != null) out.add(mapAnilistMedia(m));
      }
    }
    return out;
  }

  @override
  Future<List<MediaRail>> getHomeRails() async {
    final userId = _userId();
    final userLists = userId != null
        ? '''
  watching: MediaListCollection(userId: $userId, type: ANIME, status_in: [CURRENT, REPEATING], sort: UPDATED_TIME_DESC) {
    lists { entries { media { $anilistMediaFragment } } }
  }
  reading: MediaListCollection(userId: $userId, type: MANGA, status_in: [CURRENT, REPEATING], sort: UPDATED_TIME_DESC) {
    lists { entries { media { $anilistMediaFragment } } }
  }'''
        : '';

    final data = await client.query('''
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
''');

    return [
      if (userId != null)
        MediaRail('Continue Watching', _collection(data, 'watching')),
      if (userId != null)
        MediaRail('Continue Reading', _collection(data, 'reading')),
      MediaRail('Trending Anime', _page(data, 'trendingAnime')),
      MediaRail('Trending Manga', _page(data, 'trendingManga')),
      MediaRail('Popular Anime', _page(data, 'popularAnime')),
    ].where((r) => r.media.isNotEmpty).toList();
  }

  @override
  Future<List<MediaRail>> getAnimeRails() => _mediaRails(anime: true);

  @override
  Future<List<MediaRail>> getMangaRails() => _mediaRails(anime: false);

  Future<List<MediaRail>> _mediaRails({required bool anime}) async {
    final type = anime ? 'ANIME' : 'MANGA';
    final userId = _userId();

    final userList = userId != null
        ? '''
  userList: MediaListCollection(userId: $userId, type: $type, sort: UPDATED_TIME_DESC) {
    lists { status entries { media { $anilistMediaFragment } } }
  }'''
        : '';

    final data = await client.query('''
query {
$userList
  trending: Page(page: 1, perPage: 25) {
    media(type: $type, sort: TRENDING_DESC, isAdult: false) { $anilistMediaFragment }
  }
  ${anime ? '''
  season: Page(page: 1, perPage: 25) {
    media(type: ANIME, season: $_season, seasonYear: ${DateTime.now().year}, sort: POPULARITY_DESC, isAdult: false) { $anilistMediaFragment }
  }''' : ''}
  popular: Page(page: 1, perPage: 25) {
    media(type: $type, sort: POPULARITY_DESC, isAdult: false) { $anilistMediaFragment }
  }
  top: Page(page: 1, perPage: 25) {
    media(type: $type, sort: SCORE_DESC, isAdult: false) { $anilistMediaFragment }
  }
}
''');

    final rails = <MediaRail>[];

    if (userId != null) {
      final byStatus = <String, List<Media>>{};
      final lists =
          (data['userList'] as Map<String, dynamic>?)?['lists'] as List? ??
          const [];
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
      for (final entry in _userStatusRails.entries) {
        final media = byStatus[entry.key];
        if (media != null && media.isNotEmpty) {
          rails.add(MediaRail(entry.value, media));
        }
      }
    }

    rails.addAll([
      MediaRail('Trending Now', _page(data, 'trending')),
      if (anime) MediaRail('Popular This Season', _page(data, 'season')),
      MediaRail(
        anime ? 'Popular Anime' : 'Popular Manga',
        _page(data, 'popular'),
      ),
      MediaRail('Highest Rated', _page(data, 'top')),
    ]);

    return rails.where((r) => r.media.isNotEmpty).toList();
  }

  @override
  Future<Media> getMediaDetails(String id) async {
    final data = await client.query(
      'query (\$id: Int) { Media(id: \$id) { $anilistDetailQuery } }',
      variables: {'id': int.parse(id)},
    );
    final media = data['Media'] as Map<String, dynamic>?;
    if (media == null) throw AnilistException('Media not found');
    return mapAnilistDetail(media);
  }

  @override
  Future<List<Media>> search({
    required bool anime,
    required String term,
    int page = 1,
  }) async {
    final data = await client.query(
      '''
query (\$search: String, \$page: Int) {
  Page(page: \$page, perPage: 30) {
    media(type: ${anime ? 'ANIME' : 'MANGA'}, search: \$search, sort: SEARCH_MATCH, isAdult: false) {
      $anilistMediaFragment
    }
  }
}
''',
      variables: {'search': term, 'page': page},
    );
    final list =
        (data['Page'] as Map<String, dynamic>?)?['media'] as List? ?? const [];
    return list
        .cast<Map<String, dynamic>>()
        .map((e) => mapAnilistMedia(e))
        .toList();
  }

  @override
  Future<List<ServiceNotification>> getNotifications({int page = 1}) async {
    final data = await client.query(
      '''
query (\$page: Int) {
  Page(page: \$page, perPage: 30) {
    notifications(resetNotificationCount: true) {
      __typename
      ... on AiringNotification { id type episode createdAt media { id title { userPreferred } coverImage { large } } }
      ... on RelatedMediaAdditionNotification { id type createdAt media { id title { userPreferred } coverImage { large } } }
      ... on FollowingNotification { id type context createdAt user { name avatar { large } } }
      ... on ActivityMentionNotification { id type context createdAt user { name avatar { large } } }
      ... on ActivityReplyNotification { id type context createdAt user { name avatar { large } } }
      ... on ActivityLikeNotification { id type context createdAt user { name avatar { large } } }
      ... on ActivityReplyLikeNotification { id type context createdAt user { name avatar { large } } }
    }
  }
}
''',
      variables: {'page': page},
    );

    final list =
        (data['Page'] as Map<String, dynamic>?)?['notifications'] as List? ??
        const [];
    return list
        .cast<Map<String, dynamic>>()
        .map(parseAnilistNotification)
        .whereType<ServiceNotification>()
        .toList();
  }

  @override
  Future<void> saveListEntry({
    required String mediaId,
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
        'mediaId': int.parse(mediaId),
        'status': ?status,
        'progress': ?progress,
        'score': ?score,
        'private': ?private,
      },
    );
  }

  @override
  Future<void> deleteListEntry(String entryId) async {
    await client.query(
      'mutation (\$id: Int) { DeleteMediaListEntry(id: \$id) { deleted } }',
      variables: {'id': int.parse(entryId)},
    );
  }
}
