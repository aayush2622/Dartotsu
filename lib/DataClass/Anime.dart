import 'package:dantotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';

import '../api/Anilist/Data/media.dart';
import 'Author.dart';
import 'Episode.dart';

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
  PlayerSettings? playerSettings;
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
    this.playerSettings,
  })  : op = op ?? [],
        ed = ed ?? [];
}
