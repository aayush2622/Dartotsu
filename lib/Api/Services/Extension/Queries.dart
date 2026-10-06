import 'package:collection/collection.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Model/SearchResults.dart';
import 'Services.dart';

String _popularTitle(Source source) => 'Popular on ${source.name}';

String _latestTitle(Source source) => 'Latest on ${source.name}';

class ExtensionQueries extends Queries {
  @override
  Future<bool> getUserData() async => false;

  @override
  Future<Media?> getMedia(String id) async {
    for (final anime in const [true, false]) {
      final found = extensionStore(
        itemTypeFor(anime: anime),
      ).read().firstWhereOrNull((m) => m.id == id);
      if (found != null) return found;
    }
    return null;
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    final source = media.sourceData;
    if (source == null) return media;
    final detail = await source.methods.getDetail(
      DMedia.withUrl(media.shareLink),
    );
    if (detail.description?.isNotEmpty == true) {
      media.description = detail.description;
    }
    if (detail.cover?.isNotEmpty == true) media.cover = detail.cover;
    if (detail.genre?.isNotEmpty ?? false) media.genres = detail.genre!;
    final units = detail.episodes?.length;
    if (units != null && units > 0) {
      media.anime?.totalEpisodes = units;
      media.manga?.totalChapters = units;
    }
    return media;
  }

  @override
  List<SectionJob> homeJobs() => [
    for (final anime in const [true, false])
      () async => filterUninstalled(
        extensionStore(itemTypeFor(anime: anime)).sections(anime: anime),
      ),
  ];

  @override
  List<SectionJob> browseJobs({required bool anime}) =>
      browseJobsFor(itemTypeFor(anime: anime));

  List<SectionJob> browseJobsFor(ItemType type) {
    final anime = type == ItemType.anime;
    final latest = extensionDefaultFeedPref.rx.value == 'latest';
    return [
      for (final source in loadedSources(type))
        () => _rail(
          source,
          anime,
          latest ? _latestTitle(source) : _popularTitle(source),
          1,
          popular: !latest,
        ),
    ];
  }

  Future<SectionMap> _rail(
    Source source,
    bool anime,
    String title,
    int page, {
    required bool popular,
  }) async {
    final media = await _page(source, anime, page, popular: popular);
    return media.isEmpty ? const {} : {title: media};
  }

  Future<List<Media>> _page(
    Source source,
    bool anime,
    int page, {
    required bool popular,
  }) async {
    final pages = popular
        ? await source.methods.getPopular(page)
        : await source.methods.getLatestUpdates(page);
    return pages.toMedia(isAnime: anime, source: source);
  }

  Future<List<Media>?> loadMore(
    MediaType type,
    String section,
    int page,
  ) async {
    final sources = loadedSources(itemTypeOf(type));
    final popular = sources.firstWhereOrNull(
      (s) => _popularTitle(s) == section,
    );
    final source =
        popular ?? sources.firstWhereOrNull((s) => _latestTitle(s) == section);
    if (source == null) return null;
    return _page(source, type.isVideo, page, popular: popular != null);
  }

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) async => filterUninstalled(
    extensionStore(itemTypeFor(anime: anime)).sections(anime: anime),
  );

  @override
  Future<List<Media>> getCalendarData() async => const [];

  @override
  Future<bool> getGenresAndTags() async => false;

  @override
  Future<SearchResults?> search(SearchResults? results) async {
    if (results == null) return null;
    final anime =
        results.type != SearchType.MANGA && results.type != SearchType.NOVEL;
    final itemType = results.type == SearchType.NOVEL
        ? ItemType.novel
        : itemTypeFor(anime: anime);
    final term = results.search?.trim() ?? '';

    await ensureSourcesReady(itemType);
    final sources = loadedSources(itemType);
    if (term.isEmpty || sources.isEmpty) {
      return results
        ..results = const []
        ..hasNextPage = false;
    }

    final page = results.page ?? 1;
    final found = <Media>[];
    var hasNext = false;
    for (final pages in await Future.wait(
      sources.map((s) => _search(s, term, page, anime)),
    )) {
      if (pages == null) continue;
      hasNext |= pages.$1;
      found.addAll(pages.$2);
    }
    return results
      ..results = found
      ..hasNextPage = hasNext;
  }

  Future<(bool, List<Media>)?> _search(
    Source source,
    String term,
    int page,
    bool anime,
  ) async {
    try {
      final pages = await source.methods.search(term, page, const []);
      return (pages.hasNextPage, pages.toMedia(isAnime: anime, source: source));
    } catch (_) {
      return null;
    }
  }
}
