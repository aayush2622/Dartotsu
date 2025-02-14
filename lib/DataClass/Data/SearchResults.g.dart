// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../SearchResults.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResults _$SearchResultsFromJson(Map<String, dynamic> json) =>
    SearchResults(
      type: $enumDecodeNullable(_$SearchTypeEnumMap, json['type']) ??
          SearchType.ANIME,
      isAdult: json['isAdult'] as bool?,
      onList: json['onList'] as bool?,
      perPage: (json['perPage'] as num?)?.toInt(),
      search: json['search'] as String?,
      countryOfOrigin: json['countryOfOrigin'] as String?,
      sort: json['sort'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      excludedGenres: (json['excludedGenres'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      excludedTags: (json['excludedTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
      source: json['source'] as String?,
      format: json['format'] as String?,
      seasonYear: (json['seasonYear'] as num?)?.toInt(),
      startYear: (json['startYear'] as num?)?.toInt(),
      season: json['season'] as String?,
      page: (json['page'] as num?)?.toInt() ?? 1,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      characters: (json['characters'] as List<dynamic>?)
              ?.map((e) => character.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      staff: (json['staff'] as List<dynamic>?)
              ?.map((e) => author.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => userData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hasNextPage: json['hasNextPage'] as bool? ?? false,
      hdCover: json['hdCover'] as bool?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchResultsToJson(SearchResults instance) =>
    <String, dynamic>{
      'type': _$SearchTypeEnumMap[instance.type]!,
      'isAdult': instance.isAdult,
      'onList': instance.onList,
      'perPage': instance.perPage,
      'search': instance.search,
      'countryOfOrigin': instance.countryOfOrigin,
      'sort': instance.sort,
      'genres': instance.genres,
      'excludedGenres': instance.excludedGenres,
      'tags': instance.tags,
      'excludedTags': instance.excludedTags,
      'status': instance.status,
      'source': instance.source,
      'format': instance.format,
      'seasonYear': instance.seasonYear,
      'startYear': instance.startYear,
      'season': instance.season,
      'page': instance.page,
      'results': instance.results,
      'characters': instance.characters,
      'staff': instance.staff,
      'users': instance.users,
      'hasNextPage': instance.hasNextPage,
      'id': instance.id,
      'hdCover': instance.hdCover,
    };

const _$SearchTypeEnumMap = {
  SearchType.ANIME: 'ANIME',
  SearchType.MANGA: 'MANGA',
  SearchType.CHARACTER: 'CHARACTER',
  SearchType.STAFF: 'STAFF',
  SearchType.STUDIO: 'STUDIO',
  SearchType.USER: 'USER',
};
