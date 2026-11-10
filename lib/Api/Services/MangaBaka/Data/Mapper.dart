import '../../../../Core/Services/Model/Author.dart';
import '../../../../Core/Services/Model/Date.dart';
import '../../../../Core/Services/Model/Manga.dart';
import '../../../../Core/Services/Model/Media.dart';

String mangaBakaShareLink(Object id) => 'https://mangabaka.org/$id';

const _stateIn = {
  'considering': 'PLANNING',
  'plan_to_read': 'PLANNING',
  'reading': 'CURRENT',
  'completed': 'COMPLETED',
  'rereading': 'REPEATING',
  'paused': 'PAUSED',
  'dropped': 'DROPPED',
};

const _stateOut = {
  'PLANNING': 'plan_to_read',
  'CURRENT': 'reading',
  'COMPLETED': 'completed',
  'REPEATING': 'rereading',
  'PAUSED': 'paused',
  'DROPPED': 'dropped',
};

String? mangaBakaStateIn(String? state) => _stateIn[state];

String mangaBakaStateOut(String? status) => _stateOut[status] ?? 'reading';

const _adultRatings = {'erotica', 'pornographic'};

String? _status(String? s) => switch (s) {
  'releasing' => 'RELEASING',
  'completed' => 'FINISHED',
  'upcoming' => 'NOT_YET_RELEASED',
  'cancelled' => 'CANCELLED',
  'hiatus' => 'HIATUS',
  _ => null,
};

Date? parseMangaBakaDate(Object? raw) {
  if (raw is! String || raw.length < 4) return null;
  final p = raw.split('T').first.split('-').map(int.tryParse).toList();
  return Date(
    year: p.isNotEmpty ? p[0] : null,
    month: p.length > 1 ? p[1] : null,
    day: p.length > 2 ? p[2] : null,
  );
}

String? mangaBakaDateOut(Date? d) {
  if (d?.year == null) return null;
  final m = (d!.month ?? 1).toString().padLeft(2, '0');
  final day = (d.day ?? 1).toString().padLeft(2, '0');
  return '${d.year}-$m-$day';
}

int? mangaBakaEpoch(Object? iso) {
  final t = iso is String ? DateTime.tryParse(iso) : null;
  return t == null ? null : t.millisecondsSinceEpoch ~/ 1000;
}

String _titleCase(String s) => s
    .replaceAll(RegExp(r'[_-]'), ' ')
    .split(' ')
    .map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}')
    .join(' ');

String? _cover(Object? cover) {
  if (cover is! Map) return null;
  final raw = cover['raw'];
  if (raw is Map) {
    final url = raw['url'];
    final size = raw['size'];
    if (url is String &&
        url.isNotEmpty &&
        size is num &&
        size > 0 &&
        size < 400000) {
      return url;
    }
  }
  for (final size in const ['x350', 'x250']) {
    final value = cover[size];
    final url = value is Map ? value['x2'] ?? value['x1'] : value;
    if (url is String && url.isNotEmpty) return url;
  }
  final url = raw is Map ? raw['url'] : raw;
  return url is String && url.isNotEmpty ? url : null;
}

String? _primary(List<dynamic> titles) {
  for (final t in titles) {
    if (t is Map && t['is_primary'] == true && t['title'] is String) {
      return t['title'] as String;
    }
  }
  for (final t in titles) {
    if (t is Map && t['title'] is String) return t['title'] as String;
  }
  return null;
}

String? _english(List<dynamic> titles) {
  final matches = [
    for (final t in titles)
      if (t is Map && t['language'] == 'en' && t['title'] is String) t,
  ];
  if (matches.isEmpty) return null;
  int rank(Map t) {
    if (t['is_primary'] == true) return 0;
    final traits = (t['traits'] as List?) ?? const [];
    if (traits.contains('official')) return 1;
    return 2;
  }

  matches.sort((a, b) => rank(a).compareTo(rank(b)));
  return matches.first['title'] as String;
}

class MangaBakaExtras {
  String? finalVolume;
  int? popularityRank;
  String? contentRating;
  String? language;
  bool licensed = false;
  List<String> authors = const [];
  List<String> artists = const [];
  List<String> publishers = const [];
  List<(String, String)> links = const [];
  bool hasAnime = false;
  int? anilistId;
  int? malId;
}

final mangaBakaExtras = Expando<MangaBakaExtras>('mangaBakaExtras');

bool isMangaBakaAdult(Map<String, dynamic> s) =>
    _adultRatings.contains(s['content_rating']);

Media mapMangaBakaSeries(Map<String, dynamic> s) {
  final titles = (s['titles'] as List?) ?? const [];
  final main = (s['title'] as String?) ?? _primary(titles);
  final english = _english(titles) ?? main;
  final native = s['native_title'] as String?;
  final authors = [
    for (final a in (s['authors'] as List?) ?? const [])
      if (a is String && a.isNotEmpty) a,
  ];
  final artists = [
    for (final a in (s['artists'] as List?) ?? const [])
      if (a is String && a.isNotEmpty) a,
  ];
  final published = (s['published'] as Map?)?.cast<String, dynamic>();
  final rating = (s['rating'] as num?)?.toDouble();
  final tags = [
    for (final t in (s['tags_v2'] as List?) ?? const [])
      if (t is Map && t['is_spoiler'] != true && t['name'] is String)
        t['name'] as String,
  ];
  final source = (s['source'] as Map?)?.cast<String, dynamic>() ?? const {};
  final type = (s['type'] as String?) ?? 'manga';
  final id = s['id'];
  final media = Media(
    id: '$id',
    name: english,
    nameRomaji: (s['romanized_title'] as String?) ?? main,
    cover: _cover(s['cover']),
    isAdult: isMangaBakaAdult(s),
    meanScore: rating == null || rating <= 0 ? null : rating.round(),
    genres: [
      for (final g in (s['genres'] as List?) ?? const [])
        if (g is String) _titleCase(g),
    ],
    tags: tags,
    status: _status(s['status'] as String?),
    format: type.toUpperCase(),
    description: (s['description'] as String?)?.trim(),
    synonyms: {
      for (final t in titles)
        if (t is Map && t['title'] is String && t['title'] != english)
          t['title'] as String,
      ?native,
    }.toList(),
    startDate: parseMangaBakaDate(published?['start_date']),
    endDate: parseMangaBakaDate(published?['end_date']),
    countryOfOrigin: switch (s['original_language']) {
      'ja' => 'JP',
      'ko' => 'KR',
      'zh' => 'CN',
      _ => null,
    },
    shareLink: (s['canonical_url'] as String?) ?? mangaBakaShareLink(id),
    manga: Manga(
      totalChapters: int.tryParse('${s['total_chapters'] ?? ''}'),
      author: authors.isEmpty
          ? null
          : Author(id: '', name: authors.first, role: 'Author'),
    ),
  );
  final publishers = [
    for (final p in (s['publishers'] as List?) ?? const [])
      if (p is Map && p['name'] is String) p['name'] as String,
  ];
  final links = <(String, String)>[
    if (source['anilist'] is Map && (source['anilist'] as Map)['id'] != null)
      (
        'AniList',
        'https://anilist.co/manga/${(source['anilist'] as Map)['id']}',
      ),
    if (source['my_anime_list'] is Map &&
        (source['my_anime_list'] as Map)['id'] != null)
      (
        'MyAnimeList',
        'https://myanimelist.net/manga/${(source['my_anime_list'] as Map)['id']}',
      ),
    for (final l in (s['links_v2'] as List?) ?? const [])
      if (l is Map && l['url'] is String)
        (
          (l['name_display'] ?? l['name'] ?? Uri.tryParse(l['url'])?.host ?? '')
              as String,
          l['url'] as String,
        ),
  ];
  mangaBakaExtras[media] = MangaBakaExtras()
    ..finalVolume = s['final_volume']?.toString()
    ..popularityRank =
        (((s['popularity'] as Map?)?['global'] as Map?)?['current'] as num?)
            ?.toInt()
    ..contentRating = s['content_rating'] as String?
    ..language = s['original_language'] as String?
    ..licensed = s['is_licensed'] == true
    ..authors = authors
    ..artists = artists
    ..publishers = publishers
    ..links = links
    ..hasAnime = s['has_anime'] == true
    ..anilistId = int.tryParse('${(source['anilist'] as Map?)?['id'] ?? ''}')
    ..malId = int.tryParse('${(source['my_anime_list'] as Map?)?['id'] ?? ''}');
  return media;
}

void applyMangaBakaEntry(Media media, Map<String, dynamic> e, int scale) {
  final rating = (e['rating'] as num?)?.toDouble() ?? 0;
  media
    ..userStatus = mangaBakaStateIn(e['state'] as String?)
    ..userScore = (rating * scale).round().clamp(0, 100)
    ..userProgress = (e['progress_chapter'] as num?)?.toInt() ?? 0
    ..userRepeat = (e['number_of_rereads'] as num?)?.toInt() ?? 0
    ..notes = e['note'] as String?
    ..isListPrivate = e['is_private'] == true
    ..userStartedAt = parseMangaBakaDate(e['start_date'])
    ..userCompletedAt = parseMangaBakaDate(e['finish_date'])
    ..userListId = (e['id'] as num?)?.toInt()
    ..userUpdatedAt = mangaBakaEpoch(e['updated_at']);
}

int mangaBakaRatingScale(Iterable<Map<String, dynamic>> entries) {
  for (final e in entries) {
    final r = (e['rating'] as num?)?.toDouble() ?? 0;
    if (r > 10) return 1;
  }
  return 10;
}
