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
      mainStudio: json['mainStudio'] == null
          ? null
          : Studio.fromJson(json['mainStudio'] as Map<String, dynamic>),
      mediaAuthor: json['mediaAuthor'] == null
          ? null
          : author.fromJson(json['mediaAuthor'] as Map<String, dynamic>),
      youtube: json['youtube'] as String?,
      nextAiringEpisode: (json['nextAiringEpisode'] as num?)?.toInt(),
      nextAiringEpisodeTime: (json['nextAiringEpisodeTime'] as num?)?.toInt(),
      selectedEpisode: json['selectedEpisode'] as String?,
      episodes: (json['episodes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Episode.fromJson(e as Map<String, dynamic>)),
      ),
      slug: json['slug'] as String?,
      kitsuEpisodes: (json['kitsuEpisodes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Episode.fromJson(e as Map<String, dynamic>)),
      ),
      fillerEpisodes: (json['fillerEpisodes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Episode.fromJson(e as Map<String, dynamic>)),
      ),
      anifyEpisodes: (json['anifyEpisodes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Episode.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'totalEpisodes': instance.totalEpisodes,
      'episodeDuration': instance.episodeDuration,
      'season': instance.season,
      'seasonYear': instance.seasonYear,
      'op': instance.op,
      'ed': instance.ed,
      'mainStudio': instance.mainStudio,
      'mediaAuthor': instance.mediaAuthor,
      'youtube': instance.youtube,
      'nextAiringEpisode': instance.nextAiringEpisode,
      'nextAiringEpisodeTime': instance.nextAiringEpisodeTime,
      'selectedEpisode': instance.selectedEpisode,
      'episodes': instance.episodes,
      'slug': instance.slug,
      'kitsuEpisodes': instance.kitsuEpisodes,
      'fillerEpisodes': instance.fillerEpisodes,
      'anifyEpisodes': instance.anifyEpisodes,
    };
