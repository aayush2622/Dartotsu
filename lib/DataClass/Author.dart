import 'package:json_annotation/json_annotation.dart';

import '../Api/Anilist/Data/character.dart';
import 'Media.dart';

part 'Data/Author.g.dart';

@JsonSerializable()
class author {
  int id;
  String? name;
  String? image;
  String? role;
  Map<String, List<Media>>? yearMedia;
  List<Character>? character;

  author({
    required this.id,
    this.name,
    this.image,
    this.role,
    this.yearMedia,
    this.character,
  });

  factory author.fromJson(Map<String, dynamic> json) => _$authorFromJson(json);

  Map<String, dynamic> toJson() => _$authorToJson(this);
}
