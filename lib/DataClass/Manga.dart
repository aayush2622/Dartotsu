
import 'package:dartotsu/DataClass/Chapter.dart';

import 'Author.dart';

class Manga {
  int? totalChapters;
  String? selectedChapter;
  List<Chapter>? chapters;
  String? slug;
  author? mediaAuthor;

  Manga({
    this.totalChapters,
    this.selectedChapter,
    this.chapters,
    this.slug,
    this.mediaAuthor,
  });
}
