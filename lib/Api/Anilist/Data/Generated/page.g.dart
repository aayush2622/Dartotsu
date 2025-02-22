// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      pageInfo: json['pageInfo'] == null
          ? null
          : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      staff: (json['staff'] as List<dynamic>?)
          ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
          .toList(),
      studios: (json['studios'] as List<dynamic>?)
          ?.map((e) => Studio.fromJson(e as Map<String, dynamic>))
          .toList(),
      mediaList: (json['mediaList'] as List<dynamic>?)
          ?.map((e) => MediaList.fromJson(e as Map<String, dynamic>))
          .toList(),
      airingSchedules: (json['airingSchedules'] as List<dynamic>?)
          ?.map((e) => AiringSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      following: (json['following'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
      likes: (json['likes'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'pageInfo': instance.pageInfo,
      'users': instance.users,
      'media': instance.media,
      'characters': instance.characters,
      'staff': instance.staff,
      'studios': instance.studios,
      'mediaList': instance.mediaList,
      'airingSchedules': instance.airingSchedules,
      'followers': instance.followers,
      'following': instance.following,
      'recommendations': instance.recommendations,
      'likes': instance.likes,
    };

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) => PageInfo(
      total: (json['total'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) => <String, dynamic>{
      'total': instance.total,
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
      'lastPage': instance.lastPage,
      'hasNextPage': instance.hasNextPage,
    };
