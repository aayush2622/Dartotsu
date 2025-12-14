import 'package:dartotsu_extension_bridge/Models/DEpisode.dart';
import 'package:json_annotation/json_annotation.dart';

import 'Studio.dart';
import 'Author.dart';
part 'Generated/Anime.g.dart';

@JsonSerializable()
class Anime {
  int? totalEpisodes;

  int? episodeDuration;

  String? season;

  int? seasonYear;

  List<String>? op;

  List<String>? ed;

  Studio? studio;

  Author? author;

  String? youtube;

  int? nextAiringEpisode;

  int? nextAiringEpisodeTime;

  Map<String, DEpisode>? episodes;

  Anime({
    this.totalEpisodes,
    this.episodeDuration,
    this.season,
    this.seasonYear,
    this.op,
    this.ed,
    this.studio,
    this.author,
    this.youtube,
    this.nextAiringEpisode,
    this.nextAiringEpisodeTime,
    this.episodes,
  });

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}
