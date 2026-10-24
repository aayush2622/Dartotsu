import '../../../../Core/Services/Model/Author.dart';
import '../../../../Core/Services/Model/Date.dart';
import '../../../../Core/Services/Model/Manga.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Model/Review.dart';
import '../../../../Core/Services/Model/User.dart';

String mangaUpdatesShareLink(Object id) =>
    'https://www.mangaupdates.com/series.html?id=$id';

const _listTypeToStatus = {
  'read': 'CURRENT',
  'wish': 'PLANNING',
  'complete': 'COMPLETED',
  'hold': 'PAUSED',
  'unfinished': 'DROPPED',
};

const _statusToListType = {
  'CURRENT': 'read',
  'PLANNING': 'wish',
  'COMPLETED': 'complete',
  'PAUSED': 'hold',
  'DROPPED': 'unfinished',
  'REPEATING': 'read',
};

String mangaUpdatesStatusIn(String? type) =>
    _listTypeToStatus[type?.toLowerCase()] ?? 'CURRENT';

String mangaUpdatesStatusOut(String? status) =>
    _statusToListType[status] ?? 'read';

String? _mediaStatus(Map<String, dynamic> s) {
  if (s['completed'] == true) return 'FINISHED';
  final raw = (s['status'] as String? ?? '').toLowerCase();
  if (raw.contains('cancelled') || raw.contains('canceled')) return 'CANCELLED';
  if (raw.contains('hiatus')) return 'HIATUS';
  if (raw.contains('ongoing')) return 'RELEASING';
  return s['status'] != null ? 'RELEASING' : null;
}

class MangaUpdatesRelease {
  final int id;
  final String title;
  final String? chapter;
  final String? volume;
  final List<String> groups;
  final String? releaseDate;

  const MangaUpdatesRelease({
    required this.id,
    required this.title,
    this.chapter,
    this.volume,
    this.groups = const [],
    this.releaseDate,
  });

  String get formattedNumber => [
    if (volume != null && volume!.isNotEmpty) 'Vol $volume',
    if (chapter != null && chapter!.isNotEmpty) 'Ch $chapter',
  ].join(' · ');
}

class MangaUpdatesExtras {
  List<String> authors = const [];
  List<String> artists = const [];
  List<String> publishers = const [];
  int? latestChapter;
  bool licensed = false;
  bool completed = false;
  int? ratingVotes;
  double? bayesianRating;
  String? animeStart;
  String? animeEnd;
  List<MangaUpdatesRelease> releases = const [];
  String? mangaUpdatesUrl;
  int? forumId;
}

final mangaUpdatesExtras = Expando<MangaUpdatesExtras>('mangaUpdatesExtras');

String? _coverUrl(Object? image) {
  if (image is! Map) return null;
  final urlObj = image['url'];
  if (urlObj is Map) {
    final orig = urlObj['original'] as String?;
    if (orig != null && orig.isNotEmpty) return orig;
    final thumb = urlObj['thumb'] as String?;
    if (thumb != null && thumb.isNotEmpty) return thumb;
  }
  if (image['original'] is String) return image['original'] as String;
  return null;
}

Date? _parseYear(Object? year) {
  if (year == null) return null;
  final y = int.tryParse('$year');
  return y == null ? null : Date(year: y);
}

Media mapMangaUpdatesSeries(Map<String, dynamic> s) {
  final id = s['series_id'] ?? s['id'];
  final title = '${s['title'] ?? ''}';
  final type = (s['type'] as String?) ?? 'Manga';
  final desc = s['description'] as String?;
  final bayesian = (s['bayesian_rating'] as num?)?.toDouble();
  final votes = (s['rating_votes'] as num?)?.toInt();
  final latestChapter = (s['latest_chapter'] as num?)?.toInt();
  final url = s['url'] as String? ?? mangaUpdatesShareLink(id);

  final authorsList = <String>[];
  final artistsList = <String>[];
  for (final a in (s['authors'] as List?) ?? const []) {
    if (a is Map) {
      final name = a['name'] as String?;
      final role = (a['type'] as String? ?? 'Author').toLowerCase();
      if (name != null && name.isNotEmpty) {
        if (role == 'artist') {
          artistsList.add(name);
        } else {
          authorsList.add(name);
        }
      }
    }
  }

  final publishersList = <String>[];
  for (final p in (s['publishers'] as List?) ?? const []) {
    if (p is Map) {
      final name = p['publisher_name'] as String?;
      if (name != null && name.isNotEmpty) publishersList.add(name);
    }
  }

  final genres = <String>[
    for (final g in (s['genres'] as List?) ?? const [])
      if (g is Map && g['genre'] is String) g['genre'] as String,
  ];

  final categories = <String>[
    for (final c in (s['categories'] as List?) ?? const [])
      if (c is Map && c['category'] is String) c['category'] as String,
  ];

  final synonyms = <String>[
    for (final a in (s['associated'] as List?) ?? const [])
      if (a is Map && a['title'] is String && a['title'] != title)
        a['title'] as String,
  ];

  final isAdult = genres.any(
    (g) => const {'Adult', 'Hentai', 'Smut', 'Lolicon', 'Shotacon'}.contains(g),
  );

  final media = Media(
    id: '$id',
    name: title,
    nameRomaji: title,
    cover: _coverUrl(s['image']),
    isAdult: isAdult,
    meanScore: bayesian != null && bayesian > 0
        ? (bayesian * 10).round().clamp(0, 100)
        : null,
    genres: genres,
    tags: categories,
    status: _mediaStatus(s),
    format: type.toUpperCase(),
    description: desc?.trim(),
    synonyms: synonyms,
    startDate: _parseYear(s['year']),
    shareLink: url,
    manga: Manga(
      totalChapters: latestChapter,
      author: authorsList.isEmpty
          ? null
          : Author(id: '', name: authorsList.first, role: 'Author'),
    ),
  );

  final relations = <Media>[
    for (final r in (s['related_series'] as List?) ?? const [])
      if (r is Map && r['related_series_id'] != null)
        Media(
          id: '${r['related_series_id']}',
          name: '${r['related_series_name'] ?? ''}',
          relation: r['relation_type'] as String?,
          shareLink: '${r['related_series_url'] ?? ''}',
        ),
  ];

  final recommendations = <Media>[
    for (final rec in (s['recommendations'] as List?) ?? const [])
      if (rec is Map && rec['series_id'] != null)
        Media(
          id: '${rec['series_id']}',
          name: '${rec['series_name'] ?? ''}',
          cover: _coverUrl(rec['series_image']),
          shareLink: '${rec['series_url'] ?? ''}',
        ),
  ];

  if (relations.isNotEmpty) media.relations = relations;
  if (recommendations.isNotEmpty) media.recommendations = recommendations;

  final animeObj = s['anime'] is Map ? s['anime'] as Map : null;

  mangaUpdatesExtras[media] = MangaUpdatesExtras()
    ..authors = authorsList
    ..artists = artistsList
    ..publishers = publishersList
    ..latestChapter = latestChapter
    ..licensed = s['licensed'] == true
    ..completed = s['completed'] == true
    ..ratingVotes = votes
    ..bayesianRating = bayesian
    ..mangaUpdatesUrl = url
    ..forumId = (s['forum_id'] as num?)?.toInt()
    ..animeStart = animeObj?['start'] as String?
    ..animeEnd = animeObj?['end'] as String?;

  return media;
}

void applyMangaUpdatesEntry(
  Media media,
  Map<String, dynamic> record, {
  Map<String, dynamic>? metadata,
}) {
  final listType = record['list_type'] as String?;
  final status = record['status'] as Map?;
  final chapter = (status?['chapter'] as num?)?.toInt() ?? 0;
  final userRating = (metadata?['user_rating'] as num?)?.toDouble();

  media
    ..userStatus = mangaUpdatesStatusIn(listType)
    ..userProgress = chapter
    ..userListId = (record['list_id'] as num?)?.toInt();

  if (userRating != null && userRating > 0) {
    media.userScore = (userRating * 10).round().clamp(0, 100);
  }
}

Review mapMangaUpdatesReview(Map<String, dynamic> r) {
  final id = (r['id'] as num?)?.toInt() ?? 0;
  final series = r['series'] as Map?;
  final seriesId = (series?['series_id'] as num?)?.toInt() ?? 0;
  final author = r['author'] as Map?;
  final authorName = author?['name'] as String? ?? 'Anonymous';
  final authorId = (author?['user_id'] as num?)?.toInt() ?? 0;
  final rev = r['review'] as Map?;
  final overall = (rev?['overall'] as num?)?.toDouble() ?? 5.0;
  final stamp = (r['time_added'] as Map?)?['timestamp'] as num?;

  return Review(
    id: id,
    mediaId: seriesId,
    mediaType: 'MANGA',
    summary: r['title'] as String?,
    body: r['body_excerpt'] as String? ?? r['body'] as String?,
    score: (overall * 20).round().clamp(0, 100),
    createdAt: stamp?.toInt(),
    user: User(id: authorId, name: authorName),
  );
}

MangaUpdatesRelease mapMangaUpdatesRelease(Map<String, dynamic> r) {
  final id = (r['id'] as num?)?.toInt() ?? 0;
  final title = '${r['title'] ?? ''}';
  final chapter = r['chapter'] as String?;
  final volume = r['volume'] as String?;
  final groups = <String>[
    for (final g in (r['groups'] as List?) ?? const [])
      if (g is Map && g['name'] is String) g['name'] as String,
  ];
  return MangaUpdatesRelease(
    id: id,
    title: title,
    chapter: chapter,
    volume: volume,
    groups: groups,
    releaseDate: r['release_date'] as String?,
  );
}
