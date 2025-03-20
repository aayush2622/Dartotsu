// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

character _$characterFromJson(Map<String, dynamic> json) => character(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      banner: json['banner'] as String?,
      role: json['role'] as String?,
      isFav: json['isFav'] as bool?,
      description: json['description'] as String?,
      age: json['age'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : FuzzyDate.fromJson(json['dateOfBirth'] as Map<String, dynamic>),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      voiceActor: (json['voiceActor'] as List<dynamic>?)
          ?.map((e) => author.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$characterToJson(character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'banner': instance.banner,
      'role': instance.role,
      'isFav': instance.isFav,
      'description': instance.description,
      'age': instance.age,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'roles': instance.roles,
      'voiceActor': instance.voiceActor,
    };
