// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      number: json['number'] as String,
      link: json['link'] as String?,
      title: json['title'] as String?,
      date: json['date'] as String?,
      mChapter: json['mChapter'] == null
          ? null
          : MChapter.fromJson(json['mChapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'number': instance.number,
      'link': instance.link,
      'title': instance.title,
      'date': instance.date,
      'mChapter': instance.mChapter,
    };
