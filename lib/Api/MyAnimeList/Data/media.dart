import 'package:json_annotation/json_annotation.dart';

part 'Generated/media.g.dart';

@JsonSerializable()
class Media {
  int? id;
  String? title;
  @JsonKey(name: "main_picture")
  Picture? mainPicture;
  @JsonKey(name: "alternative_titles")
  AlternativeTitles? alternativeTitles;
  @JsonKey(name: "start_date")
  DateTime? startDate;
  @JsonKey(name: "end_date")
  DateTime? endDate;
  String? synopsis;
  double? mean;
  int? rank;
  int? popularity;
  @JsonKey(name: "num_list_users")
  int? numListUsers;
  @JsonKey(name: "num_scoring_users")
  int? numScoringUsers;
  String? nsfw;
  @JsonKey(name: "created_at")
  DateTime? createdAt;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "media_type")
  String? mediaType;
  String? status;
  List<Genre>? genres;
  List<Picture>? pictures;
  String? background;
  @JsonKey(name: "related_anime")
  List<Related>? relatedAnime;
  @JsonKey(name: "related_manga")
  List<Related>? relatedManga;
  List<Recommendation>? recommendations;
  @JsonKey(name: "my_list_status")
  MyListStatus? myListStatus;
  @JsonKey(name: "num_episodes")
  int? numEpisodes;
  @JsonKey(name: "num_chapters")
  int? numChapters;

  Media({
    this.id,
    this.title,
    this.mainPicture,
    this.alternativeTitles,
    this.startDate,
    this.endDate,
    this.synopsis,
    this.mean,
    this.rank,
    this.popularity,
    this.numListUsers,
    this.numScoringUsers,
    this.nsfw,
    this.createdAt,
    this.updatedAt,
    this.mediaType,
    this.status,
    this.genres,
    this.pictures,
    this.background,
    this.relatedAnime,
    this.relatedManga,
    this.recommendations,
    this.myListStatus,
    this.numEpisodes,
    this.numChapters,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable()
class MyListStatus {
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "score")
  int? score;
  @JsonKey(name: "num_episodes_watched")
  int? numEpisodesWatched;
  @JsonKey(name: "num_chapters_read")
  int? numChaptersRead;
  @JsonKey(name: "is_rewatching")
  bool? isRewatching;
  @JsonKey(name: "updated_at")
  DateTime? updatedAt;
  @JsonKey(name: "start_date")
  DateTime? startDate;
  @JsonKey(name: "finish_date")
  DateTime? finishDate;

  MyListStatus({
    this.status,
    this.score,
    this.numEpisodesWatched,
    this.numChaptersRead,
    this.isRewatching,
    this.updatedAt,
    this.startDate,
    this.finishDate,
  });

  factory MyListStatus.fromJson(Map<String, dynamic> json) =>
      _$MyListStatusFromJson(json);

  Map<String, dynamic> toJson() => _$MyListStatusToJson(this);
}

@JsonSerializable()
class Ranking {
  @JsonKey(name: "rank")
  int? rank;

  Ranking({
    this.rank,
  });

  factory Ranking.fromJson(Map<String, dynamic> json) =>
      _$RankingFromJson(json);

  Map<String, dynamic> toJson() => _$RankingToJson(this);
}

@JsonSerializable()
class AlternativeTitles {
  @JsonKey(name: "synonyms")
  List<String>? synonyms;
  @JsonKey(name: "en")
  String? en;
  @JsonKey(name: "ja")
  String? ja;

  AlternativeTitles({
    this.synonyms,
    this.en,
    this.ja,
  });

  factory AlternativeTitles.fromJson(Map<String, dynamic> json) =>
      _$AlternativeTitlesFromJson(json);

  Map<String, dynamic> toJson() => _$AlternativeTitlesToJson(this);
}

@JsonSerializable()
class Genre {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;

  Genre({
    this.id,
    this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}

@JsonSerializable()
class Picture {
  @JsonKey(name: "medium")
  String? medium;
  @JsonKey(name: "large")
  String? large;

  Picture({
    this.medium,
    this.large,
  });

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);

  Map<String, dynamic> toJson() => _$PictureToJson(this);
}

@JsonSerializable()
class Recommendation {
  @JsonKey(name: "node")
  Media? node;
  @JsonKey(name: "num_recommendations")
  int? numRecommendations;

  Recommendation({
    this.node,
    this.numRecommendations,
  });

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationToJson(this);
}

@JsonSerializable()
class Related {
  @JsonKey(name: "node")
  Media? node;
  @JsonKey(name: "relation_type")
  String? relationType;
  @JsonKey(name: "relation_type_formatted")
  String? relationTypeFormatted;

  Related({
    this.node,
    this.relationType,
    this.relationTypeFormatted,
  });

  factory Related.fromJson(Map<String, dynamic> json) =>
      _$RelatedFromJson(json);

  Map<String, dynamic> toJson() => _$RelatedToJson(this);
}
