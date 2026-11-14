import '../../../../Core/Services/ScoreFormat.dart';
import '../../../../Core/Services/ServiceAuth.dart';

class TraktUser implements ServiceUser {
  @override
  final int id;
  @override
  final String name;
  final String username;
  @override
  final String? avatar;
  @override
  final String? banner;
  @override
  final int episodesWatched;
  final int moviesWatched;
  final String? joinedAt;
  final String? location;
  final String? about;
  final bool vip;

  const TraktUser({
    required this.id,
    required this.name,
    required this.username,
    this.avatar,
    this.banner,
    this.episodesWatched = 0,
    this.moviesWatched = 0,
    this.joinedAt,
    this.location,
    this.about,
    this.vip = false,
  });

  @override
  int get chaptersRead => 0;

  @override
  int get unreadNotifications => 0;

  @override
  ScoreFormat get scoreFormat => ScoreFormat.point10;

  String get profileUrl => 'https://trakt.tv/users/$username';

  TraktUser copyWith({int? episodesWatched, int? moviesWatched}) => TraktUser(
    id: id,
    name: name,
    username: username,
    avatar: avatar,
    banner: banner,
    episodesWatched: episodesWatched ?? this.episodesWatched,
    moviesWatched: moviesWatched ?? this.moviesWatched,
    joinedAt: joinedAt,
    location: location,
    about: about,
    vip: vip,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'username': username,
    'avatar': avatar,
    'banner': banner,
    'episodes': episodesWatched,
    'movies': moviesWatched,
    'joinedAt': joinedAt,
    'location': location,
    'about': about,
    'vip': vip,
  };

  factory TraktUser.fromApi(
    Map<String, dynamic> user,
    Map<String, dynamic>? stats,
  ) {
    final id = ((user['ids'] as Map?)?['trakt'] as num?)?.toInt() ?? 0;
    final username = user['username'] as String? ?? '$id';
    final name = user['name'] as String?;
    return TraktUser(
      id: id,
      name: name == null || name.isEmpty ? username : name,
      username: username,
      avatar: ((user['images'] as Map?)?['avatar'] as Map?)?['full'] as String?,
      episodesWatched:
          ((stats?['episodes'] as Map?)?['watched'] as num?)?.toInt() ?? 0,
      moviesWatched:
          ((stats?['movies'] as Map?)?['watched'] as num?)?.toInt() ?? 0,
      joinedAt: user['joined_at'] as String?,
      location: user['location'] as String?,
      about: user['about'] as String?,
      vip: user['vip'] as bool? ?? false,
    );
  }

  factory TraktUser.fromJson(Map<String, dynamic> j) => TraktUser(
    id: (j['id'] as num).toInt(),
    name: (j['name'] as String?)?.isNotEmpty == true
        ? j['name'] as String
        : (j['username'] as String? ?? 'Trakt User'),
    username: j['username'] as String? ?? '${j['id']}',
    avatar: j['avatar'] as String?,
    banner: j['banner'] as String?,
    episodesWatched: (j['episodes'] as num?)?.toInt() ?? 0,
    moviesWatched: (j['movies'] as num?)?.toInt() ?? 0,
    joinedAt: j['joinedAt'] as String?,
    location: j['location'] as String?,
    about: j['about'] as String?,
    vip: j['vip'] as bool? ?? false,
  );
}
