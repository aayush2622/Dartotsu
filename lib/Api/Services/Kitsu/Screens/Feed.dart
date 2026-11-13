import '../../../../Model/SectionLayout.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/LayoutPref.dart';
import '../Auth.dart';
import '../Prefs.dart';
import '../Queries.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

class KitsuFeedView extends FeedScreenView {
  KitsuFeedView(super.service);

  @override
  SectionLayout sectionType(MediaType type, String title) => switch (title) {
    'Trending Now' => SectionLayout.carousel,
    'Most Popular' => SectionLayout.banner,
    'Upcoming' || 'Top Novels' => SectionLayout.rows,
    _ => SectionLayout.shelf,
  };

  @override
  List<SectionLayout> skeleton(MediaType type) => [
    for (final s in applyLayout(
      kitsuSections(anime: type.isVideo),
      (s) => s.title,
      (type.isVideo ? KitsuPref.animeLayout : KitsuPref.mangaLayout).value,
    ))
      sectionType(type, s.title),
  ];

  @override
  List<FeedChip> chips(MediaType type) => type.isVideo
      ? [
          FeedChip('previous', getString.previousSeason),
          FeedChip('current', getString.thisSeason),
          FeedChip('next', getString.nextSeason),
        ]
      : [
          FeedChip('manga', getString.manga),
          FeedChip('manhwa', getString.manhwa),
          FeedChip('manhua', getString.manhua),
          FeedChip('novel', getString.novels),
        ];

  @override
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) {
    final queries = kitsuAuth.queries;
    if (!type.isVideo) return queries.topPicks(chip.id);
    return queries.seasonPicks(switch (chip.id) {
      'previous' => -1,
      'next' => 1,
      _ => 0,
    });
  }

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    final anime = type.isVideo;
    final sections = kitsuSections(anime: anime);
    final queries = kitsuAuth.queries;
    return sectionWidgets(
      queries.browseJobs(anime: anime),
      build: (title, media) {
        final section = sections.firstWhere((s) => s.title == title);
        return ScreenWidget.media(
          title,
          media,
          sectionType: sectionType(type, title),
          onLoadMore: (page) => queries.sectionPage(section, anime, page: page),
        );
      },
    );
  }
}
