import 'package:json_annotation/json_annotation.dart';
part 'Generated/User.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String? pfp;
  final String? banner;

  // for media info page
  final String? status;
  final double? score;
  final int? progress;
  final int? totalEpisodes;
  final int? nextAiringEpisode;

  User({
    required this.id,
    required this.name,
    this.pfp,
    this.banner,
    this.status,
    this.score,
    this.progress,
    this.totalEpisodes,
    this.nextAiringEpisode,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
