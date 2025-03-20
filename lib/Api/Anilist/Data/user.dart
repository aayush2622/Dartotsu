import 'package:json_annotation/json_annotation.dart';

import 'character.dart';
import 'media.dart';

part 'Generated/user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String? name;
  final UserAvatar? avatar;
  final String? bannerImage;
  final UserOptions? options;
  final MediaListOptions? mediaListOptions;
  final Favourites? favourites;
  final UserStatisticTypes? statistics;
  final int? unreadNotificationCount;

  User({
    required this.id,
    this.name,
    this.avatar,
    this.bannerImage,
    this.options,
    this.mediaListOptions,
    this.favourites,
    this.statistics,
    this.unreadNotificationCount,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserOptions {
  UserTitleLanguage? titleLanguage;
  bool? displayAdultContent;
  bool? airingNotifications;
  String? profileColor;
  String? timezone;
  int? activityMergeTime;
  UserStaffNameLanguage? staffNameLanguage;
  bool? restrictMessagesToFollowing;

  UserOptions({
    this.titleLanguage,
    this.displayAdultContent,
    this.airingNotifications,
    this.profileColor,
    this.timezone,
    this.activityMergeTime,
    this.staffNameLanguage,
    this.restrictMessagesToFollowing,
  });

  factory UserOptions.fromJson(Map<String, dynamic> json) =>
      _$UserOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$UserOptionsToJson(this);
}

enum UserTitleLanguage { ENGLISH, ROMAJI, NATIVE }

enum UserStaffNameLanguage { ROMAJI_WESTERN, ROMAJI, NATIVE }

@JsonSerializable()
class UserAvatar {
  final String? large;
  final String? medium;

  UserAvatar({
    this.large,
    this.medium,
  });

  factory UserAvatar.fromJson(Map<String, dynamic> json) =>
      _$UserAvatarFromJson(json);

  Map<String, dynamic> toJson() => _$UserAvatarToJson(this);
}

@JsonSerializable()
class UserStatisticTypes {
  final UserStatistics? anime;
  final UserStatistics? manga;

  UserStatisticTypes({
    this.anime,
    this.manga,
  });

  factory UserStatisticTypes.fromJson(Map<String, dynamic> json) =>
      _$UserStatisticTypesFromJson(json);

  Map<String, dynamic> toJson() => _$UserStatisticTypesToJson(this);
}

@JsonSerializable()
class UserStatistics {
  final int? count;
  final double? meanScore;
  final double? standardDeviation;
  final int? minutesWatched;
  final int? episodesWatched;
  final int? chaptersRead;
  final int? volumesRead;

  UserStatistics({
    this.count,
    this.meanScore,
    this.standardDeviation,
    this.minutesWatched,
    this.episodesWatched,
    this.chaptersRead,
    this.volumesRead,
  });

  factory UserStatistics.fromJson(Map<String, dynamic> json) =>
      _$UserStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$UserStatisticsToJson(this);
}

@JsonSerializable()
class Favourites {
  final MediaConnection? anime;
  final MediaConnection? manga;
  final CharacterConnection? characters;
  final StaffConnection? staff;
  final StudioConnection? studios;

  Favourites({
    this.anime,
    this.manga,
    this.characters,
    this.staff,
    this.studios,
  });

  factory Favourites.fromJson(Map<String, dynamic> json) =>
      _$FavouritesFromJson(json);

  Map<String, dynamic> toJson() => _$FavouritesToJson(this);
}

@JsonSerializable()
class MediaListOptions {
  final String? scoreFormat;
  final String? rowOrder;
  final MediaListTypeOptions? animeList;
  final MediaListTypeOptions? mangaList;

  MediaListOptions({
    this.scoreFormat,
    this.rowOrder,
    this.animeList,
    this.mangaList,
  });

  factory MediaListOptions.fromJson(Map<String, dynamic> json) =>
      _$MediaListOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$MediaListOptionsToJson(this);
}

@JsonSerializable()
class MediaListTypeOptions {
  final List<String>? sectionOrder;
  final bool? splitCompletedSectionByFormat;
  final List<String>? customLists;

  MediaListTypeOptions({
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.customLists,
  });

  factory MediaListTypeOptions.fromJson(Map<String, dynamic> json) =>
      _$MediaListTypeOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$MediaListTypeOptionsToJson(this);
}
