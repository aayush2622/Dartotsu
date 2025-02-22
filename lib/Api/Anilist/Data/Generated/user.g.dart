// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      avatar: json['avatar'] == null
          ? null
          : UserAvatar.fromJson(json['avatar'] as Map<String, dynamic>),
      bannerImage: json['bannerImage'] as String?,
      options: json['options'] == null
          ? null
          : UserOptions.fromJson(json['options'] as Map<String, dynamic>),
      mediaListOptions: json['mediaListOptions'] == null
          ? null
          : MediaListOptions.fromJson(
              json['mediaListOptions'] as Map<String, dynamic>),
      favourites: json['favourites'] == null
          ? null
          : Favourites.fromJson(json['favourites'] as Map<String, dynamic>),
      statistics: json['statistics'] == null
          ? null
          : UserStatisticTypes.fromJson(
              json['statistics'] as Map<String, dynamic>),
      unreadNotificationCount:
          (json['unreadNotificationCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'bannerImage': instance.bannerImage,
      'options': instance.options,
      'mediaListOptions': instance.mediaListOptions,
      'favourites': instance.favourites,
      'statistics': instance.statistics,
      'unreadNotificationCount': instance.unreadNotificationCount,
    };

UserOptions _$UserOptionsFromJson(Map<String, dynamic> json) => UserOptions(
      displayAdultContent: json['displayAdultContent'] as bool?,
      airingNotifications: json['airingNotifications'] as bool?,
      profileColor: json['profileColor'] as String?,
    );

Map<String, dynamic> _$UserOptionsToJson(UserOptions instance) =>
    <String, dynamic>{
      'displayAdultContent': instance.displayAdultContent,
      'airingNotifications': instance.airingNotifications,
      'profileColor': instance.profileColor,
    };

UserAvatar _$UserAvatarFromJson(Map<String, dynamic> json) => UserAvatar(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
    );

Map<String, dynamic> _$UserAvatarToJson(UserAvatar instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
    };

UserStatisticTypes _$UserStatisticTypesFromJson(Map<String, dynamic> json) =>
    UserStatisticTypes(
      anime: json['anime'] == null
          ? null
          : UserStatistics.fromJson(json['anime'] as Map<String, dynamic>),
      manga: json['manga'] == null
          ? null
          : UserStatistics.fromJson(json['manga'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserStatisticTypesToJson(UserStatisticTypes instance) =>
    <String, dynamic>{
      'anime': instance.anime,
      'manga': instance.manga,
    };

UserStatistics _$UserStatisticsFromJson(Map<String, dynamic> json) =>
    UserStatistics(
      count: (json['count'] as num?)?.toInt(),
      meanScore: (json['meanScore'] as num?)?.toDouble(),
      standardDeviation: (json['standardDeviation'] as num?)?.toDouble(),
      minutesWatched: (json['minutesWatched'] as num?)?.toInt(),
      episodesWatched: (json['episodesWatched'] as num?)?.toInt(),
      chaptersRead: (json['chaptersRead'] as num?)?.toInt(),
      volumesRead: (json['volumesRead'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserStatisticsToJson(UserStatistics instance) =>
    <String, dynamic>{
      'count': instance.count,
      'meanScore': instance.meanScore,
      'standardDeviation': instance.standardDeviation,
      'minutesWatched': instance.minutesWatched,
      'episodesWatched': instance.episodesWatched,
      'chaptersRead': instance.chaptersRead,
      'volumesRead': instance.volumesRead,
    };

Favourites _$FavouritesFromJson(Map<String, dynamic> json) => Favourites(
      anime: json['anime'] == null
          ? null
          : MediaConnection.fromJson(json['anime'] as Map<String, dynamic>),
      manga: json['manga'] == null
          ? null
          : MediaConnection.fromJson(json['manga'] as Map<String, dynamic>),
      characters: json['characters'] == null
          ? null
          : CharacterConnection.fromJson(
              json['characters'] as Map<String, dynamic>),
      staff: json['staff'] == null
          ? null
          : StaffConnection.fromJson(json['staff'] as Map<String, dynamic>),
      studios: json['studios'] == null
          ? null
          : StudioConnection.fromJson(json['studios'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FavouritesToJson(Favourites instance) =>
    <String, dynamic>{
      'anime': instance.anime,
      'manga': instance.manga,
      'characters': instance.characters,
      'staff': instance.staff,
      'studios': instance.studios,
    };

MediaListOptions _$MediaListOptionsFromJson(Map<String, dynamic> json) =>
    MediaListOptions(
      scoreFormat: json['scoreFormat'] as String?,
      rowOrder: json['rowOrder'] as String?,
      animeList: json['animeList'] == null
          ? null
          : MediaListTypeOptions.fromJson(
              json['animeList'] as Map<String, dynamic>),
      mangaList: json['mangaList'] == null
          ? null
          : MediaListTypeOptions.fromJson(
              json['mangaList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaListOptionsToJson(MediaListOptions instance) =>
    <String, dynamic>{
      'scoreFormat': instance.scoreFormat,
      'rowOrder': instance.rowOrder,
      'animeList': instance.animeList,
      'mangaList': instance.mangaList,
    };

MediaListTypeOptions _$MediaListTypeOptionsFromJson(
        Map<String, dynamic> json) =>
    MediaListTypeOptions(
      sectionOrder: (json['sectionOrder'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      splitCompletedSectionByFormat:
          json['splitCompletedSectionByFormat'] as bool?,
      customLists: (json['customLists'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MediaListTypeOptionsToJson(
        MediaListTypeOptions instance) =>
    <String, dynamic>{
      'sectionOrder': instance.sectionOrder,
      'splitCompletedSectionByFormat': instance.splitCompletedSectionByFormat,
      'customLists': instance.customLists,
    };
