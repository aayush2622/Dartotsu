import '../../../../Model/SectionLayout.dart';
import '../../../../Core/Services/LayoutPref.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Screen/MangaBaka/Components/CommunityShelves.dart';
import '../Auth.dart';
import '../Prefs.dart';
import '../Queries.dart';

class MangaBakaFeedView extends FeedScreenView {
  MangaBakaFeedView(super.service);

  @override
  SectionLayout sectionType(MediaType type, String title) =>
      title == 'Trending Now' ? SectionLayout.carousel : SectionLayout.shelf;

  @override
  List<SectionLayout> skeleton(MediaType type) => [
    for (final s in applyLayout(
      mangaBakaSectionsFor(type),
      (s) => s.title,
      MangaBakaPref.feedLayoutFor(type).value,
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
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) =>
      mangaBakaAuth.queries.typePicks(chip.id);

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    final queries = mangaBakaAuth.queries;
    final extras = type == MediaType.manga
        ? [const ScreenWidget.extra(CommunityShelves())]
        : const <ScreenWidget>[];
    return sectionWidgets(
      queries.browseJobsFor(type),
      build: (title, media) {
        final section = mangaBakaSectionsFor(type)
            .firstWhere((s) => s.title == title);
        return ScreenWidget.media(
          title,
          media,
          sectionType: sectionType(type, title),
          onLoadMore: (page) => queries.sectionPage(section, page: page),
        );
      },
    ).map((widgets) => [...widgets, ...extras]);
  }
}
