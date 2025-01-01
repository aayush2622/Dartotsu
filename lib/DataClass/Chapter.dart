import 'package:dartotsu/api/Mangayomi/Eval/dart/model/m_chapter.dart';

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
}
