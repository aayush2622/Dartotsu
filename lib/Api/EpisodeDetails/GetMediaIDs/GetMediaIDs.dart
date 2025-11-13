import 'dart:convert';

import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

class GetMediaIDs {
  static List<AnimeID>? _animeListFuture;

  static AnimeID? fromID({
    required AnimeIDType type,
    required dynamic id,
  }) {
    final animeList = _animeListFuture;
    final fieldName = type.fieldName;
    return animeList?.firstWhereOrNull(
      (entry) => entry.toJson()[fieldName] == id,
    );
  }

  static var loading = true.obs;
  static var loaded = false.obs;

  static Future<List<AnimeID>?> getData() async {
    if (loaded.value) {
      while (loading.value) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      return _animeListFuture;
    }
    loaded.value = true;
    if (_animeListFuture != null) {
      return _animeListFuture;
    }

    return await loadFromCache();
  }

  static Future<List<AnimeID>?> loadFromCache() async {
    var data = loadCustomData<String?>('animeIDSList');
    var time = loadCustomData<int>('animeIDSListTime');
    bool checkTime() {
      if (time == null) return true;
      return DateTime.now()
              .difference(DateTime.fromMillisecondsSinceEpoch(time))
              .inDays >
          7;
    }

    if (data != null && !checkTime()) {
      var jsonData = jsonDecode(data) as List<dynamic>;
      _animeListFuture = jsonData.map((e) => AnimeID.fromJson(e)).toList();
      loading.value = false;
      return _animeListFuture;
    } else {
      final url = Uri.parse(
          'https://raw.githubusercontent.com/Fribb/anime-lists/refs/heads/master/anime-list-full.json');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);
        _animeListFuture = jsonData.map((e) => AnimeID.fromJson(e)).toList();
        saveCustomData('animeIDSList', response.body);
        saveCustomData(
            'animeIDSListTime', DateTime.now().millisecondsSinceEpoch);
        loading.value = false;
        return _animeListFuture;
      } else {
        debugPrint('Failed to load data: ${response.statusCode}');
        return null;
      }
    }
  }
}

enum AnimeIDType {
  anilistId,
  kitsuId,
  malId,
  animePlanetId,
  anisearchId,
  anidbId,
  notifyMoeId,
  imdbId,
  livechartId,
  thetvdbId,
  themoviedbId;

  String get fieldName {
    switch (this) {
      case AnimeIDType.anilistId:
        return 'anilist_id';
      case AnimeIDType.kitsuId:
        return 'kitsu_id';
      case AnimeIDType.malId:
        return 'mal_id';
      case AnimeIDType.animePlanetId:
        return 'anime-planet_id';
      case AnimeIDType.anisearchId:
        return 'anisearch_id';
      case AnimeIDType.anidbId:
        return 'anidb_id';
      case AnimeIDType.notifyMoeId:
        return 'notify.moe_id';
      case AnimeIDType.imdbId:
        return 'imdb_id';
      case AnimeIDType.livechartId:
        return 'livechart_id';
      case AnimeIDType.thetvdbId:
        return 'thetvdb_id';
      case AnimeIDType.themoviedbId:
        return 'themoviedb_id';
    }
  }
}

@JsonSerializable()
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
    this.anisearchId,
    this.anidbId,
    this.kitsuId,
    this.malId,
    this.type,
    this.notifyMoeId,
    this.anilistId,
    this.imdbId,
    this.livechartId,
    this.thetvdbId,
    this.themoviedbId,
  });

  factory AnimeID.fromJson(Map<String, dynamic> json) => AnimeID(
        animePlanetId: json['anime-planet_id'].toString(),
        kitsuId: (json['kitsu_id'] as num?)?.toInt(),
        malId: (json['mal_id'] as num?)?.toInt(),
        type: json['type'] as String?,
        anilistId: (json['anilist_id'] as num?)?.toInt(),
        imdbId: json['imdb_id'] as String?,
        anisearchId: (json['anisearch_id'] as num?)?.toInt(),
        anidbId: (json['anidb_id'] as num?)?.toInt(),
        notifyMoeId: json['notify.moe_id'] as String?,
        livechartId: (json['livechart_id'] as num?)?.toInt(),
        thetvdbId: (json['thetvdb_id'] as num?)?.toInt(),
        themoviedbId: json['themoviedb_id'].toString(),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'anime-planet_id': animePlanetId,
        'kitsu_id': kitsuId,
        'mal_id': malId,
        'type': type,
        'anilist_id': anilistId,
        'imdb_id': imdbId,
        'anisearch_id': anisearchId,
        'anidb_id': anidbId,
        'notify.moe_id': notifyMoeId,
        'livechart_id': livechartId,
        'thetvdb_id': thetvdbId,
        'themoviedb_id': themoviedbId,
      };
}
