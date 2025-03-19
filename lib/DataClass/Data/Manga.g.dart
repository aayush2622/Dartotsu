// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manga _$MangaFromJson(Map<String, dynamic> json) => Manga(
      totalChapters: (json['totalChapters'] as num?)?.toInt(),
      selectedChapter: json['selectedChapter'] as String?,
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      slug: json['slug'] as String?,
      mediaAuthor: json['mediaAuthor'] == null
          ? null
          : author.fromJson(json['mediaAuthor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MangaToJson(Manga instance) => <String, dynamic>{
      'totalChapters': instance.totalChapters,
      'selectedChapter': instance.selectedChapter,
      'chapters': instance.chapters,
      'slug': instance.slug,
      'mediaAuthor': instance.mediaAuthor,
    };
