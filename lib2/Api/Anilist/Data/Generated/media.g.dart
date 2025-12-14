// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      id: (json['id'] as num).toInt(),
      idMal: (json['idMal'] as num?)?.toInt(),
      title: json['title'] == null
          ? null
          : MediaTitle.fromJson(json['title'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
      format: $enumDecodeNullable(_$MediaFormatEnumMap, json['format']),
      status: $enumDecodeNullable(_$MediaStatusEnumMap, json['status']),
      description: json['description'] as String?,
      startDate: json['startDate'] == null
          ? null
          : FuzzyDate.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: json['endDate'] == null
          ? null
          : FuzzyDate.fromJson(json['endDate'] as Map<String, dynamic>),
      season: $enumDecodeNullable(_$MediaSeasonEnumMap, json['season']),
      seasonYear: (json['seasonYear'] as num?)?.toInt(),
      seasonInt: (json['seasonInt'] as num?)?.toInt(),
      episodes: (json['episodes'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      chapters: (json['chapters'] as num?)?.toInt(),
      volumes: (json['volumes'] as num?)?.toInt(),
      countryOfOrigin: json['countryOfOrigin'] as String?,
      isLicensed: json['isLicensed'] as bool?,
      source: $enumDecodeNullable(_$MediaSourceEnumMap, json['source']),
      hashtag: json['hashtag'] as String?,
      trailer: json['trailer'] == null
          ? null
          : MediaTrailer.fromJson(json['trailer'] as Map<String, dynamic>),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
      coverImage: json['coverImage'] == null
          ? null
          : MediaCoverImage.fromJson(
              json['coverImage'] as Map<String, dynamic>),
      bannerImage: json['bannerImage'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      averageScore: (json['averageScore'] as num?)?.toInt(),
      meanScore: (json['meanScore'] as num?)?.toInt(),
      popularity: (json['popularity'] as num?)?.toInt(),
      isLocked: json['isLocked'] as bool?,
      trending: (json['trending'] as num?)?.toInt(),
      favourites: (json['favourites'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => MediaTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      relations: json['relations'] == null
          ? null
          : MediaConnection.fromJson(json['relations'] as Map<String, dynamic>),
      characters: json['characters'] == null
          ? null
          : CharacterConnection.fromJson(
              json['characters'] as Map<String, dynamic>),
      staff: json['staffPreview'] == null
          ? null
          : StaffConnection.fromJson(
              json['staffPreview'] as Map<String, dynamic>),
      studios: json['studios'] == null
          ? null
          : StudioConnection.fromJson(json['studios'] as Map<String, dynamic>),
      isFavourite: json['isFavourite'] as bool?,
      isFavouriteBlocked: json['isFavouriteBlocked'] as bool?,
      isAdult: json['isAdult'] as bool?,
      nextAiringEpisode: json['nextAiringEpisode'] == null
          ? null
          : AiringSchedule.fromJson(
              json['nextAiringEpisode'] as Map<String, dynamic>),
      externalLinks: (json['externalLinks'] as List<dynamic>?)
          ?.map((e) => MediaExternalLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      streamingEpisodes: (json['streamingEpisodes'] as List<dynamic>?)
          ?.map(
              (e) => MediaStreamingEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
      mediaListEntry: json['mediaListEntry'] == null
          ? null
          : MediaList.fromJson(json['mediaListEntry'] as Map<String, dynamic>),
      reviews: json['reviews'] == null
          ? null
          : ReviewConnection.fromJson(json['reviews'] as Map<String, dynamic>),
      recommendations: json['recommendations'] == null
          ? null
          : RecommendationConnection.fromJson(
              json['recommendations'] as Map<String, dynamic>),
      siteUrl: json['siteUrl'] as String?,
      autoCreateForumThread: json['autoCreateForumThread'] as bool?,
      isRecommendationBlocked: json['isRecommendationBlocked'] as bool?,
      isReviewBlocked: json['isReviewBlocked'] as bool?,
      modNotes: json['modNotes'] as String?,
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'idMal': instance.idMal,
      'title': instance.title,
      'type': _$MediaTypeEnumMap[instance.type],
      'format': _$MediaFormatEnumMap[instance.format],
      'status': _$MediaStatusEnumMap[instance.status],
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'season': _$MediaSeasonEnumMap[instance.season],
      'seasonYear': instance.seasonYear,
      'seasonInt': instance.seasonInt,
      'episodes': instance.episodes,
      'duration': instance.duration,
      'chapters': instance.chapters,
      'volumes': instance.volumes,
      'countryOfOrigin': instance.countryOfOrigin,
      'isLicensed': instance.isLicensed,
      'source': _$MediaSourceEnumMap[instance.source],
      'hashtag': instance.hashtag,
      'trailer': instance.trailer,
      'updatedAt': instance.updatedAt,
      'coverImage': instance.coverImage,
      'bannerImage': instance.bannerImage,
      'genres': instance.genres,
      'synonyms': instance.synonyms,
      'averageScore': instance.averageScore,
      'meanScore': instance.meanScore,
      'popularity': instance.popularity,
      'isLocked': instance.isLocked,
      'trending': instance.trending,
      'favourites': instance.favourites,
      'tags': instance.tags,
      'relations': instance.relations,
      'characters': instance.characters,
      'staff': instance.staff,
      'studios': instance.studios,
      'isFavourite': instance.isFavourite,
      'isFavouriteBlocked': instance.isFavouriteBlocked,
      'isAdult': instance.isAdult,
      'nextAiringEpisode': instance.nextAiringEpisode,
      'externalLinks': instance.externalLinks,
      'streamingEpisodes': instance.streamingEpisodes,
      'mediaListEntry': instance.mediaListEntry,
      'reviews': instance.reviews,
      'recommendations': instance.recommendations,
      'siteUrl': instance.siteUrl,
      'autoCreateForumThread': instance.autoCreateForumThread,
      'isRecommendationBlocked': instance.isRecommendationBlocked,
      'isReviewBlocked': instance.isReviewBlocked,
      'modNotes': instance.modNotes,
    };

const _$MediaTypeEnumMap = {
  MediaType.ANIME: 'ANIME',
  MediaType.MANGA: 'MANGA',
};

const _$MediaFormatEnumMap = {
  MediaFormat.TV: 'TV',
  MediaFormat.TV_SHORT: 'TV_SHORT',
  MediaFormat.MOVIE: 'MOVIE',
  MediaFormat.SPECIAL: 'SPECIAL',
  MediaFormat.OVA: 'OVA',
  MediaFormat.ONA: 'ONA',
  MediaFormat.MUSIC: 'MUSIC',
  MediaFormat.MANGA: 'MANGA',
  MediaFormat.NOVEL: 'NOVEL',
  MediaFormat.ONE_SHOT: 'ONE_SHOT',
};

const _$MediaStatusEnumMap = {
  MediaStatus.FINISHED: 'FINISHED',
  MediaStatus.RELEASING: 'RELEASING',
  MediaStatus.NOT_YET_RELEASED: 'NOT_YET_RELEASED',
  MediaStatus.CANCELLED: 'CANCELLED',
  MediaStatus.HIATUS: 'HIATUS',
};

const _$MediaSeasonEnumMap = {
  MediaSeason.WINTER: 'WINTER',
  MediaSeason.SPRING: 'SPRING',
  MediaSeason.SUMMER: 'SUMMER',
  MediaSeason.FALL: 'FALL',
};

const _$MediaSourceEnumMap = {
  MediaSource.ORIGINAL: 'ORIGINAL',
  MediaSource.MANGA: 'MANGA',
  MediaSource.LIGHT_NOVEL: 'LIGHT_NOVEL',
  MediaSource.VISUAL_NOVEL: 'VISUAL_NOVEL',
  MediaSource.VIDEO_GAME: 'VIDEO_GAME',
  MediaSource.OTHER: 'OTHER',
  MediaSource.NOVEL: 'NOVEL',
  MediaSource.DOUJINSHI: 'DOUJINSHI',
  MediaSource.ANIME: 'ANIME',
  MediaSource.WEB_NOVEL: 'WEB_NOVEL',
  MediaSource.LIVE_ACTION: 'LIVE_ACTION',
  MediaSource.GAME: 'GAME',
  MediaSource.COMIC: 'COMIC',
  MediaSource.MULTIMEDIA_PROJECT: 'MULTIMEDIA_PROJECT',
  MediaSource.PICTURE_BOOK: 'PICTURE_BOOK',
};

MediaTitle _$MediaTitleFromJson(Map<String, dynamic> json) => MediaTitle(
      romaji: json['romaji'] as String?,
      english: json['english'] as String?,
      native: json['native'] as String?,
      userPreferred: json['userPreferred'] as String,
    );

Map<String, dynamic> _$MediaTitleToJson(MediaTitle instance) =>
    <String, dynamic>{
      'romaji': instance.romaji,
      'english': instance.english,
      'native': instance.native,
      'userPreferred': instance.userPreferred,
    };

AiringSchedule _$AiringScheduleFromJson(Map<String, dynamic> json) =>
    AiringSchedule(
      id: (json['id'] as num?)?.toInt(),
      airingAt: (json['airingAt'] as num?)?.toInt(),
      timeUntilAiring: (json['timeUntilAiring'] as num?)?.toInt(),
      episode: (json['episode'] as num?)?.toInt(),
      mediaId: (json['mediaId'] as num?)?.toInt(),
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiringScheduleToJson(AiringSchedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'airingAt': instance.airingAt,
      'timeUntilAiring': instance.timeUntilAiring,
      'episode': instance.episode,
      'mediaId': instance.mediaId,
      'media': instance.media,
    };

MediaStreamingEpisode _$MediaStreamingEpisodeFromJson(
        Map<String, dynamic> json) =>
    MediaStreamingEpisode(
      title: json['title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      url: json['url'] as String?,
      site: json['site'] as String?,
    );

Map<String, dynamic> _$MediaStreamingEpisodeToJson(
        MediaStreamingEpisode instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'url': instance.url,
      'site': instance.site,
    };

MediaCoverImage _$MediaCoverImageFromJson(Map<String, dynamic> json) =>
    MediaCoverImage(
      extraLarge: json['extraLarge'] as String?,
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$MediaCoverImageToJson(MediaCoverImage instance) =>
    <String, dynamic>{
      'extraLarge': instance.extraLarge,
      'large': instance.large,
      'medium': instance.medium,
      'color': instance.color,
    };

MediaList _$MediaListFromJson(Map<String, dynamic> json) => MediaList(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      mediaId: (json['mediaId'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$MediaListStatusEnumMap, json['status']),
      score: (json['score'] as num?)?.toDouble(),
      progress: (json['progress'] as num?)?.toInt(),
      progressVolumes: (json['progressVolumes'] as num?)?.toInt(),
      repeat: (json['repeat'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
      private: json['private'] as bool?,
      notes: json['notes'] as String?,
      hiddenFromStatusLists: json['hiddenFromStatusLists'] as bool?,
      customLists: (json['customLists'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      startedAt: json['startedAt'] == null
          ? null
          : FuzzyDate.fromJson(json['startedAt'] as Map<String, dynamic>),
      completedAt: json['completedAt'] == null
          ? null
          : FuzzyDate.fromJson(json['completedAt'] as Map<String, dynamic>),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
      createdAt: (json['createdAt'] as num?)?.toInt(),
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaListToJson(MediaList instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'mediaId': instance.mediaId,
      'status': _$MediaListStatusEnumMap[instance.status],
      'score': instance.score,
      'progress': instance.progress,
      'progressVolumes': instance.progressVolumes,
      'repeat': instance.repeat,
      'priority': instance.priority,
      'private': instance.private,
      'notes': instance.notes,
      'hiddenFromStatusLists': instance.hiddenFromStatusLists,
      'customLists': instance.customLists,
      'startedAt': instance.startedAt,
      'completedAt': instance.completedAt,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'media': instance.media,
      'user': instance.user,
    };

const _$MediaListStatusEnumMap = {
  MediaListStatus.CURRENT: 'CURRENT',
  MediaListStatus.PLANNING: 'PLANNING',
  MediaListStatus.COMPLETED: 'COMPLETED',
  MediaListStatus.DROPPED: 'DROPPED',
  MediaListStatus.PAUSED: 'PAUSED',
  MediaListStatus.REPEATING: 'REPEATING',
};

MediaTrailer _$MediaTrailerFromJson(Map<String, dynamic> json) => MediaTrailer(
      id: json['id'] as String?,
      site: json['site'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$MediaTrailerToJson(MediaTrailer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'site': instance.site,
      'thumbnail': instance.thumbnail,
    };

MediaTagCollection _$MediaTagCollectionFromJson(Map<String, dynamic> json) =>
    MediaTagCollection(
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => MediaTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaTagCollectionToJson(MediaTagCollection instance) =>
    <String, dynamic>{
      'tags': instance.tags,
    };

MediaTag _$MediaTagFromJson(Map<String, dynamic> json) => MediaTag(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      category: json['category'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
      isGeneralSpoiler: json['isGeneralSpoiler'] as bool?,
      isMediaSpoiler: json['isMediaSpoiler'] as bool?,
      isAdult: json['isAdult'] as bool?,
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MediaTagToJson(MediaTag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'rank': instance.rank,
      'isGeneralSpoiler': instance.isGeneralSpoiler,
      'isMediaSpoiler': instance.isMediaSpoiler,
      'isAdult': instance.isAdult,
      'userId': instance.userId,
    };

MediaConnection _$MediaConnectionFromJson(Map<String, dynamic> json) =>
    MediaConnection(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => MediaEdge.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: json['pageInfo'] == null
          ? null
          : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaConnectionToJson(MediaConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges,
      'nodes': instance.nodes,
      'pageInfo': instance.pageInfo,
    };

MediaEdge _$MediaEdgeFromJson(Map<String, dynamic> json) => MediaEdge(
      node: json['node'] == null
          ? null
          : Media.fromJson(json['node'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      relationType:
          $enumDecodeNullable(_$MediaRelationEnumMap, json['relationType']),
      isMainStudio: json['isMainStudio'] as bool?,
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      characterRole: json['characterRole'] as String?,
      characterName: json['characterName'] as String?,
      roleNotes: json['roleNotes'] as String?,
      dubGroup: json['dubGroup'] as String?,
      staffRole: json['staffRole'] as String?,
      favouriteOrder: (json['favouriteOrder'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MediaEdgeToJson(MediaEdge instance) => <String, dynamic>{
      'node': instance.node,
      'id': instance.id,
      'relationType': _$MediaRelationEnumMap[instance.relationType],
      'isMainStudio': instance.isMainStudio,
      'characters': instance.characters,
      'characterRole': instance.characterRole,
      'characterName': instance.characterName,
      'roleNotes': instance.roleNotes,
      'dubGroup': instance.dubGroup,
      'staffRole': instance.staffRole,
      'favouriteOrder': instance.favouriteOrder,
    };

const _$MediaRelationEnumMap = {
  MediaRelation.ADAPTATION: 'ADAPTATION',
  MediaRelation.PREQUEL: 'PREQUEL',
  MediaRelation.SEQUEL: 'SEQUEL',
  MediaRelation.PARENT: 'PARENT',
  MediaRelation.SIDE_STORY: 'SIDE_STORY',
  MediaRelation.CHARACTER: 'CHARACTER',
  MediaRelation.SUMMARY: 'SUMMARY',
  MediaRelation.ALTERNATIVE: 'ALTERNATIVE',
  MediaRelation.SPIN_OFF: 'SPIN_OFF',
  MediaRelation.OTHER: 'OTHER',
  MediaRelation.SOURCE: 'SOURCE',
  MediaRelation.COMPILATION: 'COMPILATION',
  MediaRelation.CONTAINS: 'CONTAINS',
};

MediaExternalLink _$MediaExternalLinkFromJson(Map<String, dynamic> json) =>
    MediaExternalLink(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
      site: json['site'] as String,
      siteId: (json['siteId'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$ExternalLinkTypeEnumMap, json['type']),
      language: json['language'] as String?,
      color: json['color'] as String?,
      icon: json['icon'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$MediaExternalLinkToJson(MediaExternalLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'site': instance.site,
      'siteId': instance.siteId,
      'type': _$ExternalLinkTypeEnumMap[instance.type],
      'language': instance.language,
      'color': instance.color,
      'icon': instance.icon,
      'notes': instance.notes,
    };

const _$ExternalLinkTypeEnumMap = {
  ExternalLinkType.INFO: 'INFO',
  ExternalLinkType.STREAMING: 'STREAMING',
  ExternalLinkType.SOCIAL: 'SOCIAL',
};

MediaListCollection _$MediaListCollectionFromJson(Map<String, dynamic> json) =>
    MediaListCollection(
      lists: (json['lists'] as List<dynamic>?)
          ?.map((e) => MediaListGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      hasNextChunk: json['hasNextChunk'] as bool?,
    );

Map<String, dynamic> _$MediaListCollectionToJson(
        MediaListCollection instance) =>
    <String, dynamic>{
      'lists': instance.lists,
      'user': instance.user,
      'hasNextChunk': instance.hasNextChunk,
    };

FollowData _$FollowDataFromJson(Map<String, dynamic> json) => FollowData(
      id: (json['id'] as num).toInt(),
      isFollowing: json['isFollowing'] as bool,
    );

Map<String, dynamic> _$FollowDataToJson(FollowData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isFollowing': instance.isFollowing,
    };

MediaListGroup _$MediaListGroupFromJson(Map<String, dynamic> json) =>
    MediaListGroup(
      entries: (json['entries'] as List<dynamic>?)
          ?.map((e) => MediaList.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      isCustomList: json['isCustomList'] as bool?,
      isSplitCompletedList: json['isSplitCompletedList'] as bool?,
      status: $enumDecodeNullable(_$MediaListStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$MediaListGroupToJson(MediaListGroup instance) =>
    <String, dynamic>{
      'entries': instance.entries,
      'name': instance.name,
      'isCustomList': instance.isCustomList,
      'isSplitCompletedList': instance.isSplitCompletedList,
      'status': _$MediaListStatusEnumMap[instance.status],
    };

VoiceActor _$VoiceActorFromJson(Map<String, dynamic> json) => VoiceActor(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      image: json['image'] == null
          ? null
          : CharacterImage.fromJson(json['image'] as Map<String, dynamic>),
      siteUrl: json['siteUrl'] as String?,
    );

Map<String, dynamic> _$VoiceActorToJson(VoiceActor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'siteUrl': instance.siteUrl,
    };

StaffConnection _$StaffConnectionFromJson(Map<String, dynamic> json) =>
    StaffConnection(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => StaffEdge.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: json['pageInfo'] == null
          ? null
          : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StaffConnectionToJson(StaffConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges,
      'nodes': instance.nodes,
      'pageInfo': instance.pageInfo,
    };

StudioConnection _$StudioConnectionFromJson(Map<String, dynamic> json) =>
    StudioConnection(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => StudioEdge.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => Studio.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: json['pageInfo'] == null
          ? null
          : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudioConnectionToJson(StudioConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges,
      'nodes': instance.nodes,
      'pageInfo': instance.pageInfo,
    };

StudioEdge _$StudioEdgeFromJson(Map<String, dynamic> json) => StudioEdge(
      node: json['node'] == null
          ? null
          : Studio.fromJson(json['node'] as Map<String, dynamic>),
      isMain: json['isMain'] as bool?,
    );

Map<String, dynamic> _$StudioEdgeToJson(StudioEdge instance) =>
    <String, dynamic>{
      'node': instance.node,
      'isMain': instance.isMain,
    };

Studio _$StudioFromJson(Map<String, dynamic> json) => Studio(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      isAnimationStudio: json['isAnimationStudio'] as bool?,
      siteUrl: json['siteUrl'] as String?,
      media: json['media'] == null
          ? null
          : MediaConnection.fromJson(json['media'] as Map<String, dynamic>),
      favourites: (json['favourites'] as num?)?.toInt(),
      isFavourite: json['isFavourite'] as bool?,
    );

Map<String, dynamic> _$StudioToJson(Studio instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isAnimationStudio': instance.isAnimationStudio,
      'siteUrl': instance.siteUrl,
      'media': instance.media,
      'favourites': instance.favourites,
      'isFavourite': instance.isFavourite,
    };

ReviewConnection _$ReviewConnectionFromJson(Map<String, dynamic> json) =>
    ReviewConnection(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => ReviewEdge.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: json['pageInfo'] == null
          ? null
          : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewConnectionToJson(ReviewConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges,
      'nodes': instance.nodes,
      'pageInfo': instance.pageInfo,
    };

ReviewEdge _$ReviewEdgeFromJson(Map<String, dynamic> json) => ReviewEdge(
      node: json['node'] == null
          ? null
          : Review.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewEdgeToJson(ReviewEdge instance) =>
    <String, dynamic>{
      'node': instance.node,
    };

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) => PageInfo(
      total: (json['total'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) => <String, dynamic>{
      'total': instance.total,
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
      'lastPage': instance.lastPage,
      'hasNextPage': instance.hasNextPage,
    };
