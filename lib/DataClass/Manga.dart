import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';import 'package:json_annotation/json_annotation.dart';

import 'Author.dart';

part 'Data/Manga.g.dart';

@JsonSerializable()
class Manga {
  int? totalChapters;
  String? selectedChapter;
  List<DEpisode>? chapters;
  String? slug;
  author? mediaAuthor;

  Manga({
    this.totalChapters,
    this.selectedChapter,
    this.chapters,
    this.slug,
    this.mediaAuthor,
  });

  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);

  Map<String, dynamic> toJson() => _$MangaToJson(this);
}
