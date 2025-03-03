import 'package:dartotsu/Api/Sources/Eval/dart/model/m_chapter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Data/Chapter.g.dart';

@JsonSerializable()
class Chapter {
  String number;
  String? link;
  String? title;
  String? date;

  //MChapter from Mangayomi
  MChapter? mChapter;

  Chapter({
    required this.number,
    this.link,
    this.title,
    this.date,
    this.mChapter,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}
