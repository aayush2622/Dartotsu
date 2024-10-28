import '../Preferences/HiveDataClasses/Selected/Selected.dart';
import '../api/Anilist/Data/media.dart';
import '../api/Anilist/Data/others.dart';
import '../api/Anilist/Data/fuzzyData.dart';
import 'Anime.dart';
import 'Author.dart';
import 'Character.dart';
import 'Manga.dart';
import 'User.dart';

class media {
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
  media? prequel;
  media? sequel;
  List<media>? relations;
  List<media>? recommendations;
  List<userData>? users;
  String? vrvId;
  String? crunchySlug;

  String? nameMAL;
  String? shareLink;
  Selected? selected;
  List<MediaStreamingEpisode>? streamingEpisodes;
  String? idKitsu;

  bool cameFromContinue = false;

  media({
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
  });

  String mainName() =>name ?? nameMAL ?? nameRomaji;
  String mangaName() => countryOfOrigin == 'JP' ? mainName() : nameRomaji;
}

media mediaData(Media apiMedia) {
  return media(
    id: apiMedia.id,
    idMAL: apiMedia.idMal,
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
    anime: apiMedia.type == MediaType.ANIME
        ? Anime(
            totalEpisodes: apiMedia.episodes,
            nextAiringEpisode:
                (apiMedia.nextAiringEpisode?.episode?.toInt() ?? 0) - 1,
          )
        : null,
    manga: apiMedia.type == MediaType.MANGA
        ? Manga(totalChapters: apiMedia.chapters)
        : null,
  );
}

media mediaEdgeData(MediaEdge apiMediaEdge) {
  var media = mediaData(apiMediaEdge.node!);
  media.relation= apiMediaEdge.relationType?.name;
  return media;
}
media mediaListData(MediaList mediaList) {
  var media = mediaData(mediaList.media!);
  media.userProgress = mediaList.progress;
  media.isListPrivate = mediaList.private ?? false;
  media.userScore = mediaList.score?.toInt() ?? 0;
  media.userStatus = mediaList.status?.name;
  media.userUpdatedAt = mediaList.updatedAt;
  media.genres = mediaList.media?.genres ?? [];
  return media;
}
