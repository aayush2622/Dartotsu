import 'package:collection/collection.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Model/SearchResults.dart';
import '../../../Model/Setting.dart';
import '../../../Screen/Extension/Widgets/ExtensionSourcesRail.dart';
import 'ExtensionServices.dart';
import 'Widgets/ExtensionServiceSheet.dart';

String railTitle(Source source) => 'Popular on ${source.name}';

class ExtensionHomeView extends LocalHomeView {
  ExtensionHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() async* {
    yield const [ScreenWidget.extra(ExtensionSourcesRail())];
    final sections = filterUninstalled(await localSections());
    yield [
      const ScreenWidget.extra(ExtensionSourcesRail()),
      for (final e in sections.entries) ScreenWidget.media(e.key, e.value),
    ];
  }
}

class ExtensionFeedView extends FeedScreenView {
  final MediaService service;

  ExtensionFeedView(this.service);

  @override
  List<SectionJob> jobs(MediaType type) {
    final anime = type.isVideo;
    return [
      () async => filterUninstalled(
        service.localStore(anime: anime).sections(anime: anime),
      ),
      for (final source in loadedSources(itemTypeOf(type)))
        () => _popular(source, anime),
    ];
  }

  @override
  SectionsStream sectionsStream(MediaType type) async* {
    await ensureSourcesReady(itemTypeOf(type));
    yield* runSectionJobs(jobs(type), parallel: parallelJobs(type));
  }

  @override
  Future<List<Media>?> loadMore(
    MediaType type,
    String section,
    int page,
  ) async {
    final source = loadedSources(
      itemTypeOf(type),
    ).firstWhereOrNull((s) => railTitle(s) == section);
    if (source == null) return null;
    final pages = await source.methods.getPopular(page);
    return pages.toMedia(isAnime: type.isVideo, source: source);
  }

  Future<SectionMap> _popular(Source source, bool anime) async {
    final pages = await source.methods.getPopular(1);
    final media = pages.toMedia(isAnime: anime, source: source);
    return media.isEmpty ? const {} : {railTitle(source): media};
  }
}

class ExtensionDetailView implements DetailScreenView {
  @override
  Future<Media?> details(Media media) async {
    final source = media.sourceData;
    if (source == null) return media;

    final detail = await source.methods.getDetail(
      DMedia.withUrl(media.shareLink),
    );

    media.description = detail.description?.isNotEmpty == true
        ? detail.description
        : media.description;
    media.cover = detail.cover?.isNotEmpty == true ? detail.cover : media.cover;
    if (detail.genre?.isNotEmpty ?? false) media.genres = detail.genre!;

    final units = detail.episodes?.length;
    if (units != null && units > 0) {
      media.anime?.totalEpisodes = units;
      media.manga?.totalChapters = units;
    }
    return media;
  }
}

class ExtensionSearchView implements SearchScreenView {
  @override
  List<MediaType> get types => const [MediaType.anime, MediaType.manga];

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

class ExtensionSettingsView implements SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) => [
    for (final (label, type, icon) in const [
      ('Anime', ItemType.anime, Icons.movie_filter_rounded),
      ('Manga', ItemType.manga, Icons.menu_book_rounded),
    ])
      Setting.normal(
        name: '$label service',
        description: _description(type),
        icon: icon,
        isActivity: true,
        onClick: () => showExtensionServiceSheet(context, type),
      ),
  ];

  String _description(ItemType type) {
    final service = extensionServiceFor(type);
    if (service == null) return 'No service supports ${type.name}';
    final loaded = loadedSources(type).length;
    final installed = installedSources(type).length;
    return '${service.name} · $loaded of $installed sources loading';
  }
}
