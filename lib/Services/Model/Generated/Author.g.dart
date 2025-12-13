// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      id: json['id'] as String,
      name: json['name'] as String?,
      image: json['image'] as String?,
      role: json['role'] as String?,
      yearMedia: (json['yearMedia'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Media.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      character: (json['character'] as List<dynamic>?)
          ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFav: json['isFav'] as bool?,
      favourites: (json['favourites'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'role': instance.role,
      'yearMedia': instance.yearMedia,
      'character': instance.character,
      'isFav': instance.isFav,
      'favourites': instance.favourites,
    };
