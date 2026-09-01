import '../../../Core/Services/Model/Anime.dart';
import '../../../Core/Services/Model/Author.dart';
import '../../../Core/Services/Model/Character.dart';
import '../../../Core/Services/Model/Date.dart';
import '../../../Core/Services/Model/Manga.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/Review.dart';
import '../../../Core/Services/Model/Studio.dart';
import '../../../Core/Services/Model/User.dart';

/// AniList carries a few fields the shared [Media] doesn't need. The subclass is
/// never serialized — only the base [Media] is.
class AnilistMedia extends Media {
  int? idMal;
  Map<String, bool> inCustomListsOf;
  int? userFavOrder;

  AnilistMedia({
    required super.id,
    this.idMal,
    Map<String, bool>? inCustomListsOf,
    this.userFavOrder,
    super.anime,
    super.manga,
    super.name,
    super.nameRomaji,
    super.userPreferredName,
    super.cover,
    super.banner,
    super.relation,
    super.favourites,
    super.minimal = false,
    super.isAdult = false,
    super.isFav = false,
    super.userListId,
    super.isListPrivate = false,
    super.notes,
    super.userProgress,
    super.userStatus,
    super.userScore = 0,
    super.userRepeat = 0,
    super.userUpdatedAt,
    super.userStartedAt,
    super.userCompletedAt,
    super.status,
    super.format,
    super.source,
    super.countryOfOrigin,
    super.meanScore,
    super.genres = const [],
    super.tags = const [],
    super.description,
    super.synonyms = const [],
    super.trailer,
    super.startDate,
    super.endDate,
    super.popularity,
    super.timeUntilAiring,
    required super.shareLink,
  }) : inCustomListsOf = inCustomListsOf ?? {};
}

/// Basic media fields requested by every list/browse query. Score is POINT_100
/// to match AniList's `scoreRaw` mutation input.
const anilistMediaFragment = '''
  id
  idMal
  isAdult
  status
  chapters
  episodes
  nextAiringEpisode { episode timeUntilAiring }
  type
  meanScore
  popularity
  favourites
  isFavourite
  format
  bannerImage
  countryOfOrigin
  genres
  coverImage { large extraLarge }
  title { english romaji userPreferred native }
  mediaListEntry { id progress private score(format: POINT_100) status repeat }
''';

AnilistMedia mapAnilistMedia(Map<String, dynamic> json, {String? relation}) {
  final title = json['title'] as Map<String, dynamic>? ?? const {};
  final cover = json['coverImage'] as Map<String, dynamic>? ?? const {};
  final entry = json['mediaListEntry'] as Map<String, dynamic>?;
  final airing = json['nextAiringEpisode'] as Map<String, dynamic>?;
  final isAnime = (json['type'] as String?) != 'MANGA';
  final id = (json['id'] as num).toInt();

  final media = AnilistMedia(
    id: id.toString(),
    idMal: (json['idMal'] as num?)?.toInt(),
    anime: isAnime
        ? Anime(
            totalEpisodes: (json['episodes'] as num?)?.toInt(),
            season: json['season'] as String?,
            seasonYear: (json['seasonYear'] as num?)?.toInt(),
            nextAiringEpisode: (airing?['episode'] as num?)?.toInt(),
            nextAiringEpisodeTime: (airing?['timeUntilAiring'] as num?)
                ?.toInt(),
          )
        : null,
    manga: isAnime
        ? null
        : Manga(totalChapters: (json['chapters'] as num?)?.toInt()),
    name: title['english'] as String?,
    nameRomaji: title['romaji'] as String?,
    userPreferredName:
        title['userPreferred'] as String? ??
        title['romaji'] as String? ??
        title['english'] as String?,
    cover: cover['extraLarge'] as String? ?? cover['large'] as String?,
    banner: json['bannerImage'] as String?,
    relation: relation,
    isAdult: json['isAdult'] as bool? ?? false,
    isFav: json['isFavourite'] as bool? ?? false,
    favourites: (json['favourites'] as num?)?.toInt(),
    popularity: (json['popularity'] as num?)?.toInt(),
    meanScore:
        (json['meanScore'] as num?)?.toInt() ??
        (json['averageScore'] as num?)?.toInt(),
    status: json['status'] as String?,
    format: json['format'] as String?,
    countryOfOrigin: json['countryOfOrigin'] as String?,
    description: json['description'] as String?,
    genres: (json['genres'] as List?)?.cast<String>() ?? const [],
    startDate: mapAnilistDate(json['startDate']),
    endDate: mapAnilistDate(json['endDate']),
    timeUntilAiring: (airing?['timeUntilAiring'] as num?)?.toInt(),
    shareLink: 'https://anilist.co/${isAnime ? 'anime' : 'manga'}/$id',
  );
  _applyEntry(media, entry);
  return media;
}

/// Some list queries put the user-entry fields on the parent node instead of
/// `media.mediaListEntry`. This overlays those onto the mapped media.
AnilistMedia mapAnilistListEntry(
  Map<String, dynamic> entry, {
  String? relation,
}) {
  final node = entry['media'] as Map<String, dynamic>?;
  final media = node != null
      ? mapAnilistMedia(node, relation: relation)
      : AnilistMedia(id: '0', shareLink: 'https://anilist.co');
  _applyEntry(media, entry);
  media.cameFromContinue = true;
  return media;
}

void _applyEntry(Media media, Map<String, dynamic>? entry) {
  if (entry == null) return;
  media.userListId = (entry['id'] as num?)?.toInt() ?? media.userListId;
  media.userProgress =
      (entry['progress'] as num?)?.toInt() ?? media.userProgress;
  media.userStatus = entry['status'] as String? ?? media.userStatus;
  final score = (entry['score'] as num?)?.round();
  if (score != null) media.userScore = score;
  media.userRepeat = (entry['repeat'] as num?)?.toInt() ?? media.userRepeat;
  media.isListPrivate = entry['private'] as bool? ?? media.isListPrivate;
  media.notes = entry['notes'] as String? ?? media.notes;
  final updatedAt = (entry['updatedAt'] as num?)?.toInt();
  if (updatedAt != null) media.userUpdatedAt = updatedAt * 1000;
  media.userStartedAt =
      mapAnilistDate(entry['startedAt']) ?? media.userStartedAt;
  media.userCompletedAt =
      mapAnilistDate(entry['completedAt']) ?? media.userCompletedAt;
  final custom = entry['customLists'];
  if (media is AnilistMedia && custom is Map) {
    media.inCustomListsOf = custom.map(
      (k, v) => MapEntry(k.toString(), v == true),
    );
  }
}

Date? mapAnilistDate(Object? raw) {
  if (raw is! Map) return null;
  final year = (raw['year'] as num?)?.toInt();
  final month = (raw['month'] as num?)?.toInt();
  final day = (raw['day'] as num?)?.toInt();
  if (year == null && month == null && day == null) return null;
  return Date(year: year, month: month, day: day);
}

const anilistAuthorRoles = ['Original Creator', 'Story & Art', 'Story', 'Art'];

void mapAnilistDetail(Media media, Map<String, dynamic> json) {
  media.source = json['source'] as String? ?? media.source;
  media.countryOfOrigin =
      json['countryOfOrigin'] as String? ?? media.countryOfOrigin;
  media.format = json['format'] as String? ?? media.format;
  media.favourites = (json['favourites'] as num?)?.toInt() ?? media.favourites;
  media.popularity = (json['popularity'] as num?)?.toInt() ?? media.popularity;
  media.meanScore = (json['meanScore'] as num?)?.toInt() ?? media.meanScore;
  media.startDate = mapAnilistDate(json['startDate']) ?? media.startDate;
  media.endDate = mapAnilistDate(json['endDate']) ?? media.endDate;
  media.description = json['description'] as String? ?? media.description;
  media.shareLink = json['siteUrl'] as String? ?? media.shareLink;
  media.genres = (json['genres'] as List?)?.cast<String>() ?? media.genres;
  media.synonyms = (json['synonyms'] as List?)?.cast<String>() ?? const [];

  final trailer = json['trailer'] as Map<String, dynamic>?;
  media.trailer = trailer != null && trailer['site'] == 'youtube'
      ? 'https://www.youtube.com/watch?v=${trailer['id']}'
      : null;

  media.tags = (json['tags'] as List? ?? const [])
      .cast<Map<String, dynamic>>()
      .where((t) => t['isMediaSpoiler'] != true)
      .map((t) => '${t['name']} : ${t['rank']}%')
      .toList();

  media.characters = _characters(json['characters']);
  media.staff = _staff(json['staffPreview'] ?? json['staff']);
  media.recommendations = _recommendations(json['recommendations']);
  media.review = _reviews(json['reviews']);

  final relations = _relatedMedia(json['relations']);
  if (relations.isNotEmpty) {
    media.relations = relations;
    for (final r in relations) {
      if (r.relation == 'Sequel' &&
          (r.popularity ?? 0) > (media.sequel?.popularity ?? 0)) {
        media.sequel = r;
      } else if (r.relation == 'Prequel' &&
          (r.popularity ?? 0) > (media.prequel?.popularity ?? 0)) {
        media.prequel = r;
      }
    }
    media.relations!.sort(
      (a, b) => (b.popularity ?? 0).compareTo(a.popularity ?? 0),
    );
  }

  _applyEntry(media, json['mediaListEntry'] as Map<String, dynamic>?);

  final anime = media.anime;
  if (anime != null) {
    anime.episodeDuration = (json['duration'] as num?)?.toInt();
    anime.season = json['season'] as String? ?? anime.season;
    anime.seasonYear =
        (json['seasonYear'] as num?)?.toInt() ?? anime.seasonYear;
    anime.nextAiringEpisodeTime =
        ((json['nextAiringEpisode'] as Map?)?['airingAt'] as num?)?.toInt();

    final studioNode =
        ((json['studios'] as Map<String, dynamic>?)?['nodes'] as List?)
            ?.cast<Map<String, dynamic>>()
            .firstOrNull;
    if (studioNode != null) {
      anime.studio = Studio(
        id: studioNode['id'].toString(),
        name: studioNode['name'] as String? ?? '',
        url: studioNode['siteUrl'] as String?,
      );
    }
    for (final link
        in (json['externalLinks'] as List? ?? const [])
            .cast<Map<String, dynamic>>()) {
      if ((link['site'] as String?)?.toLowerCase() == 'youtube') {
        anime.youtube = link['url'] as String?;
      }
    }
  }

  final author = _authorFromStaff(json['staffPreview'] ?? json['staff']);
  if (author != null) {
    media.anime?.author = author;
    media.manga?.author = author;
  }

  media.users = _users(json['page'] ?? json['Page']);
}

List<Character> _characters(Object? raw) {
  final edges = (raw as Map<String, dynamic>?)?['edges'] as List? ?? const [];
  return edges.cast<Map<String, dynamic>>().where((e) => e['node'] != null).map(
    (e) {
      final node = e['node'] as Map<String, dynamic>;
      final image = node['image'] as Map?;
      final vas = (e['voiceActors'] as List? ?? const [])
          .cast<Map<String, dynamic>>()
          .map(
            (v) => Author(
              id: v['id'].toString(),
              name: (v['name'] as Map?)?['userPreferred'] as String?,
              image: (v['image'] as Map?)?['large'] as String?,
              role: v['languageV2'] as String?,
            ),
          )
          .toList();
      return Character(
        id: node['id'].toString(),
        name: (node['name'] as Map?)?['userPreferred'] as String?,
        image: image?['large'] as String? ?? image?['medium'] as String?,
        role: e['role'] as String?,
        description: node['description'] as String?,
        gender: node['gender'] as String?,
        isFav: node['isFavourite'] as bool?,
        voiceActor: vas,
      );
    },
  ).toList();
}

List<Author> _staff(Object? raw) {
  final edges = (raw as Map<String, dynamic>?)?['edges'] as List? ?? const [];
  return edges.cast<Map<String, dynamic>>().where((e) => e['node'] != null).map(
    (e) {
      final node = e['node'] as Map<String, dynamic>;
      final image = node['image'] as Map?;
      return Author(
        id: node['id'].toString(),
        name: (node['name'] as Map?)?['userPreferred'] as String?,
        image: image?['large'] as String? ?? image?['medium'] as String?,
        role: e['role'] as String?,
      );
    },
  ).toList();
}

Author? _authorFromStaff(Object? raw) {
  final edges = (raw as Map<String, dynamic>?)?['edges'] as List? ?? const [];
  for (final e in edges.cast<Map<String, dynamic>>()) {
    if (anilistAuthorRoles.contains((e['role'] as String?)?.trim())) {
      final node = e['node'] as Map<String, dynamic>?;
      if (node == null) continue;
      return Author(
        id: node['id'].toString(),
        name: (node['name'] as Map?)?['userPreferred'] as String?,
        image: (node['image'] as Map?)?['medium'] as String?,
        role: 'AUTHOR',
      );
    }
  }
  return null;
}

List<Media> _relatedMedia(Object? raw) {
  final edges = (raw as Map<String, dynamic>?)?['edges'] as List? ?? const [];
  return edges.cast<Map<String, dynamic>>().where((e) => e['node'] != null).map(
    (e) {
      final relation = (e['relationType'] as String?)
          ?.replaceAll('_', ' ')
          .toLowerCase();
      return mapAnilistMedia(
        e['node'] as Map<String, dynamic>,
        relation: relation == null
            ? null
            : relation[0].toUpperCase() + relation.substring(1),
      );
    },
  ).toList();
}

List<Media> _recommendations(Object? raw) {
  final nodes = (raw as Map<String, dynamic>?)?['nodes'] as List? ?? const [];
  return nodes
      .cast<Map<String, dynamic>>()
      .map((n) => n['mediaRecommendation'] as Map<String, dynamic>?)
      .whereType<Map<String, dynamic>>()
      .map((m) => mapAnilistMedia(m))
      .toList();
}

List<Review> _reviews(Object? raw) {
  final nodes = (raw as Map<String, dynamic>?)?['nodes'] as List? ?? const [];
  return nodes.cast<Map<String, dynamic>>().map((n) {
    final user = n['user'] as Map<String, dynamic>?;
    return Review(
      id: (n['id'] as num?)?.toInt() ?? 0,
      mediaId: (n['mediaId'] as num?)?.toInt() ?? 0,
      mediaType: n['mediaType'] as String? ?? '',
      summary: n['summary'] as String?,
      body: n['body'] as String?,
      rating: (n['rating'] as num?)?.toInt(),
      ratingAmount: (n['ratingAmount'] as num?)?.toInt(),
      score: (n['score'] as num?)?.toInt(),
      siteUrl: n['siteUrl'] as String?,
      createdAt: (n['createdAt'] as num?)?.toInt(),
      user: user == null
          ? null
          : User(
              id: (user['id'] as num?)?.toInt() ?? 0,
              name: user['name'] as String? ?? '',
              pfp: (user['avatar'] as Map?)?['large'] as String?,
              banner: user['bannerImage'] as String?,
            ),
    );
  }).toList();
}

List<User> _users(Object? raw) {
  final list =
      (raw as Map<String, dynamic>?)?['mediaList'] as List? ?? const [];
  final seen = <int>{};
  final out = <User>[];
  for (final item in list.cast<Map<String, dynamic>>()) {
    final user = item['user'] as Map<String, dynamic>?;
    final id = (user?['id'] as num?)?.toInt();
    if (user == null || id == null || !seen.add(id)) continue;
    out.add(
      User(
        id: id,
        name: user['name'] as String? ?? 'Unknown',
        pfp: (user['avatar'] as Map?)?['large'] as String?,
        status: item['status'] as String?,
        score: (item['score'] as num?)?.toDouble(),
        progress: (item['progress'] as num?)?.toInt(),
      ),
    );
  }
  return out;
}
