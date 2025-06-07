import 'package:dartotsu/Api/Sources/Model/Source.dart';
import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'package:json_annotation/json_annotation.dart';

import '../Api/Anilist/Data/fuzzyData.dart';
import '../Api/Anilist/Data/media.dart' as anilistApi;
import '../Api/Anilist/Data/others.dart';
import '../Api/EpisodeDetails/GetMediaIDs/GetMediaIDs.dart';
import '../Api/MyAnimeList/Data/media.dart' as malApi;
import '../Api/Simkl/Data/Media.dart' as simklApi;
import 'Anime.dart';
import 'Author.dart';
import 'Character.dart';
import 'Manga.dart';
import 'User.dart';

part 'Data/Media.g.dart';
part 'Media/AnilistMedia.dart';
part 'Media/MalMedia.dart';
part 'Media/SimklMedia.dart';

class MediaMapWrapper {
  final Map<String, List<Media>> mediaMap;

  MediaMapWrapper({required this.mediaMap});

  factory MediaMapWrapper.fromJson(Map<String, dynamic> json) {
    return MediaMapWrapper(
      mediaMap: json.map((key, value) => MapEntry(
          key, (value as List).map((e) => Media.fromJson(e)).toList())),
    );
  }

  Map<String, dynamic> toJson() {
    return mediaMap.map((key, value) =>
        MapEntry(key, value.map((media) => media.toJson()).toList()));
  }
}

@JsonSerializable()
class Media {
  final Anime? anime;
  final Manga? manga;
  int id;

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
  FuzzyDate? userStartedAt = FuzzyDate();
  FuzzyDate? userCompletedAt = FuzzyDate();
  Map<String, bool>? inCustomListsOf;
  int? userFavOrder;

  String? status;
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
  MediaSettings settings = MediaSettings();
  List<anilistApi.MediaStreamingEpisode>? streamingEpisodes;

  bool cameFromContinue = false;
  bool mal = false;
  bool kitsu = false;
  int? idAnilist;
  int? idMAL;
  String? idKitsu;
  int? idSimkl;
  Source? sourceData;

  Media({
    this.anime,
    this.manga,
    required this.id,
    this.typeMAL,
    this.name,
    required this.nameRomaji,
    required this.userPreferredName,
    this.cover,
    this.banner,
    this.relation,
    this.favourites,
    this.minimal = false,
    this.isAdult = false,
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
    this.userStartedAt,
    this.userCompletedAt,
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
    MediaSettings? settings,
    this.crunchySlug,
    this.nameMAL,
    this.shareLink,
    this.streamingEpisodes,
    this.idKitsu,
    this.idAnilist,
    this.idMAL,
    this.idSimkl,
    this.cameFromContinue = false,
    this.mal = false,
    this.kitsu = false,
    this.sourceData,
  }) : settings = settings ?? MediaSettings();

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);

  String mainName() => name ?? nameMAL ?? nameRomaji;

  String mangaName() => countryOfOrigin == 'JP' ? mainName() : nameRomaji;

  //Anilist
  factory Media.mediaData(anilistApi.Media apiMedia) => _mediaData(apiMedia);

  factory Media.mediaEdgeData(anilistApi.MediaEdge apiMediaEdge) =>
      _mediaEdgeData(apiMediaEdge);

  factory Media.mediaListData(anilistApi.MediaList mediaList) =>
      _mediaListData(mediaList);

  //MyAnimeList
  factory Media.fromMal(malApi.Media apiMedia) => _fromMal(apiMedia);

  //Simkl
  factory Media.fromSimklAnime(simklApi.Anime apiMedia) =>
      _fromSimklAnime(apiMedia);

  factory Media.fromSimklSeries(simklApi.ShowElement apiMedia) =>
      _fromSimklSeries(apiMedia);

  factory Media.fromSimklMovies(simklApi.MovieElement apiMedia) =>
      _fromSimklMovies(apiMedia);
}
