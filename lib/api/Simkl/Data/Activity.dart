class Activity {
  DateTime? all;
  Settings? settings;
  Anime? tvShows;
  Anime? anime;
  Anime? movies;

  Activity({
    this.all,
    this.settings,
    this.tvShows,
    this.anime,
    this.movies,
  });

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        all: json["all"] == null ? null : DateTime.parse(json["all"]),
        settings: json["settings"] == null
            ? null
            : Settings.fromJson(json["settings"]),
        tvShows:
            json["tv_shows"] == null ? null : Anime.fromJson(json["tv_shows"]),
        anime: json["anime"] == null ? null : Anime.fromJson(json["anime"]),
        movies: json["movies"] == null ? null : Anime.fromJson(json["movies"]),
      );

  Map<String, dynamic> toJson() => {
        "all": all?.toIso8601String(),
        "settings": settings?.toJson(),
        "tv_shows": tvShows?.toJson(),
        "anime": anime?.toJson(),
        "movies": movies?.toJson(),
      };
}

class Anime {
  DateTime? all;
  DateTime? ratedAt;
  DateTime? plantowatch;
  DateTime? watching;
  DateTime? completed;
  DateTime? hold;
  DateTime? dropped;
  DateTime? removedFromList;

  Anime({
    this.all,
    this.ratedAt,
    this.plantowatch,
    this.watching,
    this.completed,
    this.hold,
    this.dropped,
    this.removedFromList,
  });

  factory Anime.fromJson(Map<String, dynamic> json) => Anime(
        all: json["all"] == null ? null : DateTime.parse(json["all"]),
        ratedAt:
            json["rated_at"] == null ? null : DateTime.parse(json["rated_at"]),
        plantowatch: json["plantowatch"] == null
            ? null
            : DateTime.parse(json["plantowatch"]),
        watching:
            json["watching"] == null ? null : DateTime.parse(json["watching"]),
        completed: json["completed"] == null
            ? null
            : DateTime.parse(json["completed"]),
        hold: json["hold"] == null ? null : DateTime.parse(json["hold"]),
        dropped:
            json["dropped"] == null ? null : DateTime.parse(json["dropped"]),
        removedFromList: json["removed_from_list"] == null
            ? null
            : DateTime.parse(json["removed_from_list"]),
      );

  Map<String, dynamic> toJson() => {
        "all": all?.toIso8601String(),
        "rated_at": ratedAt?.toIso8601String(),
        "plantowatch": plantowatch?.toIso8601String(),
        "watching": watching?.toIso8601String(),
        "completed": completed?.toIso8601String(),
        "hold": hold?.toIso8601String(),
        "dropped": dropped?.toIso8601String(),
        "removed_from_list": removedFromList?.toIso8601String(),
      };
}

class Settings {
  DateTime? all;

  Settings({
    this.all,
  });

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        all: json["all"] == null ? null : DateTime.parse(json["all"]),
      );

  Map<String, dynamic> toJson() => {
        "all": all?.toIso8601String(),
      };
}
