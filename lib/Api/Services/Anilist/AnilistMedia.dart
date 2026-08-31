import '../../../Core/Services/Model/Anime.dart';
import '../../../Core/Services/Model/Author.dart';
import '../../../Core/Services/Model/Character.dart';
import '../../../Core/Services/Model/Date.dart';
import '../../../Core/Services/Model/Manga.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/Studio.dart';

/// The GraphQL fragment every media query in this service should request.
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
  averageScore
  isFavourite
  format
  bannerImage
  countryOfOrigin
  description(asHtml: false)
  genres
  popularity
  favourites
  season
  seasonYear
  startDate { year month day }
  endDate { year month day }
  coverImage { large extraLarge color }
  title { english romaji userPreferred native }
  mediaListEntry { id progress private score(format: POINT_10) status repeat }
''';

Media mapAnilistMedia(Map<String, dynamic> json, {String? relation}) {
  final title = json['title'] as Map<String, dynamic>? ?? const {};
  final cover = json['coverImage'] as Map<String, dynamic>? ?? const {};
  final entry = json['mediaListEntry'] as Map<String, dynamic>?;
  final airing = json['nextAiringEpisode'] as Map<String, dynamic>?;
  final isAnime = (json['type'] as String?) == 'ANIME';
  final id = (json['id'] as num).toInt();

  return Media(
    id: id.toString(),
    anime: isAnime
        ? Anime(
            totalEpisodes: (json['episodes'] as num?)?.toInt(),
            season: json['season'] as String?,
            seasonYear: (json['seasonYear'] as num?)?.toInt(),
            nextAiringEpisode: (airing?['episode'] as num?)?.toInt(),
            nextAiringEpisodeTime:
                (airing?['timeUntilAiring'] as num?)?.toInt(),
          )
        : null,
    manga: isAnime
        ? null
        : Manga(totalChapters: (json['chapters'] as num?)?.toInt()),
    name: title['english'] as String?,
    nameRomaji: title['romaji'] as String?,
    userPreferredName: title['userPreferred'] as String? ??
        title['romaji'] as String? ??
        title['english'] as String?,
    cover: cover['extraLarge'] as String? ?? cover['large'] as String?,
    banner: json['bannerImage'] as String?,
    relation: relation,
    isAdult: json['isAdult'] as bool? ?? false,
    isFav: json['isFavourite'] as bool? ?? false,
    favourites: (json['favourites'] as num?)?.toInt(),
    popularity: (json['popularity'] as num?)?.toInt(),
    meanScore: (json['meanScore'] as num?)?.toInt() ??
        (json['averageScore'] as num?)?.toInt(),
    status: json['status'] as String?,
    format: json['format'] as String?,
    countryOfOrigin: json['countryOfOrigin'] as String?,
    description: json['description'] as String?,
    genres: (json['genres'] as List?)?.cast<String>() ?? const [],
    startDate: _date(json['startDate']),
    endDate: _date(json['endDate']),
    timeUntilAiring: (airing?['timeUntilAiring'] as num?)?.toInt(),
    userListId: (entry?['id'] as num?)?.toInt(),
    userProgress: (entry?['progress'] as num?)?.toInt(),
    userStatus: entry?['status'] as String?,
    userScore: (entry?['score'] as num?)?.round() ?? 0,
    userRepeat: (entry?['repeat'] as num?)?.toInt() ?? 0,
    isListPrivate: entry?['private'] as bool? ?? false,
    shareLink:
        'https://anilist.co/${isAnime ? 'anime' : 'manga'}/$id',
  );
}

Date? _date(Object? raw) {
  if (raw is! Map) return null;
  final year = (raw['year'] as num?)?.toInt();
  final month = (raw['month'] as num?)?.toInt();
  final day = (raw['day'] as num?)?.toInt();
  if (year == null && month == null && day == null) return null;
  return Date(year: year, month: month, day: day);
}

const anilistDetailQuery = '''
  $anilistMediaFragment
  synonyms
  trailer { id site }
  studios { edges { isMain node { id name } } }
  characterPreview: characters(sort: [ROLE, RELEVANCE], perPage: 12) {
    edges {
      role
      node { id name { userPreferred } image { large } }
      voiceActors(language: JAPANESE, sort: [RELEVANCE]) {
        id name { userPreferred } image { large }
      }
    }
  }
  relations {
    edges { relationType(version: 2) node { $anilistMediaFragment } }
  }
  recommendations(sort: RATING_DESC, perPage: 12) {
    nodes { mediaRecommendation { $anilistMediaFragment } }
  }
''';

Media mapAnilistDetail(Map<String, dynamic> json) {
  final media = mapAnilistMedia(json);
  media.synonyms = (json['synonyms'] as List?)?.cast<String>() ?? const [];

  final trailer = json['trailer'] as Map<String, dynamic>?;
  if (trailer != null && trailer['site'] == 'youtube') {
    media.trailer = 'https://www.youtube.com/watch?v=${trailer['id']}';
  }

  final studioEdges =
      (json['studios'] as Map<String, dynamic>?)?['edges'] as List? ?? const [];
  for (final e in studioEdges.cast<Map<String, dynamic>>()) {
    if (e['isMain'] == true) {
      final node = e['node'] as Map<String, dynamic>;
      final studio = Studio(
        id: node['id'].toString(),
        name: node['name'] as String? ?? '',
      );
      media.anime?.studio = studio;
      break;
    }
  }

  media.characters = _characters(json['characterPreview']);
  media.relations = _relatedMedia(json['relations']);
  media.recommendations = _recommendations(json['recommendations']);
  return media;
}

List<Character> _characters(Object? raw) {
  final edges = (raw as Map<String, dynamic>?)?['edges'] as List? ?? const [];
  return edges.cast<Map<String, dynamic>>().map((e) {
    final node = e['node'] as Map<String, dynamic>;
    final vas = (e['voiceActors'] as List? ?? const [])
        .cast<Map<String, dynamic>>()
        .map((v) => Author(
              id: v['id'].toString(),
              name: (v['name'] as Map?)?['userPreferred'] as String?,
              image: (v['image'] as Map?)?['large'] as String?,
            ))
        .toList();
    return Character(
      id: node['id'].toString(),
      name: (node['name'] as Map?)?['userPreferred'] as String?,
      image: (node['image'] as Map?)?['large'] as String?,
      role: e['role'] as String?,
      voiceActor: vas,
    );
  }).toList();
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
