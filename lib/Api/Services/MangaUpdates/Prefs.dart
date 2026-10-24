import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';

const kMangaUpdatesHomeSections = <String, bool>{
  'Continue Reading': true,
  'Reading': true,
  'Wish List': true,
  'Complete': true,
  'On Hold': true,
  'Unfinished': true,
  'Trending Now': true,
  'Most Popular': true,
  'Top Rated': true,
  'Latest Releases': true,
};

const kMangaUpdatesFeedSections = <String, bool>{
  'Trending Now': true,
  'Most Popular': true,
  'Top Rated': true,
  'Latest Releases': true,
  'Top Manhwa': true,
  'Top Manhua': true,
};

class MangaUpdatesPref {
  MangaUpdatesPref._();

  static const token = Pref('mangaUpdatesToken', '', PrefLocation.PROTECTED);
  static const username = Pref('mangaUpdatesUsername', '', PrefLocation.OTHER);

  static const hideNsfw = Pref('mangaUpdatesHideNsfw', true, PrefLocation.OTHER);

  static final homeLayout = layoutPref(
    'mangaUpdatesHomeLayout',
    kMangaUpdatesHomeSections,
  );
  static final feedLayout = layoutPref(
    'mangaUpdatesFeedLayout',
    kMangaUpdatesFeedSections,
  );
}
