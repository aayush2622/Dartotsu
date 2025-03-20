import 'package:json_annotation/json_annotation.dart';

part 'Generated/user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "birthday")
  DateTime? birthday;
  @JsonKey(name: "location")
  String? location;
  @JsonKey(name: "joined_at")
  DateTime? joinedAt;
  @JsonKey(name: "picture")
  String? picture;
  @JsonKey(name: "anime_statistics")
  Map<String, double>? animeStatistics;

  User({
    this.id,
    this.name,
    this.birthday,
    this.location,
    this.joinedAt,
    this.picture,
    this.animeStatistics,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
