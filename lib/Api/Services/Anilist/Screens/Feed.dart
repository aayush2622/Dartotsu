import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Model/SearchResults.dart';
import '../AnilistAuth.dart';
import 'Anime.dart';
import 'Manga.dart';

abstract class AnilistTypeFeed {
  MediaType get type;

  SearchResults? sectionQuery(SearchResults base, String section);

  List<SectionJob> jobs() => [
    if (anilistAuth.isLoggedIn)
      () => anilistAuth.queries.getMediaLists(anime: type.isVideo),
    ...anilistAuth.queries.browseJobs(anime: type.isVideo),
  ];
}

class AnilistFeedView extends FeedScreenView {
  AnilistFeedView(super.service);

  final _anime = AnilistAnimeFeed();
  final _manga = AnilistMangaFeed();

  AnilistTypeFeed _of(MediaType type) => type.isVideo ? _anime : _manga;

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) => sectionWidgets(
    _of(type).jobs(),
    parallel: false,
    build: (title, media) => ScreenWidget.media(
      title,
      media,
      spotlight: title == 'Trending Now',
      onLoadMore: (page) => _loadMore(type, title, page),
    ),
  );

  Future<List<Media>?> _loadMore(MediaType type, String section, int page) {
    final base = SearchResults(type: type.searchType, page: page, perPage: 30);
    final query = section == 'Trending Now'
        ? (base..sort = 'TRENDING_DESC')
        : _of(type).sectionQuery(base, section);
    if (query == null) return Future.value(null);
    return anilistAuth.queries.search(query).then((r) => r?.results);
  }
}
