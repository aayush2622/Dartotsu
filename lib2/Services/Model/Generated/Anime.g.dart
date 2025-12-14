// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      totalEpisodes: (json['totalEpisodes'] as num?)?.toInt(),
      episodeDuration: (json['episodeDuration'] as num?)?.toInt(),
      season: json['season'] as String?,
      seasonYear: (json['seasonYear'] as num?)?.toInt(),
      op: (json['op'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ed: (json['ed'] as List<dynamic>?)?.map((e) => e as String).toList(),
      studio: json['studio'] == null
          ? null
          : Studio.fromJson(json['studio'] as Map<String, dynamic>),
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      youtube: json['youtube'] as String?,
      nextAiringEpisode: (json['nextAiringEpisode'] as num?)?.toInt(),
      nextAiringEpisodeTime: (json['nextAiringEpisodeTime'] as num?)?.toInt(),
      episodes: (json['episodes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, DEpisode.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'totalEpisodes': instance.totalEpisodes,
      'episodeDuration': instance.episodeDuration,
      'season': instance.season,
      'seasonYear': instance.seasonYear,
      'op': instance.op,
      'ed': instance.ed,
      'studio': instance.studio,
      'author': instance.author,
      'youtube': instance.youtube,
      'nextAiringEpisode': instance.nextAiringEpisode,
      'nextAiringEpisodeTime': instance.nextAiringEpisodeTime,
      'episodes': instance.episodes,
    };
