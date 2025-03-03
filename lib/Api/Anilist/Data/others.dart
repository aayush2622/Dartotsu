import 'package:dartotsu/Api/Anilist/Data/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Generated/others.g.dart';

@JsonSerializable()
class Review {
  final int id;
  final int mediaId;
  final String mediaType;
  final String summary;
  final String body;
  final int rating;
  final int ratingAmount;
  final String userRating;
  final int score;
  final bool private;
  final String siteUrl;
  final int createdAt;
  final int? updatedAt;
  final User? user;

  Review({
    required this.id,
    required this.mediaId,
    required this.mediaType,
    required this.summary,
    required this.body,
    required this.rating,
    required this.ratingAmount,
    required this.userRating,
    required this.score,
    required this.private,
    required this.siteUrl,
    required this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}
