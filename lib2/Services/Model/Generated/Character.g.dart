// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as String,
      name: json['name'] as String?,
      image: json['image'] as String?,
      banner: json['banner'] as String?,
      role: json['role'] as String?,
      description: json['description'] as String?,
      age: json['age'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : Date.fromJson(json['dateOfBirth'] as Map<String, dynamic>),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      voiceActor: (json['voiceActor'] as List<dynamic>?)
          ?.map((e) => Author.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFav: json['isFav'] as bool?,
      favourites: (json['favourites'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'banner': instance.banner,
      'role': instance.role,
      'description': instance.description,
      'age': instance.age,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'isFav': instance.isFav,
      'favourites': instance.favourites,
      'roles': instance.roles,
      'voiceActor': instance.voiceActor,
    };
