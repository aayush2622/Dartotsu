import 'package:json_annotation/json_annotation.dart';

part 'Generated/User.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: "user")
  UserClass? user;
  @JsonKey(name: "account")
  Account? account;
  @JsonKey(name: "connections")
  Connections? connections;

  User({
    this.user,
    this.account,
    this.connections,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Account {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "timezone")
  String? timezone;
  @JsonKey(name: "type")
  String? type;

  Account({
    this.id,
    this.timezone,
    this.type,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable()
class Connections {
  @JsonKey(name: "facebook")
  bool? facebook;

  Connections({
    this.facebook,
  });

  factory Connections.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectionsToJson(this);
}

@JsonSerializable()
class UserClass {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "joined_at")
  DateTime? joinedAt;
  @JsonKey(name: "gender")
  String? gender;
  @JsonKey(name: "avatar")
  String? avatar;
  @JsonKey(name: "bio")
  String? bio;
  @JsonKey(name: "loc")
  String? loc;
  @JsonKey(name: "age")
  String? age;

  UserClass({
    this.name,
    this.joinedAt,
    this.gender,
    this.avatar,
    this.bio,
    this.loc,
    this.age,
  });

  factory UserClass.fromJson(Map<String, dynamic> json) =>
      _$UserClassFromJson(json);

  Map<String, dynamic> toJson() => _$UserClassToJson(this);
}

@JsonSerializable()
class Stats {
  @JsonKey(name: "total_mins")
  int? totalMins;
  @JsonKey(name: "movies")
  Movies? movies;
  @JsonKey(name: "tv")
  Anime? tv;
  @JsonKey(name: "anime")
  Anime? anime;
  @JsonKey(name: "watched_last_week")
  WatchedLastWeek? watchedLastWeek;

  Stats({
    this.totalMins,
    this.movies,
    this.tv,
    this.anime,
    this.watchedLastWeek,
  });

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}

@JsonSerializable()
class Anime {
  @JsonKey(name: "total_mins")
  int? totalMins;
  @JsonKey(name: "watching")
  Hold? watching;
  @JsonKey(name: "hold")
  Hold? hold;
  @JsonKey(name: "plantowatch")
  Hold? plantowatch;
  @JsonKey(name: "notinteresting")
  AnimeCompleted? notinteresting;
  @JsonKey(name: "completed")
  AnimeCompleted? completed;

  Anime({
    this.totalMins,
    this.watching,
    this.hold,
    this.plantowatch,
    this.notinteresting,
    this.completed,
  });

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}

@JsonSerializable()
class AnimeCompleted {
  @JsonKey(name: "watched_episodes_count")
  int? watchedEpisodesCount;
  @JsonKey(name: "count")
  int? count;

  AnimeCompleted({
    this.watchedEpisodesCount,
    this.count,
  });

  factory AnimeCompleted.fromJson(Map<String, dynamic> json) =>
      _$AnimeCompletedFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeCompletedToJson(this);
}

@JsonSerializable()
class Hold {
  @JsonKey(name: "watched_episodes_count")
  int? watchedEpisodesCount;
  @JsonKey(name: "count")
  int? count;
  @JsonKey(name: "left_to_watch_episodes")
  int? leftToWatchEpisodes;
  @JsonKey(name: "left_to_watch_mins")
  int? leftToWatchMins;
  @JsonKey(name: "total_episodes_count")
  int? totalEpisodesCount;

  Hold({
    this.watchedEpisodesCount,
    this.count,
    this.leftToWatchEpisodes,
    this.leftToWatchMins,
    this.totalEpisodesCount,
  });

  factory Hold.fromJson(Map<String, dynamic> json) => _$HoldFromJson(json);

  Map<String, dynamic> toJson() => _$HoldToJson(this);
}

@JsonSerializable()
class Movies {
  @JsonKey(name: "total_mins")
  int? totalMins;
  @JsonKey(name: "plantowatch")
  PlantowatchClass? plantowatch;
  @JsonKey(name: "notinteresting")
  PlantowatchClass? notinteresting;
  @JsonKey(name: "completed")
  PlantowatchClass? completed;

  Movies({
    this.totalMins,
    this.plantowatch,
    this.notinteresting,
    this.completed,
  });

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesToJson(this);
}

@JsonSerializable()
class PlantowatchClass {
  @JsonKey(name: "mins")
  int? mins;
  @JsonKey(name: "count")
  int? count;

  PlantowatchClass({
    this.mins,
    this.count,
  });

  factory PlantowatchClass.fromJson(Map<String, dynamic> json) =>
      _$PlantowatchClassFromJson(json);

  Map<String, dynamic> toJson() => _$PlantowatchClassToJson(this);
}

@JsonSerializable()
class WatchedLastWeek {
  @JsonKey(name: "total_mins")
  int? totalMins;
  @JsonKey(name: "movies_mins")
  int? moviesMins;
  @JsonKey(name: "tv_mins")
  int? tvMins;
  @JsonKey(name: "anime_mins")
  int? animeMins;

  WatchedLastWeek({
    this.totalMins,
    this.moviesMins,
    this.tvMins,
    this.animeMins,
  });

  factory WatchedLastWeek.fromJson(Map<String, dynamic> json) =>
      _$WatchedLastWeekFromJson(json);

  Map<String, dynamic> toJson() => _$WatchedLastWeekToJson(this);
}
