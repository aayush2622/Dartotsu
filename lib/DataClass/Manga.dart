import 'Author.dart';

class Manga {
  int? totalChapters;
  String? selectedChapter;
  //Map<String, MangaChapter>? chapters;
  String? slug;
  author? mediaAuthor;

  Manga({
    this.totalChapters,
    this.selectedChapter,
    //this.chapters,
    this.slug,
    this.mediaAuthor,
  });
}