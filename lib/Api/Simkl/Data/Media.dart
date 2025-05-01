import 'package:json_annotation/json_annotation.dart';

part 'Generated/Media.g.dart';

@JsonSerializable()
class Media {
  @JsonKey(name: "anime")
  List<Anime>? anime;
  @JsonKey(name: "shows")
  List<ShowElement>? show;
  @JsonKey(name: "movies")
  List<MovieElement>? movies;

  Media({
    this.anime,
    this.show,
    this.movies,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable()
class MovieElement {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "year")
  int? year;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "ids")
  Ids? ids;
  @JsonKey(name: "en_title")
  String? enTitle;
  @JsonKey(name: "rank")
  int? rank;
  @JsonKey(name: "poster")
  String? poster;
  @JsonKey(name: "fanart")
  String? fanart;
  @JsonKey(name: "first_aired")
  DateTime? firstAired;
  @JsonKey(name: "airs")
  Airs? airs;
  @JsonKey(name: "certification")
  String? certification;
  @JsonKey(name: "overview")
  String? overview;
  @JsonKey(name: "genres")
  List<String>? genres;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "total_episodes")
  int? totalEpisodes;
  @JsonKey(name: "network")
  String? network;
  @JsonKey(name: "ratings")
  Ratings? ratings;
  @JsonKey(name: "trailers")
  List<Trailer>? trailers;
  @JsonKey(name: "users_recommendations")
  List<Anime>? usersRecommendations;
  @JsonKey(name: "last_watched_at")
  DateTime? lastWatchedAt;
  @JsonKey(name: "status")
  Status? status;
  @JsonKey(name: "user_rating")
  dynamic userRating;
  @JsonKey(name: "rating")
  double? rating;
  @JsonKey(name: "release_status")
  String? releaseStatus;
  @JsonKey(name: "watched_episodes_count")
  int? watchedEpisodesCount;
  @JsonKey(name: "total_episodes_count")
  int? totalEpisodesCount;
  @JsonKey(name: "not_aired_episodes_count")
  int? notAiredEpisodesCount;
  @JsonKey(name: "movie")
  MovieMovie? movie;

  MovieElement({
    this.title,
    this.year,
    this.type,
    this.ids,
    this.enTitle,
    this.rank,
    this.poster,
    this.fanart,
    this.firstAired,
    this.airs,
    this.certification,
    this.overview,
    this.genres,
    this.country,
    this.totalEpisodes,
    this.status,
    this.network,
    this.ratings,
    this.trailers,
    this.usersRecommendations,
    this.lastWatchedAt,
    this.userRating,
    this.rating,
    this.releaseStatus,
    this.watchedEpisodesCount,
    this.totalEpisodesCount,
    this.notAiredEpisodesCount,
    this.movie,
  });

  factory MovieElement.fromJson(Map<String, dynamic> json) =>
      _$MovieElementFromJson(json);

  Map<String, dynamic> toJson() => _$MovieElementToJson(this);
}

@JsonSerializable()
class MovieMovie {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "poster")
  String? poster;
  @JsonKey(name: "year")
  int? year;
  @JsonKey(name: "ids")
  Ids? ids;

  MovieMovie({
    this.title,
    this.poster,
    this.year,
    this.ids,
  });

  factory MovieMovie.fromJson(Map<String, dynamic> json) =>
      _$MovieMovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieMovieToJson(this);
}

@JsonSerializable()
class Anime {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "year")
  int? year;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "ids")
  Ids? ids;
  @JsonKey(name: "en_title")
  String? enTitle;
  @JsonKey(name: "rank")
  int? rank;
  @JsonKey(name: "poster")
  String? poster;
  @JsonKey(name: "fanart")
  String? fanart;
  @JsonKey(name: "first_aired")
  DateTime? firstAired;
  @JsonKey(name: "airs")
  Airs? airs;
  @JsonKey(name: "certification")
  String? certification;
  @JsonKey(name: "overview")
  String? overview;
  @JsonKey(name: "genres")
  List<String>? genres;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "total_episodes")
  int? totalEpisodes;
  @JsonKey(name: "network")
  String? network;
  @JsonKey(name: "ratings")
  Ratings? ratings;
  @JsonKey(name: "trailers")
  List<Trailer>? trailers;
  @JsonKey(name: "users_recommendations")
  List<Anime>? usersRecommendations;
  @JsonKey(name: "last_watched_at")
  DateTime? lastWatchedAt;
  @JsonKey(name: "status")
  Status? status;
  @JsonKey(name: "user_rating")
  int? userRating;
  @JsonKey(name: "rating")
  double? rating;
  @JsonKey(name: "release_status")
  String? releaseStatus;
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
    this.title,
    this.year,
    this.type,
    this.ids,
    this.enTitle,
    this.rank,
    this.poster,
    this.fanart,
    this.firstAired,
    this.airs,
    this.certification,
    this.overview,
    this.genres,
    this.country,
    this.totalEpisodes,
    this.status,
    this.network,
    this.animeType,
    this.ratings,
    this.trailers,
    this.usersRecommendations,
    this.lastWatchedAt,
    this.userRating,
    this.rating,
    this.releaseStatus,
    this.lastWatched,
    this.nextToWatch,
    this.watchedEpisodesCount,
    this.totalEpisodesCount,
    this.notAiredEpisodesCount,
    this.show,
  });

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}

@JsonSerializable()
class Airs {
  @JsonKey(name: "day")
  String? day;
  @JsonKey(name: "time")
  String? time;
  @JsonKey(name: "timezone")
  String? timezone;

  Airs({
    this.day,
    this.time,
    this.timezone,
  });

  factory Airs.fromJson(Map<String, dynamic> json) => _$AirsFromJson(json);

  Map<String, dynamic> toJson() => _$AirsToJson(this);
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
  TV,
  @JsonValue("music video")
  MUSIC_VIDEO
}

final animeTypeValues = EnumValues({
  "movie": AnimeType.MOVIE,
  "ona": AnimeType.ONA,
  "ova": AnimeType.OVA,
  "special": AnimeType.SPECIAL,
  "tv": AnimeType.TV,
  "music video": AnimeType.MUSIC_VIDEO
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
class ShowElement {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "year")
  int? year;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "ids")
  Ids? ids;
  @JsonKey(name: "en_title")
  String? enTitle;
  @JsonKey(name: "rank")
  int? rank;
  @JsonKey(name: "poster")
  String? poster;
  @JsonKey(name: "fanart")
  String? fanart;
  @JsonKey(name: "first_aired")
  DateTime? firstAired;
  @JsonKey(name: "airs")
  Airs? airs;
  @JsonKey(name: "certification")
  String? certification;
  @JsonKey(name: "overview")
  String? overview;
  @JsonKey(name: "genres")
  List<String>? genres;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "total_episodes")
  int? totalEpisodes;
  @JsonKey(name: "network")
  String? network;
  @JsonKey(name: "ratings")
  Ratings? ratings;
  @JsonKey(name: "trailers")
  List<Trailer>? trailers;
  @JsonKey(name: "users_recommendations")
  List<Anime>? usersRecommendations;
  @JsonKey(name: "last_watched_at")
  DateTime? lastWatchedAt;
  @JsonKey(name: "status")
  Status? status;
  @JsonKey(name: "user_rating")
  dynamic userRating;
  @JsonKey(name: "last_watched")
  String? lastWatched;
  @JsonKey(name: "rating")
  double? rating;
  @JsonKey(name: "release_status")
  String? releaseStatus;
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

  ShowElement({
    this.title,
    this.year,
    this.type,
    this.ids,
    this.enTitle,
    this.rank,
    this.poster,
    this.fanart,
    this.firstAired,
    this.airs,
    this.certification,
    this.overview,
    this.genres,
    this.country,
    this.totalEpisodes,
    this.status,
    this.network,
    this.ratings,
    this.trailers,
    this.usersRecommendations,
    this.lastWatchedAt,
    this.userRating,
    this.rating,
    this.releaseStatus,
    this.lastWatched,
    this.nextToWatch,
    this.watchedEpisodesCount,
    this.totalEpisodesCount,
    this.notAiredEpisodesCount,
    this.show,
  });

  factory ShowElement.fromJson(Map<String, dynamic> json) =>
      _$ShowElementFromJson(json);

  Map<String, dynamic> toJson() => _$ShowElementToJson(this);
}

@JsonSerializable()
class Ids {
  @JsonKey(name: "simkl")
  @JsonKey(name: "simkl_id")
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
  CURRENT,
  @JsonValue("hold")
  HOLD,
  @JsonValue("ongoing")
  ONGOING,
  @JsonValue("ended")
  ENDED,
  @JsonValue("soon")
  SOON,
  @JsonValue("premiere")
  PREMIERE
}

final statusValues = EnumValues({
  "completed": Status.COMPLETED,
  "dropped": Status.DROPPED,
  "plantowatch": Status.PLANNING,
  "watching": Status.CURRENT,
  "hold": Status.HOLD,
  "ongoing": Status.ONGOING,
  "ended": Status.ENDED,
  'soon': Status.SOON,
  'premiere': Status.PREMIERE
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

@JsonSerializable()
class MediaRatings {
  @JsonKey(name: "anime")
  List<Ratings>? animeRatings;
  @JsonKey(name: "shows")
  List<Ratings>? showRatings;
  @JsonKey(name: "movies")
  List<Ratings>? movieRatings;

  MediaRatings({
    this.animeRatings,
    this.showRatings,
    this.movieRatings,
  });

  factory MediaRatings.fromJson(Map<String, dynamic> json) =>
      _$MediaRatingsFromJson(json);

  Map<String, dynamic> toJson() => _$MediaRatingsToJson(this);
}

@JsonSerializable()
class Trailer {
  @JsonKey(name: "name")
  dynamic name;
  @JsonKey(name: "youtube")
  String? youtube;
  @JsonKey(name: "size")
  int? size;

  Trailer({
    this.name,
    this.youtube,
    this.size,
  });

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}

class Ratings {
  int? id;
  ReleaseStatus? releaseStatus;
  int? rank;
  SimklRating? simkl;

  Ratings({
    this.id,
    this.releaseStatus,
    this.rank,
    this.simkl,
  });

  factory Ratings.fromJson(Map<String, dynamic> json) => Ratings(
        id: json["id"],
        releaseStatus: releaseStatusValues.map[json["release_status"]],
        rank: json["rank"],
        simkl:
            json["simkl"] == null ? null : SimklRating.fromJson(json["simkl"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "release_status": releaseStatusValues.reverse[releaseStatus],
        "rank": rank,
        "simkl": simkl?.toJson(),
      };
}

enum ReleaseStatus {
  ENDED,
  ONGOING,
  UPCOMING,
  RUMORED,
  PLANNED,
  IN_PRODUCTION,
  POST_PRODUCTION,
  CANCELED
}

final releaseStatusValues = EnumValues({
  "ended": ReleaseStatus.ENDED,
  "ongoing": ReleaseStatus.ONGOING,
  "upcoming": ReleaseStatus.UPCOMING,
  "rumored": ReleaseStatus.RUMORED,
  "planned": ReleaseStatus.PLANNED,
  "in production": ReleaseStatus.IN_PRODUCTION,
  "post production": ReleaseStatus.POST_PRODUCTION,
  "canceled": ReleaseStatus.CANCELED
});

class SimklRating {
  double? rating;
  int? votes;
  String? droprate;

  SimklRating({
    this.rating,
    this.votes,
    this.droprate,
  });

  factory SimklRating.fromJson(Map<String, dynamic> json) => SimklRating(
        rating: json["rating"]?.toDouble(),
        votes: json["votes"],
        droprate: json["droprate"],
      );

  Map<String, dynamic> toJson() => {
        "rating": rating,
        "votes": votes,
        "droprate": droprate,
      };
}
