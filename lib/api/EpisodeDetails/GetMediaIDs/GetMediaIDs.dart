import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_qjs/quickjs/ffi.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'GetMediaIDs.g.dart';

List<AnimeID>? _animeList;

class GetMediaIDs {// use if ever needed

  static Future<AnimeID?> fetchAndFindIds(int anilistId) async {
    if (_animeList == null) {
      await _getData();
    }
    return _animeList?.firstWhereOrNull((entry) => entry.anilistId == anilistId);
  }

  static Future<void> _getData() async {
    final url = Uri.parse(
        'https://raw.githubusercontent.com/Fribb/anime-lists/refs/heads/master/anime-list-full.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);
      _animeList = jsonData.map((e) => AnimeID.fromJson(e)).toList();
    } else {
      debugPrint('Failed to load data: ${response.statusCode}');
      return;
    }
  }
}

//@JsonSerializable()
class AnimeID {
  @JsonKey(name: 'anime-planet_id')
  final String? animePlanetId;
  @JsonKey(name: 'anisearch_id')
  final int? anisearchId;
  @JsonKey(name: 'anidb_id')
  final int? anidbId;
  @JsonKey(name: 'kitsu_id')
  final int? kitsuId;
  @JsonKey(name: 'mal_id')
  final int? malId;
  final String? type;
  @JsonKey(name: 'notify.moe_id')
  final String? notifyMoeId;
  @JsonKey(name: 'anilist_id')
  final int? anilistId;
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @JsonKey(name: 'livechart_id')
  final int? livechartId;
  @JsonKey(name: 'thetvdb_id')
  final int? thetvdbId;
  @JsonKey(name: 'themoviedb_id')
  final String? themoviedbId;

  AnimeID({
    this.animePlanetId,
    this.kitsuId,
    this.malId,
    this.type,
    this.anilistId,
    this.imdbId,
    this.anisearchId,
    this.anidbId,
    this.notifyMoeId,
    this.livechartId,
    this.thetvdbId,
    this.themoviedbId,
  });

  factory AnimeID.fromJson(Map<String, dynamic> json) =>
      _$AnimeIDFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeIDToJson(this);
}
