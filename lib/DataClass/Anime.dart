import 'package:json_annotation/json_annotation.dart';

import '../Api/Anilist/Data/media.dart';
import 'Author.dart';
import 'Episode.dart';

part 'Data/Anime.g.dart';

@JsonSerializable()
class Anime {
  int? totalEpisodes;
  int? episodeDuration;
  String? season;
  int? seasonYear;

  List<String> op;
  List<String> ed;

  Studio? mainStudio;
  author? mediaAuthor;

  String? youtube;
  int? nextAiringEpisode;
  int? nextAiringEpisodeTime;

  String? selectedEpisode;
  Map<String, Episode>? episodes;
  String? slug;
  Map<String, Episode>? kitsuEpisodes;
  Map<String, Episode>? fillerEpisodes;
  Map<String, Episode>? anifyEpisodes;

  Anime({
    this.totalEpisodes,
    this.episodeDuration,
    this.season,
    this.seasonYear,
    List<String>? op,
    List<String>? ed,
    this.mainStudio,
    this.mediaAuthor,
    this.youtube,
    this.nextAiringEpisode,
    this.nextAiringEpisodeTime,
    this.selectedEpisode,
    this.episodes,
    this.slug,
    this.kitsuEpisodes,
    this.fillerEpisodes,
    this.anifyEpisodes,
  })  : op = op ?? [],
        ed = ed ?? [];

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}
