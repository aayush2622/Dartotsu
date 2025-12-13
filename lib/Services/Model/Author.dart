import 'package:json_annotation/json_annotation.dart';

import 'Media.dart';
import 'Character.dart';

part 'Generated/Author.g.dart';

@JsonSerializable()
class Author {
  String id;
  String? name;
  String? image;
  String? role;
  Map<String, List<Media>>? yearMedia;
  List<Character>? character;
  bool? isFav;
  int? favourites;
  Author({
    required this.id,
    this.name,
    this.image,
    this.role,
    this.yearMedia,
    this.character,
    this.isFav,
    this.favourites,
  });
  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}
