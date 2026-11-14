import '../../../../Core/Services/ScoreFormat.dart';
import '../../../../Core/Services/ServiceAuth.dart';

class ComickUser implements ServiceUser {
  @override
  final int id;
  final String uuid;
  @override
  final String name;
  @override
  final String? avatar;
  @override
  final int chaptersRead;
  @override
  final int episodesWatched;

  const ComickUser({
    required this.id,
    required this.uuid,
    required this.name,
    this.avatar,
    this.chaptersRead = 0,
    this.episodesWatched = 0,
  });

  @override
  String? get banner => null;

  @override
  int get unreadNotifications => 0;

  @override
  ScoreFormat get scoreFormat => ScoreFormat.point10;

  String get profileUrl => 'https://comick.dev/';

  ComickUser copyWith({
    int? chaptersRead,
    int? episodesWatched,
    String? name,
    String? avatar,
  }) => ComickUser(
    id: id,
    uuid: uuid,
    name: name ?? this.name,
    avatar: avatar ?? this.avatar,
    chaptersRead: chaptersRead ?? this.chaptersRead,
    episodesWatched: episodesWatched ?? this.episodesWatched,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'uuid': uuid,
    'name': name,
    'avatar': avatar,
    'chaptersRead': chaptersRead,
    'episodesWatched': episodesWatched,
  };

  factory ComickUser.fromJson(Map<String, dynamic> j) => ComickUser(
    id: (j['id'] as num?)?.toInt() ?? 0,
    uuid: j['uuid'] as String? ?? '',
    name: j['name'] as String? ?? 'Comick',
    avatar: j['avatar'] as String?,
    chaptersRead: (j['chaptersRead'] as num?)?.toInt() ?? 0,
    episodesWatched: (j['episodesWatched'] as num?)?.toInt() ?? 0,
  );
}
