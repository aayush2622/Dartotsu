import '../Api/Sources/Eval/dart/model/m_chapter.dart';

class MangaChapter {
  final String number;
  String link;
  String? title;
  String? description;
  final MChapter mChapter;
  String? scanlator;
  int? date;
  String? progress;

  final List<MangaImage> _images = [];
  final List<MapEntry<MangaImage, MangaImage?>> _dualPages = [];

  MangaChapter({
    required this.number,
    required this.link,
    this.title,
    this.description,
    required this.mChapter,
    this.scanlator,
    this.date,
    this.progress = '',
  });

  MangaChapter.from(MangaChapter chapter)
      : this(
          number: chapter.number,
          link: chapter.link,
          title: chapter.title,
          description: chapter.description,
          mChapter: chapter.mChapter,
          scanlator: chapter.scanlator,
          date: chapter.date,
          progress: chapter.progress,
        );

  List<MangaImage> get images => _images;

  void addImages(List<MangaImage> images) {
    if (_images.isNotEmpty) return;
    _images.addAll(images);

    for (int i = 0; i <= ((images.length - 1) / 2).floor(); i++) {
      final int index = i * 2;
      _dualPages.add(MapEntry(_images[index],
          index + 1 < _images.length ? _images[index + 1] : null));
    }
  }

  List<MapEntry<MangaImage, MangaImage?>> get dualPages => _dualPages;
}

class MangaImage {
  final String url;
  final bool useTransformation;

  //final Page? page;

  MangaImage({
    required this.url,
    this.useTransformation = false,
    //this.page,
  });

  // Constructor that accepts a String URL
  MangaImage.fromUrl(
    String url, {
    bool useTransformation = false, // Page? page
  }) : this(
          url: url,
          useTransformation: useTransformation,
          //page: page,
        );
}
