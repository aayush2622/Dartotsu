import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/LibraryCache.dart';
import '../../../Core/Services/Api/LibrarySearch.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/Model/Author.dart';
import '../../../Core/Services/Model/Calendar.dart';
import '../../../Core/Services/Model/Character.dart';
import '../../../Core/Services/Model/Date.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/MediaListEntry.dart';
import '../../../Core/Services/Model/Review.dart';
import '../../../Core/Services/Model/User.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Model/MediaType.dart';
import '../../../Model/SearchResults.dart';
import 'Client.dart';
import 'Data/Browse.dart';
import 'Data/Mapper.dart';
import 'Prefs.dart';
import 'TraktStrings.dart';

class TraktSection {
  final String title;
  final String endpoint;
  final Map<String, String>? query;

  const TraktSection(this.title, this.endpoint, [this.query]);
}

List<TraktSection> traktSections(MediaType type) {
  if (type == MediaType.anime) {
    return const [
      TraktSection('Trending Anime', '/shows/trending', {'genres': 'anime'}),
      TraktSection('Popular Anime Shows', '/shows/popular', {'genres': 'anime'}),
      TraktSection('Popular Anime Movies', '/movies/popular', {'genres': 'anime'}),
      TraktSection('Most Watched Anime', '/shows/watched/monthly', {'genres': 'anime'}),
      TraktSection('Anticipated Anime', '/shows/anticipated', {'genres': 'anime'}),
    ];
  }
  return const [
    TraktSection('Trending Movies Today', '/movies/trending'),
    TraktSection('Trending Shows Today', '/shows/trending'),
    TraktSection('Trending Movies This Week', '/movies/trending'),
    TraktSection('Trending Shows This Week', '/shows/trending'),
    TraktSection('Popular Movies', '/movies/popular'),
    TraktSection('Popular Shows', '/shows/popular'),
    TraktSection('Anticipated Movies', '/movies/anticipated'),
    TraktSection('Anticipated Shows', '/shows/anticipated'),
    TraktSection('Most Watched Movies', '/movies/watched/monthly'),
    TraktSection('Most Watched Shows', '/shows/watched/monthly'),
  ];
}

List<TraktSection> traktLayoutSections(MediaType type) {
  final pref = type == MediaType.anime
      ? TraktPref.animeLayout
      : TraktPref.movieLayout;
  final active = pref.rx.value;
  return [
    for (final s in traktSections(type))
      if (active[s.title] ?? false) s,
  ];
}

class _Activity {
  final String all;
  final String? moviesWatchedAt;
  final String? showsWatchedAt;
  final String? watchlistAt;

  const _Activity({
    required this.all,
    this.moviesWatchedAt,
    this.showsWatchedAt,
    this.watchlistAt,
  });

  factory _Activity.fromJson(Map<String, dynamic> j) {
    final movies = j['movies'] as Map?;
    final shows = j['shows'] as Map?;
    final watchlist = j['watchlist'] as Map?;
    return _Activity(
      all: '${j['all'] ?? ''}',
      moviesWatchedAt: movies?['watched_at'] as String?,
      showsWatchedAt: shows?['watched_at'] as String?,
      watchlistAt: watchlist?['updated_at'] as String?,
    );
  }
}

Map<String, Media> _decodeLibrary(Map<String, dynamic> raw) => {
  for (final e in (raw['items'] as Map).entries)
    '${e.key}': Media.fromJson(Map<String, dynamic>.from(e.value as Map)),
};

Map<String, dynamic> _encodeLibrary(Map<String, dynamic> args) => {
  'all': args['all'],
  'items': {
    for (final e in (args['library'] as Map<String, Media>).entries)
      e.key: e.value.toJson(),
  },
};

List<Media> _byStatus(Iterable<Media> all, String status) => [
  for (final m in all)
    if (m.userStatus == status) m,
]..sort((a, b) => (b.userUpdatedAt ?? 0).compareTo(a.userUpdatedAt ?? 0));

class TraktQueries extends Queries {
  final TraktClient client;
  final Future<bool> Function() refreshUser;
  final void Function(int episodes)? onEpisodes;

  TraktQueries(this.client, {required this.refreshUser, this.onEpisodes});

  _Activity? _seen;

  late final _library = LibraryCache<Map<String, Media>>(
    load: _sync,
    ttl: const Duration(minutes: 15),
  );

  static const _diskKey = 'traktLibrary';

  void clearLibrary() {
    _seen = null;
    _library.clear();
    PrefManager.removeCustomData(_diskKey, location: PrefLocation.CACHE);
  }

  Future<Map<String, Media>?> _readDisk() async {
    final raw = PrefManager.loadCustomData<Map<String, dynamic>>(
      _diskKey,
      location: PrefLocation.CACHE,
    );
    if (raw == null || raw.isEmpty) return null;
    try {
      final items = await compute(_decodeLibrary, raw);
      _seen = _Activity(all: '${raw['all']}');
      return items;
    } catch (e, st) {
      logError('TraktQueries', e, st);
      return null;
    }
  }

  Future<void> _writeDisk(Map<String, Media> library, _Activity seen) async {
    try {
      final blob = await compute(_encodeLibrary, {
        'all': seen.all,
        'library': library,
      });
      PrefManager.saveCustomData<Map<String, dynamic>>(
        _diskKey,
        blob,
        location: PrefLocation.CACHE,
      );
    } catch (e, st) {
      logError('TraktQueries', e, st);
    }
  }

  void invalidateLibrary() => _library.expire();

  Future<Map<String, Media>> library() =>
      client.hasToken ? _library.get() : Future.value(const {});

  Future<_Activity> _activity() async {
    final data = await client.get('/sync/last_activities');
    return _Activity.fromJson(
      data is Map ? data.cast<String, dynamic>() : const {},
    );
  }

  Future<Map<String, Media>> _sync(Map<String, Media>? first) async {
    final previous = first ?? await _readDisk();
    _Activity now;
    try {
      now = await _activity();
    } catch (e, st) {
      logError('TraktQueries', e, st);
      return previous ?? const {};
    }

    final before = _seen;
    if (previous != null && before != null && now.all == before.all) {
      return _publish(previous, persist: false);
    }

    return _fullSync(now);
  }

  Future<Map<String, Media>> _fullSync(_Activity now) async {
    final library = <String, Media>{};

    // 1. Watched Movies
    try {
      final movies = await client.get(
        '/sync/watched/movies',
        query: {'extended': 'full'},
      );
      if (movies is List) {
        for (final item in movies) {
          if (item is! Map) continue;
          final m = mapTraktItem(item.cast<String, dynamic>(), kind: TraktKind.movies);
          if (m != null) {
            final lastWatched = item['last_watched_at'] as String?;
            final date = parseTraktDate(lastWatched);
            m.userStatus = 'COMPLETED';
            m.userProgress = 1;
            m.userCompletedAt = date;
            m.userUpdatedAt = lastWatched != null
                ? DateTime.tryParse(lastWatched)?.millisecondsSinceEpoch
                : null;
            library[m.id] = m;
          }
        }
      }
    } catch (e, st) {
      logError('TraktQueries.watchedMovies', e, st);
    }

    // 2. Watched Shows
    try {
      final shows = await client.get(
        '/sync/watched/shows',
        query: {'extended': 'full'},
      );
      if (shows is List) {
        for (final item in shows) {
          if (item is! Map) continue;
          final m = mapTraktItem(item.cast<String, dynamic>(), kind: TraktKind.shows);
          if (m != null) {
            final seasons = item['seasons'] as List?;
            var watchedEps = 0;
            if (seasons != null) {
              for (final s in seasons) {
                if (s is Map && (s['number'] as num? ?? 0) > 0) {
                  final eps = s['episodes'] as List?;
                  if (eps != null) watchedEps += eps.length;
                }
              }
            }
            final total = m.anime?.totalEpisodes ?? 0;
            final isCompleted = total > 0 && watchedEps >= total;
            final lastWatched = item['last_watched_at'] as String?;
            m.userStatus = isCompleted ? 'COMPLETED' : 'CURRENT';
            m.userProgress = watchedEps;
            m.userUpdatedAt = lastWatched != null
                ? DateTime.tryParse(lastWatched)?.millisecondsSinceEpoch
                : null;
            library[m.id] = m;
          }
        }
      }
    } catch (e, st) {
      logError('TraktQueries.watchedShows', e, st);
    }

    // 3. Watchlist Movies
    try {
      final watchlistMovies = await client.get(
        '/sync/watchlist/movies',
        query: {'extended': 'full'},
      );
      if (watchlistMovies is List) {
        for (final item in watchlistMovies) {
          if (item is! Map) continue;
          final m = mapTraktItem(item.cast<String, dynamic>(), kind: TraktKind.movies);
          if (m != null && !library.containsKey(m.id)) {
            m.userStatus = 'PLANNING';
            m.userProgress = 0;
            final listedAt = item['listed_at'] as String?;
            m.userUpdatedAt = listedAt != null
                ? DateTime.tryParse(listedAt)?.millisecondsSinceEpoch
                : null;
            library[m.id] = m;
          }
        }
      }
    } catch (e, st) {
      logError('TraktQueries.watchlistMovies', e, st);
    }

    // 4. Watchlist Shows
    try {
      final watchlistShows = await client.get(
        '/sync/watchlist/shows',
        query: {'extended': 'full'},
      );
      if (watchlistShows is List) {
        for (final item in watchlistShows) {
          if (item is! Map) continue;
          final m = mapTraktItem(item.cast<String, dynamic>(), kind: TraktKind.shows);
          if (m != null && !library.containsKey(m.id)) {
            m.userStatus = 'PLANNING';
            m.userProgress = 0;
            final listedAt = item['listed_at'] as String?;
            m.userUpdatedAt = listedAt != null
                ? DateTime.tryParse(listedAt)?.millisecondsSinceEpoch
                : null;
            library[m.id] = m;
          }
        }
      }
    } catch (e, st) {
      logError('TraktQueries.watchlistShows', e, st);
    }

    // 5. Ratings
    try {
      final movieRatings = await client.get('/sync/ratings/movies');
      if (movieRatings is List) {
        for (final r in movieRatings) {
          if (r is! Map) continue;
          final movie = r['movie'] as Map?;
          final traktId = (movie?['ids'] as Map?)?['trakt'];
          if (traktId != null) {
            final key = traktMediaId(TraktKind.movies, traktId);
            final score = ((r['rating'] as num?)?.toDouble() ?? 0) * 10;
            library[key]?.userScore = score.round();
          }
        }
      }

      final showRatings = await client.get('/sync/ratings/shows');
      if (showRatings is List) {
        for (final r in showRatings) {
          if (r is! Map) continue;
          final show = r['show'] as Map?;
          final traktId = (show?['ids'] as Map?)?['trakt'];
          if (traktId != null) {
            final key = traktMediaId(TraktKind.shows, traktId);
            final score = ((r['rating'] as num?)?.toDouble() ?? 0) * 10;
            library[key]?.userScore = score.round();
          }
        }
      }
    } catch (e, st) {
      logError('TraktQueries.ratings', e, st);
    }

    // 6. Playback (Currently watching / scrobbling)
    try {
      final playback = await client.get('/sync/playback');
      if (playback is List) {
        for (final item in playback) {
          if (item is! Map) continue;
          final type = item['type'] as String?;
          final kind = TraktKind.fromName(type);
          if (kind == null) continue;
          final target = (item[kind.syncKey == 'shows' ? 'show' : 'movie'] as Map?);
          final id = (target?['ids'] as Map?)?['trakt'];
          if (id != null) {
            final key = traktMediaId(kind, id);
            final existing = library[key];
            if (existing != null) {
              existing.userStatus = 'CURRENT';
            }
          }
        }
      }
    } catch (_) {}

    _seen = now;
    return _publish(library);
  }

  Map<String, Media> _publish(
    Map<String, Media> library, {
    bool persist = true,
  }) {
    onEpisodes?.call(
      library.values.fold<int>(0, (sum, m) => sum + (m.userProgress ?? 0)),
    );
    final seen = _seen;
    if (persist && seen != null) unawaited(_writeDisk(library, seen));
    return library;
  }

  DateTime? _checkedAt;

  void recheckLibrary() {
    final at = _checkedAt;
    if (at != null &&
        DateTime.now().difference(at) < const Duration(seconds: 20)) {
      return;
    }
    _checkedAt = DateTime.now();
    _library.expire();
  }

  @override
  List<SectionJob> homeJobs() {
    if (!client.hasToken) return const [];
    recheckLibrary();
    const lists = [
      ('Continue Watching', 'CURRENT'),
      ('Watchlist', 'PLANNING'),
      ('Completed', 'COMPLETED'),
    ];
    final jobs = <(String, SectionJob)>[
      for (final (title, status) in lists)
        (
          title,
          () async {
            final items = _byStatus((await library()).values, status);
            return items.isEmpty ? <String, List<Media>>{} : {title: items};
          },
        ),
    ];
    return jobs.map((e) => e.$2).toList();
  }

  Future<List<Media>> trending(TraktSection section) async {
    try {
      final res = await client.get(
        section.endpoint,
        query: {
          'extended': 'full',
          'limit': '20',
          ...?section.query,
        },
        auth: false,
      );
      if (res is! List) return const [];
      final out = <Media>[];
      for (final item in res) {
        if (item is Map) {
          final m = mapTraktItem(item.cast<String, dynamic>());
          if (m != null) out.add(m);
        }
      }
      return out;
    } catch (e, st) {
      logError('TraktQueries.trending', e, st);
      return const [];
    }
  }

  @override
  Future<SearchResults?> search(SearchResults q) async {
    try {
      final searchType = switch (q.type) {
        MediaType.movie => 'movie',
        MediaType.series => 'show',
        MediaType.anime => 'show,movie',
        _ => 'movie,show',
      };
      final genres = [
        if (q.type == MediaType.anime) 'anime',
        ...?q.genres?.map((g) => g.toLowerCase()),
      ];
      final queryParams = <String, String>{
        'page': '${q.page ?? 1}',
        'limit': '20',
        'extended': 'full',
        if (genres.isNotEmpty) 'genres': genres.join(','),
        if ((q.seasonYear ?? q.startYear) != null)
          'years': '${q.seasonYear ?? q.startYear}',
      };

      final term = q.search?.trim();
      final String endpoint;
      if (term != null && term.isNotEmpty) {
        endpoint = '/search/$searchType';
        queryParams['query'] = term;
      } else {
        endpoint = q.type == MediaType.movie ? '/movies/popular' : '/shows/popular';
      }

      final res = await client.get(
        endpoint,
        query: queryParams,
        auth: false,
      );

      if (res is! List) {
        return q
          ..results = const []
          ..hasNextPage = false;
      }

      final list = <Media>[];
      for (final item in res) {
        if (item is Map) {
          final m = mapTraktItem(item.cast<String, dynamic>());
          if (m != null) list.add(m);
        }
      }

      // Attach user list status if logged in
      if (client.hasToken) {
        final lib = await library();
        for (final m in list) {
          final existing = lib[m.id];
          if (existing != null) m.takeListEntry(existing);
        }
      }

      return q
        ..results = list
        ..hasNextPage = list.length >= 20;
    } catch (e, st) {
      logError('TraktQueries.search', e, st);
      return q
        ..results = const []
        ..hasNextPage = false;
    }
  }

  Future<Media?> mediaDetails(Media media) async {
    final ref = parseTraktMediaId(media.id);
    if (ref == null) return null;
    final (kind, id) = ref;
    try {
      final data = await client.get(
        '/${kind.path}/$id',
        query: {'extended': 'full'},
        auth: false,
      );
      if (data is! Map) return null;
      final full = mapTraktItem(data.cast<String, dynamic>(), kind: kind);
      if (full == null) return null;

      if (client.hasToken) {
        final lib = await library();
        final existing = lib[full.id];
        if (existing != null) full.takeListEntry(existing);
      }
      return full;
    } catch (e, st) {
      logError('TraktQueries.mediaDetails', e, st);
      return null;
    }
  }

  Future<List<Character>> characters(Media media) async {
    final ref = parseTraktMediaId(media.id);
    if (ref == null) return const [];
    final (kind, id) = ref;
    try {
      final data = await client.get('/${kind.path}/$id/people', auth: false);
      if (data is! Map) return const [];
      final cast = data['cast'] as List?;
      if (cast == null) return const [];
      final out = <Character>[];
      for (final c in cast) {
        if (c is! Map) continue;
        final person = c['person'] as Map?;
        final charName = c['character'] as String? ?? '';
        final personName = person?['name'] as String? ?? '';
        final personId = (person?['ids'] as Map?)?['trakt'];
        if (personId == null) continue;

        final headshot = 'https://media.trakt.tv/people/$personId/medium/headshot.webp';
        out.add(
          Character(
            id: '$personId',
            name: charName.isNotEmpty ? charName : personName,
            role: charName.isNotEmpty ? 'Played by $personName' : null,
            image: headshot,
            voiceActor: [
              Author(
                id: '$personId',
                name: personName,
                image: headshot,
              ),
            ],
          ),
        );
      }
      return out;
    } catch (e, st) {
      logError('TraktQueries.characters', e, st);
      return const [];
    }
  }

  Future<List<Author>> staff(Media media) async {
    final ref = parseTraktMediaId(media.id);
    if (ref == null) return const [];
    final (kind, id) = ref;
    try {
      final data = await client.get('/${kind.path}/$id/people', auth: false);
      if (data is! Map) return const [];
      final crew = data['crew'] as Map?;
      if (crew == null) return const [];
      final out = <Author>[];

      for (final dept in ['directing', 'writing', 'production', 'creator']) {
        final members = crew[dept] as List?;
        if (members == null) continue;
        for (final m in members) {
          if (m is! Map) continue;
          final person = m['person'] as Map?;
          final personId = (person?['ids'] as Map?)?['trakt'];
          final name = person?['name'] as String?;
          if (personId == null || name == null) continue;
          final job = (m['jobs'] as List?)?.firstOrNull as String? ??
              m['job'] as String? ??
              dept;
          out.add(
            Author(
              id: '$personId',
              name: name,
              role: job,
              image: 'https://media.trakt.tv/people/$personId/medium/headshot.webp',
            ),
          );
        }
      }
      return out;
    } catch (e, st) {
      logError('TraktQueries.staff', e, st);
      return const [];
    }
  }

  Future<List<Media>> recommendations(Media media) async {
    final ref = parseTraktMediaId(media.id);
    if (ref == null) return const [];
    final (kind, id) = ref;
    try {
      final data = await client.get(
        '/${kind.path}/$id/related',
        query: {'extended': 'full', 'limit': '15'},
        auth: false,
      );
      if (data is! List) return const [];
      final out = <Media>[];
      for (final item in data) {
        if (item is Map) {
          final m = mapTraktItem(item.cast<String, dynamic>(), kind: kind);
          if (m != null) out.add(m);
        }
      }
      return out;
    } catch (e, st) {
      logError('TraktQueries.recommendations', e, st);
      return const [];
    }
  }

  Future<List<Review>> reviews(Media media) async {
    final ref = parseTraktMediaId(media.id);
    if (ref == null) return const [];
    final (kind, id) = ref;
    try {
      final data = await client.get(
        '/${kind.path}/$id/comments',
        query: {'extended': 'full', 'limit': '15'},
        auth: false,
      );
      if (data is! List) return const [];
      final out = <Review>[];
      for (final item in data) {
        if (item is! Map) continue;
        final commentId = (item['id'] as num?)?.toInt() ?? 0;
        final body = item['comment'] as String? ?? '';
        final score = (item['user_rating'] as num?)?.toInt();
        final userMap = item['user'] as Map?;
        final userName = userMap?['name'] as String? ??
            userMap?['username'] as String? ??
            'User';
        final userAvatar =
            ((userMap?['images'] as Map?)?['avatar'] as Map?)?['full'] as String?;
        final createdAt = item['created_at'] != null
            ? DateTime.tryParse('${item['created_at']}')?.millisecondsSinceEpoch
            : null;

        out.add(
          Review(
            id: commentId,
            mediaId: id,
            mediaType: kind.path,
            body: body,
            score: score != null ? score * 10 : null,
            createdAt: createdAt,
            user: User(
              id: (userMap?['ids'] as Map?)?['trakt'] ?? 0,
              name: userName,
              avatar: userAvatar,
            ),
          ),
        );
      }
      return out;
    } catch (e, st) {
      logError('TraktQueries.reviews', e, st);
      return const [];
    }
  }

  Stream<List<CalendarEntry>> schedule() async* {
    try {
      final now = DateTime.now();
      final startDate =
          '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
      final data = await client.get(
        '/calendars/all/shows/$startDate/7',
        query: {'extended': 'full'},
        auth: false,
      );
      if (data is! List) return;
      final out = <CalendarEntry>[];
      for (final item in data) {
        if (item is! Map) continue;
        final showMap = item['show'] as Map?;
        final episodeMap = item['episode'] as Map?;
        if (showMap == null) continue;
        final m = mapTraktItem(showMap.cast<String, dynamic>(), kind: TraktKind.shows);
        if (m == null) continue;
        final epNum = (episodeMap?['number'] as num?)?.toInt();
        final firstAired = item['first_aired'] as String? ??
            episodeMap?['first_aired'] as String?;
        final dt = firstAired != null ? DateTime.tryParse(firstAired) : null;
        if (dt != null) {
          out.add(CalendarEntry(media: m, episode: epNum, airingAt: dt));
        }
      }
      yield out;
    } catch (e, st) {
      logError('TraktQueries.schedule', e, st);
    }
  }
}
