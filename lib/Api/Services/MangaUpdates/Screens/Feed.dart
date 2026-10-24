import '../../../../Core/Services/LayoutPref.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Auth.dart';
import '../Prefs.dart';
import '../Queries.dart';

class MangaUpdatesFeedView extends FeedScreenView {
  MangaUpdatesFeedView(super.service);

  @override
  int sectionType(MediaType type, String title) =>
      title == 'Trending Now' ? 1 : 0;

  @override
  List<int> skeleton(MediaType type) => [
    for (final s in applyLayout(
      mangaUpdatesSectionsFor(type),
      (s) => s.title,
      MangaUpdatesPref.feedLayout.value,
    ))
      sectionType(type, s.title),
  ];

  @override
  List<FeedChip> chips(MediaType type) => type == MediaType.novel
      ? const []
      : [
          FeedChip('manga', getString.manga),
          FeedChip('manhwa', getString.manhwa),
          FeedChip('manhua', getString.manhua),
        ];

  @override
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) {
    final formatName = chip.id[0].toUpperCase() + chip.id.substring(1).toLowerCase();
    final section = MangaUpdatesSection('Top $formatName', {
      'type': [formatName],
      'orderby': 'score',
    });
    return mangaUpdatesAuth.queries.sectionPage(section);
  }

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    final queries = mangaUpdatesAuth.queries;
    return sectionWidgets(
      queries.browseJobsFor(type),
      build: (title, media) {
        final section = mangaUpdatesSectionsFor(
          type,
        ).firstWhere((s) => s.title == title);
        return ScreenWidget.media(
          title,
          media,
          sectionType: sectionType(type, title),
          onLoadMore: (page) => queries.sectionPage(section, page: page),
        );
      },
    );
  }
}
