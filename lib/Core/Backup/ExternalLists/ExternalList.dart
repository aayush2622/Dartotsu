enum ExternalFormat {
  aniyomi('Aniyomi', '.tachibk'),
  mihon('Mihon / Tachiyomi', '.tachibk'),
  kotatsu('Kotatsu', '.zip');

  final String label;
  final String extension;

  const ExternalFormat(this.label, this.extension);

  bool get hasAnime => this == aniyomi;
}

class ExternalItem {
  final String title;
  final String url;
  final int source;
  final bool anime;
  final String? cover;
  final String? description;
  final String? author;
  final List<String> genres;
  final int status;
  final int total;
  final int read;
  final double lastNumber;
  final List<String> categories;
  final int dateAdded;
  final int lastUpdated;

  const ExternalItem({
    required this.title,
    required this.url,
    this.source = 0,
    required this.anime,
    this.cover,
    this.description,
    this.author,
    this.genres = const [],
    this.status = 0,
    this.total = 0,
    this.read = 0,
    this.lastNumber = 0,
    this.categories = const [],
    this.dateAdded = 0,
    this.lastUpdated = 0,
  });

  String get key => url.isNotEmpty ? url : title;
}

class ExternalLists {
  final ExternalFormat format;
  final List<ExternalItem> items;
  final List<String> categories;
  final Map<int, String> sourceNames;

  const ExternalLists({
    required this.format,
    required this.items,
    this.categories = const [],
    this.sourceNames = const {},
  });

  List<ExternalItem> get anime => [
    for (final i in items)
      if (i.anime) i,
  ];

  List<ExternalItem> get manga => [
    for (final i in items)
      if (!i.anime) i,
  ];
}
