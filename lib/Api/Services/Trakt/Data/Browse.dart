import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

const traktGenres = [
  'Action',
  'Adventure',
  'Animation',
  'Anime',
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
  'Superhero',
  'Suspense',
  'Thriller',
  'War',
  'Western',
];

Map<String, String> get traktSearchSorts => {
  'TRENDING_DESC': getString.sortTrending,
  'POPULARITY_DESC': getString.sortMostPopular,
  'SCORE_DESC': getString.sortTopRated,
  'START_DATE_DESC': getString.sortNewest,
};
