import '../../../../Core/Services/ScoreFormat.dart';
import '../../../../Core/Services/ServiceAuth.dart';

class AnilistUser implements ServiceUser {
  @override
  final int id;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final String? banner;
  @override
  final int episodesWatched;
  @override
  final int chaptersRead;
  @override
  final int unreadNotifications;

  final String? about;
  final bool adultContent;
  final String scoreFormatName;
  final String titleLanguage;
  final String staffNameLanguage;
  final int activityMergeTime;
  final bool airingNotifications;
  final bool restrictMessagesToFollowing;
  final String? timezone;
  final String rowOrder;
  final List<String> animeCustomLists;
  final List<String> mangaCustomLists;

  const AnilistUser({
    required this.id,
    required this.name,
    this.avatar,
    this.banner,
    this.about,
    this.episodesWatched = 0,
    this.chaptersRead = 0,
    this.unreadNotifications = 0,
    this.adultContent = false,
    this.scoreFormatName = 'POINT_10',
    this.titleLanguage = 'ENGLISH',
    this.staffNameLanguage = 'ROMAJI_WESTERN',
    this.activityMergeTime = 0,
    this.airingNotifications = true,
    this.restrictMessagesToFollowing = false,
    this.timezone,
    this.rowOrder = 'score',
    this.animeCustomLists = const [],
    this.mangaCustomLists = const [],
  });

  @override
  ScoreFormat get scoreFormat => ScoreFormat.fromApi(scoreFormatName);

  static List<String> _lists(Object? list) =>
      ((list as Map?)?['customLists'] as List?)?.cast<String>() ?? const [];

  factory AnilistUser.fromViewer(Map<String, dynamic> viewer) {
    final avatar = viewer['avatar'];
    final options = viewer['options'] as Map<String, dynamic>?;
    final listOptions = viewer['mediaListOptions'] as Map<String, dynamic>?;
    final stats = viewer['statistics'] as Map<String, dynamic>?;
    final animeStats = stats?['anime'] as Map<String, dynamic>?;
    final mangaStats = stats?['manga'] as Map<String, dynamic>?;

    return AnilistUser(
      id: (viewer['id'] as num).toInt(),
      name: viewer['name'] as String,
      avatar: avatar is Map ? avatar['large'] as String? : null,
      banner: viewer['bannerImage'] as String?,
      about: viewer['about'] as String?,
      episodesWatched: (animeStats?['episodesWatched'] as num?)?.toInt() ?? 0,
      chaptersRead: (mangaStats?['chaptersRead'] as num?)?.toInt() ?? 0,
      unreadNotifications:
          (viewer['unreadNotificationCount'] as num?)?.toInt() ?? 0,
      adultContent: options?['displayAdultContent'] as bool? ?? false,
      scoreFormatName: listOptions?['scoreFormat'] as String? ?? 'POINT_10',
      titleLanguage: options?['titleLanguage'] as String? ?? 'ENGLISH',
      staffNameLanguage:
          options?['staffNameLanguage'] as String? ?? 'ROMAJI_WESTERN',
      activityMergeTime: (options?['activityMergeTime'] as num?)?.toInt() ?? 0,
      airingNotifications: options?['airingNotifications'] as bool? ?? true,
      restrictMessagesToFollowing:
          options?['restrictMessagesToFollowing'] as bool? ?? false,
      timezone: options?['timezone'] as String?,
      rowOrder: listOptions?['rowOrder'] as String? ?? 'score',
      animeCustomLists: _lists(listOptions?['animeList']),
      mangaCustomLists: _lists(listOptions?['mangaList']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'avatar': avatar,
    'banner': banner,
    'about': about,
    'episodesWatched': episodesWatched,
    'chaptersRead': chaptersRead,
    'unreadNotifications': unreadNotifications,
    'adultContent': adultContent,
    'scoreFormat': scoreFormatName,
    'titleLanguage': titleLanguage,
    'staffNameLanguage': staffNameLanguage,
    'activityMergeTime': activityMergeTime,
    'airingNotifications': airingNotifications,
    'restrictMessagesToFollowing': restrictMessagesToFollowing,
    'timezone': timezone,
    'rowOrder': rowOrder,
    'animeCustomLists': animeCustomLists,
    'mangaCustomLists': mangaCustomLists,
  };

  factory AnilistUser.fromJson(Map<String, dynamic> json) => AnilistUser(
    id: (json['id'] as num).toInt(),
    name: json['name'] as String,
    avatar: json['avatar'] as String?,
    banner: json['banner'] as String?,
    about: json['about'] as String?,
    episodesWatched: (json['episodesWatched'] as num?)?.toInt() ?? 0,
    chaptersRead: (json['chaptersRead'] as num?)?.toInt() ?? 0,
    unreadNotifications: (json['unreadNotifications'] as num?)?.toInt() ?? 0,
    adultContent: json['adultContent'] as bool? ?? false,
    scoreFormatName: json['scoreFormat'] as String? ?? 'POINT_10',
    titleLanguage: json['titleLanguage'] as String? ?? 'ENGLISH',
    staffNameLanguage: json['staffNameLanguage'] as String? ?? 'ROMAJI_WESTERN',
    activityMergeTime: (json['activityMergeTime'] as num?)?.toInt() ?? 0,
    airingNotifications: json['airingNotifications'] as bool? ?? true,
    restrictMessagesToFollowing:
        json['restrictMessagesToFollowing'] as bool? ?? false,
    timezone: json['timezone'] as String?,
    rowOrder: json['rowOrder'] as String? ?? 'score',
    animeCustomLists:
        (json['animeCustomLists'] as List?)?.cast<String>() ?? const [],
    mangaCustomLists:
        (json['mangaCustomLists'] as List?)?.cast<String>() ?? const [],
  );
}
