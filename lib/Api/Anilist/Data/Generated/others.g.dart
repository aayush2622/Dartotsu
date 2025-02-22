// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../others.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      id: (json['id'] as num).toInt(),
      mediaId: (json['mediaId'] as num).toInt(),
      mediaType: json['mediaType'] as String,
      summary: json['summary'] as String,
      body: json['body'] as String,
      rating: (json['rating'] as num).toInt(),
      ratingAmount: (json['ratingAmount'] as num).toInt(),
      userRating: json['userRating'] as String,
      score: (json['score'] as num).toInt(),
      private: json['private'] as bool,
      siteUrl: json['siteUrl'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'id': instance.id,
      'mediaId': instance.mediaId,
      'mediaType': instance.mediaType,
      'summary': instance.summary,
      'body': instance.body,
      'rating': instance.rating,
      'ratingAmount': instance.ratingAmount,
      'userRating': instance.userRating,
      'score': instance.score,
      'private': instance.private,
      'siteUrl': instance.siteUrl,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'user': instance.user,
    };
