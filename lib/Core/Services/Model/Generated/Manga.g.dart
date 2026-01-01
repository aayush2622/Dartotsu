// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manga _$MangaFromJson(Map<String, dynamic> json) => Manga(
      totalChapters: (json['totalChapters'] as num?)?.toInt(),
      selectedChapter: json['selectedChapter'] as String?,
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => DEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MangaToJson(Manga instance) => <String, dynamic>{
      'totalChapters': instance.totalChapters,
      'selectedChapter': instance.selectedChapter,
      'author': instance.author,
      'chapters': instance.chapters,
    };
