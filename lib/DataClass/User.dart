import 'package:json_annotation/json_annotation.dart';

part 'Data/User.g.dart';

@JsonSerializable()
class userData {
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

  //final List<Activity> activity;

  userData({
    required this.id,
    required this.name,
    this.pfp,
    this.banner,
    this.status,
    this.score,
    this.progress,
    this.totalEpisodes,
    this.nextAiringEpisode,
    //List<Activity>? activity,
  });

  factory userData.fromJson(Map<String, dynamic> json) =>
      _$userDataFromJson(json);

  Map<String, dynamic> toJson() => _$userDataToJson(this);
}
