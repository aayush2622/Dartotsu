import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Model/SearchResults.dart';
import 'Mapper.dart';

const simklAnimeGenres = [
  'Action',
  'Adventure',
  'Comedy',
  'Drama',
  'Ecchi',
  'Educational',
  'Fantasy',
  'Gag Humor',
  'Gore',
  'Harem',
  'Historical',
  'Horror',
  'Idol',
  'Isekai',
  'Kids',
  'Magic',
  'Martial Arts',
  'Mecha',
  'Military',
  'Music',
  'Mystery',
  'Mythology',
  'Parody',
  'Psychological',
  'Racing',
  'Reincarnation',
  'Romance',
  'Samurai',
  'School',
  'Sci-Fi',
  'Seinen',
  'Shoujo',
  'Shoujo Ai',
  'Shounen',
  'Shounen Ai',
  'Slice of Life',
  'Space',
  'Sports',
  'Strategy Game',
  'Super Power',
  'Supernatural',
  'Thriller',
  'Vampire',
  'Yaoi',
  'Yuri',
];

const simklTvGenres = [
  'Action',
  'Adventure',
  'Animation',
  'Awards Show',
  'Children',
  'Comedy',
  'Crime',
  'Documentary',
  'Drama',
  'Family',
  'Fantasy',
  'Food',
  'Game Show',
  'History',
  'Home and Garden',
  'Horror',
  'Indie',
  'Korean Drama',
  'Martial Arts',
  'Mini Series',
  'Musical',
  'Mystery',
  'News',
  'Podcast',
  'Reality',
  'Romance',
  'Science Fiction',
  'Soap',
  'Special Interest',
  'Sport',
  'Suspense',
  'Talk Show',
  'Thriller',
  'Travel',
  'Video Game Play',
  'War',
  'Western',
];

const simklMovieGenres = [
  'Action',
  'Adventure',
  'Animation',
  'Comedy',
  'Crime',
  'Documentary',
  'Drama',
  'Family',
  'Fantasy',
  'History',
  'Horror',
  'Music',
  'Mystery',
  'Romance',
  'Science Fiction',
  'Thriller',
  'TV Movie',
  'War',
  'Western',
];

List<String> simklGenres(SimklKind kind) => switch (kind) {
  SimklKind.anime => simklAnimeGenres,
  SimklKind.tv => simklTvGenres,
  SimklKind.movies => simklMovieGenres,
};

const _formats = {
  'TV': 'tv',
  'MOVIE': 'movies',
  'OVA': 'ovas',
  'ONA': 'onas',
  'SPECIAL': 'specials',
  'MUSIC': 'music',
};

const _sorts = {
  'TRENDING_DESC': 'popular-this-week',
  'POPULARITY_DESC': 'popular-this-month',
  'FAVOURITES_DESC': 'popular-all-time',
  'SCORE_DESC': 'rank',
  'START_DATE_DESC': 'release-date',
};

Map<String, String> get simklSearchSorts => {
  'TRENDING_DESC': getString.sortTrending,
  'POPULARITY_DESC': getString.sortMostPopular,
  'FAVOURITES_DESC': getString.sortMostFavourited,
  'SCORE_DESC': getString.sortTopRated,
  'START_DATE_DESC': getString.sortNewest,
};

const simklAnimeFormats = ['TV', 'MOVIE', 'OVA', 'ONA', 'SPECIAL', 'MUSIC'];

String _slug(String genre) => genre.toLowerCase().replaceAll(' ', '-');

/// `/anime|tv|movies/genres/...` for the active filters, or null when none
/// is set (the plain catalog has no unfiltered listing to show).
String? simklBrowsePath(SimklKind kind, SearchResults q) {
  final genre = q.genres?.firstOrNull;
  final hasFilter =
      genre != null ||
      (q.seasonYear ?? q.startYear) != null ||
      q.sort != null ||
      q.format != null ||
      (q.countryOfOrigin?.isNotEmpty ?? false);
  if (!hasFilter) return null;
  final g = genre == null ? 'all' : _slug(genre);
  final year = (q.seasonYear ?? q.startYear) == null
      ? 'all'
      : '${q.seasonYear ?? q.startYear}';
  final sort = _sorts[q.sort] ?? 'popular-this-month';
  final country = (q.countryOfOrigin?.isNotEmpty ?? false)
      ? q.countryOfOrigin!.toLowerCase()
      : 'all';
  return switch (kind) {
    SimklKind.anime =>
      '/anime/genres/$g/${_formats[q.format] ?? 'all'}/all/$year/$sort',
    SimklKind.tv => '/tv/genres/$g/all/$country/all/$year/$sort',
    SimklKind.movies => '/movies/genres/$g/movies/$country/$year/$sort',
  };
}
