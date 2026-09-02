import 'SearchResults.dart';

/// A browsable media category a service offers. A service declares its own
/// subset (`MediaService.feedTypes`) — most have one or two (anime + manga,
/// or novels + movies, …) and the shell builds one browse tab per type.
enum MediaType {
  anime,
  manga,
  novel,
  movie,
  series;

  String get label => switch (this) {
    MediaType.anime => 'Anime',
    MediaType.manga => 'Manga',
    MediaType.novel => 'Novels',
    MediaType.movie => 'Movies',
    MediaType.series => 'Series',
  };

  /// Whether this type reads left-to-right in episodes (anime/movie/series) or
  /// chapters (manga/novel) — drives "Watch/Read", "ep/ch", etc.
  bool get isVideo =>
      this == MediaType.anime ||
      this == MediaType.movie ||
      this == MediaType.series;

  SearchType get searchType => switch (this) {
    MediaType.anime => SearchType.ANIME,
    MediaType.manga => SearchType.MANGA,
    MediaType.novel => SearchType.NOVEL,
    MediaType.movie => SearchType.MOVIES,
    MediaType.series => SearchType.SERIES,
  };
}
