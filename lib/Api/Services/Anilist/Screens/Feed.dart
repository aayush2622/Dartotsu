import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Model/SearchResults.dart';
import '../Auth.dart';
import '../Prefs.dart';
import 'Anime.dart';
import 'Manga.dart';

abstract class AnilistTypeFeed {
  MediaType get type;

  /// How the list called [title] renders: 0 card shelf, 1 carousel, 2 list
  /// rows, 3 banner rows.
  int typeOf(String title) => 0;

  /// The query that fetches further pages of [title]; null = no paging.
  SearchResults? sectionQuery(SearchResults base, String title);

  List<FeedChip> get chips => const [];

  Future<List<Media>?> chipMedia(FeedChip chip) async => null;

  List<SectionJob> jobs() =>
      anilistAuth.queries.browseJobs(anime: type.isVideo);
}

class AnilistFeedView extends FeedScreenView {
  AnilistFeedView(super.service);

  final _anime = AnilistAnimeFeed();
  final _manga = AnilistMangaFeed();

  AnilistTypeFeed _of(MediaType type) => type.isVideo ? _anime : _manga;

  @override
  int sectionType(MediaType type, String title) => _of(type).typeOf(title);

  @override
  List<FeedChip> chips(MediaType type) => _of(type).chips;

  @override
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) =>
      _of(type).chipMedia(chip);

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    final feed = _of(type);
    return sectionWidgets(
      feed.jobs(),
      parallel: AnilistPref.queryLoadMode.value == QueryLoadMode.sequential,
      build: (title, media) => ScreenWidget.media(
        title,
        media,
        sectionType: feed.typeOf(title),
        onLoadMore: (page) => _loadMore(feed, title, page),
      ),
    );
  }

  Future<List<Media>?> _loadMore(AnilistTypeFeed feed, String title, int page) {
    final base = SearchResults(
      type: feed.type.searchType,
      page: page,
      perPage: 30,
    );
    final query = feed.sectionQuery(base, title);
    if (query == null) return Future.value(null);
    return anilistAuth.queries.search(query).then((r) => r?.results);
  }
}
