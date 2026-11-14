import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Model/SectionLayout.dart';
import '../Auth.dart';
import '../Queries.dart';

class TraktFeedView extends FeedScreenView {
  TraktFeedView(super.service);

  @override
  SectionLayout sectionType(MediaType type, String title) {
    if (title.startsWith('Most Watched') || title.startsWith('Popular')) {
      return SectionLayout.banner;
    }
    return title.startsWith('Trending')
        ? SectionLayout.carousel
        : SectionLayout.shelf;
  }

  @override
  List<SectionLayout> skeleton(MediaType type) => [
    for (final s in traktLayoutSections(type)) sectionType(type, s.title),
  ];

  @override
  List<FeedChip> chips(MediaType type) => type == MediaType.anime
      ? const [
          FeedChip('trending', 'Trending Anime'),
          FeedChip('popular_shows', 'Popular Shows'),
          FeedChip('popular_movies', 'Popular Movies'),
          FeedChip('anticipated', 'Anticipated'),
        ]
      : const [
          FeedChip('trending_movies', 'Trending Movies'),
          FeedChip('trending_shows', 'Trending Shows'),
          FeedChip('popular_movies', 'Popular Movies'),
          FeedChip('popular_shows', 'Popular Shows'),
          FeedChip('anticipated', 'Anticipated'),
        ];

  @override
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) {
    final section = switch (chip.id) {
      'trending' => const TraktSection(
        'Trending Anime',
        '/shows/trending',
        {'genres': 'anime'},
      ),
      'popular_shows' => type == MediaType.anime
          ? const TraktSection(
              'Popular Anime Shows',
              '/shows/popular',
              {'genres': 'anime'},
            )
          : const TraktSection('Popular Shows', '/shows/popular'),
      'popular_movies' => type == MediaType.anime
          ? const TraktSection(
              'Popular Anime Movies',
              '/movies/popular',
              {'genres': 'anime'},
            )
          : const TraktSection('Popular Movies', '/movies/popular'),
      'anticipated' => type == MediaType.anime
          ? const TraktSection(
              'Anticipated Anime',
              '/shows/anticipated',
              {'genres': 'anime'},
            )
          : const TraktSection('Anticipated', '/shows/anticipated'),
      'trending_movies' =>
        const TraktSection('Trending Movies', '/movies/trending'),
      'trending_shows' =>
        const TraktSection('Trending Shows', '/shows/trending'),
      _ => const TraktSection('Trending', '/shows/trending'),
    };
    return traktAuth.queries
        .trending(section)
        .then((items) => items.take(15).toList());
  }

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) async* {
    final sections = traktLayoutSections(type);
    final results = await Future.wait([
      for (final s in sections) traktAuth.queries.trending(s),
    ]);
    yield [
      for (var i = 0; i < sections.length; i++)
        if (results[i].isNotEmpty)
          ScreenWidget.media(
            sections[i].title,
            results[i],
            type: sectionType(type, sections[i].title),
          ),
    ];
  }
}
