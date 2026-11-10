import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';

const kAnimePlanetHomeSections = <String, bool>{
  'Continue Watching': true,
  'Continue Reading': true,
  'Planned Anime': true,
  'Planned Manga': true,
  'On Hold Anime': true,
  'On Hold Manga': true,
  'Dropped Anime': true,
  'Dropped Manga': true,
};

const kAnimePlanetAnimeSections = <String, bool>{
  'Trending Now': true,
  'Popular This Season': true,
  'Top Rated': true,
  'Most Watched': true,
  'Recently Added': true,
};

const kAnimePlanetMangaSections = <String, bool>{
  'Trending Now': true,
  'Top Rated': true,
  'Most Read': true,
  'Recently Added': true,
};

class AnimePlanetPref {
  AnimePlanetPref._();

  static const username = Pref('animePlanetUsername', '', PrefLocation.OTHER);

  static final homeLayout = layoutPref(
    'animePlanetHomeLayout',
    kAnimePlanetHomeSections,
    splits: {
      'On Hold': ['On Hold Anime', 'On Hold Manga'],
      'Dropped': ['Dropped Anime', 'Dropped Manga'],
    },
  );
  static final animeLayout = layoutPref(
    'animePlanetAnimeLayout',
    kAnimePlanetAnimeSections,
  );
  static final mangaLayout = layoutPref(
    'animePlanetMangaLayout',
    kAnimePlanetMangaSections,
  );
}
