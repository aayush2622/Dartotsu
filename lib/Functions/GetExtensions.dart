import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Preferences/PrefManager.dart';
import '../api/Mangayomi/Extensions/extensions_provider.dart';
import '../api/Mangayomi/Extensions/fetch_anime_sources.dart';
import '../api/Mangayomi/Extensions/fetch_manga_sources.dart';
import '../api/Mangayomi/Extensions/fetch_novel_sources.dart';
import '../api/Mangayomi/Model/Manga.dart';
import '../api/Mangayomi/Model/Source.dart';

class Extensions {
  static final _provider = ProviderContainer();

  static Future<void> init() async {
    await Future.wait([
      _provider
          .read(fetchAnimeSourcesListProvider(id: null, reFresh: false).future),
      _provider
          .read(fetchMangaSourcesListProvider(id: null, reFresh: false).future),
      _provider
          .read(fetchNovelSourcesListProvider(id: null, reFresh: false).future),
    ]);
  }

  static Future<void> refresh(ItemType itemType) async {
    if (itemType == ItemType.manga) {
      return await _provider
          .read(fetchMangaSourcesListProvider(id: null, reFresh: true).future);
    } else if (itemType == ItemType.anime) {
      return await _provider
          .read(fetchAnimeSourcesListProvider(id: null, reFresh: true).future);
    } else {
      return await _provider
          .read(fetchNovelSourcesListProvider(id: null, reFresh: true).future);
    }
  }

  static Future<List<Source>> getSortedExtension(ItemType itemType) async {
    final sourcesAsyncValue =
        await _provider.read(getExtensionsStreamProvider(itemType).future);

    final ids =
        loadCustomData<List<int>?>('sortedExtensions_${itemType.name}') ?? [];
    final installedSources =
        sourcesAsyncValue.where((source) => source.isAdded!).toList();

    final sortedInstalledSources = [
      ...installedSources.where((source) => ids.contains(source.id)).toList()
        ..sort((a, b) => ids.indexOf(a.id!).compareTo(ids.indexOf(b.id!))),
      ...installedSources.where((source) => !ids.contains(source.id)),
    ];
    return sortedInstalledSources;
  }
}
