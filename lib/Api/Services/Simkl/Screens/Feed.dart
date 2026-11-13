import '../../../../Model/SectionLayout.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../Auth.dart';
import '../Queries.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

class SimklFeedView extends FeedScreenView {
  SimklFeedView(super.service);

  @override
  SectionLayout sectionType(MediaType type, String title) {
    if (title.startsWith('Most Watched') || title == 'Most Popular') {
      return SectionLayout.banner;
    }
    return title == 'Trending Now' || title == 'Trending Movies Today'
        ? SectionLayout.carousel
        : SectionLayout.shelf;
  }

  @override
  List<SectionLayout> skeleton(MediaType type) => [
    for (final s in simklLayoutSections(type)) sectionType(type, s.title),
  ];

  @override
  List<FeedChip> chips(MediaType type) => type == MediaType.anime
      ? [
          FeedChip('today', getString.calendarToday),
          FeedChip('week', getString.thisWeek),
          FeedChip('month', getString.thisMonth),
        ]
      : [
          FeedChip('movies', getString.movies),
          FeedChip('tv', getString.shows),
          FeedChip('kdrama', getString.koreanDramas),
          FeedChip('cdrama', getString.chineseDramas),
          FeedChip('jdrama', getString.japaneseDramas),
        ];

  @override
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) {
    final section = switch (chip.id) {
      'today' ||
      'week' ||
      'month' => SimklSection(chip.label, 'anime/${chip.id}_100'),
      'kdrama' => SimklSection.country(chip.label, 'kr'),
      'cdrama' => SimklSection.country(chip.label, 'cn'),
      'jdrama' => SimklSection.country(chip.label, 'jp'),
      final kind => SimklSection(chip.label, '$kind/today_100'),
    };
    return simklAuth.queries
        .trending(section)
        .then((items) => items.take(12).toList());
  }

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    final sections = simklSections(type);
    final queries = simklAuth.queries;
    return sectionWidgets(
      queries.jobs(type),
      build: (title, media) {
        final section = sections.firstWhere((s) => s.title == title);
        return ScreenWidget.media(
          title,
          media,
          sectionType: sectionType(type, title),
          onLoadMore: (page) => queries.trending(section, page: page),
        );
      },
    );
  }
}
