part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<Map<String, List<Media>>> _getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) async {
    final id = userId ?? this.userId();
    if (id == null) return {};

    final lists = await client.queryRaw(_queryUserLists(id, anime));
    final favs = <String>[];
    for (var page = 1; page <= 20; page++) {
      final body = await client.queryRaw(_queryFavMedia(id, anime, page));
      favs.add(body);
      if (!body.contains('"hasNextPage":true')) break;
    }

    return compute(_parseUserLists, {
      'lists': lists,
      'favs': favs,
      'anime': anime,
    });
  }
}

Map<String, List<Media>> _parseUserLists(Map<String, dynamic> args) {
  final anime = args['anime'] as bool;
  final collection =
      anilistData(args['lists'] as String)['MediaListCollection']
          as Map<String, dynamic>?;

  final unsorted = <String, List<Media>>{};
  final all = <Media>[];
  final seen = <String>{};

  for (final list
      in ((collection?['lists'] as List?) ?? const [])
          .cast<Map<String, dynamic>>()) {
    final name = (list['name'] as String?)?.trim();
    if (name == null) continue;
    final entries = <Media>[];
    for (final entry
        in ((list['entries'] as List?) ?? const [])
            .cast<Map<String, dynamic>>()) {
      if (entry['media'] == null) continue;
      final media = mapAnilistListEntry(entry);
      entries.add(media);
      if (seen.add(media.id)) all.add(media);
    }
    unsorted[name] = entries;
  }

  final options =
      (collection?['user'] as Map<String, dynamic>?)?['mediaListOptions']
          as Map<String, dynamic>?;
  final listOptions = options == null
      ? null
      : (anime ? options['animeList'] : options['mangaList'])
            as Map<String, dynamic>?;
  final sectionOrder = listOptions?['sectionOrder'] as List?;

  final sorted = <String, List<Media>>{};
  for (final section in (sectionOrder ?? const []).cast<String>()) {
    if (unsorted.containsKey(section)) sorted[section] = unsorted[section]!;
  }
  unsorted.forEach((k, v) => sorted.putIfAbsent(k, () => v));

  final favourites = <Media>[];
  for (final body in args['favs'] as List) {
    final conn =
        ((anilistData(body as String)['User']
                    as Map<String, dynamic>?)?['favourites']
                as Map<String, dynamic>?)?[anime ? 'anime' : 'manga']
            as Map<String, dynamic>?;
    for (final edge
        in ((conn?['edges'] as List?) ?? const [])
            .cast<Map<String, dynamic>>()) {
      final node = edge['node'] as Map<String, dynamic>?;
      if (node != null) favourites.add(mapAnilistMedia(node)..isFav = true);
    }
  }
  for (final fav in favourites) {
    final match = all.firstWhereOrNull((m) => m.id == fav.id);
    if (match != null) fav.userProgress = match.userProgress;
  }
  if (favourites.isNotEmpty) sorted['Favourites'] = favourites;
  sorted['All'] = all;

  return _nonEmpty(sorted);
}

String _queryFavMedia(int userId, bool anime, int page) =>
    '''
{
  User(id: $userId) {
    favourites {
      ${anime ? 'anime' : 'manga'}(page: $page) {
        pageInfo { hasNextPage }
        edges { favouriteOrder node { $anilistMediaFragment } }
      }
    }
  }
}''';

String _queryUserLists(int userId, bool anime) =>
    '''
{
  MediaListCollection(userId: $userId, type: ${anime ? 'ANIME' : 'MANGA'}) {
    lists {
      name
      isCustomList
      entries {
        status progress private score(format: POINT_100) updatedAt
        media { $anilistMediaFragment }
      }
    }
    user {
      id
      mediaListOptions {
        rowOrder
        animeList { sectionOrder }
        mangaList { sectionOrder }
      }
    }
  }
}''';
