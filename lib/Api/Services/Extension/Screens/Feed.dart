import 'package:collection/collection.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../ExtensionServices.dart';
import '../Widgets/ExtensionMediaSection.dart';

String _railTitle(Source source) => 'Popular on ${source.name}';

class ExtensionFeedView extends FeedScreenView {
  ExtensionFeedView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) async* {
    final anime = type.isVideo;
    final itemType = itemTypeOf(type);
    await ensureSourcesReady(itemType);
    yield* sectionWidgets(
      [
        () async => filterUninstalled(
          service.localStore(anime: anime).sections(anime: anime),
        ),
        for (final source in loadedSources(itemType))
          () => _popular(source, anime),
      ],
      build: (title, media) => ScreenWidget.media(
        title,
        media,
        section: (data) => ExtensionMediaSection(data: data),
        onLoadMore: (page) => _loadMore(type, title, page),
      ),
    );
  }

  Future<List<Media>?> _loadMore(
    MediaType type,
    String section,
    int page,
  ) async {
    final source = loadedSources(
      itemTypeOf(type),
    ).firstWhereOrNull((s) => _railTitle(s) == section);
    if (source == null) return null;
    final pages = await source.methods.getPopular(page);
    return pages.toMedia(isAnime: type.isVideo, source: source);
  }

  Future<SectionMap> _popular(Source source, bool anime) async {
    final pages = await source.methods.getPopular(1);
    final media = pages.toMedia(isAnime: anime, source: source);
    return media.isEmpty ? const {} : {_railTitle(source): media};
  }
}
