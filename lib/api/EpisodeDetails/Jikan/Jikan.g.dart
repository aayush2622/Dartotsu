// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Jikan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeResponse _$EpisodeResponseFromJson(Map<String, dynamic> json) =>
    EpisodeResponse(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodeResponseToJson(EpisodeResponse instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      malID: (json['mal_id'] as num).toInt(),
      title: json['title'] as String?,
      filler: json['filler'] as bool,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'mal_id': instance.malID,
      'title': instance.title,
      'filler': instance.filler,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      hasNextPage: json['has_next_page'] as bool,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'has_next_page': instance.hasNextPage,
    };
