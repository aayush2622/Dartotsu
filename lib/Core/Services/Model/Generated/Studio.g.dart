// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Studio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Studio _$StudioFromJson(Map<String, dynamic> json) => Studio(
      id: json['id'] as String,
      name: json['name'] as String,
      isAnimationStudio: json['isAnimationStudio'] as bool?,
      url: json['url'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFav: json['isFav'] as bool?,
      favourites: (json['favourites'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StudioToJson(Studio instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'isAnimationStudio': instance.isAnimationStudio,
      'media': instance.media,
      'isFav': instance.isFav,
      'favourites': instance.favourites,
    };
