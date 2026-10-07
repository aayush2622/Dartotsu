part of '../Queries.dart';

extension on AnilistQueries {
  Future<int?> _userIdByName(String name) async {
    final data = await client.query(
      'query (\$name: String) { User(name: \$name) { id } }',
      variables: {'name': name},
    );
    return (data['User'] as Map<String, dynamic>?)?['id'] as int?;
  }

  SocialUser _profileFromData(Map<String, dynamic> data) {
    final user = data['User'] as Map<String, dynamic>;
    int total(String key) =>
        (((data[key] as Map?)?['pageInfo'] as Map?)?['total'] as num?)
            ?.toInt() ??
        0;
    return mapSocialUser(
      user,
      followers: total('followerPage'),
      following: total('followingPage'),
    );
  }

  Future<SocialUser?> _socialProfile({String? id, String? name}) async {
    final userId = id != null ? int.tryParse(id) : await _userIdByName(name!);
    if (userId == null) return null;
    final data = await client.query(
      _querySocialProfile,
      variables: {'id': userId},
    );
    if (data['User'] == null) return null;
    return _profileFromData(data);
  }

  Future<SocialProfile?> _socialBundle({String? id, String? name}) async {
    final userId = id != null ? int.tryParse(id) : await _userIdByName(name!);
    if (userId == null) return null;
    if (AnilistPref.queryLoadMode.value != QueryLoadMode.stacked) {
      final user = await _socialProfile(id: '$userId');
      if (user == null) return null;
      Future<T?> soft<T>(Future<T> Function() run) async {
        try {
          return await run();
        } catch (_) {
          return null;
        }
      }

      final results = await Future.wait<Object?>([
        soft(() => _socialFavourites(user.id)),
        soft(() => _activityHistory(user.id)),
      ]);
      return SocialProfile(
        user,
        favourites: results[0] as SocialFavourites?,
        history: results[1] as List<ActivityDay>?,
      );
    }
    final data = await client.query(
      _querySocialBundle,
      variables: {'id': userId, 'page': 1},
    );
    if (data['User'] == null) return null;
    final user = _profileFromData(data);
    SocialFavourites? favourites;
    try {
      favourites = await _socialFavourites(user.id, firstPage: data);
    } catch (_) {}
    final rows =
        (((data['User'] as Map?)?['stats'] as Map?)?['activityHistory']
            as List?) ??
        const [];
    return SocialProfile(
      user,
      favourites: favourites,
      history: _historyFromRows(rows),
    );
  }

  List<ActivityDay> _historyFromRows(List rows) => [
    for (final r in rows)
      ActivityDay(
        DateTime.fromMillisecondsSinceEpoch(
          ((r['date'] as num?)?.toInt() ?? 0) * 1000,
        ),
        (r['amount'] as num?)?.toInt() ?? 0,
        (r['level'] as num?)?.toInt() ?? 0,
      ),
  ];

  Future<SocialFavourites> _socialFavourites(
    String id, {
    Map<String, dynamic>? firstPage,
  }) async {
    final userId = int.parse(id);
    final merged = <String, List<dynamic>>{};
    var animeMore = false;
    var mangaMore = false;
    const people = ['characters', 'staff', 'studios'];
    for (var page = 1; page <= 4; page++) {
      final data = page == 1 && firstPage != null
          ? firstPage
          : await client.query(
              _querySocialFavourites,
              variables: {'id': userId, 'page': page},
            );
      final favourites =
          (data['User'] as Map<String, dynamic>?)?['favourites']
              as Map<String, dynamic>?;
      var more = false;
      for (final key in ['anime', 'manga', ...people]) {
        if (page > 1 && !people.contains(key)) continue;
        final connection = favourites?[key] as Map<String, dynamic>?;
        merged
            .putIfAbsent(key, () => [])
            .addAll(connection?['nodes'] as List? ?? const []);
        final hasNext =
            ((connection?['pageInfo'] as Map?)?['hasNextPage']) == true;
        if (page == 1 && key == 'anime') animeMore = hasNext;
        if (page == 1 && key == 'manga') mangaMore = hasNext;
        if (people.contains(key) && hasNext) more = true;
      }
      if (!more) break;
    }
    final mapped = mapSocialFavourites({
      for (final e in merged.entries) e.key: {'nodes': e.value},
    });
    return SocialFavourites(
      animeHasMore: animeMore,
      mangaHasMore: mangaMore,
      anime: mapped.anime,
      manga: mapped.manga,
      characters: mapped.characters,
      staff: mapped.staff,
      studios: mapped.studios,
    );
  }

  Future<List<Media>> _socialFavouriteMedia(
    String id,
    bool anime,
    int page,
  ) async {
    final key = anime ? 'anime' : 'manga';
    final data = await client.query(
      '''
query (\$id: Int, \$page: Int) {
  User(id: \$id) {
    favourites {
      $key(page: \$page, perPage: 25) { nodes { $anilistMediaFragment } }
    }
  }
}''',
      variables: {'id': int.parse(id), 'page': page},
    );
    final nodes =
        ((((data['User'] as Map?)?['favourites'] as Map?)?[key]
                as Map?)?['nodes']
            as List?) ??
        const [];
    return [for (final n in nodes) mapAnilistMedia(n as Map<String, dynamic>)];
  }

  Future<UserPage> _follows(String id, bool followers, int page) async {
    final field = followers ? 'followers' : 'following';
    final data = await client.query(
      '''
query (\$id: Int!, \$page: Int) {
  Page(page: \$page, perPage: 30) {
    pageInfo { hasNextPage }
    $field(userId: \$id, sort: [USERNAME]) { $anilistUserBriefFields }
  }
}''',
      variables: {'id': int.parse(id), 'page': page},
    );
    final pageData = data['Page'] as Map<String, dynamic>?;
    return UserPage(
      mapUserBriefs(pageData?[field]),
      hasNext: ((pageData?['pageInfo'] as Map?)?['hasNextPage']) == true,
    );
  }

  Future<ActivityPage> _activities(
    ActivityScope scope, {
    String? userId,
    String? activityId,
    int page = 1,
  }) async {
    final filter = switch (scope) {
      ActivityScope.single => 'id: ${int.parse(activityId!)},',
      ActivityScope.user => 'userId: ${int.parse(userId!)},',
      ActivityScope.global => 'isFollowing: false, hasRepliesOrTypeText: true,',
      ActivityScope.following =>
        'isFollowing: true, type_in: [TEXT, ANIME_LIST, MANGA_LIST, MEDIA_LIST],',
    };
    final data = await client.query('''
{
  Page(page: $page, perPage: 25) {
    pageInfo { hasNextPage }
    activities($filter sort: ID_DESC) { $_activityFields }
  }
}''');
    final pageData = data['Page'] as Map<String, dynamic>?;
    final items = <Activity>[];
    for (final raw in (pageData?['activities'] as List? ?? const [])) {
      final activity = mapActivity(raw as Map<String, dynamic>);
      if (activity == null) continue;
      if (!AnilistPref.displayAdult.value && activity.media?.isAdult == true) {
        continue;
      }
      items.add(activity);
    }
    return ActivityPage(
      items,
      hasNext: ((pageData?['pageInfo'] as Map?)?['hasNextPage']) == true,
    );
  }

  Future<ReplyPage> _replies(String activityId, int page) async {
    final data = await client.query(
      '''
query (\$id: Int, \$page: Int) {
  Page(page: \$page, perPage: 30) {
    pageInfo { hasNextPage }
    activityReplies(activityId: \$id) {
      id userId activityId text(asHtml: false) html: text(asHtml: true) likeCount isLiked createdAt
      user { $anilistUserBriefFields }
      $anilistActivityLikes
    }
  }
}''',
      variables: {'id': int.parse(activityId), 'page': page},
    );
    final pageData = data['Page'] as Map<String, dynamic>?;
    return ReplyPage([
      for (final r in (pageData?['activityReplies'] as List? ?? const []))
        mapActivityReply(r as Map<String, dynamic>),
    ], hasNext: ((pageData?['pageInfo'] as Map?)?['hasNextPage']) == true);
  }

  Future<List<ActivityDay>> _activityHistory(String id) async {
    final data = await client.query(
      r'''
query ($id: Int) {
  User(id: $id) { stats { activityHistory { date amount level } } }
}''',
      variables: {'id': int.parse(id)},
    );
    final rows =
        (((data['User'] as Map?)?['stats'] as Map?)?['activityHistory']
            as List?) ??
        const [];
    return _historyFromRows(rows);
  }

  Future<UserStats?> _stats(String id) async {
    final data = await client.query(
      '''
query (\$id: Int) {
  User(id: \$id) {
    statistics { anime { ...UserStat } manga { ...UserStat } }
  }
}
${anilistStatFragment()}''',
      variables: {'id': int.parse(id)},
    );
    final stats =
        (data['User'] as Map<String, dynamic>?)?['statistics'] as Map?;
    if (stats == null) return null;
    return UserStats(
      anime: mapStatSet(stats['anime'] as Map<String, dynamic>?),
      manga: mapStatSet(stats['manga'] as Map<String, dynamic>?),
    );
  }

  Future<List<StoryGroup>> _stories() async {
    final pages = <List<Activity>>[];
    for (final page in [1, 2]) {
      final data = await client.query('''
{
  Page(page: $page, perPage: 50) {
    activities(
      isFollowing: true,
      type_in: [TEXT, ANIME_LIST, MANGA_LIST, MEDIA_LIST],
      sort: ID_DESC
    ) { $_activityFields }
  }
}''');
      pages.add([
        for (final raw
            in ((data['Page'] as Map?)?['activities'] as List? ?? const []))
          ?mapActivity(raw as Map<String, dynamic>),
      ]);
    }
    final cutoff =
        DateTime.now()
            .subtract(const Duration(days: 3))
            .millisecondsSinceEpoch ~/
        1000;
    final grouped = <String, List<Activity>>{};
    for (final activity in pages.expand((p) => p)) {
      if (activity.isMessage || activity.user == null) continue;
      if (activity.createdAt < cutoff) continue;
      if (!AnilistPref.displayAdult.value && activity.media?.isAdult == true) {
        continue;
      }
      grouped.putIfAbsent(activity.user!.id, () => []).add(activity);
    }
    return [
      for (final list in grouped.values)
        StoryGroup(
          list.first.user!,
          list..sort((a, b) => a.createdAt.compareTo(b.createdAt)),
        ),
    ];
  }

  Future<Map<String, Media>> _mediaByIds(List<String> ids) async {
    if (ids.isEmpty) return const {};
    final data = await client.query(
      '''
query (\$ids: [Int]) {
  Page(page: 1, perPage: 50) {
    media(id_in: \$ids) { $anilistMediaFragment }
  }
}''',
      variables: {
        'ids': [for (final id in ids) int.parse(id)],
      },
    );
    return {
      for (final m in ((data['Page'] as Map?)?['media'] as List? ?? const []))
        m['id'].toString(): mapAnilistMedia(m as Map<String, dynamic>),
    };
  }
}

final _activityFields =
    '''
__typename
... on TextActivity {
  id userId type replyCount text(asHtml: false) html: text(asHtml: true) siteUrl isLocked isSubscribed
  likeCount isLiked isPinned createdAt
  user { $anilistUserBriefFields }
  $anilistActivityLikes
}
... on ListActivity {
  id userId type replyCount status progress siteUrl isLocked isSubscribed
  likeCount isLiked isPinned createdAt
  user { $anilistUserBriefFields }
  media { $anilistMediaFragment }
  $anilistActivityLikes
}
... on MessageActivity {
  id recipientId messengerId type replyCount likeCount message(asHtml: false) html: message(asHtml: true)
  isLocked isSubscribed isLiked isPrivate siteUrl createdAt
  recipient { $anilistUserBriefFields }
  messenger { $anilistUserBriefFields }
  $anilistActivityLikes
}''';

const _socialProfileFields = '''
    id name about(asHtml: true) bannerImage isFollowing isFollower isBlocked siteUrl
    avatar { medium large }
    statistics {
      anime { count meanScore standardDeviation minutesWatched episodesWatched }
      manga { count meanScore chaptersRead volumesRead }
    }''';

const _socialFollowCounts = '''
  followerPage: Page { pageInfo { total } followers(userId: \$id) { id } }
  followingPage: Page { pageInfo { total } following(userId: \$id) { id } }''';

const _querySocialProfile =
    '''
query (\$id: Int!) {
$_socialFollowCounts
  User(id: \$id) {
$_socialProfileFields
  }
}''';

final _socialFavouriteFields =
    '''
    favourites {
      anime(page: \$page, perPage: 25) { pageInfo { hasNextPage } nodes { $anilistMediaFragment } }
      manga(page: \$page, perPage: 25) { pageInfo { hasNextPage } nodes { $anilistMediaFragment } }
      characters(page: \$page, perPage: 25) {
        pageInfo { hasNextPage }
        nodes { id name { userPreferred } image { large medium } }
      }
      staff(page: \$page, perPage: 25) {
        pageInfo { hasNextPage }
        nodes { id name { userPreferred } image { large medium } }
      }
      studios(page: \$page, perPage: 25) { pageInfo { hasNextPage } nodes { id name } }
    }''';

final _querySocialFavourites =
    '''
query (\$id: Int, \$page: Int) {
  User(id: \$id) {
$_socialFavouriteFields
  }
}''';

final _querySocialBundle =
    '''
query (\$id: Int!, \$page: Int) {
$_socialFollowCounts
  User(id: \$id) {
$_socialProfileFields
$_socialFavouriteFields
    stats { activityHistory { date amount level } }
  }
}''';
