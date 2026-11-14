import '../../../../Core/Services/Model/Anime.dart';
import '../../../../Core/Services/Model/CommunityList.dart';
import '../../../../Core/Services/Model/Date.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Model/Studio.dart';

enum TraktKind {
  movies('movies', 'movies'),
  shows('shows', 'shows');

  final String path;
  final String syncKey;

  const TraktKind(this.path, this.syncKey);

  String get itemKey => this == movies ? 'movie' : 'show';

  static TraktKind? fromName(String? name) => switch (name?.toLowerCase()) {
    'movie' || 'movies' => movies,
    'show' || 'shows' || 'tv' || 'series' => shows,
    _ => null,
  };
}

String traktMediaId(TraktKind kind, Object id) => '${kind.path}/$id';

(TraktKind, int)? parseTraktMediaId(String id) {
  final parts = id.split('/');
  if (parts.length != 2) return null;
  final kind = TraktKind.fromName(parts[0]);
  final n = int.tryParse(parts[1]);
  return kind == null || n == null ? null : (kind, n);
}

String traktHeadshot(Object id) =>
    'https://media.trakt.tv/people/$id/medium/headshot.webp';

String traktShareLink(TraktKind kind, Object id) =>
    'https://trakt.tv/${kind.path}/$id';

String _artwork(String? explicit, String fallback) {
  if (explicit == null || explicit.isEmpty) return fallback;
  return explicit.startsWith('http') ? explicit : 'https://$explicit';
}

String traktPosterUrl(TraktKind kind, int id, [String? explicit]) => _artwork(
  explicit,
  'https://media.trakt.tv/${kind.path}/$id/medium/poster.webp',
);

String traktFanartUrl(TraktKind kind, int id, [String? explicit]) => _artwork(
  explicit,
  'https://media.trakt.tv/${kind.path}/$id/full/fanart.webp',
);

String? _airStatus(String? s) => switch (s?.toLowerCase()) {
  'ended' || 'released' || 'finished' => 'FINISHED',
  'ongoing' || 'airing' || 'returning series' || 'returning' => 'RELEASING',
  'upcoming' ||
  'planned' ||
  'in production' ||
  'post production' => 'NOT_YET_RELEASED',
  'canceled' || 'cancelled' => 'CANCELLED',
  _ => null,
};

Date? parseTraktDate(Object? raw) {
  if (raw is! String || raw.isEmpty) return null;
  final t = DateTime.tryParse(raw);
  return t == null ? null : Date(year: t.year, month: t.month, day: t.day);
}

int? _minutes(Object? v) {
  if (v is num) return v.toInt();
  final m = RegExp(r'(\d+)').firstMatch('$v');
  return m == null ? null : int.parse(m.group(1)!);
}

int? _int(Object? v) => v is num ? v.toInt() : int.tryParse('$v');

int? traktIdOf(Map m) {
  final ids = m['ids'] as Map?;
  return _int(ids?['trakt'] ?? m['trakt'] ?? m['id']);
}

TraktKind traktKindOf(Map m, [TraktKind? fallback]) {
  final type = m['type'] as String?;
  if (type != null) {
    final k = TraktKind.fromName(type);
    if (k != null) return k;
  }
  if (m['movie'] != null) return TraktKind.movies;
  if (m['show'] != null) return TraktKind.shows;
  if (m['aired_episodes'] != null || m['seasons'] != null) {
    return TraktKind.shows;
  }
  return fallback ?? TraktKind.movies;
}

Media? mapTraktItem(Map<String, dynamic> raw, {TraktKind? kind}) {
  final Map<String, dynamic> m = raw['movie'] is Map
      ? (raw['movie'] as Map).cast<String, dynamic>()
      : raw['show'] is Map
      ? (raw['show'] as Map).cast<String, dynamic>()
      : raw;

  final k = kind ?? traktKindOf(raw);
  final id = traktIdOf(m);
  if (id == null) return null;

  final images = m['images'] as Map?;
  final posterList = (images?['poster'] as List?)?.cast<String>();
  final fanartList = (images?['fanart'] as List?)?.cast<String>();
  final poster = traktPosterUrl(k, id, posterList?.firstOrNull);
  final fanart = traktFanartUrl(k, id, fanartList?.firstOrNull);

  final released = parseTraktDate(
    m['first_aired'] ?? m['released'] ?? m['release_date'],
  );
  final year = _int(m['year']);
  final genres = [
    for (final g in (m['genres'] as List?) ?? const [])
      if (g is String && g.isNotEmpty) '${g[0].toUpperCase()}${g.substring(1)}',
  ];

  final network = m['network'] as String?;
  final isShow = k == TraktKind.shows;
  final totalEpisodes = isShow ? _int(m['aired_episodes']) : 1;
  final runtime = _minutes(m['runtime']);

  final rating = (m['rating'] as num?)?.toDouble();
  final meanScore = rating != null && rating > 0 ? (rating * 10).round() : null;

  final title = m['title'] as String? ?? '';
  final origTitle = m['original_title'] as String?;

  final media = Media(
    id: traktMediaId(k, id),
    name: title,
    nameRomaji: origTitle ?? title,
    userPreferredName: title,
    cover: poster,
    banner: fanart,
    description: m['overview'] as String?,
    genres: genres,
    meanScore: meanScore,
    status: _airStatus(m['status'] as String?),
    format: isShow ? 'TV' : 'MOVIE',
    startDate: released ?? (year == null ? null : Date(year: year)),
    popularity: _int(m['votes'] ?? raw['watchers']),
    trailer: m['trailer'] as String?,
    countryOfOrigin: (m['country'] as String?)?.toUpperCase(),
    shareLink: traktShareLink(k, id),
    anime: Anime(
      totalEpisodes: totalEpisodes,
      episodeDuration: runtime,
      studio: network == null ? null : Studio(id: network, name: network),
    ),
  );

  traktExtras[media] = _extrasOf(m, k, id);
  return media;
}

class TraktExtras {
  int? traktId;
  String? slug;
  String? imdbId;
  int? tmdbId;
  int? tvdbId;
  double? rating;
  int? votes;
  String? tagline;
  String? certification;
  String? network;
  String? airs;
  String? homepage;
  String? trailer;
  List<(String, String)> links = const [];
}

final traktExtras = Expando<TraktExtras>('traktExtras');

TraktExtras _extrasOf(Map<String, dynamic> d, TraktKind kind, int traktId) {
  final ids = (d['ids'] as Map?)?.cast<String, dynamic>() ?? const {};
  String? idStr(String key) {
    final v = ids[key];
    return v == null || '$v'.isEmpty ? null : '$v';
  }

  final imdb = idStr('imdb');
  final tmdb = _int(ids['tmdb']);
  final tvdb = _int(ids['tvdb']);
  final slug = idStr('slug');

  final airs = d['airs'] as Map?;
  final airsText = airs == null
      ? null
      : [
          if (airs['day'] != null) '${airs['day']}',
          if (airs['time'] != null) '${airs['time']}',
          if (airs['timezone'] != null) '(${airs['timezone']})',
        ].join(' ');

  final tmdbKind = kind == TraktKind.movies ? 'movie' : 'tv';

  return TraktExtras()
    ..traktId = traktId
    ..slug = slug
    ..imdbId = imdb
    ..tmdbId = tmdb
    ..tvdbId = tvdb
    ..rating = (d['rating'] as num?)?.toDouble()
    ..votes = _int(d['votes'])
    ..tagline = d['tagline'] as String?
    ..certification = d['certification'] as String?
    ..network = d['network'] as String?
    ..airs = airsText
    ..homepage = d['homepage'] as String?
    ..trailer = d['trailer'] as String?
    ..links = [
      if (imdb != null) ('IMDb', 'https://www.imdb.com/title/$imdb'),
      if (tmdb != null) ('TMDB', 'https://www.themoviedb.org/$tmdbKind/$tmdb'),
      if (tvdb != null)
        (
          'TVDB',
          kind == TraktKind.shows
              ? 'https://thetvdb.com/?tab=series&id=$tvdb'
              : 'https://thetvdb.com/movies/$tvdb',
        ),
      ('Trakt', 'https://trakt.tv/${kind.path}/${slug ?? traktId}'),
    ];
}

CommunityList? mapTraktList(
  Map<String, dynamic> row,
  String Function(int count) countLabel,
) {
  final list = (row['list'] as Map?)?.cast<String, dynamic>() ?? row;
  final id = _int((list['ids'] as Map?)?['trakt']);
  final name = list['name'] as String?;
  if (id == null || name == null || name.isEmpty) return null;
  final owner = (list['user'] as Map?)?.cast<String, dynamic>();
  final description = (list['description'] as String?)?.trim();
  final count = _int(list['item_count']) ?? 0;
  return CommunityList(
    id: '$id',
    title: name,
    author: '${owner?['name'] ?? owner?['username'] ?? ''}',
    description: description == null || description.isEmpty
        ? null
        : description,
    count: count == 0 ? '' : countLabel(count),
    likes: _int(row['like_count'] ?? list['likes']) ?? 0,
    url: 'https://trakt.tv/lists/$id',
  );
}
