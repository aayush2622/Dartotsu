import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';

const kTraktHomeSections = <String, bool>{
  'Continue Watching': true,
  'Watchlist': true,
  'Watched Shows': true,
  'Watched Movies': true,
};

const kTraktAnimeSections = <String, bool>{
  'Trending Anime': true,
  'Popular Anime Shows': true,
  'Popular Anime Movies': true,
  'Most Watched Anime': true,
  'Anticipated Anime': true,
};

const kTraktMovieSections = <String, bool>{
  'Trending Movies Today': true,
  'Trending Shows Today': true,
  'Trending Movies This Week': true,
  'Trending Shows This Week': true,
  'Popular Movies': true,
  'Popular Shows': true,
  'Most Watched Movies This Month': false,
  'Most Watched Shows This Month': false,
  'Anticipated Movies': true,
  'Anticipated Shows': true,
  'Box Office': false,
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
  static final animeLayout = layoutPref(
    'traktAnimeLayout',
    kTraktAnimeSections,
  );
  static final movieLayout = layoutPref(
    'traktMovieLayout',
    kTraktMovieSections,
  );
}
