import '../../../../Core/Services/Model/Anime.dart';
import '../../../../Core/Services/Model/Date.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Model/Studio.dart';

enum SimklKind {
  anime('anime', 'anime'),
  movies('movies', 'movies'),
  tv('tv', 'shows');

  final String path;
  final String syncKey;

  const SimklKind(this.path, this.syncKey);

  static SimklKind? fromName(String? name) => switch (name) {
    'anime' => anime,
    'movie' || 'movies' => movies,
    'tv' || 'show' || 'shows' => tv,
    _ => null,
  };
}

String simklMediaId(SimklKind kind, Object id) => '${kind.path}/$id';

(SimklKind, int)? parseSimklMediaId(String id) {
  final parts = id.split('/');
  if (parts.length != 2) return null;
  final kind = SimklKind.fromName(parts[0]);
  final n = int.tryParse(parts[1]);
  return kind == null || n == null ? null : (kind, n);
}

String simklShareLink(SimklKind kind, Object id) =>
    'https://simkl.com/${kind.path}/$id';

String? simklPoster(String? path) => path == null || path.isEmpty
    ? null
    : 'https://wsrv.nl/?url=https://simkl.in/posters/${path}_m.webp&q=90';

String? simklFanart(String? path) => path == null || path.isEmpty
    ? null
    : 'https://wsrv.nl/?url=https://simkl.in/fanart/${path}_medium.webp&q=90';

const _statusToSimkl = {
  'CURRENT': 'watching',
  'PLANNING': 'plantowatch',
  'COMPLETED': 'completed',
  'PAUSED': 'hold',
  'DROPPED': 'dropped',
  'REPEATING': 'watching',
};

String? simklStatusOut(String? status, SimklKind kind) {
  final out = _statusToSimkl[status];
  if (kind == SimklKind.movies && (out == 'watching' || out == 'hold')) {
    return out == 'watching' ? 'completed' : 'plantowatch';
  }
  return out;
}

String? simklStatusIn(String? status) => switch (status) {
  'watching' => 'CURRENT',
  'plantowatch' => 'PLANNING',
  'completed' => 'COMPLETED',
  'hold' => 'PAUSED',
  'dropped' => 'DROPPED',
  _ => null,
};

String? _airStatus(String? s) => switch (s?.toLowerCase()) {
  'ended' || 'released' || 'finished' => 'FINISHED',
  'ongoing' || 'airing' || 'returning' || 'premiere' => 'RELEASING',
  'upcoming' || 'planned' || 'in production' => 'NOT_YET_RELEASED',
  'canceled' || 'cancelled' => 'CANCELLED',
  _ => null,
};

Date? parseSimklDate(Object? raw) {
  if (raw is! String || raw.isEmpty) return null;
  final us = RegExp(r'^(\d{2})/(\d{2})/(\d{4})$').firstMatch(raw);
  if (us != null) {
    return Date(
      year: int.parse(us.group(3)!),
      month: int.parse(us.group(1)!),
      day: int.parse(us.group(2)!),
    );
  }
  final t = DateTime.tryParse(raw);
  return t == null ? null : Date(year: t.year, month: t.month, day: t.day);
}

int? _minutes(Object? v) {
  if (v is num) return v.toInt();
  final m = RegExp(r'(\d+)').firstMatch('$v');
  return m == null ? null : int.parse(m.group(1)!);
}

int? _int(Object? v) => v is num ? v.toInt() : int.tryParse('$v');

int? _score(Object? ratings) {
  if (ratings is! Map) return null;
  for (final key in ['simkl', 'mal', 'imdb']) {
    final r = (ratings[key] as Map?)?['rating'];
    if (r is num && r > 0) return (r * 10).round();
  }
  return null;
}

SimklKind simklKindOf(Map m, [SimklKind? fallback]) {
  final url = m['url'] as String?;
  if (url != null) {
    final seg = url.split('/').where((s) => s.isNotEmpty).firstOrNull;
    final k = SimklKind.fromName(seg);
    if (k != null) return k;
  }
  return SimklKind.fromName(m['endpoint_type'] as String?) ??
      SimklKind.fromName(m['type'] as String?) ??
      (m['anime_type'] != null ? SimklKind.anime : null) ??
      fallback ??
      SimklKind.tv;
}

int? simklIdOf(Map m) {
  final ids = m['ids'] as Map?;
  return _int(ids?['simkl'] ?? ids?['simkl_id'] ?? m['simkl_id']);
}

String? _format(SimklKind kind, Map m) {
  if (kind == SimklKind.movies) return 'MOVIE';
  if (kind == SimklKind.tv) return 'TV';
  return (m['anime_type'] as String?)?.toUpperCase().replaceAll(' ', '_');
}

Media? mapSimklItem(Map<String, dynamic> m, {SimklKind? kind}) {
  final id = simklIdOf(m);
  if (id == null) return null;
  final k = kind ?? simklKindOf(m);
  final studios = (m['studios'] as List?) ?? const [];
  final released = parseSimklDate(
    m['first_aired'] ?? m['release_date'] ?? m['released'],
  );
  return Media(
    id: simklMediaId(k, id),
    name: (m['en_title'] as String?) ?? m['title'] as String?,
    nameRomaji: (m['title_romaji'] as String?) ?? m['title'] as String?,
    cover: simklPoster(m['poster'] as String?),
    banner: simklFanart(m['fanart'] as String?),
    description: m['overview'] as String?,
    genres: [...((m['genres'] as List?) ?? const []).cast<String>()],
    meanScore: _score(m['ratings']),
    status: _airStatus(m['status'] as String?),
    format: _format(k, m),
    startDate:
        released ??
        (_int(m['year']) == null ? null : Date(year: _int(m['year']))),
    popularity: _int(m['watched']),
    shareLink: simklShareLink(k, id),
    anime: Anime(
      totalEpisodes: _int(m['total_episodes']),
      episodeDuration: _minutes(m['runtime']),
      studio: studios.isEmpty
          ? null
          : Studio(
              id: '${(studios.first as Map)['id'] ?? 0}',
              name: '${(studios.first as Map)['name']}',
            ),
    ),
  );
}

class SimklExtras {
  List<(String, double, int)> ratings = const [];
  List<(String, String)> trailers = const [];
  List<(String, String)> links = const [];
  int? rank;
  String? network;
  String? certification;
  String? airs;
  String? director;
  String? dropRate;
  String? language;
  int? malId;
  int? budget;
  int? revenue;
  List<(String, String, String?)> episodes = const [];
}

final simklExtras = Expando<SimklExtras>('simklExtras');

SimklExtras _extrasOf(Map<String, dynamic> d, SimklKind kind) {
  final ratings = d['ratings'] as Map?;
  const names = {'simkl': 'Simkl', 'imdb': 'IMDb', 'mal': 'MyAnimeList'};
  final ids = (d['ids'] as Map?)?.cast<String, dynamic>() ?? const {};
  String? id(String key) {
    final v = ids[key];
    return v == null || '$v'.isEmpty ? null : '$v';
  }

  final airs = d['airs'] as Map?;
  final tmdbKind = kind == SimklKind.movies ? 'movie' : 'tv';
  final imdb = id('imdb');
  final tmdb = id('tmdb');
  final tvdb = id('tvdb');
  final mal = id('mal');
  final anidb = id('anidb');
  return SimklExtras()
    ..ratings = [
      for (final e in names.entries)
        if (ratings?[e.key] is Map &&
            (((ratings![e.key] as Map)['rating'] as num?) ?? 0) > 0)
          (
            e.value,
            ((ratings[e.key] as Map)['rating'] as num).toDouble(),
            _int((ratings[e.key] as Map)['votes']) ?? 0,
          ),
    ]
    ..rank = _int((ratings?['simkl'] as Map?)?['rank'] ?? d['rank'])
    ..network = d['network'] as String?
    ..certification = d['certification'] as String?
    ..director = d['director'] as String?
    ..dropRate = d['droprate'] as String?
    ..language = d['language'] as String?
    ..malId = _int(ids['mal'])
    ..budget = _int(d['budget'])
    ..revenue = _int(d['revenue'])
    ..airs = airs == null
        ? null
        : [
            if (airs['day'] != null) '${airs['day']}',
            if (airs['time'] != null) '${airs['time']}',
          ].join(' ')
    ..trailers = [
      for (final t in (d['trailers'] as List?) ?? const [])
        if ((t as Map)['youtube'] is String)
          ('${t['name'] ?? 'Trailer'}', 'https://youtu.be/${t['youtube']}'),
    ]
    ..links = [
      if (imdb != null) ('IMDb', 'https://www.imdb.com/title/$imdb'),
      if (tmdb != null) ('TMDB', 'https://www.themoviedb.org/$tmdbKind/$tmdb'),
      if (tvdb != null) ('TVDB', 'https://thetvdb.com/?tab=series&id=$tvdb'),
      if (mal != null) ('MyAnimeList', 'https://myanimelist.net/anime/$mal'),
      if (anidb != null) ('AniDB', 'https://anidb.net/anime/$anidb'),
    ];
}

Media? mapSimklDetail(Map<String, dynamic> d, SimklKind kind) {
  final media = mapSimklItem(d, kind: kind);
  if (media == null) return null;
  simklExtras[media] = _extrasOf(d, kind);
  final trailers = (d['trailers'] as List?) ?? const [];
  final youtube = trailers.isEmpty
      ? null
      : (trailers.first as Map)['youtube'] as String?;
  media
    ..trailer = youtube == null ? null : 'https://youtu.be/$youtube'
    ..synonyms = [
      for (final a in (d['alt_titles'] as List?) ?? const [])
        if ((a as Map)['name'] is String) a['name'] as String,
    ].take(8).toList()
    ..countryOfOrigin = (d['country'] as String?)?.toUpperCase()
    ..endDate = parseSimklDate(d['last_aired']);
  media.anime
    ?..totalEpisodes = _int(d['total_episodes'])
    ..episodeDuration = _minutes(d['runtime'])
    ..season = (d['season_name_year'] as String?)
        ?.split(' ')
        .firstOrNull
        ?.toUpperCase()
    ..seasonYear = _int(d['year']);

  Media? related(Object? e, {String? relation}) {
    if (e is! Map) return null;
    final item = e.cast<String, dynamic>();
    final id = simklIdOf(item);
    if (id == null) return null;
    final k =
        SimklKind.fromName(item['type'] as String?) ??
        (item['anime_type'] != null ? SimklKind.anime : kind);
    final media = mapSimklItem(item, kind: k);
    media?.relation = relation;
    return media;
  }

  final relations = [
    for (final r in (d['relations'] as List?) ?? const [])
      ?related(
        r,
        relation: ((r as Map)['relation_type'] as String?)?.replaceAll(
          '_',
          ' ',
        ),
      ),
  ];
  if (relations.isNotEmpty) media.relations = relations;

  final seen = <String>{};
  final recs = [
    for (final list in [d['users_recommendations'], d['similar']])
      for (final r in (list as List?) ?? const [])
        if (related(r) case final m? when seen.add(m.id)) m,
  ];
  if (recs.isNotEmpty) media.recommendations = recs;
  return media;
}

Media? mapSimklListEntry(Map<String, dynamic> e, SimklKind kind) {
  final node = (e['show'] ?? e['movie'] ?? e['anime']) as Map?;
  if (node == null) return null;
  final media = mapSimklItem(node.cast<String, dynamic>(), kind: kind);
  if (media == null) return null;
  final watched = _int(e['watched_episodes_count']);
  final total = _int(e['total_episodes_count']);
  final rating = _int(e['user_rating']);
  final touched = DateTime.tryParse(
    '${e['last_watched_at'] ?? e['added_to_watchlist_at'] ?? ''}',
  );
  media
    ..userStatus = simklStatusIn(e['status'] as String?)
    ..userProgress = watched ?? (e['status'] == 'completed' ? 1 : 0)
    ..userScore = (rating ?? 0) * 10
    ..userUpdatedAt = touched == null
        ? null
        : touched.millisecondsSinceEpoch ~/ 1000
    ..userListId = 1;
  if (total != null && total > 0) media.anime?.totalEpisodes = total;
  return media;
}

List<(String, String, String?)> mapSimklEpisodes(Object? data) {
  if (data is! List) return const [];
  final aired = [
    for (final e in data)
      if (e is Map && e['type'] == 'episode' && _int(e['episode']) != null) e,
  ];
  final shown = aired.length > 12 ? aired.sublist(aired.length - 12) : aired;
  return [
    for (final e in shown)
      (
        e['season'] == null || e['season'] == 0
            ? 'Ep ${e['episode']}'
            : 'S${e['season']} E${e['episode']}',
        '${e['title'] ?? 'Episode ${e['episode']}'}',
        parseSimklDate(
          '${e['date'] ?? ''}'.split('T').first,
        )?.getFormattedDate(),
      ),
  ];
}
