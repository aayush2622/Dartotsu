// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../fuzzyData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuzzyDate _$FuzzyDateFromJson(Map<String, dynamic> json) => FuzzyDate(
      year: (json['year'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      day: (json['day'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FuzzyDateToJson(FuzzyDate instance) => <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };
