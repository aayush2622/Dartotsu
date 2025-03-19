// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetMediaIDs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeID _$AnimeIDFromJson(Map<String, dynamic> json) => AnimeID(
      animePlanetId: json['anime-planet_id'].toString(),
      kitsuId: (json['kitsu_id'] as num?)?.toInt(),
      malId: (json['mal_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      anilistId: (json['anilist_id'] as num?)?.toInt(),
      imdbId: json['imdb_id'] as String?,
      anisearchId: (json['anisearch_id'] as num?)?.toInt(),
      anidbId: (json['anidb_id'] as num?)?.toInt(),
      notifyMoeId: json['notify.moe_id'] as String?,
      livechartId: (json['livechart_id'] as num?)?.toInt(),
      thetvdbId: (json['thetvdb_id'] as num?)?.toInt(),
      themoviedbId: json['themoviedb_id'].toString(),
    );

Map<String, dynamic> _$AnimeIDToJson(AnimeID instance) => <String, dynamic>{
      'anime-planet_id': instance.animePlanetId,
      'kitsu_id': instance.kitsuId,
      'mal_id': instance.malId,
      'type': instance.type,
      'anilist_id': instance.anilistId,
      'imdb_id': instance.imdbId,
      'anisearch_id': instance.anisearchId,
      'anidb_id': instance.anidbId,
      'notify.moe_id': instance.notifyMoeId,
      'livechart_id': instance.livechartId,
      'thetvdb_id': instance.thetvdbId,
      'themoviedb_id': instance.themoviedbId,
    };
