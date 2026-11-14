import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Model/MediaType.dart';

const kTraktHomeSections = <String, bool>{
  'Continue Watching': true,
  'Watchlist': true,
  'Completed': false,
  'Recommended Shows': true,
  'Recommended Movies': false,
};

const kTraktMovieSections = <String, bool>{
  'Trending Movies': true,
  'Popular Movies': true,
  'Anticipated Movies': true,
  'Most Watched This Week': true,
  'Most Watched Movies This Month': false,
  'Box Office': false,
};

const kTraktSeriesSections = <String, bool>{
  'Trending Shows': true,
  'Popular Shows': true,
  'Anticipated Shows': true,
  'Most Watched This Week': true,
  'Most Watched Shows This Month': false,
  'Trending Anime': true,
  'Popular Anime': false,
};

class TraktPref {
  TraktPref._();

  static const token = Pref('traktToken', '', PrefLocation.PROTECTED);
  static const refresh = Pref('traktRefreshToken', '', PrefLocation.PROTECTED);
  static const expiresAt = Pref<int>(
    'traktTokenExpires',
    0,
    PrefLocation.PROTECTED,
  );

  static final homeLayout = layoutPref('traktHomeLayout', kTraktHomeSections);
  static final movieLayout = layoutPref(
    'traktMovieLayout',
    kTraktMovieSections,
  );
  static final seriesLayout = layoutPref(
    'traktSeriesLayout',
    kTraktSeriesSections,
  );

  static Pref<Map<String, bool>> feedLayoutFor(MediaType type) =>
      type == MediaType.movie ? movieLayout : seriesLayout;
}
