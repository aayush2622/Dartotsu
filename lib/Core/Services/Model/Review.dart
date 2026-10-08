import 'package:json_annotation/json_annotation.dart';

import 'User.dart';

part 'Generated/Review.g.dart';

enum ReviewVote { up, down, none }

@JsonSerializable()
class Review {
  int id;
  int mediaId;
  String mediaType;
  String? summary;
  String? body;
  int? rating;
  int? ratingAmount;
  String? userRating;
  int? score;
  bool? private;
  String? siteUrl;
  int? createdAt;
  int? updatedAt;
  User? user;

  Review({
    required this.id,
    required this.mediaId,
    required this.mediaType,
    this.summary,
    this.body,
    this.rating,
    this.ratingAmount,
    this.userRating,
    this.score,
    this.private,
    this.siteUrl,
    this.createdAt,
    this.updatedAt,
    this.user,
  });
  ReviewVote get vote => switch (userRating) {
    'UP_VOTE' => ReviewVote.up,
    'DOWN_VOTE' => ReviewVote.down,
    _ => ReviewVote.none,
  };

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}
