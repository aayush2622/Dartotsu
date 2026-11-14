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
  'POPULARITY_DESC': getString.sortMostPopular,
  'TRENDING_DESC': getString.sortTrending,
};
