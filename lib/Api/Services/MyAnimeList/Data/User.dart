import '../../../../Core/Services/ScoreFormat.dart';
import '../../../../Core/Services/ServiceAuth.dart';

class MalUser implements ServiceUser {
  @override
  final int id;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final int episodesWatched;
  @override
  final int chaptersRead;

  const MalUser({
    required this.id,
    required this.name,
    this.avatar,
    this.episodesWatched = 0,
    this.chaptersRead = 0,
  });

  @override
  String? get banner => null;

  @override
  int get unreadNotifications => 0;

  @override
  ScoreFormat get scoreFormat => ScoreFormat.point10;

  String get profileUrl => 'https://myanimelist.net/profile/$name';

  MalUser copyWith({int? chaptersRead}) => MalUser(
    id: id,
    name: name,
    avatar: avatar,
    episodesWatched: episodesWatched,
    chaptersRead: chaptersRead ?? this.chaptersRead,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'avatar': avatar,
    'episodes': episodesWatched,
    'chapters': chaptersRead,
  };

  factory MalUser.fromJson(Map<String, dynamic> j) => MalUser(
    id: (j['id'] as num).toInt(),
    name: j['name'] as String,
    avatar: j['avatar'] as String?,
    episodesWatched: (j['episodes'] as num?)?.toInt() ?? 0,
    chaptersRead: (j['chapters'] as num?)?.toInt() ?? 0,
  );
}
