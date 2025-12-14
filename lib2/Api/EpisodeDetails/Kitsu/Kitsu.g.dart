// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Kitsu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KitsuResponse _$KitsuResponseFromJson(Map<String, dynamic> json) =>
    KitsuResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KitsuResponseToJson(KitsuResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      lookupMapping: json['lookupMapping'] == null
          ? null
          : LookupMapping.fromJson(
              json['lookupMapping'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'lookupMapping': instance.lookupMapping,
    };

LookupMapping _$LookupMappingFromJson(Map<String, dynamic> json) =>
    LookupMapping(
      id: json['id'] as String?,
      episodes: json['episodes'] == null
          ? null
          : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LookupMappingToJson(LookupMapping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'episodes': instance.episodes,
    };

Episodes _$EpisodesFromJson(Map<String, dynamic> json) => Episodes(
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Node.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodesToJson(Episodes instance) => <String, dynamic>{
      'nodes': instance.nodes,
    };

Node _$NodeFromJson(Map<String, dynamic> json) => Node(
      number: (json['number'] as num?)?.toInt(),
      titles: json['titles'] == null
          ? null
          : Titles.fromJson(json['titles'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : Description.fromJson(json['description'] as Map<String, dynamic>),
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'number': instance.number,
      'titles': instance.titles,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };

Description _$DescriptionFromJson(Map<String, dynamic> json) => Description(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) => Thumbnail(
      original: json['original'] == null
          ? null
          : Original.fromJson(json['original'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'original': instance.original,
    };

Original _$OriginalFromJson(Map<String, dynamic> json) => Original(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$OriginalToJson(Original instance) => <String, dynamic>{
      'url': instance.url,
    };

Titles _$TitlesFromJson(Map<String, dynamic> json) => Titles(
      canonical: json['canonical'] as String?,
    );

Map<String, dynamic> _$TitlesToJson(Titles instance) => <String, dynamic>{
      'canonical': instance.canonical,
    };
