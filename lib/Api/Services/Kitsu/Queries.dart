import '../../../Utils/Lru.dart';
import 'dart:convert';
import 'dart:async';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/LibraryCache.dart';
import '../../../Core/Services/Api/LibrarySearch.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Core/Services/Model/Author.dart';
import '../../../Core/Services/Model/Calendar.dart';
import '../../../Core/Services/Model/Character.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/MediaListEntry.dart';
import '../../../Core/Services/Model/MediaReaction.dart';
import '../../../Core/Services/Model/Review.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/SearchResults.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import '../../../Logger.dart';
import '../../../Core/Services/Model/User.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Auth.dart';
import 'Client.dart';
import 'Data/Graph.dart';
import 'Data/Mapper.dart';
import 'Prefs.dart';

const kitsuPageSize = 20;

class KitsuSection {
  final String title;
  final String path;
  final Map<String, String> query;

  const KitsuSection(this.title, this.path, [this.query = const {}]);

  bool get trending => path.startsWith('/trending');
}

List<KitsuSection> kitsuSections({required bool anime}) => anime
    ? const [
        KitsuSection('Trending Now', '/trending/anime'),
        KitsuSection('Popular This Season', '/anime', {
          'season': 'now',
          'sort': '-userCount',
        }),
        KitsuSection('Upcoming', '/anime', {
          'filter[status]': 'upcoming',
          'sort': '-userCount',
        }),
        KitsuSection('Top Movies', '/anime', {
          'filter[subtype]': 'movie',
          'sort': 'ratingRank',
        }),
        KitsuSection('Top Rated Series', '/anime', {
          'filter[subtype]': 'TV',
          'sort': 'ratingRank',
        }),
        KitsuSection('Top ONA', '/anime', {
          'filter[subtype]': 'ONA',
          'sort': 'ratingRank',
        }),
        KitsuSection('Top OVA', '/anime', {
          'filter[subtype]': 'OVA',
          'sort': 'ratingRank',
        }),
        KitsuSection('Most Popular', '/anime', {'sort': 'popularityRank'}),
        KitsuSection('Most Favourite', '/anime', {'sort': '-favoritesCount'}),
      ]
    : const [
        KitsuSection('Trending Now', '/trending/manga'),
        KitsuSection('Top Manga', '/manga', {
          'filter[subtype]': 'manga',
          'sort': 'ratingRank',
        }),
        KitsuSection('Top Manhwa', '/manga', {
          'filter[subtype]': 'manhwa',
          'sort': 'ratingRank',
        }),
        KitsuSection('Top Manhua', '/manga', {
          'filter[subtype]': 'manhua',
          'sort': 'ratingRank',
        }),
        KitsuSection('Top Novels', '/manga', {
          'filter[subtype]': 'novel',
          'sort': 'ratingRank',
        }),
        KitsuSection('Top One-shots', '/manga', {
          'filter[subtype]': 'oneshot',
          'sort': 'ratingRank',
        }),
        KitsuSection('Most Popular', '/manga', {'sort': 'popularityRank'}),
        KitsuSection('Most Favourite', '/manga', {'sort': '-favoritesCount'}),
      ];

const _commonFields =
    'canonicalTitle,titles,abbreviatedTitles,slug,posterImage,coverImage,'
    'averageRating,subtype,status,startDate,endDate,ageRating,userCount,'
    'favoritesCount';

String _mediaFields(bool anime) => anime
    ? '$_commonFields,nsfw,episodeCount,episodeLength'
    : '$_commonFields,chapterCount,volumeCount';

const _detailInclude = {
  true:
      'categories,mediaRelationships.destination,animeProductions.producer,'
      'streamingLinks.streamer',
  false: 'categories,mediaRelationships.destination',
};

const _fallbackGenres = {
  'Action': 'action',
  'Adventure': 'adventure',
  'Comedy': 'comedy',
  'Drama': 'drama',
  'Ecchi': 'ecchi',
  'Fantasy': 'fantasy',
  'Harem': 'harem',
  'Historical': 'historical',
  'Magic': 'magic',
  'Music': 'music',
  'Mystery': 'mystery',
  'Romance': 'romance',
  'School Life': 'school-life',
  'Science Fiction': 'science-fiction',
  'Shounen': 'shounen',
  'Slice of Life': 'slice-of-life',
  'Sports': 'sports',
  'Supernatural': 'supernatural',
};

const _genreKey = 'kitsu_categories';

Map<String, String> kitsuGenreSlugs() {
  final saved = loadCustomData<Map<String, dynamic>>(_genreKey);
  if (saved == null || saved.isEmpty) return _fallbackGenres;
  return {for (final e in saved.entries) e.key: '${e.value}'};
}

List<String> kitsuGenres() => kitsuGenreSlugs().keys.toList();

const _sorts = {
  'SCORE_DESC': '-averageRating',
  'POPULARITY_DESC': '-userCount',
  'START_DATE_DESC': '-startDate',
  'TITLE_ROMAJI': 'slug',
  'FAVOURITES_DESC': '-favoritesCount',
};

Map<String, String> get kitsuSearchSorts => {
  'SCORE_DESC': getString.sortTopRated,
  'POPULARITY_DESC': getString.sortMostPopular,
  'START_DATE_DESC': getString.sortNewest,
  'TITLE_ROMAJI': getString.sortAz,
  'FAVOURITES_DESC': getString.sortMostFavourited,
};

const _seasons = ['winter', 'spring', 'summer', 'fall'];

(String, int) _season(int offset) {
  final now = DateTime.now();
  final index = now.year * 4 + (now.month % 12) ~/ 3 + offset;
  return (_seasons[index % 4], index ~/ 4);
}

String _subtype(String format, bool anime) {
  final key = format.toLowerCase().replaceAll(RegExp(r'[\s_]'), '');
  if (!anime) return key;
  return switch (key) {
    'tv' => 'TV',
    'ona' => 'ONA',
    'ova' => 'OVA',
    _ => key,
  };
}

String? _searchStatus(String status) =>
    switch (status.toUpperCase().replaceAll(' ', '_')) {
      'RELEASING' => 'current',
      'FINISHED' => 'finished',
      'NOT_YET_RELEASED' => 'upcoming,unreleased',
      _ => null,
    };

class KitsuQueries extends Queries {
  final KitsuClient client;
  final int? Function() userId;
  final Future<bool> Function() refreshUser;

  KitsuQueries(this.client, {required this.userId, required this.refreshUser});

  String _kind(bool anime) => anime ? 'anime' : 'manga';

  Map<String, String> _fields(bool anime) => {
    'fields[${_kind(anime)}]': _mediaFields(anime),
  };

  List<Media> _media(JsonApi doc) {
    final seen = <String>{};
    final hide = KitsuPref.hideNsfw.value;
    return [
      for (final n in doc.data)
        if (seen.add('${n['id']}'))
          if (mapKitsuMedia(n) case final m when !(hide && m.isAdult)) m,
    ];
  }

  Future<List<Media>> _withList(List<Media> items, bool anime) async {
    if (!client.hasToken || items.isEmpty) return items;
    try {
      final mine = {for (final m in await library(anime: anime)) m.id: m};
      for (final m in items) {
        final entry = mine[m.id];
        if (entry != null) m.takeListEntry(entry);
      }
    } catch (e, st) {
      logError('Queries', e, st);
    }
    return items;
  }

  Future<List<Media>> sectionPage(
    KitsuSection section,
    bool anime, {
    int page = 1,
  }) async {
    if (section.trending) {
      if (page > 1) return const [];
      final doc = JsonApi(await client.get(section.path));
      return _withList(_media(doc), anime);
    }
    final query = {...section.query};
    if (query.remove('season') != null) {
      final (season, year) = _season(0);
      query['filter[season]'] = season;
      query['filter[seasonYear]'] = '$year';
    }
    final doc = JsonApi(
      await client.get(
        section.path,
        query: {
          ..._fields(anime),
          ...query,
          'page[limit]': '$kitsuPageSize',
          'page[offset]': '${(page - 1) * kitsuPageSize}',
        },
      ),
    );
    return _withList(_media(doc), anime);
  }

  Future<List<Media>> seasonPicks(int offset) async {
    final (season, year) = _season(offset);
    final doc = JsonApi(
      await client.get(
        '/anime',
        query: {
          ..._fields(true),
          'filter[season]': season,
          'filter[seasonYear]': '$year',
          'sort': '-userCount',
          'page[limit]': '12',
        },
      ),
    );
    return _withList(_media(doc), true);
  }

  Future<List<Media>> topPicks(String subtype) async {
    final doc = JsonApi(
      await client.get(
        '/manga',
        query: {
          ..._fields(false),
          'filter[subtype]': subtype,
          'sort': 'ratingRank',
          'page[limit]': '12',
        },
      ),
    );
    return _withList(_media(doc), false);
  }

  @override
  Future<bool> getUserData() async => refreshUser();

  late final _libraries = {
    true: LibraryCache<List<Media>>(load: (_) => _loadLibrary(true)),
    false: LibraryCache<List<Media>>(load: (_) => _loadLibrary(false)),
  };

  Future<List<Media>> library({required bool anime}) =>
      client.hasToken && userId() != null
      ? _libraries[anime]!.get()
      : Future.value(const []);

  void invalidateLibrary() {
    for (final cache in _libraries.values) {
      cache.expire();
    }
  }

  void clearLibrary() {
    for (final cache in _libraries.values) {
      cache.clear();
    }
  }

  Future<List<Media>> _loadLibrary(bool anime) async {
    final id = userId();
    if (id == null) return const [];
    final all = <Media>[];
    String? next;
    var first = true;
    while (first || next != null) {
      first = false;
      final (page, link) = await client.getParsed(
        next ?? '/library-entries',
        _parseLibraryPage,
        query: next == null
            ? {
                'filter[userId]': '$id',
                'filter[kind]': _kind(anime),
                'include': 'media',
                'fields[${_kind(anime)}]': _mediaFields(anime),
                'page[limit]': '500',
                'sort': '-progressedAt',
              }
            : null,
      );
      all.addAll(page);
      next = link;
    }
    return all;
  }

  Future<List<(Media, Map<String, int>)>> syncLibrary({
    required bool anime,
  }) async {
    final id = userId();
    if (id == null) return const [];
    final out = <(Media, Map<String, int>)>[];
    String? next;
    var first = true;
    while (first || next != null) {
      first = false;
      final (page, link) = await client.getParsed(
        next ?? '/library-entries',
        _parseSyncPage,
        query: next == null
            ? {
                'filter[userId]': '$id',
                'filter[kind]': _kind(anime),
                'include': 'media,media.mappings',
                'fields[${_kind(anime)}]':
                    'slug,canonicalTitle,titles,posterImage,mappings,${anime ? 'episodeCount' : 'chapterCount'}',
                'fields[mappings]': 'externalSite,externalId',
                'page[limit]': '500',
              }
            : null,
      );
      out.addAll(page);
      next = link;
    }
    logger(
      'Kitsu sync library: ${out.length} entries, ${out.where((e) => e.$2.containsKey(SyncKey.mal)).length} with a MAL id',
    );
    return out;
  }

  Future<int> consumed(bool anime) async {
    final id = userId();
    if (id == null) return 0;
    try {
      final doc = JsonApi(await client.get('/users/$id/stats'));
      for (final stat in doc.data) {
        final a = attrs(stat);
        if (a['kind'] == '${_kind(anime)}-amount-consumed') {
          return ((a['statsData'] as Map?)?['units'] as num?)?.toInt() ?? 0;
        }
      }
    } catch (e, st) {
      logError('Queries', e, st);
    }
    return 0;
  }

  Future<Media?> _fetch(bool anime, int id) async {
    final doc = JsonApi(
      await client.get(
        '/${_kind(anime)}/$id',
        query: {'include': _detailInclude[anime]!},
      ),
    );
    final node = doc.data.firstOrNull;
    return node == null ? null : mapKitsuMedia(node, doc: doc);
  }

  Future<void> _overlayEntry(Media media, bool anime, int id) async {
    final user = userId();
    if (!client.hasToken || user == null) return;
    try {
      final doc = JsonApi(
        await client.get(
          '/library-entries',
          query: {
            'filter[userId]': '$user',
            'filter[${_kind(anime)}Id]': '$id',
            'page[limit]': '1',
          },
        ),
      );
      final entry = doc.data.firstOrNull;
      if (entry != null) applyKitsuEntry(media, entry);
    } catch (e, st) {
      logError('Queries', e, st);
    }
  }

  Future<Media?> _bySlug(String id) async {
    final parts = id.split('/');
    if (parts.length != 2) return null;
    final anime = parts[0] != 'manga';
    final doc = JsonApi(
      await client.get(
        '/${_kind(anime)}',
        query: {
          'filter[slug]': parts[1],
          'include': _detailInclude[anime]!,
          'page[limit]': '1',
        },
      ),
    );
    final node = doc.data.firstOrNull;
    if (node == null) return null;
    final media = mapKitsuMedia(node, doc: doc);
    await _overlayEntry(media, anime, int.parse('${node['id']}'));
    return media;
  }

  @override
  Future<Media?> getMedia(String id) async {
    final ref = parseKitsuMediaId(id);
    if (ref == null) return _bySlug(id);
    final media = await _fetch(ref.$1, ref.$2);
    if (media != null) await _overlayEntry(media, ref.$1, ref.$2);
    return media;
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    final ref = parseKitsuMediaId(media.id);
    if (ref == null) return media;
    final full = await _fetch(ref.$1, ref.$2);
    if (full == null) return media;
    await _overlayEntry(full, ref.$1, ref.$2);
    return full..cameFromContinue = media.cameFromContinue;
  }

  Future<KitsuGraphDetail?> graphDetail(String mediaId) async {
    final ref = parseKitsuMediaId(mediaId);
    if (ref == null || !mediaId.contains('/')) return null;
    final (anime, id) = ref;
    try {
      final body = await client.graphql(
        kitsuDetailQuery(anime, withEntry: client.hasToken && userId() != null),
        {'id': '$id'},
      );
      return parseKitsuGraphDetail(body, anime: anime);
    } catch (e, st) {
      logError('Queries', e, st);
      return null;
    }
  }

  Future<List<Character>> characters(Media media) async {
    final ref = parseKitsuMediaId(media.id);
    if (ref == null) return const [];
    final (anime, id) = ref;
    try {
      final doc = JsonApi(
        await client.get(
          '/${_kind(anime)}/$id/${_kind(anime)}-characters',
          query: {
            'include': anime ? 'character,castings.person' : 'character',
            'sort': 'role',
            'page[limit]': '20',
          },
        ),
      );
      return mapKitsuCast(doc);
    } catch (e, st) {
      logError('Queries', e, st);
      return const [];
    }
  }

  Future<List<Author>> staff(Media media) async {
    final ref = parseKitsuMediaId(media.id);
    if (ref == null) return const [];
    final (anime, id) = ref;
    try {
      final doc = JsonApi(
        await client.get(
          '/${_kind(anime)}/$id/${_kind(anime)}-staff',
          query: {'include': 'person', 'page[limit]': '20'},
        ),
      );
      return mapKitsuStaff(doc);
    } catch (e, st) {
      logError('Queries', e, st);
      return const [];
    }
  }

  Future<JsonApi?> entity(String path, [Map<String, String>? query]) async {
    try {
      return JsonApi(await client.get(path, query: query));
    } catch (e, st) {
      logError('Queries', e, st);
      return null;
    }
  }

  final _reactionCache = Lru<String, List<MediaReaction>>(40);
  final _voteIds = Lru<String, String>(300);

  Future<List<MediaReaction>> reactions(String mediaId) async {
    final ref = parseKitsuMediaId(mediaId);
    if (ref == null) return const [];
    final cached = _reactionCache[mediaId];
    if (cached != null) return cached;
    try {
      final kind = _kind(ref.$1);
      final doc = JsonApi(
        await client.get(
          '/media-reactions',
          query: {
            'filter[${kind}Id]': '${ref.$2}',
            'include': 'user',
            'sort': '-upVotesCount',
            'page[limit]': '10',
          },
        ),
      );
      final list = [for (final n in doc.data) ?mapKitsuReaction(doc, n)];
      final me = userId();
      if (me != null) {
        for (final r in list) {
          r.mine = r.user?.id == me;
        }
        await _loadVotes(list, me);
      }
      return _reactionCache[mediaId] = list;
    } catch (e, st) {
      logError('Queries', e, st);
      return const [];
    }
  }

  Future<void> _loadVotes(List<MediaReaction> list, int me) async {
    if (list.isEmpty) return;
    try {
      final doc = JsonApi(
        await client.get(
          '/media-reaction-votes',
          query: {
            'filter[mediaReactionId]': [for (final r in list) r.id].join(','),
            'filter[userId]': '$me',
            'page[limit]': '20',
          },
        ),
      );
      for (final v in doc.data) {
        final target = (v['relationships'] as Map?)?['mediaReaction'];
        final id = ((target as Map?)?['data'] as Map?)?['id'];
        if (id == null) continue;
        _voteIds['$id'] = '${v['id']}';
        for (final r in list) {
          if (r.id == '$id') r.voted = true;
        }
      }
    } catch (e, st) {
      logError('Queries', e, st);
    }
  }

  Future<bool?> voteReaction(MediaReaction reaction) async {
    final me = userId();
    if (me == null) return null;
    try {
      if (reaction.voted) {
        var vote = _voteIds[reaction.id];
        if (vote == null) {
          final res = JsonApi(
            await client.get(
              '/media-reaction-votes',
              query: {
                'filter[mediaReactionId]': reaction.id,
                'filter[userId]': '$me',
                'page[limit]': '1',
              },
            ),
          ).data;
          if (res.isNotEmpty) vote = '${res.first['id']}';
        }
        if (vote != null) await client.delete('/media-reaction-votes/$vote');
        _voteIds.remove(reaction.id);
        return false;
      }
      final res = await client.post('/media-reaction-votes', {
        'data': {
          'type': 'mediaReactionVotes',
          'relationships': {
            'user': {
              'data': {'type': 'users', 'id': '$me'},
            },
            'mediaReaction': {
              'data': {'type': 'mediaReactions', 'id': reaction.id},
            },
          },
        },
      });
      final id = (res['data'] as Map?)?['id'];
      if (id != null) _voteIds[reaction.id] = '$id';
      return true;
    } catch (e, st) {
      logError('Queries', e, st);
      return null;
    }
  }

  Future<MediaReaction?> postReaction(Media media, String text) async {
    final ref = parseKitsuMediaId(media.id);
    final me = userId();
    if (ref == null || me == null) return null;
    final kind = _kind(ref.$1);
    try {
      final entries = JsonApi(
        await client.get(
          '/library-entries',
          query: {
            'filter[userId]': '$me',
            'filter[${kind}Id]': '${ref.$2}',
            'fields[libraryEntries]': 'status',
            'page[limit]': '1',
          },
        ),
      ).data;
      if (entries.isEmpty) {
        snackString(getString.reactionsNeedEntry);
        return null;
      }
      final res = await client.post('/media-reactions', {
        'data': {
          'type': 'mediaReactions',
          'attributes': {'reaction': text},
          'relationships': {
            'media': {
              'data': {'type': kind, 'id': '${ref.$2}'},
            },
            'libraryEntry': {
              'data': {
                'type': 'libraryEntries',
                'id': '${entries.first['id']}',
              },
            },
            'user': {
              'data': {'type': 'users', 'id': '$me'},
            },
          },
        },
      });
      final id = (res['data'] as Map?)?['id'];
      final mine = MediaReaction(
        id: '${id ?? DateTime.now().millisecondsSinceEpoch}',
        text: text,
        mine: true,
        createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        user: kitsuAuth.user.value == null
            ? null
            : User(
                id: me,
                name: kitsuAuth.user.value!.name,
                pfp: kitsuAuth.user.value!.avatar,
              ),
      );
      _reactionCache[media.id] = [mine, ...?_reactionCache[media.id]];
      return mine;
    } on KitsuException catch (e) {
      snackString(getString.serviceError(getString.kitsu, e.message));
      return null;
    }
  }

  @override
  Future<List<Review>> getReviews(String mediaId, {int page = 1}) async {
    final ref = parseKitsuMediaId(mediaId);
    if (ref == null) return const [];
    try {
      final doc = JsonApi(
        await client.get(
          '/${_kind(ref.$1)}/${ref.$2}/reviews',
          query: {
            'include': 'user',
            'sort': '-likesCount',
            'page[limit]': '10',
            'page[offset]': '${(page - 1) * 10}',
          },
        ),
      );
      return [for (final n in doc.data) ?mapKitsuReview(doc, n, mediaId)];
    } catch (e, st) {
      logError('Queries', e, st);
      return const [];
    }
  }

  @override
  List<SectionJob> homeJobs() {
    if (!client.hasToken) return const [];
    final hide = KitsuPref.hideNsfw.value;
    Future<List<Media>> pick(bool anime, Set<String> statuses) async => [
      for (final m in await library(anime: anime))
        if (statuses.contains(m.userStatus) && !(hide && m.isAdult)) m,
    ];
    final jobs = <(String, SectionJob)>[
      (
        'Continue Watching',
        () async => {
          'Continue Watching': await pick(true, {'CURRENT', 'REPEATING'}),
        },
      ),
      (
        'Planned Anime',
        () async => {
          'Planned Anime': await pick(true, {'PLANNING'}),
        },
      ),
      (
        'Continue Reading',
        () async => {
          'Continue Reading': await pick(false, {'CURRENT', 'REPEATING'}),
        },
      ),
      (
        'Planned Manga',
        () async => {
          'Planned Manga': await pick(false, {'PLANNING'}),
        },
      ),
      for (final (title, status) in const [
        ('On Hold', 'PAUSED'),
        ('Dropped', 'DROPPED'),
      ])
        (
          title,
          () async {
            final items = [
              ...await pick(true, {status}),
              ...await pick(false, {status}),
            ];
            return items.isEmpty ? <String, List<Media>>{} : {title: items};
          },
        ),
      if (hide)
        (
          'Hidden Media',
          () async {
            final items = [
              for (final anime in [true, false])
                for (final m in await library(anime: anime))
                  if (m.isAdult) m,
            ];
            return items.isEmpty
                ? <String, List<Media>>{}
                : {'Hidden Media': items};
          },
        ),
    ];
    return [
      for (final j in applyLayout(
        jobs,
        (j) => j.$1,
        KitsuPref.homeLayout.value,
      ))
        j.$2,
    ];
  }

  @override
  List<SectionJob> browseJobs({required bool anime}) => [
    for (final section in applyLayout(
      kitsuSections(anime: anime),
      (s) => s.title,
      (anime ? KitsuPref.animeLayout : KitsuPref.mangaLayout).value,
    ))
      () async => {section.title: await sectionPage(section, anime)},
  ];

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) async {
    final all = await library(anime: anime);
    return groupByStatus(all, {
      'CURRENT': anime ? getString.watching : getString.reading,
      'PLANNING': getString.planning,
      'COMPLETED': getString.completed,
      'PAUSED': getString.paused,
      'DROPPED': getString.dropped,
      'REPEATING': anime ? getString.rewatching : getString.rereading,
    });
  }

  Stream<List<CalendarEntry>> schedule() async* {
    final now = DateTime.now();
    final until = now.add(const Duration(days: 8));
    final out = <CalendarEntry>[];
    final seen = <String>{};
    for (var page = 0; page < 6; page++) {
      final doc = JsonApi(
        await client.get(
          '/anime',
          query: {
            ..._fields(true),
            'fields[anime]': '${_mediaFields(true)},nextRelease',
            'filter[status]': 'current',
            'sort': '-userCount',
            'page[limit]': '$kitsuPageSize',
            'page[offset]': '${page * kitsuPageSize}',
          },
        ),
      );
      for (final node in doc.data) {
        final at = DateTime.tryParse('${attrs(node)['nextRelease']}');
        if (at == null || at.isBefore(now) || at.isAfter(until)) continue;
        if (!seen.add('${node['id']}')) continue;
        out.add(
          CalendarEntry(media: mapKitsuMedia(node), airingAt: at.toLocal()),
        );
      }
      yield [...out]..sort((a, b) => a.airingAt.compareTo(b.airingAt));
      if (doc.next == null) break;
    }
  }

  @override
  Future<List<Media>> getCalendarData() async => const [];

  @override
  Future<bool> getGenresAndTags() async {
    if (loadCustomData<Map<String, dynamic>>(_genreKey) != null) return true;
    try {
      final slugs = <String, String>{};
      for (var page = 0; page < 3; page++) {
        final doc = JsonApi(
          await client.get(
            '/categories',
            query: {
              'fields[categories]': 'title,slug,nsfw',
              'sort': '-totalMediaCount',
              'page[limit]': '20',
              'page[offset]': '${page * 20}',
            },
          ),
        );
        for (final c in doc.data) {
          final a = attrs(c);
          if (a['nsfw'] == true) continue;
          slugs['${a['title']}'] = '${a['slug']}';
        }
      }
      if (slugs.isNotEmpty) saveCustomData(_genreKey, slugs);
    } catch (e, st) {
      logError('Queries', e, st);
    }
    return true;
  }

  @override
  Future<SearchResults?> search(SearchResults? results) async {
    if (results == null) return null;
    final anime =
        results.type == SearchType.ANIME ||
        results.type == SearchType.MOVIES ||
        results.type == SearchType.SERIES;
    final manga =
        results.type == SearchType.MANGA || results.type == SearchType.NOVEL;
    if (results.type == SearchType.CHARACTER ||
        results.type == SearchType.USER) {
      return _searchEntities(results);
    }
    if (!anime && !manga) return results..results = const [];
    if (results.onList == true) {
      return searchLibrary(await library(anime: anime), results);
    }
    final slugs = kitsuGenreSlugs();
    final genres = [
      for (final g in results.genres ?? const <String>[])
        if (slugs[g] != null) slugs[g]!,
    ];
    final text = results.search?.trim() ?? '';
    final sort = text.isNotEmpty && results.sort == 'TITLE_ROMAJI'
        ? null
        : _sorts[results.sort];
    final status = results.status == null
        ? null
        : _searchStatus(results.status!);
    final perPage = (results.perPage ?? kitsuPageSize).clamp(1, kitsuPageSize);
    final page = results.page ?? 1;
    final doc = JsonApi(
      await client.get(
        '/${_kind(anime)}',
        query: {
          ..._fields(anime),
          if (text.isNotEmpty) 'filter[text]': text,
          'sort': ?sort,
          if (genres.isNotEmpty) 'filter[categories]': genres.join(','),
          if (results.format != null)
            'filter[subtype]': _subtype(results.format!, anime)
          else if (results.type == SearchType.NOVEL)
            'filter[subtype]': 'novel',
          if (anime && results.season != null)
            'filter[season]': results.season!.toLowerCase(),
          'filter[status]': ?status,
          if (results.seasonYear != null)
            anime ? 'filter[seasonYear]' : 'filter[year]':
                '${results.seasonYear}',
          'page[limit]': '$perPage',
          'page[offset]': '${(page - 1) * perPage}',
        },
      ),
    );
    final items = _media(doc);
    return results
      ..results = items
      ..hasNextPage = doc.next != null;
  }
}

extension on KitsuQueries {
  Future<SearchResults> _searchEntities(SearchResults results) async {
    final users = results.type == SearchType.USER;
    final term = results.search?.trim() ?? '';
    if (term.isEmpty) {
      return results
        ..characters = const []
        ..users = const []
        ..hasNextPage = false;
    }
    final perPage = (results.perPage ?? 20).clamp(1, 20);
    final page = results.page ?? 1;
    final doc = JsonApi(
      await client.get(
        users ? '/users' : '/characters',
        query: {
          'filter[name]': term,
          'page[limit]': '$perPage',
          'page[offset]': '${(page - 1) * perPage}',
        },
      ),
    );
    if (users) {
      results.users = [
        for (final node in doc.data)
          User(
            id: int.tryParse('${node['id']}') ?? 0,
            name: attrs(node)['name'] as String? ?? '',
            pfp: kitsuImage(attrs(node)['avatar'], const [
              'medium',
              'large',
              'small',
            ]),
            banner: kitsuImage(attrs(node)['coverImage'], const [
              'large',
              'original',
              'small',
            ]),
          ),
      ];
    } else {
      results.characters = [
        for (final node in doc.data) mapKitsuCharacter(node),
      ];
    }
    return results..hasNextPage = doc.next != null;
  }
}

(List<Media>, String?) _parseLibraryPage(String body) {
  final doc = JsonApi(jsonDecode(body) as Map<String, dynamic>);
  return (mapKitsuLibrary(doc), doc.next);
}

(List<(Media, Map<String, int>)>, String?) _parseSyncPage(String body) {
  final doc = JsonApi(jsonDecode(body) as Map<String, dynamic>);
  final out = <(Media, Map<String, int>)>[];
  for (final entry in doc.data) {
    final node = doc.one(entry, 'media');
    if (node == null) continue;
    final media = mapKitsuMedia(node);
    applyKitsuEntry(media, entry);
    final foreign = <String, int>{};
    for (final m in doc.many(node, 'mappings')) {
      final a = attrs(m);
      final n = int.tryParse('${a['externalId']}');
      if (n == null) continue;
      switch (a['externalSite']) {
        case 'myanimelist/anime' || 'myanimelist/manga':
          foreign[SyncKey.mal] = n;
        case 'anilist/anime' || 'anilist/manga':
          foreign[SyncKey.anilist] = n;
      }
    }
    out.add((media, foreign));
  }
  return (out, doc.next);
}
