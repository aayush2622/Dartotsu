// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaResponse _$AFromJson(Map<String, dynamic> json) => MediaResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      paging: json['paging'] == null
          ? null
          : Paging.fromJson(json['paging'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AToJson(MediaResponse instance) => <String, dynamic>{
      'data': instance.data,
      'paging': instance.paging,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      node: json['node'] == null
          ? null
          : Media.fromJson(json['node'] as Map<String, dynamic>),
      ranking: json['ranking'] == null
          ? null
          : Ranking.fromJson(json['ranking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'node': instance.node,
      'ranking': instance.ranking,
    };

Paging _$PagingFromJson(Map<String, dynamic> json) => Paging(
      previous: json['previous'] as String?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$PagingToJson(Paging instance) => <String, dynamic>{
      'previous': instance.previous,
      'next': instance.next,
    };
