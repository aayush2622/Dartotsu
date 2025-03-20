// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] == null
          ? null
          : CharacterName.fromJson(json['name'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : CharacterImage.fromJson(json['image'] as Map<String, dynamic>),
      description: json['description'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : FuzzyDate.fromJson(json['dateOfBirth'] as Map<String, dynamic>),
      age: json['age'] as String?,
      bloodType: json['bloodType'] as String?,
      isFavourite: json['isFavourite'] as bool?,
      isFavouriteBlocked: json['isFavouriteBlocked'] as bool?,
      siteUrl: json['siteUrl'] as String?,
      media: json['media'] == null
          ? null
          : MediaConnection.fromJson(json['media'] as Map<String, dynamic>),
      favourites: (json['favourites'] as num?)?.toInt(),
      modNotes: json['modNotes'] as String?,
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'age': instance.age,
      'bloodType': instance.bloodType,
      'isFavourite': instance.isFavourite,
      'isFavouriteBlocked': instance.isFavouriteBlocked,
      'siteUrl': instance.siteUrl,
      'media': instance.media,
      'favourites': instance.favourites,
      'modNotes': instance.modNotes,
    };

CharacterConnection _$CharacterConnectionFromJson(Map<String, dynamic> json) =>
    CharacterConnection(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => CharacterEdge.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: json['pageInfo'] == null
          ? null
          : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterConnectionToJson(
        CharacterConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges,
      'nodes': instance.nodes,
      'pageInfo': instance.pageInfo,
    };

CharacterEdge _$CharacterEdgeFromJson(Map<String, dynamic> json) =>
    CharacterEdge(
      node: json['node'] == null
          ? null
          : Character.fromJson(json['node'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt(),
      role: json['role'] as String?,
      name: json['name'] as String?,
      voiceActors: (json['voiceActors'] as List<dynamic>?)
          ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      favouriteOrder: (json['favouriteOrder'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CharacterEdgeToJson(CharacterEdge instance) =>
    <String, dynamic>{
      'node': instance.node,
      'id': instance.id,
      'role': instance.role,
      'name': instance.name,
      'voiceActors': instance.voiceActors,
      'media': instance.media,
      'favouriteOrder': instance.favouriteOrder,
    };

CharacterName _$CharacterNameFromJson(Map<String, dynamic> json) =>
    CharacterName(
      first: json['first'] as String?,
      middle: json['middle'] as String?,
      last: json['last'] as String?,
      full: json['full'] as String?,
      native: json['native'] as String?,
      alternative: (json['alternative'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      alternativeSpoiler: (json['alternativeSpoiler'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      userPreferred: json['userPreferred'] as String?,
    );

Map<String, dynamic> _$CharacterNameToJson(CharacterName instance) =>
    <String, dynamic>{
      'first': instance.first,
      'middle': instance.middle,
      'last': instance.last,
      'full': instance.full,
      'native': instance.native,
      'alternative': instance.alternative,
      'alternativeSpoiler': instance.alternativeSpoiler,
      'userPreferred': instance.userPreferred,
    };

CharacterImage _$CharacterImageFromJson(Map<String, dynamic> json) =>
    CharacterImage(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
    );

Map<String, dynamic> _$CharacterImageToJson(CharacterImage instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
    };
