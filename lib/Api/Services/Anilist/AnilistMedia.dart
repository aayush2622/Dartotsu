import '../../../Core/Services/Model/Anime.dart';
import '../../../Core/Services/Model/Date.dart';
import '../../../Core/Services/Model/Manga.dart';
import '../../../Core/Services/Model/Media.dart';

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
  mediaListEntry { progress private score status repeat }
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
    userProgress: (entry?['progress'] as num?)?.toInt(),
    userStatus: entry?['status'] as String?,
    userScore: (entry?['score'] as num?)?.toInt() ?? 0,
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
