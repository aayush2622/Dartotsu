import 'package:flutter/widgets.dart';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Model/SearchResults.dart';
import '../ExtensionServices.dart';
import '../Widgets/ExtensionSourceBadge.dart';

class ExtensionSearchView extends SearchScreenView {
  @override
  List<MediaType> get types => const [MediaType.anime, MediaType.manga];

  @override
  Widget? overlay(Media media) => extensionSourceBadge(media);

  @override
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec.none;

  @override
  Future<SearchResults?> search(SearchResults query) async {
    final anime =
        query.type != SearchType.MANGA && query.type != SearchType.NOVEL;
    final itemType = itemTypeFor(anime: anime);
    final term = query.search?.trim() ?? '';

    await ensureSourcesReady(itemType);
    final sources = loadedSources(itemType);
    if (term.isEmpty || sources.isEmpty) {
      return query
        ..results = const []
        ..hasNextPage = false;
    }

    final page = query.page ?? 1;
    final results = <Media>[];
    var hasNext = false;

    for (final pages in await Future.wait(
      sources.map((s) => _search(s, term, page, anime)),
    )) {
      if (pages == null) continue;
      hasNext |= pages.$1;
      results.addAll(pages.$2);
    }

    return query
      ..results = results
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
