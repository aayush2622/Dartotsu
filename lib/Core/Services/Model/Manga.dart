import 'package:dartotsu_extension_bridge/Models/DEpisode.dart';
import 'package:json_annotation/json_annotation.dart';
import 'Author.dart';
part 'Generated/Manga.g.dart';

@JsonSerializable()
class Manga {
  int? totalChapters;

  String? selectedChapter;

  List<DEpisode>? chapters;

  Author? author;

  Manga({
    this.totalChapters,
    this.selectedChapter,
    this.chapters,
    this.author,
  });

  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);
  Map<String, dynamic> toJson() => _$MangaToJson(this);
}
