// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../recommendations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recommendation _$RecommendationFromJson(Map<String, dynamic> json) =>
    Recommendation(
      id: (json['id'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toInt(),
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
      mediaRecommendation: json['mediaRecommendation'] == null
          ? null
          : Media.fromJson(json['mediaRecommendation'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecommendationToJson(Recommendation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'media': instance.media,
      'mediaRecommendation': instance.mediaRecommendation,
      'user': instance.user,
    };

RecommendationConnection _$RecommendationConnectionFromJson(
        Map<String, dynamic> json) =>
    RecommendationConnection(
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecommendationConnectionToJson(
        RecommendationConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes,
    };
