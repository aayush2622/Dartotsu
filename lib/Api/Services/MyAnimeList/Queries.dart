import 'dart:async';

import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/Model/Calendar.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Model/Author.dart';
import '../../../Core/Services/Model/Character.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/Review.dart';
import '../../../Model/SearchResults.dart';
import 'Client.dart';
import 'Data/Mapper.dart';

class MalSection {
  final String title;
  final String path;
  final Map<String, String> query;

  const MalSection(this.title, this.path, [this.query = const {}]);
}

List<MalSection> malSections({required bool anime}) => anime
    ? const [
        MalSection('Trending Now', '/top/anime', {'filter': 'airing'}),
        MalSection('Popular This Season', '/seasons/now', {
          'order_by': 'members',
          'sort': 'desc',
        }),
        MalSection('Upcoming', '/seasons/upcoming', {
          'order_by': 'members',
          'sort': 'desc',
        }),
        MalSection('Top Movies', '/top/anime', {'type': 'movie'}),
        MalSection('Top Rated Series', '/top/anime', {'type': 'tv'}),
        MalSection('Most Popular', '/top/anime', {'filter': 'bypopularity'}),
        MalSection('Most Favourite', '/top/anime', {'filter': 'favorite'}),
      ]
    : const [
        MalSection('Trending Now', '/top/manga', {'filter': 'publishing'}),
        MalSection('Top Manga', '/top/manga', {'type': 'manga'}),
        MalSection('Top Manhwa', '/top/manga', {'type': 'manhwa'}),
        MalSection('Top Novels', '/top/manga', {'type': 'novel'}),
        MalSection('Most Popular', '/top/manga', {'filter': 'bypopularity'}),
        MalSection('Most Favourite', '/top/manga', {'filter': 'favorite'}),
      ];

const _listFields =
    'list_status,num_episodes,num_chapters,mean,media_type,status,genres,nsfw,alternative_titles,start_season';

const _detailFields =
    'id,title,main_picture,alternative_titles,start_date,end_date,synopsis,mean,'
    'popularity,num_list_users,nsfw,genres,my_list_status,num_episodes,status,'
    'start_season,source,average_episode_duration,studios,related_anime,'
    'related_manga,recommendations,media_type,num_chapters,authors{first_name,last_name}';

const _fallbackGenres = {
  'Action': 1,
  'Adventure': 2,
  'Avant Garde': 5,
  'Award Winning': 46,
  'Boys Love': 28,
  'Comedy': 4,
  'Drama': 8,
  'Fantasy': 10,
  'Girls Love': 26,
  'Gourmet': 47,
  'Horror': 14,
  'Mystery': 7,
  'Romance': 22,
  'Sci-Fi': 24,
  'Slice of Life': 36,
  'Sports': 30,
  'Supernatural': 37,
  'Ecchi': 9,
};

String _genreKey(bool anime) => 'mal_genres_${anime ? 'anime' : 'manga'}';

Map<String, int> malGenreIds({required bool anime}) {
  final saved = loadCustomData<Map<String, dynamic>>(_genreKey(anime));
  if (saved == null || saved.isEmpty) return _fallbackGenres;
  return {for (final e in saved.entries) e.key: (e.value as num).toInt()};
}

List<String> malGenres({required bool anime}) =>
    malGenreIds(anime: anime).keys.toList();

const _sorts = {
  'SCORE_DESC': ('score', 'desc'),
  'POPULARITY_DESC': ('members', 'desc'),
  'START_DATE_DESC': ('start_date', 'desc'),
  'TITLE_ROMAJI': ('title', 'asc'),
  'FAVOURITES_DESC': ('favorites', 'desc'),
};

const malSearchSorts = {
  'SCORE_DESC': 'Top rated',
  'POPULARITY_DESC': 'Most popular',
  'START_DATE_DESC': 'Newest',
  'TITLE_ROMAJI': 'A–Z',
  'FAVOURITES_DESC': 'Most favourited',
};

class MalQueries extends Queries {
  final MalClient client;
  final TenraiClient tenrai;
  final Future<bool> Function() refreshUser;

  MalQueries(this.client, this.tenrai, {required this.refreshUser});

  Future<List<Media>> sectionPage(
    MalSection section,
    bool anime, {
    int page = 1,
  }) async {
    final data = await tenrai.get(
      section.path,
      query: {...section.query, 'page': '$page', 'limit': '25', 'sfw': 'true'},
    );
    return _tenraiMedia(data, anime);
  }

  List<Media> _tenraiMedia(Map<String, dynamic> data, bool anime) {
    final seen = <Object?>{};
    return [
      for (final n in (data['data'] as List?) ?? const [])
        if (seen.add((n as Map)['mal_id']))
          mapTenraiMedia(n.cast<String, dynamic>(), anime: anime),
    ];
  }

  Future<Map<String, dynamic>?> entity(String path) async {
    try {
      final data = await tenrai.get(path, cache: const Duration(minutes: 30));
      return (data['data'] as Map?)?.cast<String, dynamic>();
    } catch (_) {
      return null;
    }
  }

  Future<List<Media>> producerAnime(String id, int page) async {
    final data = await tenrai.get(
      '/anime',
      query: {
        'producers': id,
        'order_by': 'members',
        'sort': 'desc',
        'page': '$page',
        'limit': '25',
        'sfw': 'true',
      },
    );
    return _tenraiMedia(data, true);
  }

  @override
  Future<bool> getUserData() async => refreshUser();

  Future<int> chaptersRead() async {
    try {
      var total = 0;
      String? next;
      var first = true;
      while (first || next != null) {
        first = false;
        final data = await client.get(
          next ?? '/users/@me/mangalist',
          query: next == null
              ? {'limit': '1000', 'fields': 'list_status', 'nsfw': 'true'}
              : null,
        );
        for (final e in (data['data'] as List?) ?? const []) {
          total +=
              (((e as Map)['list_status'] as Map?)?['num_chapters_read']
                      as num?)
                  ?.toInt() ??
              0;
        }
        next = (data['paging'] as Map?)?['next'] as String?;
      }
      return total;
    } catch (_) {
      return 0;
    }
  }

  @override
  Future<Media?> getMedia(String id) async {
    final ref = parseMalMediaId(id);
    if (ref == null) return null;
    final node = await client.get(
      '/${ref.$1 ? 'anime' : 'manga'}/${ref.$2}',
      query: {'fields': _detailFields},
    );
    return mapMalMedia(node, anime: ref.$1);
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    final ref = parseMalMediaId(media.id);
    if (ref == null) return media;
    final (anime, id) = ref;
    final kind = anime ? 'anime' : 'manga';
    final results = await Future.wait([
      client.get('/$kind/$id', query: {'fields': _detailFields}),
      _characters(kind, id),
      getReviews(media.id),
      anime ? _staff(id) : Future.value(const <Author>[]),
    ]);
    final full = mapMalMedia(results[0] as Map<String, dynamic>, anime: anime);
    full
      ..characters = results[1] as List<Character>
      ..staff = results[3] as List<Author>
      ..review = (results[2] as List<Review>).take(3).toList()
      ..cameFromContinue = media.cameFromContinue;
    return full;
  }

  Future<List<Author>> _staff(int id) async {
    try {
      final data = await tenrai.get('/anime/$id/staff');
      const priority = [
        'Director',
        'Original Creator',
        'Series Composition',
        'Character Design',
        'Music',
        'Chief Animation Director',
        'Sound Director',
      ];
      int rank(Map e) {
        final positions = ((e['positions'] as List?) ?? const [])
            .cast<String>();
        final hit = priority.indexWhere(positions.contains);
        return hit < 0 ? priority.length : hit;
      }

      final entries = [
        for (final e in (data['data'] as List?) ?? const []) (e as Map),
      ]..sort((a, b) => rank(a).compareTo(rank(b)));
      return [
        for (final e in entries.take(20))
          mapTenraiPerson(
            (e['person'] as Map).cast<String, dynamic>(),
            role: ((e['positions'] as List?) ?? const []).join(', '),
          ),
      ];
    } catch (_) {
      return const [];
    }
  }

  Future<List<Character>> _characters(String kind, int id) async {
    try {
      final data = await tenrai.get('/$kind/$id/characters');
      return [
        for (final e in ((data['data'] as List?) ?? const []).take(25))
          mapTenraiCharacter((e as Map).cast<String, dynamic>()),
      ];
    } catch (_) {
      return const [];
    }
  }

  @override
  Future<List<Review>> getReviews(String mediaId, {int page = 1}) async {
    final ref = parseMalMediaId(mediaId);
    if (ref == null) return const [];
    try {
      final data = await tenrai.get(
        '/${ref.$1 ? 'anime' : 'manga'}/${ref.$2}/reviews',
        query: {
          'page': '$page',
          'sort': 'most_helpful',
          'spoilers': 'false',
          'preliminary': 'false',
        },
      );
      return [
        for (final r in (data['data'] as List?) ?? const [])
          mapTenraiReview((r as Map).cast<String, dynamic>(), mediaId: mediaId),
      ];
    } catch (_) {
      return const [];
    }
  }

  @override
  List<SectionJob> homeJobs() {
    if (client.hasToken == false) return const [];
    return [
      () async => {
        'Continue Watching': await _statusList(anime: true, status: 'watching'),
      },
      () async => {
        'Planned Anime': await _statusList(
          anime: true,
          status: 'plan_to_watch',
        ),
      },
      () async => {
        'Continue Reading': await _statusList(anime: false, status: 'reading'),
      },
      () async => {
        'Planned Manga': await _statusList(
          anime: false,
          status: 'plan_to_read',
        ),
      },
    ];
  }

  Future<List<Media>> _statusList({
    required bool anime,
    required String status,
  }) async {
    final data = await client.get(
      '/users/@me/${anime ? 'animelist' : 'mangalist'}',
      query: {
        'status': status,
        'sort': 'list_updated_at',
        'limit': '100',
        'fields': _listFields,
        'nsfw': 'true',
      },
    );
    return _entries(data, anime);
  }

  List<Media> _entries(Map<String, dynamic> data, bool anime) => [
    for (final e in (data['data'] as List?) ?? const [])
      if ((e as Map)['node'] is Map)
        mapMalMedia({
          ...(e['node'] as Map).cast<String, dynamic>(),
          'my_list_status': e['list_status'],
        }, anime: anime),
  ];

  @override
  List<SectionJob> browseJobs({required bool anime}) => [
    for (final section in malSections(anime: anime))
      () async => {section.title: await sectionPage(section, anime)},
  ];

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) async {
    if (client.hasToken == false) return {};
    final all = <Media>[];
    String? next;
    var first = true;
    while (first || next != null) {
      first = false;
      final data = await client.get(
        next ?? '/users/@me/${anime ? 'animelist' : 'mangalist'}',
        query: next == null
            ? {
                'sort': 'list_updated_at',
                'limit': '1000',
                'fields': _listFields,
                'nsfw': 'true',
              }
            : null,
      );
      all.addAll(_entries(data, anime));
      next = (data['paging'] as Map?)?['next'] as String?;
    }
    final names = {
      'CURRENT': anime ? 'Watching' : 'Reading',
      'PLANNING': 'Planning',
      'COMPLETED': 'Completed',
      'PAUSED': 'Paused',
      'DROPPED': 'Dropped',
      'REPEATING': anime ? 'Rewatching' : 'Rereading',
    };
    final out = <String, List<Media>>{};
    for (final entry in names.entries) {
      final items = [
        for (final m in all)
          if (m.userStatus == entry.key) m,
      ];
      if (items.isNotEmpty) out[entry.value] = items;
    }
    if (all.isNotEmpty) out['All'] = all;
    return out;
  }

  Future<List<CalendarEntry>> schedule() async {
    final days = [
      'monday',
      'tuesday',
      'wednesday',
      'thursday',
      'friday',
      'saturday',
      'sunday',
    ];
    final now = DateTime.now().toUtc();
    final out = <CalendarEntry>[];
    final seen = <String>{};
    for (final day in days) {
      for (var page = 1; page <= 3; page++) {
        final data = await tenrai.get(
          '/schedules',
          query: {
            'filter': day,
            'page': '$page',
            'limit': '25',
            'sfw': 'true',
            'kids': 'false',
          },
          cache: const Duration(hours: 1),
        );
        for (final n in (data['data'] as List?) ?? const []) {
          final node = (n as Map).cast<String, dynamic>();
          final at = _airing(node['broadcast'] as Map?, now);
          if (at == null || !seen.add('${node['mal_id']}')) continue;
          out.add(
            CalendarEntry(
              media: mapTenraiMedia(node, anime: true),
              airingAt: at.toLocal(),
            ),
          );
        }
        final more = (data['pagination'] as Map?)?['has_next_page'] == true;
        if (!more) break;
      }
    }
    out.sort((a, b) => a.airingAt.compareTo(b.airingAt));
    return out;
  }

  static DateTime? _airing(Map? broadcast, DateTime nowUtc) {
    final dayName = (broadcast?['day'] as String?)?.toLowerCase();
    final time = (broadcast?['time'] as String?)?.split(':');
    if (dayName == null || time == null || time.length < 2) return null;
    const names = [
      'monday',
      'tuesday',
      'wednesday',
      'thursday',
      'friday',
      'saturday',
      'sunday',
    ];
    final weekday = names.indexWhere(
      (d) => dayName.startsWith(d.substring(0, 3)),
    );
    if (weekday < 0) return null;
    final jstNow = nowUtc.add(const Duration(hours: 9));
    final start = DateTime.utc(
      jstNow.year,
      jstNow.month,
      jstNow.day,
    ).subtract(const Duration(days: 1));
    for (var k = 0; k < 7; k++) {
      final d = start.add(Duration(days: k));
      if (d.weekday == weekday + 1) {
        return DateTime.utc(
          d.year,
          d.month,
          d.day,
          int.tryParse(time[0]) ?? 0,
          int.tryParse(time[1]) ?? 0,
        ).subtract(const Duration(hours: 9));
      }
    }
    return null;
  }

  @override
  Future<List<Media>> getCalendarData() async => const [];

  @override
  Future<bool> getGenresAndTags() async {
    for (final anime in [true, false]) {
      try {
        final data = await tenrai.get(
          '/genres/${anime ? 'anime' : 'manga'}',
          cache: const Duration(days: 1),
        );
        final map = {
          for (final g in (data['data'] as List?) ?? const [])
            (g as Map)['name'] as String: (g['mal_id'] as num).toInt(),
        };
        if (map.isNotEmpty) saveCustomData(_genreKey(anime), map);
      } catch (_) {}
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
    if (!anime && !manga) return results..results = const [];
    final sort = _sorts[results.sort];
    final ids = malGenreIds(anime: anime);
    final genres = [
      for (final g in results.genres ?? const <String>[])
        if (ids[g] != null) '${ids[g]}',
    ];
    final query = <String, String>{
      'page': '${results.page ?? 1}',
      'limit': '${(results.perPage ?? 25).clamp(1, 25)}',
      if (results.search?.isNotEmpty ?? false) 'q': results.search!,
      if (sort != null) ...{'order_by': sort.$1, 'sort': sort.$2},
      if (genres.isNotEmpty) 'genres': genres.join(','),
      if (results.format != null)
        'type': results.format!.toLowerCase().replaceAll(' ', ''),
      if (results.status != null)
        'status': _searchStatus(results.status!, anime),
      if (results.seasonYear != null)
        'start_date': '${results.seasonYear}-01-01',
      if (results.isAdult != true) 'sfw': 'true',
    };
    final data = await tenrai.get(
      anime ? '/anime' : '/manga',
      query: query,
      cache: const Duration(minutes: 5),
    );
    return results
      ..results = _tenraiMedia(data, anime)
      ..hasNextPage = (data['pagination'] as Map?)?['has_next_page'] == true;
  }

  static String _searchStatus(String status, bool anime) =>
      switch (status.toUpperCase().replaceAll(' ', '_')) {
        'RELEASING' => anime ? 'airing' : 'publishing',
        'FINISHED' => anime ? 'complete' : 'complete',
        'NOT_YET_RELEASED' => 'upcoming',
        'HIATUS' => 'hiatus',
        'CANCELLED' => 'discontinued',
        _ => status.toLowerCase(),
      };
}
