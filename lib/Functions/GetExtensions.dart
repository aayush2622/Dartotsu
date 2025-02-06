import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../Preferences/PrefManager.dart';
import '../api/Sources/Extensions/extensions_provider.dart';
import '../api/Sources/Extensions/fetch_anime_sources.dart';
import '../api/Sources/Extensions/fetch_manga_sources.dart';
import '../api/Sources/Extensions/fetch_novel_sources.dart';
import '../api/Sources/Model/Manga.dart';
import '../api/Sources/Model/Source.dart';

class Extensions {
  static final _provider = ProviderContainer();
  static final animeRepo = ''.obs;
  static final mangaRepo = ''.obs;
  static final novelRepo = ''.obs;

  static Future<void> init() async {
    animeRepo.value = loadCustomData('animeRepo') ?? '';
    mangaRepo.value = loadCustomData('mangaRepo') ?? '';
    novelRepo.value = loadCustomData('novelRepo') ?? '';

    await Future.wait([
      if (animeRepo.value.isNotEmpty)
        _provider.read(
            fetchAnimeSourcesListProvider(id: null, reFresh: false).future),
      if (mangaRepo.value.isNotEmpty)
        _provider.read(
            fetchMangaSourcesListProvider(id: null, reFresh: false).future),
      if (novelRepo.value.isNotEmpty)
        _provider.read(
            fetchNovelSourcesListProvider(id: null, reFresh: false).future),
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

  static Future<void> setRepo(ItemType itemType, String repo) async {
    if (itemType == ItemType.manga) {
      mangaRepo.value = repo;
      saveCustomData('mangaRepo', repo);
      await _provider
          .read(fetchMangaSourcesListProvider(id: null, reFresh: true).future);
    } else if (itemType == ItemType.anime) {
      animeRepo.value = repo;
      saveCustomData('animeRepo', repo);
      await _provider
          .read(fetchAnimeSourcesListProvider(id: null, reFresh: true).future);
    } else {
      novelRepo.value = repo;
      saveCustomData('novelRepo', repo);
      await _provider
          .read(fetchNovelSourcesListProvider(id: null, reFresh: true).future);
    }
  }
  static Future<void> removeRepo(ItemType itemType) async {
    if (itemType == ItemType.manga) {
      mangaRepo.value = '';
      removeCustomData('mangaRepo');
    } else if (itemType == ItemType.anime) {
      animeRepo.value = '';
      removeCustomData('animeRepo');
    } else {
      novelRepo.value = '';
      removeCustomData('novelRepo');
    }
  }
}
