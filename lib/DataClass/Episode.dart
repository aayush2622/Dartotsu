import 'package:dartotsu/Api/Sources/Eval/dart/model/m_chapter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Data/Episode.g.dart';

@JsonSerializable()
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

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeToJson(this);
}
