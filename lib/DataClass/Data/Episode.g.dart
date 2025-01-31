// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Episode _$EpisodeFromJson(Map<String, dynamic> json) => Episode(
      number: json['number'] as String,
      link: json['link'] as String?,
      title: json['title'] as String?,
      videoUrl: json['videoUrl'] as String?,
      desc: json['desc'] as String?,
      thumb: json['thumb'] as String?,
      filler: json['filler'] as bool?,
      date: json['date'] as String?,
      mChapter: json['mChapter'] == null
          ? null
          : MChapter.fromJson(json['mChapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EpisodeToJson(Episode instance) => <String, dynamic>{
      'number': instance.number,
      'link': instance.link,
      'title': instance.title,
      'videoUrl': instance.videoUrl,
      'desc': instance.desc,
      'thumb': instance.thumb,
      'filler': instance.filler,
      'date': instance.date,
      'mChapter': instance.mChapter,
    };
