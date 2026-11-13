import '../../../Model/MediaType.dart';
import 'Queries.dart';
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

final kAnimePlanetAnimeSections = {
  for (final s in animePlanetSectionsFor(MediaType.anime)) s.title: true,
};

final kAnimePlanetMangaSections = {
  for (final s in animePlanetSectionsFor(MediaType.manga)) s.title: true,
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
