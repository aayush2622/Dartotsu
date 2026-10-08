import '../../../../Core/Services/Model/Anime.dart';
import '../../../../Core/Services/Model/Author.dart';
import '../../../../Core/Services/Model/Character.dart';
import '../../../../Core/Services/Model/Date.dart';
import '../../../../Core/Services/Model/Manga.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Model/Review.dart';
import '../../../../Core/Services/Model/Studio.dart';
import '../../../../Core/Services/Model/User.dart';

String malMediaId(bool anime, Object id) => '${anime ? 'anime' : 'manga'}/$id';

(bool, int)? parseMalMediaId(String id) {
  final parts = id.split('/');
  if (parts.length == 1) {
    final n = int.tryParse(parts[0]);
    return n == null ? null : (true, n);
  }
  final n = int.tryParse(parts[1]);
  return n == null ? null : (parts[0] != 'manga', n);
}

String malShareLink(bool anime, Object id) =>
    'https://myanimelist.net/${anime ? 'anime' : 'manga'}/$id';

const _statusToMal = {
  'CURRENT': ['watching', 'reading'],
  'PLANNING': ['plan_to_watch', 'plan_to_read'],
  'COMPLETED': ['completed', 'completed'],
  'PAUSED': ['on_hold', 'on_hold'],
  'DROPPED': ['dropped', 'dropped'],
  'REPEATING': ['completed', 'completed'],
};

String? malStatusOut(String? status, {required bool anime}) {
  final pair = _statusToMal[status];
  return pair?[anime ? 0 : 1];
}

String? malStatusIn(String? status, {bool repeating = false}) {
  if (repeating) return 'REPEATING';
  return switch (status) {
    'watching' || 'reading' => 'CURRENT',
    'plan_to_watch' || 'plan_to_read' => 'PLANNING',
    'completed' => 'COMPLETED',
    'on_hold' => 'PAUSED',
    'dropped' => 'DROPPED',
    _ => null,
  };
}

String? _airStatus(String? s) => switch (s?.toLowerCase().replaceAll(
  ' ',
  '_',
)) {
  'currently_airing' || 'currently_publishing' || 'publishing' => 'RELEASING',
  'finished_airing' || 'finished' => 'FINISHED',
  'not_yet_aired' ||
  'not_yet_published' ||
  'not_yet_released' => 'NOT_YET_RELEASED',
  'on_hiatus' => 'HIATUS',
  'discontinued' => 'CANCELLED',
  _ => null,
};

String? _format(String? t) {
  if (t == null || t.isEmpty) return null;
  final u = t.toUpperCase().replaceAll(' ', '_');
  return switch (u) {
    'LIGHT_NOVEL' => 'NOVEL',
    'TV_SPECIAL' => 'SPECIAL',
    'CM' || 'PV' => 'SPECIAL',
    _ => u,
  };
}

Date? parseMalDate(Object? raw) {
  if (raw is! String || raw.isEmpty) return null;
  final p = raw.split('-').map(int.tryParse).toList();
  return Date(
    year: p.isNotEmpty ? p[0] : null,
    month: p.length > 1 ? p[1] : null,
    day: p.length > 2 ? p[2] : null,
  );
}

String? malDateOut(Date? d) {
  if (d?.year == null) return null;
  final m = (d!.month ?? 1).toString().padLeft(2, '0');
  final day = (d.day ?? 1).toString().padLeft(2, '0');
  return '${d.year}-$m-$day';
}

int? _positive(Object? v) {
  final n = (v as num?)?.toInt();
  return n == null || n <= 0 ? null : n;
}

Media mapMalMedia(Map<String, dynamic> node, {required bool anime}) {
  final id = node['id'];
  final alt = node['alternative_titles'] as Map<String, dynamic>? ?? const {};
  final english = (alt['en'] as String?)?.trim();
  final title = node['title'] as String?;
  final season = node['start_season'] as Map<String, dynamic>?;
  final studios = (node['studios'] as List?) ?? const [];
  final authors = (node['authors'] as List?) ?? const [];
  final picture = node['main_picture'] as Map<String, dynamic>?;
  final mean = (node['mean'] as num?)?.toDouble();
  final media = Media(
    id: malMediaId(anime, id),
    name: english != null && english.isNotEmpty ? english : title,
    nameRomaji: title,
    cover: (picture?['large'] ?? picture?['medium']) as String?,
    isAdult: node['nsfw'] == 'black',
    meanScore: mean == null ? null : (mean * 10).round(),
    genres: [
      for (final g in (node['genres'] as List?) ?? const [])
        (g as Map)['name'] as String,
    ],
    status: _airStatus(node['status'] as String?),
    format: _format(node['media_type'] as String?),
    source: (node['source'] as String?)?.toUpperCase(),
    description: node['synopsis'] as String?,
    synonyms: [
      ...((alt['synonyms'] as List?) ?? const []).cast<String>(),
      if ((alt['ja'] as String?)?.isNotEmpty ?? false) alt['ja'] as String,
    ],
    startDate: parseMalDate(node['start_date']),
    endDate: parseMalDate(node['end_date']),
    popularity: (node['num_list_users'] as num?)?.toInt(),
    shareLink: malShareLink(anime, id),
    anime: anime
        ? Anime(
            totalEpisodes: _positive(node['num_episodes']),
            episodeDuration: _positive(
              ((node['average_episode_duration'] as num?) ?? 0) ~/ 60,
            ),
            season: (season?['season'] as String?)?.toUpperCase(),
            seasonYear: (season?['year'] as num?)?.toInt(),
            studio: studios.isEmpty
                ? null
                : Studio(
                    id: '${(studios.first as Map)['id']}',
                    name: '${(studios.first as Map)['name']}',
                  ),
          )
        : null,
    manga: anime
        ? null
        : Manga(
            totalChapters: _positive(node['num_chapters']),
            author: authors.isEmpty
                ? null
                : Author(
                    id: '${((authors.first as Map)['node'] as Map)['id']}',
                    name:
                        '${((authors.first as Map)['node'] as Map)['first_name'] ?? ''} ${((authors.first as Map)['node'] as Map)['last_name'] ?? ''}'
                            .trim(),
                  ),
          ),
  );
  final list = (node['my_list_status'] ?? node['list_status']) as Map?;
  if (list != null) applyMalListStatus(media, list.cast<String, dynamic>());
  _related(media, node, anime);
  return media;
}

void applyMalListStatus(Media media, Map<String, dynamic> s) {
  final anime = media.isAnime;
  media
    ..userStatus = malStatusIn(
      s['status'] as String?,
      repeating: s[anime ? 'is_rewatching' : 'is_rereading'] == true,
    )
    ..userScore = ((s['score'] as num?)?.toInt() ?? 0) * 10
    ..userProgress =
        (s[anime ? 'num_episodes_watched' : 'num_chapters_read'] as num?)
            ?.toInt() ??
        0
    ..userRepeat =
        (s[anime ? 'num_times_rewatched' : 'num_times_reread'] as num?)
            ?.toInt() ??
        0
    ..notes = s['comments'] as String?
    ..userStartedAt = parseMalDate(s['start_date'])
    ..userCompletedAt = parseMalDate(s['finish_date'])
    ..userListId = int.tryParse(media.id.split('/').last)
    ..userUpdatedAt = _epoch(s['updated_at']);
}

void _related(Media media, Map<String, dynamic> node, bool anime) {
  Media? rel(Map e, bool a) => e['node'] is Map
      ? (mapMalMedia((e['node'] as Map).cast<String, dynamic>(), anime: a)
          ..relation = e['relation_type_formatted'] as String?)
      : null;
  final related = <Media>[];
  for (final (key, a) in [('related_anime', true), ('related_manga', false)]) {
    for (final e in (node[key] as List?) ?? const []) {
      final m = rel(e as Map, a);
      if (m == null) continue;
      related.add(m);
      if (e['relation_type'] == 'prequel') media.prequel ??= m;
      if (e['relation_type'] == 'sequel') media.sequel ??= m;
    }
  }
  if (related.isNotEmpty) media.relations = related;
  final recs = <Media>[
    for (final e in (node['recommendations'] as List?) ?? const [])
      if ((e as Map)['node'] is Map)
        mapMalMedia((e['node'] as Map).cast<String, dynamic>(), anime: anime),
  ];
  if (recs.isNotEmpty) media.recommendations = recs;
}

Media mapTenraiMedia(Map<String, dynamic> n, {required bool anime}) {
  final id = n['mal_id'];
  final jpg = (n['images'] as Map?)?['jpg'] as Map?;
  final score = (n['score'] as num?)?.toDouble();
  final aired = (n['aired'] ?? n['published']) as Map?;
  final from = (aired?['prop'] as Map?)?['from'] as Map?;
  final to = (aired?['prop'] as Map?)?['to'] as Map?;
  Date? date(Map? m) => m == null || m['year'] == null
      ? null
      : Date(
          year: (m['year'] as num).toInt(),
          month: (m['month'] as num?)?.toInt(),
          day: (m['day'] as num?)?.toInt(),
        );
  final english = (n['title_english'] as String?)?.trim();
  final studios = (n['studios'] as List?) ?? const [];
  final authors = (n['authors'] as List?) ?? const [];
  final genres = [
    for (final key in ['genres', 'explicit_genres', 'themes', 'demographics'])
      for (final g in (n[key] as List?) ?? const [])
        (g as Map)['name'] as String,
  ];
  final synonyms = [
    for (final t in (n['titles'] as List?) ?? const [])
      if ((t as Map)['type'] == 'Synonym' || t['type'] == 'Japanese')
        t['title'] as String,
  ];
  return Media(
    id: malMediaId(anime, id),
    name: english != null && english.isNotEmpty
        ? english
        : n['title'] as String?,
    nameRomaji: n['title'] as String?,
    cover: (jpg?['large_image_url'] ?? jpg?['image_url']) as String?,
    isAdult: (n['rating'] as String?)?.startsWith('Rx') ?? false,
    meanScore: score == null ? null : (score * 10).round(),
    genres: genres,
    status: _airStatus(n['status'] as String?),
    format: _format(n['type'] as String?),
    source: (n['source'] as String?)?.toUpperCase().replaceAll(' ', '_'),
    description: n['synopsis'] as String?,
    synonyms: synonyms,
    startDate: date(from),
    endDate: date(to),
    popularity: (n['members'] as num?)?.toInt(),
    favourites: (n['favorites'] as num?)?.toInt(),
    shareLink: malShareLink(anime, id),
    anime: anime
        ? Anime(
            totalEpisodes: _positive(n['episodes']),
            episodeDuration: int.tryParse(
              RegExp(r'(\d+)\s*min').firstMatch('${n['duration']}')?.group(1) ??
                  '',
            ),
            season: (n['season'] as String?)?.toUpperCase(),
            seasonYear: (n['year'] as num?)?.toInt(),
            studio: studios.isEmpty
                ? null
                : Studio(
                    id: '${(studios.first as Map)['mal_id']}',
                    name: '${(studios.first as Map)['name']}',
                  ),
          )
        : null,
    manga: anime
        ? null
        : Manga(
            totalChapters: _positive(n['chapters']),
            author: authors.isEmpty
                ? null
                : Author(
                    id: '${(authors.first as Map)['mal_id']}',
                    name: '${(authors.first as Map)['name']}',
                  ),
          ),
  );
}

int? _epoch(Object? iso) {
  final t = iso is String ? DateTime.tryParse(iso) : null;
  return t == null ? null : t.millisecondsSinceEpoch ~/ 1000;
}

Character mapTenraiCharacter(Map<String, dynamic> e) {
  final c = (e['character'] as Map).cast<String, dynamic>();
  final jpg = (c['images'] as Map?)?['jpg'] as Map?;
  final voices = [
    for (final v in (e['voice_actors'] as List?) ?? const [])
      if ((v as Map)['language'] == 'Japanese')
        Author(
          id: '${(v['person'] as Map)['mal_id']}',
          name: (v['person'] as Map)['name'] as String?,
          image:
              (((v['person'] as Map)['images'] as Map?)?['jpg']
                      as Map?)?['image_url']
                  as String?,
        ),
  ];
  return Character(
    id: '${c['mal_id']}',
    name: c['name'] as String?,
    image: jpg?['image_url'] as String?,
    role: e['role'] as String?,
    voiceActor: voices,
  );
}

Review mapTenraiReview(Map<String, dynamic> r, {required String mediaId}) {
  final user = (r['user'] as Map?)?.cast<String, dynamic>();
  final body = (r['review'] as String? ?? '').trim();
  final reactions = (r['reactions'] as Map?)?['overall'] as num?;
  final scores = r['scores'] as Map?;
  final score = (r['score'] as num?) ?? (scores?['overall'] as num?);
  return Review(
    id: (r['mal_id'] as num).toInt(),
    mediaId: 0,
    mediaType: mediaId,
    body: body.replaceAll('\n', '<br>'),
    rating: reactions?.toInt(),
    ratingAmount: reactions?.toInt(),
    score: score == null ? null : (score * 10).toInt(),
    siteUrl: r['url'] as String?,
    createdAt: _epoch(r['date']),
    user: user == null
        ? null
        : User(
            id: 0,
            name: user['username'] as String? ?? '',
            pfp:
                (((user['images'] as Map?)?['jpg'] as Map?)?['image_url'])
                    as String?,
          ),
  );
}

Media mapTenraiEntry(
  Map<String, dynamic> n, {
  required bool anime,
  String? role,
}) {
  final jpg = (n['images'] as Map?)?['jpg'] as Map?;
  final id = n['mal_id'];
  return Media(
    id: malMediaId(anime, id),
    name: n['title'] as String? ?? n['name'] as String?,
    nameRomaji: n['title'] as String?,
    cover: (jpg?['large_image_url'] ?? jpg?['image_url']) as String?,
    relation: role,
    shareLink: malShareLink(anime, id),
    anime: anime ? Anime() : null,
    manga: anime ? null : Manga(),
  );
}

Author mapTenraiPerson(Map<String, dynamic> p, {String? role}) {
  final jpg = (p['images'] as Map?)?['jpg'] as Map?;
  return Author(
    id: '${p['mal_id']}',
    name: p['name'] as String?,
    image: jpg?['image_url'] as String?,
    role: role,
  );
}

String tenraiHtml(String? text) => (text ?? '')
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('\n', '<br>');
