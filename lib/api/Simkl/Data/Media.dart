
import 'package:json_annotation/json_annotation.dart';


part 'Generated/Media.g.dart';


@JsonSerializable()
class Media {
  @JsonKey(name: "anime")
  List<Anime>? anime;

  Media({
    this.anime,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable()
class Anime {
  @JsonKey(name: "last_watched_at")
  DateTime? lastWatchedAt;
  @JsonKey(name: "status")
  Status? status;
  @JsonKey(name: "user_rating")
  int? userRating;
  @JsonKey(name: "last_watched")
  String? lastWatched;
  @JsonKey(name: "next_to_watch")
  String? nextToWatch;
  @JsonKey(name: "watched_episodes_count")
  int? watchedEpisodesCount;
  @JsonKey(name: "total_episodes_count")
  int? totalEpisodesCount;
  @JsonKey(name: "not_aired_episodes_count")
  int? notAiredEpisodesCount;
  @JsonKey(name: "show")
  Show? show;
  @JsonKey(name: "anime_type")
  AnimeType? animeType;

  Anime({
    this.lastWatchedAt,
    this.status,
    this.userRating,
    this.lastWatched,
    this.nextToWatch,
    this.watchedEpisodesCount,
    this.totalEpisodesCount,
    this.notAiredEpisodesCount,
    this.show,
    this.animeType,
  });

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}

enum AnimeType {
  @JsonValue("movie")
  MOVIE,
  @JsonValue("ona")
  ONA,
  @JsonValue("ova")
  OVA,
  @JsonValue("special")
  SPECIAL,
  @JsonValue("tv")
  TV
}

final animeTypeValues = EnumValues({
  "movie": AnimeType.MOVIE,
  "ona": AnimeType.ONA,
  "ova": AnimeType.OVA,
  "special": AnimeType.SPECIAL,
  "tv": AnimeType.TV
});

@JsonSerializable()
class Show {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "poster")
  String? poster;
  @JsonKey(name: "year")
  int? year;
  @JsonKey(name: "ids")
  Ids? ids;

  Show({
    this.title,
    this.poster,
    this.year,
    this.ids,
  });

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);

  Map<String, dynamic> toJson() => _$ShowToJson(this);
}

@JsonSerializable()
class Ids {
  @JsonKey(name: "simkl")
  int? simkl;
  @JsonKey(name: "slug")
  String? slug;
  @JsonKey(name: "fb")
  String? fb;
  @JsonKey(name: "instagram")
  String? instagram;
  @JsonKey(name: "wikijp")
  String? wikijp;
  @JsonKey(name: "ann")
  String? ann;
  @JsonKey(name: "mal")
  String? mal;
  @JsonKey(name: "offjp")
  String? offjp;
  @JsonKey(name: "wikien")
  String? wikien;
  @JsonKey(name: "allcin")
  String? allcin;
  @JsonKey(name: "imdb")
  String? imdb;
  @JsonKey(name: "tw")
  String? tw;
  @JsonKey(name: "tvdbslug")
  String? tvdbslug;
  @JsonKey(name: "crunchyroll")
  String? crunchyroll;
  @JsonKey(name: "anilist")
  String? anilist;
  @JsonKey(name: "animeplanet")
  String? animeplanet;
  @JsonKey(name: "anisearch")
  String? anisearch;
  @JsonKey(name: "kitsu")
  String? kitsu;
  @JsonKey(name: "livechart")
  String? livechart;
  @JsonKey(name: "traktslug")
  String? traktslug;
  @JsonKey(name: "tmdb")
  String? tmdb;
  @JsonKey(name: "offen")
  String? offen;
  @JsonKey(name: "anidb")
  String? anidb;
  @JsonKey(name: "anfo")
  String? anfo;
  @JsonKey(name: "zap2it")
  String? zap2It;
  @JsonKey(name: "vndb")
  String? vndb;
  @JsonKey(name: "letterslug")
  String? letterslug;
  @JsonKey(name: "tvdbmslug")
  String? tvdbmslug;

  Ids({
    this.simkl,
    this.slug,
    this.fb,
    this.instagram,
    this.wikijp,
    this.ann,
    this.mal,
    this.offjp,
    this.wikien,
    this.allcin,
    this.imdb,
    this.tw,
    this.tvdbslug,
    this.crunchyroll,
    this.anilist,
    this.animeplanet,
    this.anisearch,
    this.kitsu,
    this.livechart,
    this.traktslug,
    this.tmdb,
    this.offen,
    this.anidb,
    this.anfo,
    this.zap2It,
    this.vndb,
    this.letterslug,
    this.tvdbmslug,
  });

  factory Ids.fromJson(Map<String, dynamic> json) => _$IdsFromJson(json);

  Map<String, dynamic> toJson() => _$IdsToJson(this);
}

enum Status {
  @JsonValue("completed")
  COMPLETED,
  @JsonValue("dropped")
  DROPPED,
  @JsonValue("plantowatch")
  PLANNING,
  @JsonValue("watching")
  CURRENT
}

final statusValues = EnumValues({
  "completed": Status.COMPLETED,
  "dropped": Status.DROPPED,
  "plantowatch": Status.PLANNING,
  "watching": Status.CURRENT
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
