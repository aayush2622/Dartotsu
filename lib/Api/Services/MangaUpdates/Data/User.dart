import '../../../../Core/Services/ScoreFormat.dart';
import '../../../../Core/Services/ServiceAuth.dart';

class MangaUpdatesUser implements ServiceUser {
  @override
  final int id;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final int chaptersRead;
  final String? gender;
  final String? profileUrl;

  const MangaUpdatesUser({
    required this.id,
    required this.name,
    this.avatar,
    this.chaptersRead = 0,
    this.gender,
    this.profileUrl,
  });

  @override
  String? get banner => null;

  @override
  int get episodesWatched => 0;

  @override
  int get unreadNotifications => 0;

  @override
  ScoreFormat get scoreFormat => ScoreFormat.point10;

  String get url => profileUrl ?? 'https://www.mangaupdates.com/members.html?id=$id';

  MangaUpdatesUser copyWith({int? chaptersRead}) => MangaUpdatesUser(
    id: id,
    name: name,
    avatar: avatar,
    chaptersRead: chaptersRead ?? this.chaptersRead,
    gender: gender,
    profileUrl: profileUrl,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'avatar': avatar,
    'chapters': chaptersRead,
    'gender': gender,
    'profileUrl': profileUrl,
  };

  factory MangaUpdatesUser.fromJson(Map<String, dynamic> j) => MangaUpdatesUser(
    id: (j['id'] as num?)?.toInt() ?? 0,
    name: j['name'] as String? ?? '',
    avatar: j['avatar'] as String?,
    chaptersRead: (j['chapters'] as num?)?.toInt() ?? 0,
    gender: j['gender'] as String?,
    profileUrl: j['profileUrl'] as String?,
  );
}
