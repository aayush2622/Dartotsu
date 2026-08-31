class AnilistUser {
  final int id;
  final String name;
  final String? avatar;
  final String? banner;
  final String? about;
  final int episodesWatched;
  final int chaptersRead;
  final int unreadNotifications;
  final bool adultContent;
  final String scoreFormat;

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
    this.scoreFormat = 'POINT_10',
  });

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
      scoreFormat: listOptions?['scoreFormat'] as String? ?? 'POINT_10',
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
    'scoreFormat': scoreFormat,
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
    scoreFormat: json['scoreFormat'] as String? ?? 'POINT_10',
  );
}
