import 'package:json_annotation/json_annotation.dart';

part 'Generated/userData.g.dart';

@JsonSerializable()
class UserData {
  @JsonKey(name: "data")
  Data? data;

  UserData({
    this.data,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "mal_id")
  int? malId;
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "images")
  Map<String, DataImage>? images;
  @JsonKey(name: "last_online")
  DateTime? lastOnline;
  @JsonKey(name: "gender")
  dynamic gender;
  @JsonKey(name: "birthday")
  dynamic birthday;
  @JsonKey(name: "location")
  dynamic location;
  @JsonKey(name: "joined")
  DateTime? joined;
  @JsonKey(name: "statistics")
  Statistics? statistics;

  Data({
    this.malId,
    this.username,
    this.url,
    this.images,
    this.lastOnline,
    this.gender,
    this.birthday,
    this.location,
    this.joined,
    this.statistics,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class DataImage {
  @JsonKey(name: "image_url")
  String? imageUrl;

  DataImage({
    this.imageUrl,
  });

  factory DataImage.fromJson(Map<String, dynamic> json) =>
      _$DataImageFromJson(json);

  Map<String, dynamic> toJson() => _$DataImageToJson(this);
}

@JsonSerializable()
class Statistics {
  @JsonKey(name: "anime")
  StatisticsAnime? anime;
  @JsonKey(name: "manga")
  StatisticsManga? manga;

  Statistics({
    this.anime,
    this.manga,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsToJson(this);
}

@JsonSerializable()
class StatisticsAnime {
  @JsonKey(name: "days_watched")
  double? daysWatched;
  @JsonKey(name: "mean_score")
  double? meanScore;
  @JsonKey(name: "watching")
  int? watching;
  @JsonKey(name: "completed")
  int? completed;
  @JsonKey(name: "on_hold")
  int? onHold;
  @JsonKey(name: "dropped")
  int? dropped;
  @JsonKey(name: "plan_to_watch")
  int? planToWatch;
  @JsonKey(name: "total_entries")
  int? totalEntries;
  @JsonKey(name: "rewatched")
  int? rewatched;
  @JsonKey(name: "episodes_watched")
  int? episodesWatched;

  StatisticsAnime({
    this.daysWatched,
    this.meanScore,
    this.watching,
    this.completed,
    this.onHold,
    this.dropped,
    this.planToWatch,
    this.totalEntries,
    this.rewatched,
    this.episodesWatched,
  });

  factory StatisticsAnime.fromJson(Map<String, dynamic> json) =>
      _$StatisticsAnimeFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsAnimeToJson(this);
}

@JsonSerializable()
class StatisticsManga {
  @JsonKey(name: "days_read")
  double? daysRead;
  @JsonKey(name: "mean_score")
  int? meanScore;
  @JsonKey(name: "reading")
  int? reading;
  @JsonKey(name: "completed")
  int? completed;
  @JsonKey(name: "on_hold")
  int? onHold;
  @JsonKey(name: "dropped")
  int? dropped;
  @JsonKey(name: "plan_to_read")
  int? planToRead;
  @JsonKey(name: "total_entries")
  int? totalEntries;
  @JsonKey(name: "reread")
  int? reread;
  @JsonKey(name: "chapters_read")
  int? chaptersRead;
  @JsonKey(name: "volumes_read")
  int? volumesRead;

  StatisticsManga({
    this.daysRead,
    this.meanScore,
    this.reading,
    this.completed,
    this.onHold,
    this.dropped,
    this.planToRead,
    this.totalEntries,
    this.reread,
    this.chaptersRead,
    this.volumesRead,
  });

  factory StatisticsManga.fromJson(Map<String, dynamic> json) =>
      _$StatisticsMangaFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsMangaToJson(this);
}
