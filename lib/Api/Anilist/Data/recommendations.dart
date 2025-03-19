import 'package:dartotsu/Api/Anilist/Data/user.dart';
import 'package:json_annotation/json_annotation.dart';

import 'media.dart';

part 'Generated/recommendations.g.dart';

@JsonSerializable()
class Recommendation {
  final int? id;
  final int? rating;
  final Media? media;
  final Media? mediaRecommendation;
  final User? user;

  Recommendation({
    this.id,
    this.rating,
    this.media,
    this.mediaRecommendation,
    this.user,
  });

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationToJson(this);
}

// RecommendationConnection class
@JsonSerializable()
class RecommendationConnection {
  final List<Recommendation>? nodes;

  RecommendationConnection({
    this.nodes,
  });

  factory RecommendationConnection.fromJson(Map<String, dynamic> json) =>
      _$RecommendationConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationConnectionToJson(this);
}
