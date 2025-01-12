import 'package:dantotsu/Functions/string_extensions.dart';

import '../Preferences/IsarDataClasses/Selected/Selected.dart';
import '../api/Anilist/Data/fuzzyData.dart';
import '../api/Anilist/Data/media.dart' as anilistApi;
import '../api/Anilist/Data/others.dart';
import '../api/EpisodeDetails/GetMediaIDs/GetMediaIDs.dart';
import '../api/MyAnimeList/Data/media.dart' as malApi;
import '../api/Simkl/Data/Media.dart' as simklApi;
import 'Anime.dart';
import 'Author.dart';
import 'Character.dart';
import 'Manga.dart';
import 'User.dart';

class Media {
  final Anime? anime;
  final Manga? manga;
  final int id;

  int? idMAL;
  String? typeMAL;
  final String? name;
  final String nameRomaji;
  final String userPreferredName;

  String? cover;
  String? banner;
  String? relation;
  int? favourites;
  bool? minimal = false;
  bool isAdult;
  bool isFav = false;
  bool notify = false;

  int? userListId;
  bool isListPrivate = false;
  String? notes;
  int? userProgress;
  String? userStatus;
  int? userScore = 0;
  int userRepeat = 0;
  int? userUpdatedAt;
  dynamic userStartedAt = FuzzyDate();
  dynamic userCompletedAt = FuzzyDate();
  Map<String, bool>? inCustomListsOf;
  int? userFavOrder;

  final String? status;
  String? format;
  String? source;
  String? countryOfOrigin;
  final int? meanScore;
  List<String> genres = [];
  List<String> tags = [];
  String? description;
  List<String> synonyms = [];
  String? trailer;
  FuzzyDate? startDate;
  FuzzyDate? endDate;
  int? popularity;

  int? timeUntilAiring;

  List<character>? characters;
  List<Review>? review;
  List<author>? staff;
  Media? prequel;
  Media? sequel;
  List<Media>? relations;
  List<Media>? recommendations;
  List<userData>? users;
  String? vrvId;
  String? crunchySlug;

  String? nameMAL;
  String? shareLink;
  Selected? selected;
  List<anilistApi.MediaStreamingEpisode>? streamingEpisodes;
  String? idKitsu;

  bool cameFromContinue = false;
  bool mal = false;
  bool kitsu = false;

  Media({
    this.anime,
    this.manga,
    required this.id,
    this.idMAL,
    this.typeMAL,
    this.name,
    required this.nameRomaji,
    required this.userPreferredName,
    this.cover,
    this.banner,
    this.relation,
    this.favourites,
    this.minimal = false,
    required this.isAdult,
    this.isFav = false,
    this.notify = false,
    this.userListId,
    this.isListPrivate = false,
    this.notes,
    this.userProgress,
    this.userStatus,
    this.userScore = 0,
    this.userRepeat = 0,
    this.userUpdatedAt,
    this.userStartedAt = 0,
    this.userCompletedAt = 0,
    this.inCustomListsOf,
    this.userFavOrder,
    this.status,
    this.format,
    this.source,
    this.countryOfOrigin,
    this.meanScore,
    this.genres = const [],
    this.tags = const [],
    this.description,
    this.synonyms = const [],
    this.trailer,
    this.startDate,
    this.endDate,
    this.popularity,
    this.timeUntilAiring,
    this.characters,
    this.review,
    this.staff,
    this.prequel,
    this.sequel,
    this.relations,
    this.recommendations,
    this.users,
    this.vrvId,
    this.crunchySlug,
    this.nameMAL,
    this.shareLink,
    this.selected,
    this.streamingEpisodes,
    this.idKitsu,
    this.cameFromContinue = false,
    this.mal = false,
    this.kitsu = false,
  });

  String mainName() => name ?? nameMAL ?? nameRomaji;

  String mangaName() => countryOfOrigin == 'JP' ? mainName() : nameRomaji;

  //Anilist
  static Media mediaData(anilistApi.Media apiMedia) {
    return Media(
      id: apiMedia.id,
      idMAL: apiMedia.idMal ??
          GetMediaIDs.fromID(type: AnimeIDType.anilistId, id: apiMedia.id)
              ?.malId,
      name: apiMedia.title?.english,
      nameRomaji: apiMedia.title?.romaji ?? '',
      userPreferredName: apiMedia.title?.userPreferred ?? '',
      cover: apiMedia.coverImage?.large ?? apiMedia.coverImage?.medium,
      banner: apiMedia.bannerImage,
      status: apiMedia.status?.name,
      isFav: apiMedia.isFavourite ?? false,
      isAdult: apiMedia.isAdult ?? false,
      isListPrivate: apiMedia.mediaListEntry?.private ?? false,
      userProgress: apiMedia.mediaListEntry?.progress,
      userScore: apiMedia.mediaListEntry?.score?.toInt() ?? 0,
      userStatus: apiMedia.mediaListEntry?.status?.name,
      meanScore: apiMedia.meanScore,
      startDate: apiMedia.startDate,
      endDate: apiMedia.endDate,
      favourites: apiMedia.favourites,
      popularity: apiMedia.popularity,
      format: apiMedia.format?.name,
      genres: apiMedia.genres ?? [],
      timeUntilAiring:
          (apiMedia.nextAiringEpisode?.timeUntilAiring?.toInt() ?? 0) * 1000,
      anime: apiMedia.type == anilistApi.MediaType.ANIME
          ? Anime(
              totalEpisodes: apiMedia.episodes,
              nextAiringEpisode:
                  (apiMedia.nextAiringEpisode?.episode?.toInt() ?? 0) - 1,
            )
          : null,
      manga: apiMedia.type == anilistApi.MediaType.MANGA
          ? Manga(totalChapters: apiMedia.chapters)
          : null,
    );
  }

  static Media mediaEdgeData(anilistApi.MediaEdge apiMediaEdge) {
    var media = mediaData(apiMediaEdge.node!);
    media.relation = apiMediaEdge.relationType?.name;
    return media;
  }

  static Media mediaListData(anilistApi.MediaList mediaList) {
    var media = mediaData(mediaList.media!);
    media.userProgress = mediaList.progress;
    media.isListPrivate = mediaList.private ?? false;
    media.userScore = mediaList.score?.toInt() ?? 0;
    media.userStatus = mediaList.status?.name;
    media.userUpdatedAt = mediaList.updatedAt;
    media.genres = mediaList.media?.genres ?? [];
    return media;
  }

  //MyAnimeList
  static Media fromMal(malApi.Media apiMedia) {
    String mapAiringStatus(String status) {
      switch (status) {
        case 'finished_airing':
          return 'FINISHED';
        case 'currently_airing':
          return 'RELEASING';
        case 'currently_publishing':
          return 'RELEASING';
        case 'not_yet_published':
          return 'NOT_YET_RELEASED';
        case 'not_yet_aired':
          return 'NOT_YET_RELEASED';
        default:
          return 'UNKNOWN';
      }
    }

    anilistApi.MediaType? getMediaType(String? mediaType) {
      anilistApi.MediaType type;
      if (['tv', 'ova', 'movie', 'special', 'ona', 'music']
          .contains(mediaType)) {
        type = anilistApi.MediaType.ANIME;
      } else if ([
        'unknown',
        'manga',
        'novel',
        'one_shot',
        'doujinshi',
        'manhwa',
        'manhua',
        'oel'
      ].contains(mediaType)) {
        type = anilistApi.MediaType.MANGA;
      } else {
        type = anilistApi.MediaType.ANIME;
      }
      return type;
    }

    return Media(
      id: GetMediaIDs.fromID(type: AnimeIDType.malId, id: apiMedia.id!)
              ?.anilistId ??
          apiMedia.id!,
      idMAL: apiMedia.id,
      name: apiMedia.title ?? '',
      nameRomaji: apiMedia.alternativeTitles?.ja ?? apiMedia.title ?? '',
      userPreferredName: apiMedia.title ?? '',
      cover: apiMedia.mainPicture?.medium ?? '',
      banner: apiMedia.mainPicture?.large ?? apiMedia.mainPicture?.medium ?? '',
      status: mapAiringStatus(apiMedia.status ?? ''),
      isAdult: apiMedia.nsfw == 'black',
      userStatus: apiMedia.myListStatus?.status,
      userProgress: apiMedia.myListStatus?.numEpisodesWatched ??
          apiMedia.myListStatus?.numChaptersRead,
      userScore: ((apiMedia.myListStatus?.score ?? 0) * 10).toInt(),
      meanScore: ((apiMedia.mean ?? 0) * 10).toInt(),
      genres: apiMedia.genres?.map((genre) => genre.name ?? '').toList() ?? [],
      format: apiMedia.mediaType,
      anime: getMediaType(apiMedia.mediaType) == anilistApi.MediaType.ANIME
          ? Anime(
              totalEpisodes:
                  apiMedia.numEpisodes != 0 ? apiMedia.numEpisodes : null,
            )
          : null,
      manga: getMediaType(apiMedia.mediaType) == anilistApi.MediaType.MANGA
          ? Manga(
              totalChapters:
                  apiMedia.numChapters != 0 ? apiMedia.numChapters : null,
            )
          : null,
    );
  }

  static Media fromSimklAnime(simklApi.Anime apiMedia) {
    var cover = 'https://wsrv.nl/?url=https://simkl.in/posters/${apiMedia.show?.poster}_m.webp';
    return Media(
      id: apiMedia.show!.ids!.simkl!,
      idMAL: apiMedia.show!.ids!.mal?.toNullInt(),
      nameRomaji: apiMedia.show!.title ?? '',
      userPreferredName: apiMedia.show!.title ?? '',
      cover: cover,
      banner: cover,
      userStatus: apiMedia.status?.name,
      userProgress: apiMedia.watchedEpisodesCount,
      userScore: (apiMedia.userRating?.toInt() ?? 0) * 10,
      meanScore:  ((apiMedia.rating ?? 0) * 10).toInt(),
      format: apiMedia.animeType != null ? 'anime' : 'movie',
      status: mapSimklAiringStatus(apiMedia.releaseStatus?.toLowerCase() ?? 'UNKNOWN'),
      anime: Anime(
        totalEpisodes: apiMedia.totalEpisodesCount,
      ),
      isAdult: false,
    );
  }
  static Media fromSimklSeries(simklApi.ShowElement apiMedia) {
    var cover = 'https://wsrv.nl/?url=https://simkl.in/posters/${apiMedia.show?.poster}_m.webp';
    return Media(
      id: apiMedia.show!.ids!.simkl!,
      idMAL: apiMedia.show?.ids!.mal?.toNullInt(),
      nameRomaji: apiMedia.show?.title ?? '',
      userPreferredName: apiMedia.show?.title ?? '',
      cover: cover,
      banner: cover,
      userStatus: apiMedia.status?.name,
      userProgress: apiMedia.watchedEpisodesCount,
      userScore: (apiMedia.userRating?.toInt() ?? 0) * 10,
      meanScore: ((apiMedia.rating ?? 0) * 10).toInt(),
      status: mapSimklAiringStatus(apiMedia.releaseStatus?.toLowerCase() ?? 'UNKNOWN'),
      format:'tvShow',
      anime: Anime(
        totalEpisodes: apiMedia.totalEpisodesCount,
      ),
      isAdult: false,
    );
  }
  static Media fromSimklMovies(simklApi.MovieElement apiMedia) {
    var cover = 'https://wsrv.nl/?url=https://simkl.in/posters/${apiMedia.movie?.poster}_m.webp';
    return Media(
      id: apiMedia.movie!.ids!.simkl!,
      idMAL: apiMedia.movie!.ids!.mal?.toNullInt(),
      nameRomaji: apiMedia.movie!.title ?? '',
      userPreferredName: apiMedia.movie!.title ?? '',
      cover: cover,
      banner: cover,
      userStatus: apiMedia.status?.name,
      userProgress: apiMedia.watchedEpisodesCount,
      userScore: (apiMedia.userRating?.toInt() ?? 0) * 10,
      meanScore:  ((apiMedia.rating ?? 0) * 10).toInt(),
      status: mapSimklAiringStatus(apiMedia.releaseStatus?.toLowerCase() ?? 'UNKNOWN'),
      format:'movie',
      anime: Anime(
        totalEpisodes: apiMedia.totalEpisodesCount,
      ),
      isAdult: false,
    );
  }
  static String mapSimklAiringStatus(String status) {
    switch (status) {
      case 'ended':
        return 'FINISHED';
      case 'ongoing':
        return 'RELEASING';
      case 'upcoming':
        return 'NOT_YET_RELEASED';
      default:
        return status.toUpperCase();
    }
  }
}
