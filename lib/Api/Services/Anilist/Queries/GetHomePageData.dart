part of '../Queries.dart';

extension on AnilistQueries {
  List<SectionJob> _homeJobs() {
    final id = userId();
    if (id == null) return const [];

    final layout = AnilistPref.homeLayout.value;
    final sections = layout.entries
        .where((e) => e.value && e.key != 'Hidden Media')
        .map((e) => e.key)
        .where((s) => _homeFragments(s, id) != null)
        .toList();
    if (sections.isEmpty) return const [];

    final hidden = <String, Media>{};

    SectionJob job(List<String> wanted) => () async {
      final gql = wanted.expand((s) => _homeFragments(s, id)!).join('\n');
      final chunk = await _parseSections('{$gql}', wanted);

      for (final media in chunk.remove('Hidden Media') ?? const <Media>[]) {
        hidden[media.id] = media;
      }
      if (hidden.isNotEmpty) {
        final touched = {
          ...anilistContinueOrder.read(anime: true),
          ...anilistContinueOrder.read(anime: false),
        };
        chunk['Hidden Media'] = hidden.values.toList()
          ..sort(
            (a, b) => _lastModified(b, touched) - _lastModified(a, touched),
          );
      }
      return chunk;
    };

    if (AnilistPref.queryLoadMode.value == QueryLoadMode.stacked) {
      return [job(sections)];
    }
    return [
      for (final section in sections) job([section]),
    ];
  }

  Future<Map<String, List<Media>>> _parseSections(
    String gql,
    List<String> sections,
  ) async => compute(_parseHome, {
    'body': await client.queryRaw(gql),
    'sections': sections,
    'removeList': AnilistPref.removeList.value,
    'hidePrivate': AnilistPref.hidePrivate.value,
    'continueAnime': anilistContinueOrder.read(anime: true),
    'continueManga': anilistContinueOrder.read(anime: false),
  });
}

List<String>? _homeFragments(String section, int userId) => switch (section) {
  'Continue Watching' => [
    'currentAnime: ${_statusList(userId, 'ANIME', 'CURRENT')}',
    'repeatingAnime: ${_statusList(userId, 'ANIME', 'REPEATING')}',
  ],
  'Continue Reading' => [
    'currentManga: ${_statusList(userId, 'MANGA', 'CURRENT')}',
    'repeatingManga: ${_statusList(userId, 'MANGA', 'REPEATING')}',
  ],
  'Planned Anime' => [
    'plannedAnime: ${_statusList(userId, 'ANIME', 'PLANNING', sort: 'MEDIA_POPULARITY_DESC')}',
  ],
  'Planned Manga' => [
    'plannedManga: ${_statusList(userId, 'MANGA', 'PLANNING', sort: 'MEDIA_POPULARITY_DESC')}',
  ],
  'Favourite Anime' => ['favoriteAnime: ${_favourites(userId, anime: true)}'],
  'Favourite Manga' => ['favoriteManga: ${_favourites(userId, anime: false)}'],
  'Recommended' => [
    'recommended: ${_recommendationsQuery()}',
    'recommendedAnime: ${_statusList(userId, 'ANIME', 'PLANNING', sort: 'MEDIA_POPULARITY_DESC')}',
    'recommendedManga: ${_statusList(userId, 'MANGA', 'PLANNING')}',
  ],
  _ => null,
};

Map<String, List<Media>> _parseHome(Map<String, dynamic> args) {
  final data = anilistData(args['body'] as String);
  final sections = (args['sections'] as List).cast<String>();
  final removeList = (args['removeList'] as List).cast<String>().toSet();
  final hidePrivate = args['hidePrivate'] as bool;
  final out = <String, List<Media>>{};
  final hidden = <Media>[];

  List<Media> keep(List<Media> input) {
    final kept = <Media>[];
    for (final media in input) {
      if (removeList.contains(media.id) ||
          (hidePrivate && media.isListPrivate)) {
        hidden.add(media);
      } else {
        kept.add(media);
      }
    }
    return kept;
  }

  for (final section in sections) {
    final media = switch (section) {
      'Continue Watching' => _continueMedia(
        data,
        'currentAnime',
        'repeatingAnime',
        (args['continueAnime'] as Map).cast<String, int>(),
      ),
      'Continue Reading' => _continueMedia(
        data,
        'currentManga',
        'repeatingManga',
        (args['continueManga'] as Map).cast<String, int>(),
      ),
      'Planned Anime' => anilistCollectionMedia(
        data['plannedAnime'] as Map<String, dynamic>?,
      ),
      'Planned Manga' => anilistCollectionMedia(
        data['plannedManga'] as Map<String, dynamic>?,
      ),
      'Favourite Anime' => _favouriteMedia(data['favoriteAnime'], anime: true),
      'Favourite Manga' => _favouriteMedia(data['favoriteManga'], anime: false),
      'Recommended' => _recommended(data),
      _ => const <Media>[],
    };
    out[section] = keep(media);
  }

  if (hidden.isNotEmpty) out['Hidden Media'] = hidden;
  return anilistNonEmpty(out);
}

int _lastModified(Media media, Map<String, int> touched) {
  final local = touched[media.id] ?? 0;
  final remote = media.userUpdatedAt ?? 0;
  return local > remote ? local : remote;
}

List<Media> _continueMedia(
  Map<String, dynamic> data,
  String current,
  String repeating,
  Map<String, int> touched,
) {
  final byId = <String, Media>{};
  for (final media in [
    ...anilistCollectionMedia(data[current] as Map<String, dynamic>?),
    ...anilistCollectionMedia(data[repeating] as Map<String, dynamic>?),
  ]) {
    media.cameFromContinue = true;
    byId[media.id] = media;
  }

  return byId.values.toList()
    ..sort((a, b) => _lastModified(b, touched) - _lastModified(a, touched));
}

List<Media> _favouriteMedia(Object? user, {required bool anime}) {
  final edges =
      ((user as Map<String, dynamic>?)?['favourites']
              as Map<String, dynamic>?)?[anime ? 'anime' : 'manga']
          as Map<String, dynamic>?;
  return ((edges?['edges'] as List?) ?? const [])
      .cast<Map<String, dynamic>>()
      .map((e) => e['node'] as Map<String, dynamic>?)
      .whereType<Map<String, dynamic>>()
      .map((n) => mapAnilistMedia(n)..isFav = true)
      .toList();
}

List<Media> _recommended(Map<String, dynamic> data) {
  final byId = <String, Media>{};
  final recs =
      ((data['recommended'] as Map<String, dynamic>?)?['recommendations']
          as List?) ??
      const [];
  for (final rec in recs.cast<Map<String, dynamic>>()) {
    final node = rec['mediaRecommendation'] as Map<String, dynamic>?;
    if (node == null) continue;
    final media = mapAnilistMedia(node);
    byId[media.id] = media;
  }
  for (final media in [
    ...anilistCollectionMedia(
      data['recommendedAnime'] as Map<String, dynamic>?,
    ),
    ...anilistCollectionMedia(
      data['recommendedManga'] as Map<String, dynamic>?,
    ),
  ]) {
    if (media.status == 'RELEASING' || media.status == 'FINISHED') {
      byId[media.id] = media;
    }
  }
  return byId.values.toList()
    ..sort((a, b) => (b.meanScore ?? 0).compareTo(a.meanScore ?? 0));
}

String _statusList(
  int userId,
  String type,
  String status, {
  String sort = 'UPDATED_TIME_DESC',
}) =>
    '''
MediaListCollection(userId: $userId, type: $type, status: $status, sort: $sort) {
    lists { entries { progress private score(format: POINT_100) status updatedAt media { $anilistMediaFragment } } }
  }''';

String _favourites(int userId, {required bool anime}) =>
    '''
User(id: $userId) {
    favourites {
      ${anime ? 'anime' : 'manga'}(page: 1) {
        edges { favouriteOrder node { $anilistMediaFragment } }
      }
    }
  }''';

String _recommendationsQuery() =>
    '''
Page(page: 1, perPage: 30) {
    recommendations(sort: RATING_DESC, onList: true) {
      rating
      mediaRecommendation { $anilistMediaFragment }
    }
  }''';
