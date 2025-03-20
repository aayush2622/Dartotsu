// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../userData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      malId: (json['mal_id'] as num?)?.toInt(),
      username: json['username'] as String?,
      url: json['url'] as String?,
      images: (json['images'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, DataImage.fromJson(e as Map<String, dynamic>)),
      ),
      lastOnline: json['last_online'] == null
          ? null
          : DateTime.parse(json['last_online'] as String),
      gender: json['gender'],
      birthday: json['birthday'],
      location: json['location'],
      joined: json['joined'] == null
          ? null
          : DateTime.parse(json['joined'] as String),
      statistics: json['statistics'] == null
          ? null
          : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'mal_id': instance.malId,
      'username': instance.username,
      'url': instance.url,
      'images': instance.images,
      'last_online': instance.lastOnline?.toIso8601String(),
      'gender': instance.gender,
      'birthday': instance.birthday,
      'location': instance.location,
      'joined': instance.joined?.toIso8601String(),
      'statistics': instance.statistics,
    };

DataImage _$DataImageFromJson(Map<String, dynamic> json) => DataImage(
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$DataImageToJson(DataImage instance) => <String, dynamic>{
      'image_url': instance.imageUrl,
    };

Statistics _$StatisticsFromJson(Map<String, dynamic> json) => Statistics(
      anime: json['anime'] == null
          ? null
          : StatisticsAnime.fromJson(json['anime'] as Map<String, dynamic>),
      manga: json['manga'] == null
          ? null
          : StatisticsManga.fromJson(json['manga'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatisticsToJson(Statistics instance) =>
    <String, dynamic>{
      'anime': instance.anime,
      'manga': instance.manga,
    };

StatisticsAnime _$StatisticsAnimeFromJson(Map<String, dynamic> json) =>
    StatisticsAnime(
      daysWatched: (json['days_watched'] as num?)?.toDouble(),
      meanScore: (json['mean_score'] as num?)?.toDouble(),
      watching: (json['watching'] as num?)?.toInt(),
      completed: (json['completed'] as num?)?.toInt(),
      onHold: (json['on_hold'] as num?)?.toInt(),
      dropped: (json['dropped'] as num?)?.toInt(),
      planToWatch: (json['plan_to_watch'] as num?)?.toInt(),
      totalEntries: (json['total_entries'] as num?)?.toInt(),
      rewatched: (json['rewatched'] as num?)?.toInt(),
      episodesWatched: (json['episodes_watched'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StatisticsAnimeToJson(StatisticsAnime instance) =>
    <String, dynamic>{
      'days_watched': instance.daysWatched,
      'mean_score': instance.meanScore,
      'watching': instance.watching,
      'completed': instance.completed,
      'on_hold': instance.onHold,
      'dropped': instance.dropped,
      'plan_to_watch': instance.planToWatch,
      'total_entries': instance.totalEntries,
      'rewatched': instance.rewatched,
      'episodes_watched': instance.episodesWatched,
    };

StatisticsManga _$StatisticsMangaFromJson(Map<String, dynamic> json) =>
    StatisticsManga(
      daysRead: (json['days_read'] as num?)?.toDouble(),
      meanScore: (json['mean_score'] as num?)?.toInt(),
      reading: (json['reading'] as num?)?.toInt(),
      completed: (json['completed'] as num?)?.toInt(),
      onHold: (json['on_hold'] as num?)?.toInt(),
      dropped: (json['dropped'] as num?)?.toInt(),
      planToRead: (json['plan_to_read'] as num?)?.toInt(),
      totalEntries: (json['total_entries'] as num?)?.toInt(),
      reread: (json['reread'] as num?)?.toInt(),
      chaptersRead: (json['chapters_read'] as num?)?.toInt(),
      volumesRead: (json['volumes_read'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StatisticsMangaToJson(StatisticsManga instance) =>
    <String, dynamic>{
      'days_read': instance.daysRead,
      'mean_score': instance.meanScore,
      'reading': instance.reading,
      'completed': instance.completed,
      'on_hold': instance.onHold,
      'dropped': instance.dropped,
      'plan_to_read': instance.planToRead,
      'total_entries': instance.totalEntries,
      'reread': instance.reread,
      'chapters_read': instance.chaptersRead,
      'volumes_read': instance.volumesRead,
    };
