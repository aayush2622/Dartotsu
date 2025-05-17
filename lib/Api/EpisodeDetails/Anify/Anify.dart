import 'dart:convert';

import 'package:dartotsu/DataClass/Media.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

import '../../../DataClass/Episode.dart';

part 'Anify.g.dart';

class Anify {
  static Future<Map<String, Episode>> fetchAndParseMetadata(
      Media mediaData) async {
    var ids = [105310]; // hardcode incorrect ids
    if (mediaData.idAnilist == null) return {};
    if (ids.contains(mediaData.id)) return {};

    final response = await http.get(Uri.parse(
        'https://anify.eltik.cc/content-metadata/${mediaData.idAnilist}'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse =
          jsonDecode(response.body) as List<dynamic>;

      List<AnifyElement> anifyElements =
          jsonResponse.map((json) => AnifyElement.fromJson(json)).toList();

      if (anifyElements.isNotEmpty) {
        return anifyElements.first.data?.asMap().map((_, datum) {
              return MapEntry(
                datum.number.toString(),
                Episode(
                  number: datum.number.toString(),
                  title: datum.title,
                  desc: datum.description,
                  thumb: datum.img,
                ),
              );
            }) ??
            {};
      }
    }
    return {};
  }
}

@JsonSerializable()
class AnifyElement {
  @JsonKey(name: 'providerId')
  final String? providerID;
  final List<Datum>? data;

  AnifyElement({this.providerID, this.data});

  factory AnifyElement.fromJson(Map<String, dynamic> json) =>
      _$AnifyElementFromJson(json);

  Map<String, dynamic> toJson() => _$AnifyElementToJson(this);
}

@JsonSerializable()
class Datum {
  final String? id;
  final String? description;
  final bool? hasDub;
  final String? img;
  final bool? isFiller;
  final int? number;
  final String? title;
  final int? updatedAt;
  final double? rating;

  Datum({
    this.id,
    this.description,
    this.hasDub,
    this.img,
    this.isFiller,
    this.number,
    this.title,
    this.updatedAt,
    this.rating,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
