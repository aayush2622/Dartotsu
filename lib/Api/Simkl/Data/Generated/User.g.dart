// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      user: json['user'] == null
          ? null
          : UserClass.fromJson(json['user'] as Map<String, dynamic>),
      account: json['account'] == null
          ? null
          : Account.fromJson(json['account'] as Map<String, dynamic>),
      connections: json['connections'] == null
          ? null
          : Connections.fromJson(json['connections'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'user': instance.user,
      'account': instance.account,
      'connections': instance.connections,
    };

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      id: (json['id'] as num?)?.toInt(),
      timezone: json['timezone'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'timezone': instance.timezone,
      'type': instance.type,
    };

Connections _$ConnectionsFromJson(Map<String, dynamic> json) => Connections(
      facebook: json['facebook'] as bool?,
    );

Map<String, dynamic> _$ConnectionsToJson(Connections instance) =>
    <String, dynamic>{
      'facebook': instance.facebook,
    };

UserClass _$UserClassFromJson(Map<String, dynamic> json) => UserClass(
      name: json['name'] as String?,
      joinedAt: json['joined_at'] == null
          ? null
          : DateTime.parse(json['joined_at'] as String),
      gender: json['gender'] as String?,
      avatar: json['avatar'] as String?,
      bio: json['bio'] as String?,
      loc: json['loc'] as String?,
      age: json['age'] as String?,
    );

Map<String, dynamic> _$UserClassToJson(UserClass instance) => <String, dynamic>{
      'name': instance.name,
      'joined_at': instance.joinedAt?.toIso8601String(),
      'gender': instance.gender,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'loc': instance.loc,
      'age': instance.age,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      totalMins: (json['total_mins'] as num?)?.toInt(),
      movies: json['movies'] == null
          ? null
          : Movies.fromJson(json['movies'] as Map<String, dynamic>),
      tv: json['tv'] == null
          ? null
          : Anime.fromJson(json['tv'] as Map<String, dynamic>),
      anime: json['anime'] == null
          ? null
          : Anime.fromJson(json['anime'] as Map<String, dynamic>),
      watchedLastWeek: json['watched_last_week'] == null
          ? null
          : WatchedLastWeek.fromJson(
              json['watched_last_week'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'total_mins': instance.totalMins,
      'movies': instance.movies,
      'tv': instance.tv,
      'anime': instance.anime,
      'watched_last_week': instance.watchedLastWeek,
    };

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      totalMins: (json['total_mins'] as num?)?.toInt(),
      watching: json['watching'] == null
          ? null
          : Hold.fromJson(json['watching'] as Map<String, dynamic>),
      hold: json['hold'] == null
          ? null
          : Hold.fromJson(json['hold'] as Map<String, dynamic>),
      plantowatch: json['plantowatch'] == null
          ? null
          : Hold.fromJson(json['plantowatch'] as Map<String, dynamic>),
      notinteresting: json['notinteresting'] == null
          ? null
          : AnimeCompleted.fromJson(
              json['notinteresting'] as Map<String, dynamic>),
      completed: json['completed'] == null
          ? null
          : AnimeCompleted.fromJson(json['completed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'total_mins': instance.totalMins,
      'watching': instance.watching,
      'hold': instance.hold,
      'plantowatch': instance.plantowatch,
      'notinteresting': instance.notinteresting,
      'completed': instance.completed,
    };

AnimeCompleted _$AnimeCompletedFromJson(Map<String, dynamic> json) =>
    AnimeCompleted(
      watchedEpisodesCount: (json['watched_episodes_count'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AnimeCompletedToJson(AnimeCompleted instance) =>
    <String, dynamic>{
      'watched_episodes_count': instance.watchedEpisodesCount,
      'count': instance.count,
    };

Hold _$HoldFromJson(Map<String, dynamic> json) => Hold(
      watchedEpisodesCount: (json['watched_episodes_count'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      leftToWatchEpisodes: (json['left_to_watch_episodes'] as num?)?.toInt(),
      leftToWatchMins: (json['left_to_watch_mins'] as num?)?.toInt(),
      totalEpisodesCount: (json['total_episodes_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HoldToJson(Hold instance) => <String, dynamic>{
      'watched_episodes_count': instance.watchedEpisodesCount,
      'count': instance.count,
      'left_to_watch_episodes': instance.leftToWatchEpisodes,
      'left_to_watch_mins': instance.leftToWatchMins,
      'total_episodes_count': instance.totalEpisodesCount,
    };

Movies _$MoviesFromJson(Map<String, dynamic> json) => Movies(
      totalMins: (json['total_mins'] as num?)?.toInt(),
      plantowatch: json['plantowatch'] == null
          ? null
          : PlantowatchClass.fromJson(
              json['plantowatch'] as Map<String, dynamic>),
      notinteresting: json['notinteresting'] == null
          ? null
          : PlantowatchClass.fromJson(
              json['notinteresting'] as Map<String, dynamic>),
      completed: json['completed'] == null
          ? null
          : PlantowatchClass.fromJson(
              json['completed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoviesToJson(Movies instance) => <String, dynamic>{
      'total_mins': instance.totalMins,
      'plantowatch': instance.plantowatch,
      'notinteresting': instance.notinteresting,
      'completed': instance.completed,
    };

PlantowatchClass _$PlantowatchClassFromJson(Map<String, dynamic> json) =>
    PlantowatchClass(
      mins: (json['mins'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PlantowatchClassToJson(PlantowatchClass instance) =>
    <String, dynamic>{
      'mins': instance.mins,
      'count': instance.count,
    };

WatchedLastWeek _$WatchedLastWeekFromJson(Map<String, dynamic> json) =>
    WatchedLastWeek(
      totalMins: (json['total_mins'] as num?)?.toInt(),
      moviesMins: (json['movies_mins'] as num?)?.toInt(),
      tvMins: (json['tv_mins'] as num?)?.toInt(),
      animeMins: (json['anime_mins'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WatchedLastWeekToJson(WatchedLastWeek instance) =>
    <String, dynamic>{
      'total_mins': instance.totalMins,
      'movies_mins': instance.moviesMins,
      'tv_mins': instance.tvMins,
      'anime_mins': instance.animeMins,
    };
