import 'package:json_annotation/json_annotation.dart';

import 'Media.dart';
import 'Author.dart';
import 'Date.dart';
part 'Generated/Character.g.dart';

@JsonSerializable()
class Character {
  String id;
  String? name;
  String? image;
  String? banner;
  String? role;
  String? description;
  String? age;
  String? gender;
  Date? dateOfBirth;
  bool? isFav;
  int? favourites;
  List<Media>? roles;
  List<Author>? voiceActor;

  Character({
    required this.id,
    this.name,
    this.image,
    this.banner,
    this.role,
    this.description,
    this.age,
    this.gender,
    this.dateOfBirth,
    this.roles,
    this.voiceActor,
    this.isFav,
    this.favourites,
  });

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
