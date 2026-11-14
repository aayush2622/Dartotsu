import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Model/SectionLayout.dart';
import '../Auth.dart';
import '../Queries.dart';

class TraktFeedView extends FeedScreenView {
  TraktFeedView(super.service);

  @override
  SectionLayout sectionType(MediaType type, String title) {
    if (title.startsWith('Most Watched') || title == 'Box Office') {
      return SectionLayout.banner;
    }
    return title.startsWith('Trending')
        ? SectionLayout.carousel
        : SectionLayout.shelf;
  }

  @override
  List<SectionLayout> skeleton(MediaType type) => [
    for (final s in traktAuth.queries.shownSections(type))
      sectionType(type, s.title),
  ];

  static const _chipSections = {
    MediaType.movie: {
      'trending': 'Trending Movies',
      'popular': 'Popular Movies',
      'anticipated': 'Anticipated Movies',
    },
    MediaType.series: {
      'trending': 'Trending Shows',
      'popular': 'Popular Shows',
      'anime': 'Trending Anime',
    },
  };

  @override
  List<FeedChip> chips(MediaType type) => [
    for (final id in _chipSections[type]?.keys ?? const <String>[])
      FeedChip(id, switch (id) {
        'trending' => getString.trending,
        'popular' => getString.popular,
        'anticipated' => getString.anticipated,
        _ => getString.anime,
      }),
  ];

  @override
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) async {
    final title = _chipSections[type]?[chip.id];
    final section = traktSections(type).where((s) => s.title == title);
    if (section.isEmpty) return null;
    final items = await traktAuth.queries.sectionPage(section.first);
    return items.take(15).toList();
  }

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    final queries = traktAuth.queries;
    return sectionWidgets(
      queries.browseJobsFor(type),
      build: (title, media) {
        final section = traktSections(type).firstWhere((s) => s.title == title);
        return ScreenWidget.media(
          title,
          media,
          sectionType: sectionType(type, title),
          onLoadMore: section.paged
              ? (page) => queries.sectionPage(section, page: page)
              : null,
        );
      },
    );
  }
}
