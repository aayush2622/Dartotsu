import '../../../../Core/Services/LayoutPref.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Model/SectionLayout.dart';
import '../Auth.dart';
import '../Prefs.dart';
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
    for (final s in applyLayout(
      traktSections(type),
      (s) => s.title,
      TraktPref.feedLayoutFor(type).value,
    ))
      sectionType(type, s.title),
  ];

  @override
  List<FeedChip> chips(MediaType type) => type == MediaType.movie
      ? [
          FeedChip('trending', getString.trending),
          FeedChip('popular', getString.popular),
          FeedChip('anticipated', getString.anticipated),
        ]
      : [
          FeedChip('trending', getString.trending),
          FeedChip('popular', getString.popular),
          FeedChip('anime', getString.anime),
        ];

  @override
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) async {
    final movie = type == MediaType.movie;
    final section = switch (chip.id) {
      'popular' => TraktSection(
        chip.label,
        movie ? '/movies/popular' : '/shows/popular',
      ),
      'anticipated' => TraktSection(chip.label, '/movies/anticipated'),
      'anime' => TraktSection(chip.label, '/shows/trending', const {
        'genres': 'anime',
      }),
      _ => TraktSection(
        chip.label,
        movie ? '/movies/trending' : '/shows/trending',
      ),
    };
    final items = await traktAuth.queries.sectionPage(section);
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
