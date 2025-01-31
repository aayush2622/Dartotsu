// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

author _$authorFromJson(Map<String, dynamic> json) => author(
      id: (json['id'] as num).toInt(),
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
    );

Map<String, dynamic> _$authorToJson(author instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'role': instance.role,
      'yearMedia': instance.yearMedia,
      'character': instance.character,
    };
