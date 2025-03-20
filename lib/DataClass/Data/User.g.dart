// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

userData _$userDataFromJson(Map<String, dynamic> json) => userData(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      pfp: json['pfp'] as String?,
      banner: json['banner'] as String?,
      status: json['status'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      progress: (json['progress'] as num?)?.toInt(),
      totalEpisodes: (json['totalEpisodes'] as num?)?.toInt(),
      nextAiringEpisode: (json['nextAiringEpisode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$userDataToJson(userData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pfp': instance.pfp,
      'banner': instance.banner,
      'status': instance.status,
      'score': instance.score,
      'progress': instance.progress,
      'totalEpisodes': instance.totalEpisodes,
      'nextAiringEpisode': instance.nextAiringEpisode,
    };
