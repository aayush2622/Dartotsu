import 'package:dartotsu/Api/Anilist/Data/user.dart';
import 'package:json_annotation/json_annotation.dart';

import 'character.dart';
import 'fuzzyData.dart';
import 'others.dart';
import 'recommendations.dart';
import 'staff.dart';

part 'Generated/media.g.dart';

@JsonSerializable()
class Media {
  int id;
  int? idMal;
  MediaTitle? title;
  MediaType? type;
  MediaFormat? format;
  MediaStatus? status;
  String? description;
  FuzzyDate? startDate;
  FuzzyDate? endDate;
  MediaSeason? season;
  int? seasonYear;
  int? seasonInt;
  int? episodes;
  int? duration;
  int? chapters;
  int? volumes;
  String? countryOfOrigin;
  bool? isLicensed;
  MediaSource? source;
  String? hashtag;
  MediaTrailer? trailer;
  int? updatedAt;
  MediaCoverImage? coverImage;
  String? bannerImage;
  List<String>? genres;
  List<String>? synonyms;
  int? averageScore;
  int? meanScore;
  int? popularity;
  bool? isLocked;
  int? trending;
  int? favourites;
  List<MediaTag>? tags;
  MediaConnection? relations;
  CharacterConnection? characters;
  @JsonKey(name: 'staffPreview')
  StaffConnection? staff;
  StudioConnection? studios;
  bool? isFavourite;
  bool? isFavouriteBlocked;
  bool? isAdult;
  AiringSchedule? nextAiringEpisode;
  List<MediaExternalLink>? externalLinks;
  List<MediaStreamingEpisode>? streamingEpisodes;
  MediaList? mediaListEntry;
  ReviewConnection? reviews;
  RecommendationConnection? recommendations;
  String? siteUrl;
  bool? autoCreateForumThread;
  bool? isRecommendationBlocked;
  bool? isReviewBlocked;
  String? modNotes;

  Media({
    required this.id,
    this.idMal,
    this.title,
    this.type,
    this.format,
    this.status,
    this.description,
    this.startDate,
    this.endDate,
    this.season,
    this.seasonYear,
    this.seasonInt,
    this.episodes,
    this.duration,
    this.chapters,
    this.volumes,
    this.countryOfOrigin,
    this.isLicensed,
    this.source,
    this.hashtag,
    this.trailer,
    this.updatedAt,
    this.coverImage,
    this.bannerImage,
    this.genres,
    this.synonyms,
    this.averageScore,
    this.meanScore,
    this.popularity,
    this.isLocked,
    this.trending,
    this.favourites,
    this.tags,
    this.relations,
    this.characters,
    this.staff,
    this.studios,
    this.isFavourite,
    this.isFavouriteBlocked,
    this.isAdult,
    this.nextAiringEpisode,
    this.externalLinks,
    this.streamingEpisodes,
    this.mediaListEntry,
    this.reviews,
    this.recommendations,
    this.siteUrl,
    this.autoCreateForumThread,
    this.isRecommendationBlocked,
    this.isReviewBlocked,
    this.modNotes,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable()
class MediaTitle {
  String? romaji;
  String? english;
  String? native;
  String userPreferred;

  MediaTitle({
    required this.romaji,
    this.english,
    this.native,
    required this.userPreferred,
  });

  factory MediaTitle.fromJson(Map<String, dynamic> json) =>
      _$MediaTitleFromJson(json);

  Map<String, dynamic> toJson() => _$MediaTitleToJson(this);
}

enum MediaType { ANIME, MANGA }

enum MediaStatus {
  FINISHED,
  RELEASING,
  NOT_YET_RELEASED,
  CANCELLED,
  HIATUS,
}

@JsonSerializable()
class AiringSchedule {
  int? id;
  int? airingAt;
  int? timeUntilAiring;
  int? episode;
  int? mediaId;
  Media? media;

  AiringSchedule({
    this.id,
    this.airingAt,
    this.timeUntilAiring,
    this.episode,
    this.mediaId,
    this.media,
  });

  factory AiringSchedule.fromJson(Map<String, dynamic> json) =>
      _$AiringScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$AiringScheduleToJson(this);
}

@JsonSerializable()
class MediaStreamingEpisode {
  String? title;
  String? thumbnail;
  String? url;
  String? site;

  MediaStreamingEpisode({
    this.title,
    this.thumbnail,
    this.url,
    this.site,
  });

  factory MediaStreamingEpisode.fromJson(Map<String, dynamic> json) =>
      _$MediaStreamingEpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$MediaStreamingEpisodeToJson(this);
}

@JsonSerializable()
class MediaCoverImage {
  String? extraLarge;
  String? large;
  String? medium;
  String? color;

  MediaCoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
  });

  factory MediaCoverImage.fromJson(Map<String, dynamic> json) =>
      _$MediaCoverImageFromJson(json);

  Map<String, dynamic> toJson() => _$MediaCoverImageToJson(this);
}

@JsonSerializable()
class MediaList {
  int? id;
  int? userId;
  int? mediaId;
  MediaListStatus? status;
  double? score;
  int? progress;
  int? progressVolumes;
  int? repeat;
  int? priority;
  bool? private;
  String? notes;
  bool? hiddenFromStatusLists;
  Map<String, bool>? customLists;
  FuzzyDate? startedAt;
  FuzzyDate? completedAt;
  int? updatedAt;
  int? createdAt;
  Media? media;
  User? user;

  MediaList({
    this.id,
    this.userId,
    this.mediaId,
    this.status,
    this.score,
    this.progress,
    this.progressVolumes,
    this.repeat,
    this.priority,
    this.private,
    this.notes,
    this.hiddenFromStatusLists,
    this.customLists,
    this.startedAt,
    this.completedAt,
    this.updatedAt,
    this.createdAt,
    this.media,
    this.user,
  });

  factory MediaList.fromJson(Map<String, dynamic> json) =>
      _$MediaListFromJson(json);

  Map<String, dynamic> toJson() => _$MediaListToJson(this);
}

enum MediaListStatus {
  CURRENT,
  PLANNING,
  COMPLETED,
  DROPPED,
  PAUSED,
  REPEATING
}

enum MediaSource {
  ORIGINAL,
  MANGA,
  LIGHT_NOVEL,
  VISUAL_NOVEL,
  VIDEO_GAME,
  OTHER,
  NOVEL,
  DOUJINSHI,
  ANIME,
  WEB_NOVEL,
  LIVE_ACTION,
  GAME,
  COMIC,
  MULTIMEDIA_PROJECT,
  PICTURE_BOOK,
}

enum MediaFormat {
  TV,
  TV_SHORT,
  MOVIE,
  SPECIAL,
  OVA,
  ONA,
  MUSIC,
  MANGA,
  NOVEL,
  ONE_SHOT,
}

@JsonSerializable()
class MediaTrailer {
  String? id;
  String? site;
  String? thumbnail;

  MediaTrailer({
    this.id,
    this.site,
    this.thumbnail,
  });

  factory MediaTrailer.fromJson(Map<String, dynamic> json) =>
      _$MediaTrailerFromJson(json);

  Map<String, dynamic> toJson() => _$MediaTrailerToJson(this);
}

@JsonSerializable()
class MediaTagCollection {
  List<MediaTag>? tags;

  MediaTagCollection({this.tags});

  factory MediaTagCollection.fromJson(Map<String, dynamic> json) =>
      _$MediaTagCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$MediaTagCollectionToJson(this);
}

@JsonSerializable()
class MediaTag {
  int? id;
  String name;
  String? description;
  String? category;
  int? rank;
  bool? isGeneralSpoiler;
  bool? isMediaSpoiler;
  bool? isAdult;
  int? userId;

  MediaTag({
    this.id,
    required this.name,
    this.description,
    this.category,
    this.rank,
    this.isGeneralSpoiler,
    this.isMediaSpoiler,
    this.isAdult,
    this.userId,
  });

  factory MediaTag.fromJson(Map<String, dynamic> json) =>
      _$MediaTagFromJson(json);

  Map<String, dynamic> toJson() => _$MediaTagToJson(this);
}

@JsonSerializable()
class MediaConnection {
  List<MediaEdge>? edges;
  List<Media>? nodes;
  PageInfo? pageInfo;

  MediaConnection({this.edges, this.nodes, this.pageInfo});

  factory MediaConnection.fromJson(Map<String, dynamic> json) =>
      _$MediaConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$MediaConnectionToJson(this);
}

@JsonSerializable()
class MediaEdge {
  Media? node;
  int? id;
  MediaRelation? relationType;
  bool? isMainStudio;
  List<Character>? characters;
  String? characterRole;
  String? characterName;
  String? roleNotes;
  String? dubGroup;
  String? staffRole;
  int? favouriteOrder;

  MediaEdge({
    this.node,
    this.id,
    this.relationType,
    this.isMainStudio,
    this.characters,
    this.characterRole,
    this.characterName,
    this.roleNotes,
    this.dubGroup,
    this.staffRole,
    this.favouriteOrder,
  });

  factory MediaEdge.fromJson(Map<String, dynamic> json) =>
      _$MediaEdgeFromJson(json);

  Map<String, dynamic> toJson() => _$MediaEdgeToJson(this);
}

enum MediaRelation {
  ADAPTATION,
  PREQUEL,
  SEQUEL,
  PARENT,
  SIDE_STORY,
  CHARACTER,
  SUMMARY,
  ALTERNATIVE,
  SPIN_OFF,
  OTHER,
  SOURCE,
  COMPILATION,
  CONTAINS,
}

enum MediaSeason { WINTER, SPRING, SUMMER, FALL }

@JsonSerializable()
class MediaExternalLink {
  final int? id;
  final String? url;
  final String site;
  final int? siteId;
  final ExternalLinkType? type;
  final String? language;
  final String? color;
  final String? icon;
  final String? notes;

  MediaExternalLink({
    this.id,
    this.url,
    required this.site,
    this.siteId,
    this.type,
    this.language,
    this.color,
    this.icon,
    this.notes,
  });

  factory MediaExternalLink.fromJson(Map<String, dynamic> json) =>
      _$MediaExternalLinkFromJson(json);

  Map<String, dynamic> toJson() => _$MediaExternalLinkToJson(this);
}

enum ExternalLinkType { INFO, STREAMING, SOCIAL }

@JsonSerializable()
class MediaListCollection {
  final List<MediaListGroup>? lists;
  final User? user;
  final bool? hasNextChunk;

  MediaListCollection({
    this.lists,
    this.user,
    this.hasNextChunk,
  });

  factory MediaListCollection.fromJson(Map<String, dynamic> json) =>
      _$MediaListCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$MediaListCollectionToJson(this);
}

@JsonSerializable()
class FollowData {
  final int id;
  final bool isFollowing;

  FollowData({
    required this.id,
    required this.isFollowing,
  });

  factory FollowData.fromJson(Map<String, dynamic> json) =>
      _$FollowDataFromJson(json);

  Map<String, dynamic> toJson() => _$FollowDataToJson(this);
}

@JsonSerializable()
class MediaListGroup {
  final List<MediaList>? entries;
  final String? name;
  final bool? isCustomList;
  final bool? isSplitCompletedList;
  final MediaListStatus? status;

  MediaListGroup({
    this.entries,
    this.name,
    this.isCustomList,
    this.isSplitCompletedList,
    this.status,
  });

  factory MediaListGroup.fromJson(Map<String, dynamic> json) =>
      _$MediaListGroupFromJson(json);

  Map<String, dynamic> toJson() => _$MediaListGroupToJson(this);
}

@JsonSerializable()
class VoiceActor {
  int id;
  String? name;
  CharacterImage? image;
  String? siteUrl;

  VoiceActor({
    required this.id,
    this.name,
    this.image,
    this.siteUrl,
  });

  factory VoiceActor.fromJson(Map<String, dynamic> json) =>
      _$VoiceActorFromJson(json);

  Map<String, dynamic> toJson() => _$VoiceActorToJson(this);
}

@JsonSerializable()
class StaffConnection {
  List<StaffEdge>? edges;
  List<Staff>? nodes;
  PageInfo? pageInfo;

  StaffConnection({this.edges, this.nodes, this.pageInfo});

  factory StaffConnection.fromJson(Map<String, dynamic> json) =>
      _$StaffConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$StaffConnectionToJson(this);
}

@JsonSerializable()
class StudioConnection {
  List<StudioEdge>? edges;
  List<Studio>? nodes;
  PageInfo? pageInfo;

  StudioConnection({this.edges, this.nodes, this.pageInfo});

  factory StudioConnection.fromJson(Map<String, dynamic> json) =>
      _$StudioConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$StudioConnectionToJson(this);
}

@JsonSerializable()
class StudioEdge {
  Studio? node;
  bool? isMain;

  StudioEdge({this.node, this.isMain});

  factory StudioEdge.fromJson(Map<String, dynamic> json) =>
      _$StudioEdgeFromJson(json);

  Map<String, dynamic> toJson() => _$StudioEdgeToJson(this);
}

@JsonSerializable()
class Studio {
  int id;
  String? name;
  bool? isAnimationStudio;
  String? siteUrl;
  MediaConnection? media;
  bool? isFavourite;
  int? favourites;

  Studio({
    required this.id,
    this.name,
    this.isAnimationStudio,
    this.siteUrl,
    this.media,
    this.isFavourite,
    this.favourites,
  });

  factory Studio.fromJson(Map<String, dynamic> json) => _$StudioFromJson(json);

  Map<String, dynamic> toJson() => _$StudioToJson(this);
}

@JsonSerializable()
class ReviewConnection {
  List<ReviewEdge>? edges;
  List<Review>? nodes;
  PageInfo? pageInfo;

  ReviewConnection({this.edges, this.nodes, this.pageInfo});

  factory ReviewConnection.fromJson(Map<String, dynamic> json) =>
      _$ReviewConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewConnectionToJson(this);
}

@JsonSerializable()
class ReviewEdge {
  Review? node;

  ReviewEdge({this.node});

  factory ReviewEdge.fromJson(Map<String, dynamic> json) =>
      _$ReviewEdgeFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewEdgeToJson(this);
}

@JsonSerializable()
class PageInfo {
  int? total;
  int? perPage;
  int? currentPage;
  int? lastPage;
  bool? hasNextPage;

  PageInfo(
      {this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage});

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PageInfoToJson(this);
}

@JsonSerializable()
class Author {
  int id;
  String? name;
  String? image;
  String? role;
  Map<String, List<Media>>? yearMedia;
  List<Character>? character;

  Author({
    required this.id,
    this.name,
    this.image,
    this.role,
    this.yearMedia,
    this.character,
  });
}
