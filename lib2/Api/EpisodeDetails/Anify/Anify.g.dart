// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Anify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnifyElement _$AnifyElementFromJson(Map<String, dynamic> json) => AnifyElement(
      providerID: json['providerId'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnifyElementToJson(AnifyElement instance) =>
    <String, dynamic>{
      'providerId': instance.providerID,
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as String?,
      description: json['description'] as String?,
      hasDub: json['hasDub'] as bool?,
      img: json['img'] as String?,
      isFiller: json['isFiller'] as bool?,
      number: (json['number'] as num?)?.toInt(),
      title: json['title'] as String?,
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'hasDub': instance.hasDub,
      'img': instance.img,
      'isFiller': instance.isFiller,
      'number': instance.number,
      'title': instance.title,
      'updatedAt': instance.updatedAt,
      'rating': instance.rating,
    };
