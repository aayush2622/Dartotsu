import '../../../../Core/Services/Model/Anime.dart';
import '../../../../Core/Services/Model/Author.dart';
import '../../../../Core/Services/Model/Date.dart';
import '../../../../Core/Services/Model/Manga.dart';
import '../../../../Core/Services/Model/Media.dart';

const comickCoverHost = 'https://meo.comick.pictures';

String comickShareLink(String slug, {bool anime = false}) =>
    'https://comick.dev/${anime ? 'anime' : 'comic'}/$slug';

const _statusIn = {
  1: 'CURRENT',
  2: 'COMPLETED',
  3: 'PAUSED',
  4: 'DROPPED',
  5: 'PLANNING',
};

const _statusOut = {
  'CURRENT': 1,
  'REPEATING': 1,
  'COMPLETED': 2,
  'PAUSED': 3,
  'DROPPED': 4,
  'PLANNING': 5,
};

String? comickStatusIn(int? status) => _statusIn[status];

int comickStatusOut(String? status) => _statusOut[status] ?? 1;

String? _pubStatus(int? s) => switch (s) {
  1 => 'RELEASING',
  2 => 'FINISHED',
  3 => 'CANCELLED',
  4 => 'HIATUS',
  _ => null,
};

double? _d(Object? v) => v is num ? v.toDouble() : double.tryParse('$v');

int? _i(Object? v) => v is num ? v.toInt() : int.tryParse('$v');

String? _s(Object? v) {
  final text = v is String ? v.trim() : null;
  return text == null || text.isEmpty ? null : text;
}

Date? parseComickDate(Object? raw) {
  if (raw is! String || raw.length < 4) return null;
  final p = raw.split('T').first.split('-').map(int.tryParse).toList();
  return Date(
    year: p.isNotEmpty ? p[0] : null,
    month: p.length > 1 ? p[1] : null,
    day: p.length > 2 ? p[2] : null,
  );
}

String? _coverUrl(Map item) {
  final direct = _s(item['cover_url']);
  if (direct != null) return direct;
  final key = _s(item['b2key']);
  if (key != null) return '$comickCoverHost/$key';
  for (final c in (item['md_covers'] as List?) ?? const []) {
    if (c is! Map) continue;
    final b2 = _s(c['b2key']);
    if (b2 != null) return '$comickCoverHost/$b2';
    final remote = _s(c['gpurl']);
    if (remote != null) return remote;
  }
  return null;
}

String _titleCase(String s) => s
    .replaceAll(RegExp(r'[_-]'), ' ')
    .split(' ')
    .map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}')
    .join(' ');

Map<int, String> comickGenreNames = const {};

List<String> _genres(Map item) {
  final out = <String>[];
  for (final g in (item['md_comic_md_genres'] as List?) ?? const []) {
    final genre = g is Map ? g['md_genres'] : null;
    final name = genre is Map ? genre['name'] : null;
    if (name is String && name.isNotEmpty) out.add(name);
  }
  if (out.isEmpty) {
    for (final g in (item['genres'] as List?) ?? const []) {
      final name = g is String ? _titleCase(g) : comickGenreNames[_i(g)];
      if (name != null && name.isNotEmpty) out.add(name);
    }
  }
  return out.toSet().toList();
}

List<String> _synonyms(Map item, String title) {
  final seen = <String>{title.toLowerCase()};
  final out = <String>[];
  for (final t in (item['md_titles'] as List?) ?? const []) {
    final name = t is Map ? _s(t['title']) : null;
    if (name != null && seen.add(name.toLowerCase())) out.add(name);
    if (out.length >= 12) break;
  }
  return out;
}

bool _adult(Map item) =>
    item['content_rating'] == 'erotica' ||
    item['content_rating'] == 'pornographic' ||
    item['violence_rating'] == 'sexual_violence';

String _format(Map item, bool anime) {
  if (anime) {
    final kind = _s((item['anime_profiles'] as Map?)?['anime_type']);
    return kind == null ? 'TV' : kind.toUpperCase().replaceAll(' ', '_');
  }
  return switch (_s(item['country'])?.toLowerCase()) {
    'kr' => 'MANHWA',
    'cn' => 'MANHUA',
    _ => 'MANGA',
  };
}

int? _score(Object? rating) {
  final value = _d(rating);
  return value == null || value <= 0 ? null : (value * 10).round();
}

class ComickExtras {
  String hid = '';
  String slug = '';
  int? anilistId;
  int? malId;
  int? kitsuId;
  int? mangabakaId;
  String? mangaUpdatesId;
  String? lastReleasedNumber;
  String? translationStatus;
  double? bayesianRating;
  List<String> authors = const [];
  List<String> artists = const [];
  List<(String, String)> links = const [];
}

final comickExtras = Expando<ComickExtras>('comickExtras');

List<String> _names(Object? list) => [
  for (final a in (list as List?) ?? const [])
    if (a is Map && a['name'] is String)
      a['name'] as String
    else if (a is String)
      a,
];

Media _build(
  Map item, {
  required String hid,
  required String slug,
  required bool anime,
  String? url,
  List<String> authors = const [],
  bool library = false,
}) {
  final title = _s(item['title']) ?? '';
  final country = _s(item['country'])?.toLowerCase();
  final year = _i(item['year']);
  final units = _i(item['last_chapter'] ?? item['total_units']);
  final episodes = _i((item['anime_profiles'] as Map?)?['episodes']) ?? units;
  return Media(
    id: hid,
    name: title,
    nameRomaji: title,
    userPreferredName: title,
    synonyms: _synonyms(item, title),
    cover: _coverUrl(item),
    isAdult: _adult(item),
    meanScore: _score(item['bayesian_rating'] ?? item['rating']),
    genres: _genres(item),
    status: _pubStatus(
      _i(item['publication_status'] ?? (library ? null : item['status'])),
    ),
    format: _format(item, anime),
    description: _s(item['desc'] ?? item['description']),
    countryOfOrigin: country == null || country.isEmpty
        ? null
        : country.toUpperCase(),
    startDate: year != null
        ? Date(year: year)
        : parseComickDate(item['created_at']),
    shareLink: url ?? comickShareLink(slug, anime: anime),
    manga: anime
        ? null
        : Manga(
            totalChapters: units,
            author: authors.isEmpty
                ? null
                : Author(id: '', name: authors.first, role: 'Author'),
          ),
    anime: anime ? Anime(totalEpisodes: episodes) : null,
  );
}

Media mapComickSearchItem(Map<String, dynamic> item) {
  final hid = _s(item['hid']) ?? '${item['id'] ?? ''}';
  final slug = _s(item['slug']) ?? hid;
  final anime = item['media_type'] == 'anime';
  final ext = (item['external_ids'] as Map?)?.cast<String, dynamic>() ?? {};
  final authors = _names(item['authors']);

  final media = _build(
    item,
    hid: hid,
    slug: slug,
    anime: anime,
    url: _s(item['url']),
    authors: authors,
  );
  comickExtras[media] = ComickExtras()
    ..hid = hid
    ..slug = slug
    ..anilistId = _i(ext['anilist'])
    ..malId = _i(ext['myanimelist'])
    ..mangabakaId = _i(ext['mangabaka'])
    ..mangaUpdatesId = _s(ext['mangaupdates'])
    ..bayesianRating = _d(item['bayesian_rating'] ?? item['rating'])
    ..authors = authors
    ..artists = _names(item['artists']);
  return media;
}

Media mapComickLibraryEntry(Map<String, dynamic> item) {
  final hid = _s(item['hid']) ?? '';
  final slug = _s(item['slug']) ?? hid;
  final anime = item['media_type'] == 'anime';
  final rating = _i(item['rating']);
  final progress = item['progress'] as Map?;

  final media =
      _build(
          item,
          hid: hid,
          slug: slug,
          anime: anime,
          url: _s(item['url']),
          library: true,
        )
        ..userStatus = comickStatusIn(_i(item['status']))
        ..userProgress = _d(progress?['number'])?.toInt()
        ..userScore = rating != null && rating > 0 ? rating * 10 : 0;

  comickExtras[media] = ComickExtras()
    ..hid = hid
    ..slug = slug
    ..bayesianRating = _d(item['bayesian_rating'])
    ..lastReleasedNumber = item['last_released_number']?.toString()
    ..translationStatus = item['translation_status']?.toString();
  return media;
}

Media mapComickComicDetail(Map<String, dynamic> data) {
  final comic = (data['comic'] as Map?)?.cast<String, dynamic>() ?? const {};
  final hid = _s(comic['hid']) ?? '';
  final slug = _s(comic['slug']) ?? hid;
  final anime = comic['media_type'] == 'anime';
  final authors = _names(data['authors']);
  final links = (comic['links'] as Map?)?.cast<String, dynamic>() ?? const {};
  final kind = anime ? 'anime' : 'manga';

  final media = _build(
    comic,
    hid: hid,
    slug: slug,
    anime: anime,
    url: _s(comic['canonical_url']),
    authors: authors,
  );
  media.recommendations = [
    for (final r in (data['recommendations'] as List?) ?? const [])
      if (r is Map && (r['relates'] ?? r) is Map)
        mapComickSearchItem(
          ((r['relates'] ?? r) as Map).cast<String, dynamic>(),
        ),
  ];

  comickExtras[media] = ComickExtras()
    ..hid = hid
    ..slug = slug
    ..anilistId = _i(links['al'])
    ..malId = _i(links['mal'])
    ..kitsuId = _i(links['kt'])
    ..mangabakaId = _i(links['mb'])
    ..mangaUpdatesId = _s(links['mu'])
    ..bayesianRating = _d(comic['bayesian_rating'] ?? comic['rating'])
    ..authors = authors
    ..artists = _names(data['artists'])
    ..links = [
      if (links['al'] != null)
        ('AniList', 'https://anilist.co/$kind/${links['al']}'),
      if (links['mal'] != null)
        ('MyAnimeList', 'https://myanimelist.net/$kind/${links['mal']}'),
      if (links['kt'] != null)
        ('Kitsu', 'https://kitsu.io/$kind/${links['kt']}'),
      if (links['mb'] != null)
        ('MangaBaka', 'https://mangabaka.org/${links['mb']}'),
      if (links['mu'] != null)
        ('MangaUpdates', 'https://www.mangaupdates.com/series/${links['mu']}'),
    ];
  return media;
}

Media mapComickScheduleItem(Map<String, dynamic> item) {
  final hid = _s(item['hid']) ?? '${item['id'] ?? ''}';
  final slug = _s(item['slug']) ?? hid;
  final media = _build(item, hid: hid, slug: slug, anime: true);
  comickExtras[media] = ComickExtras()
    ..hid = hid
    ..slug = slug
    ..bayesianRating = _d(item['bayesian_rating'] ?? item['rating']);
  return media;
}
