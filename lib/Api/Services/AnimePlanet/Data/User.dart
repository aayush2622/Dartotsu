import '../../../../Core/Services/ScoreFormat.dart';
import '../../../../Core/Services/ServiceAuth.dart';

class AnimePlanetUser implements ServiceUser {
  @override
  final String name;
  @override
  final int episodesWatched;
  @override
  final int chaptersRead;

  const AnimePlanetUser({
    required this.name,
    this.episodesWatched = 0,
    this.chaptersRead = 0,
  });

  @override
  int get id => name.hashCode & 0x7fffffff;

  @override
  String? get avatar => null;

  @override
  String? get banner => null;

  @override
  int get unreadNotifications => 0;

  @override
  ScoreFormat get scoreFormat => ScoreFormat.point10Decimal;

  String get url => 'https://www.anime-planet.com/users/$name';

  AnimePlanetUser copyWith({int? episodesWatched, int? chaptersRead}) =>
      AnimePlanetUser(
        name: name,
        episodesWatched: episodesWatched ?? this.episodesWatched,
        chaptersRead: chaptersRead ?? this.chaptersRead,
      );
}
