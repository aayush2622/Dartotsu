import '../../../../Model/SectionLayout.dart';
import '../../../../Core/Services/LayoutPref.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Auth.dart';
import '../Prefs.dart';
import '../Queries.dart';

class ComickFeedView extends FeedScreenView {
  ComickFeedView(super.service);

  @override
  SectionLayout sectionType(MediaType type, String title) =>
      trendingCarousel(title);

  @override
  List<SectionLayout> skeleton(MediaType type) => [
    for (final s in applyLayout(
      comickSectionsFor(type),
      (s) => s.title,
      ComickPref.feedLayoutFor(type).value,
    ))
      sectionType(type, s.title),
  ];

  @override
  List<FeedChip> chips(MediaType type) => type == MediaType.manga
      ? [
          FeedChip('manga', getString.manga),
          FeedChip('manhwa', getString.manhwa),
          FeedChip('manhua', getString.manhua),
        ]
      : const [];

  @override
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) =>
      comickAuth.queries.countryPicks(switch (chip.id) {
        'manhwa' => 'kr',
        'manhua' => 'cn',
        _ => 'jp',
      });

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    final queries = comickAuth.queries;
    return sectionWidgets(
      queries.browseJobsFor(type),
      build: (title, media) {
        final section = comickSectionsFor(type)
            .firstWhere((s) => s.title == title);
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
