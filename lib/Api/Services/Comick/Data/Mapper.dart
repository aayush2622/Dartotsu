import '../../../../Core/Services/Model/Anime.dart';
import '../../../../Core/Services/Model/Author.dart';
import '../../../../Core/Services/Model/Date.dart';
import '../../../../Core/Services/Model/Manga.dart';
import '../../../../Core/Services/Model/Media.dart';

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

Date? parseComickDate(Object? raw) {
  if (raw is! String || raw.length < 4) return null;
  final p = raw.split('T').first.split('-').map(int.tryParse).toList();
  return Date(
    year: p.isNotEmpty ? p[0] : null,
    month: p.length > 1 ? p[1] : null,
    day: p.length > 2 ? p[2] : null,
  );
}

String? _coverUrl(dynamic item) {
  if (item is! Map) return null;
  final direct = item['cover_url'];
  if (direct is String && direct.isNotEmpty) return direct;

  final b2key = item['b2key'];
  if (b2key is String && b2key.isNotEmpty) {
    return 'https://meo.comick.pictures/$b2key';
  }

  final covers = item['md_covers'];
  if (covers is List && covers.isNotEmpty) {
    for (final c in covers) {
      if (c is Map) {
        final key = c['b2key'];
        if (key is String && key.isNotEmpty) {
          return 'https://meo.comick.pictures/$key';
        }
        final gpurl = c['gpurl'];
        if (gpurl is String && gpurl.isNotEmpty) return gpurl;
      }
    }
  }
  return null;
}

String _titleCase(String s) => s
    .replaceAll(RegExp(r'[_-]'), ' ')
    .split(' ')
    .map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}')
    .join(' ');

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

Media mapComickSearchItem(Map<String, dynamic> item) {
  final hid = item['hid'] as String? ?? '${item['id'] ?? ''}';
  final slug = item['slug'] as String? ?? hid;
  final isAnime = item['media_type'] == 'anime';
  final title = item['title'] as String? ?? '';
  final desc = (item['desc'] ?? item['description']) as String?;
  final bayesian = (item['bayesian_rating'] ?? item['rating']) as num?;
  final score = bayesian != null && bayesian > 0 ? (bayesian * 10).round() : null;
  final year = (item['year'] as num?)?.toInt();
  final status = _pubStatus((item['status'] ?? item['publication_status']) as int?);

  final country = (item['country'] as String?)?.toLowerCase();
  final format = isAnime
      ? 'TV'
      : switch (country) {
          'kr' => 'MANHWA',
          'cn' => 'MANHUA',
          _ => 'MANGA',
        };

  final ext = (item['external_ids'] as Map?)?.cast<String, dynamic>() ?? const {};
  final authors = [
    for (final a in (item['authors'] as List?) ?? const [])
      if (a is Map && a['name'] is String) a['name'] as String
      else if (a is String) a,
  ];
  final artists = [
    for (final a in (item['artists'] as List?) ?? const [])
      if (a is Map && a['name'] is String) a['name'] as String
      else if (a is String) a,
  ];

  final genres = <String>[
    for (final g in (item['genres'] as List?) ?? const [])
      if (g is String) _titleCase(g)
      else if (g is Map && g['name'] is String) _titleCase(g['name'] as String)
      else if (g is Map && g['md_genres'] is Map && (g['md_genres'] as Map)['name'] is String)
        _titleCase((g['md_genres'] as Map)['name'] as String),
  ];

  final lastChapter = item['last_chapter'];
  final lastUnits = lastChapter is num ? lastChapter.toInt() : int.tryParse('$lastChapter');

  final media = Media(
    id: hid,
    name: title,
    cover: _coverUrl(item),
    isAdult: item['content_rating'] == 'erotica' ||
        item['content_rating'] == 'pornographic' ||
        item['violence_rating'] == 'sexual_violence',
    meanScore: score,
    genres: genres,
    status: status,
    format: format,
    description: desc,
    countryOfOrigin: country?.toUpperCase(),
    startDate: year != null ? Date(year: year) : parseComickDate(item['created_at'] ?? item['uploaded_at']),
    shareLink: (item['url'] as String?) ?? comickShareLink(slug, anime: isAnime),
    manga: isAnime
        ? null
        : Manga(
            totalChapters: lastUnits,
            author: authors.isNotEmpty ? Author(id: '', name: authors.first, role: 'Author') : null,
          ),
    anime: isAnime ? Anime(totalEpisodes: lastUnits) : null,
  );

  comickExtras[media] = ComickExtras()
    ..hid = hid
    ..slug = slug
    ..anilistId = int.tryParse('${ext['anilist'] ?? ''}')
    ..malId = int.tryParse('${ext['myanimelist'] ?? ''}')
    ..mangabakaId = int.tryParse('${ext['mangabaka'] ?? ''}')
    ..mangaUpdatesId = ext['mangaupdates']?.toString()
    ..bayesianRating = bayesian?.toDouble()
    ..authors = authors
    ..artists = artists;

  return media;
}

Media mapComickLibraryEntry(Map<String, dynamic> item) {
  final hid = item['hid'] as String? ?? '';
  final slug = item['slug'] as String? ?? hid;
  final isAnime = item['media_type'] == 'anime';
  final title = item['title'] as String? ?? '';
  final statusInt = item['status'] as int?;
  final userRating = (item['rating'] as num?)?.toInt();
  final bayesian = (item['bayesian_rating'] as num?)?.toDouble();
  final score = bayesian != null && bayesian > 0 ? (bayesian * 10).round() : null;
  final pubStatus = _pubStatus(item['publication_status'] as int?);
  final country = (item['country'] as String?)?.toLowerCase();

  final progress = item['progress'] as Map?;
  final progNumStr = progress?['number']?.toString();
  final progNum = progNumStr != null ? double.tryParse(progNumStr)?.toInt() : null;

  final totalUnits = (item['total_units'] as num?)?.toInt();

  final format = isAnime
      ? 'TV'
      : switch (country) {
          'kr' => 'MANHWA',
          'cn' => 'MANHUA',
          _ => 'MANGA',
        };

  final media = Media(
    id: hid,
    name: title,
    cover: _coverUrl(item),
    meanScore: score,
    status: pubStatus,
    format: format,
    countryOfOrigin: country?.toUpperCase(),
    shareLink: (item['url'] as String?) ?? comickShareLink(slug, anime: isAnime),
    userStatus: comickStatusIn(statusInt),
    userProgress: progNum,
    userScore: userRating != null && userRating > 0 ? userRating * 10 : 0,
    manga: isAnime ? null : Manga(totalChapters: totalUnits),
    anime: isAnime ? Anime(totalEpisodes: totalUnits) : null,
  );

  comickExtras[media] = ComickExtras()
    ..hid = hid
    ..slug = slug
    ..bayesianRating = bayesian
    ..lastReleasedNumber = item['last_released_number']?.toString()
    ..translationStatus = item['translation_status']?.toString();

  return media;
}

Media mapComickComicDetail(Map<String, dynamic> data) {
  final comic = (data['comic'] as Map?)?.cast<String, dynamic>() ?? const {};
  final hid = comic['hid'] as String? ?? '';
  final slug = comic['slug'] as String? ?? hid;
  final isAnime = comic['media_type'] == 'anime';
  final title = comic['title'] as String? ?? '';
  final desc = (comic['desc'] ?? comic['description']) as String?;
  final bayesian = (comic['bayesian_rating'] ?? comic['rating']) as num?;
  final score = bayesian != null && bayesian > 0 ? (bayesian * 10).round() : null;
  final year = (comic['year'] as num?)?.toInt();
  final status = _pubStatus(comic['status'] as int?);
  final country = (comic['country'] as String?)?.toLowerCase();

  final authors = [
    for (final a in (data['authors'] as List?) ?? const [])
      if (a is Map && a['name'] is String) a['name'] as String,
  ];
  final artists = [
    for (final a in (data['artists'] as List?) ?? const [])
      if (a is Map && a['name'] is String) a['name'] as String,
  ];

  final genres = <String>[
    for (final g in (comic['md_comic_md_genres'] as List?) ?? const [])
      if (g is Map && g['md_genres'] is Map && (g['md_genres'] as Map)['name'] is String)
        _titleCase((g['md_genres'] as Map)['name'] as String),
  ];

  final linksObj = (comic['links'] as Map?)?.cast<String, dynamic>() ?? const {};
  final externalLinks = <(String, String)>[
    if (linksObj['al'] != null)
      ('AniList', 'https://anilist.co/${isAnime ? 'anime' : 'manga'}/${linksObj['al']}'),
    if (linksObj['mal'] != null)
      ('MyAnimeList', 'https://myanimelist.net/${isAnime ? 'anime' : 'manga'}/${linksObj['mal']}'),
    if (linksObj['kt'] != null)
      ('Kitsu', 'https://kitsu.io/${isAnime ? 'anime' : 'manga'}/${linksObj['kt']}'),
    if (linksObj['mb'] != null)
      ('MangaBaka', 'https://mangabaka.org/${linksObj['mb']}'),
    if (linksObj['mu'] != null)
      ('MangaUpdates', 'https://www.mangaupdates.com/series/${linksObj['mu']}'),
    if (comic['canonical_url'] is String)
      ('Comick', comic['canonical_url'] as String),
  ];

  final lastChapter = comic['last_chapter'];
  final totalChapters = lastChapter is num ? lastChapter.toInt() : int.tryParse('$lastChapter');

  final format = isAnime
      ? 'TV'
      : switch (country) {
          'kr' => 'MANHWA',
          'cn' => 'MANHUA',
          _ => 'MANGA',
        };

  final media = Media(
    id: hid,
    name: title,
    cover: _coverUrl(comic),
    isAdult: comic['content_rating'] == 'erotica' ||
        comic['content_rating'] == 'pornographic' ||
        comic['violence_rating'] == 'sexual_violence',
    meanScore: score,
    genres: genres,
    status: status,
    format: format,
    description: desc,
    countryOfOrigin: country?.toUpperCase(),
    startDate: year != null ? Date(year: year) : null,
    shareLink: (comic['canonical_url'] as String?) ?? comickShareLink(slug, anime: isAnime),
    manga: isAnime
        ? null
        : Manga(
            totalChapters: totalChapters,
            author: authors.isNotEmpty ? Author(id: '', name: authors.first, role: 'Author') : null,
          ),
    anime: isAnime ? Anime(totalEpisodes: totalChapters) : null,
  );

  comickExtras[media] = ComickExtras()
    ..hid = hid
    ..slug = slug
    ..anilistId = int.tryParse('${linksObj['al'] ?? ''}')
    ..malId = int.tryParse('${linksObj['mal'] ?? ''}')
    ..kitsuId = int.tryParse('${linksObj['kt'] ?? ''}')
    ..mangabakaId = int.tryParse('${linksObj['mb'] ?? ''}')
    ..mangaUpdatesId = linksObj['mu']?.toString()
    ..bayesianRating = bayesian?.toDouble()
    ..authors = authors
    ..artists = artists
    ..links = externalLinks;

  return media;
}

Media mapComickScheduleItem(Map<String, dynamic> item) {
  final hid = item['hid'] as String? ?? '${item['id'] ?? ''}';
  final slug = item['slug'] as String? ?? hid;
  final title = item['title'] as String? ?? '';
  final desc = item['desc'] as String?;
  final year = (item['year'] as num?)?.toInt();
  final status = _pubStatus(item['status'] as int?);
  final bayesian = (item['rating'] ?? item['bayesian_rating']) as num?;
  final score = bayesian != null && bayesian > 0 ? (bayesian * 10).round() : null;

  final profile = (item['anime_profiles'] as Map?)?.cast<String, dynamic>();
  final epCount = (profile?['episodes'] as num?)?.toInt();

  final media = Media(
    id: hid,
    name: title,
    cover: _coverUrl(item),
    isAdult: item['content_rating'] == 'erotica' || item['content_rating'] == 'pornographic',
    meanScore: score,
    status: status,
    format: 'TV',
    description: desc,
    startDate: year != null ? Date(year: year) : null,
    shareLink: comickShareLink(slug, anime: true),
    anime: Anime(totalEpisodes: epCount),
  );

  comickExtras[media] = ComickExtras()
    ..hid = hid
    ..slug = slug
    ..bayesianRating = bayesian?.toDouble();

  return media;
}
