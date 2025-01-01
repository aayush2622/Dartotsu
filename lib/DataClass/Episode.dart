import 'package:dartotsu/api/Mangayomi/Eval/dart/model/m_chapter.dart';

class Episode {
  String number;
  String? link;
  String? title;
  String? videoUrl;
  String? desc;
  String? thumb;
  bool? filler;
  String? date;

  //SEpisode from Mangayomi
  MChapter? mChapter;

  Episode({
    required this.number,
    this.link,
    this.title,
    this.videoUrl,
    this.desc,
    this.thumb,
    this.filler,
    this.date,
    this.mChapter,
  });
}
