import '../../../Model/MediaType.dart';
import 'Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';

const kMangaUpdatesHomeSections = <String, bool>{
  'Continue Reading': true,
  'Planned Manga': true,
  'On Hold': true,
  'Dropped': true,
  kHiddenMediaTitle: false,
};

final kMangaUpdatesFeedSections = {
  for (final s in mangaUpdatesSectionsFor(MediaType.manga)) s.title: true,
};

class MangaUpdatesPref {
  MangaUpdatesPref._();

  static const token = Pref('mangaUpdatesToken', '', PrefLocation.PROTECTED);
  static const username = Pref('mangaUpdatesUsername', '', PrefLocation.OTHER);

  static const hideNsfw = Pref(
    'mangaUpdatesHideNsfw',
    true,
    PrefLocation.OTHER,
  );

  static final homeLayout = layoutPref(
    'mangaUpdatesHomeLayout',
    kMangaUpdatesHomeSections,
  );
  static final feedLayout = layoutPref(
    'mangaUpdatesFeedLayout',
    kMangaUpdatesFeedSections,
  );
}
