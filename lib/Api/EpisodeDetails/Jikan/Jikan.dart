import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

import '../../../DataClass/Episode.dart';
import '../../../DataClass/Media.dart';

part 'Jikan.g.dart';

class Jikan {
  static const String apiUrl = "https://api.jikan.moe/v4";

  static Future<Map<String, Episode>> getEpisodes(Media mediaData) async {
    if (mediaData.idMAL == null) return {};
    final Map<String, Episode> eps = {};
    int page = 0;

    while (true) {
      page++;
      final response = await http.get(
          Uri.parse('$apiUrl/anime/${mediaData.idMAL}/episodes?page=$page'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        final EpisodeResponse res = EpisodeResponse.fromJson(jsonResponse);

        if (res.data == null || res.data!.isEmpty) {
          break;
        }

        for (var it in res.data!) {
          String ep = it.malID.toString();
          eps[ep] = Episode(
            number: ep,
            title: it.title,
            filler:
                mediaData.idMAL != 34566 ? it.filler : true, //legacy continues
          );
        }

        if (!(res.pagination?.hasNextPage ?? false)) break;
      } else if (response.statusCode == 429) {
        return eps;
      } else {
        break;
      }
    }
    return eps;
  }
}

@JsonSerializable()
class EpisodeResponse {
  Pagination? pagination;
  List<Datum>? data;

  EpisodeResponse({this.pagination, this.data});

  factory EpisodeResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeResponseToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: 'mal_id')
  int malID;
  String? title;
  bool filler;

  Datum({required this.malID, this.title, required this.filler});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Pagination {
  @JsonKey(name: 'has_next_page')
  bool hasNextPage;

  Pagination({required this.hasNextPage});

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
