import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../Api/Sources/Extensions/extensions_provider.dart';
import '../Api/Sources/Extensions/fetch_anime_sources.dart';
import '../Api/Sources/Extensions/fetch_manga_sources.dart';
import '../Api/Sources/Extensions/fetch_novel_sources.dart';
import '../Api/Sources/Model/Manga.dart';
import '../Api/Sources/Model/Source.dart';
import '../Preferences/PrefManager.dart';
import '../Theme/LanguageSwitcher.dart';
import '../Widgets/AlertDialogBuilder.dart';
import 'Function.dart';

class Extensions {
  static final _provider = ProviderContainer();
  static final animeRepo = ''.obs;
  static final mangaRepo = ''.obs;
  static final novelRepo = ''.obs;

  static RxBool isInitialized = false.obs;

  static Future<void> init() async {
    try {
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
      isInitialized.value = true;
    } catch (_) {}
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
    while (!isInitialized.value) {
      await Future.delayed(const Duration(milliseconds: 100));
    }

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
    repo.trim();
    if (repo.endsWith('index.min.json')) {
      snackString('Dartotsu does not support Aniyomi repo');
      return;
    }
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

  static Future<void> addRepo(BuildContext context, ItemType type) async {
    var text = '';
    var theme = Theme.of(context).colorScheme;
    AlertDialogBuilder(context)
      ..setTitle('${type.name.capitalize} ${getString.source}')
      ..setCustomView(
        Obx(
          () {
            var installedRepo = type == ItemType.anime
                ? animeRepo.value
                : type == ItemType.manga
                    ? mangaRepo.value
                    : novelRepo.value;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (installedRepo.isNotEmpty) ...[
                  GestureDetector(
                    onTap: () => AlertDialogBuilder(context)
                      ..setTitle('Remove Repo')
                      ..setMessage('You sure you want to remove the repo')
                      ..setPositiveButton(
                        getString.yes,
                        () => removeRepo(type),
                      )
                      ..setNegativeButton(getString.no, null)
                      ..show(),
                    onLongPress: () => copyToClipboard(installedRepo),
                    child: Text(
                      installedRepo,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        color: theme.onSurface,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                ],
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Repo URL',
                  ),
                  onChanged: (value) => text = value,
                ),
              ],
            );
          },
        ),
      )
      ..setPositiveButton(
        getString.ok,
        () {
          if (text.isEmpty) return;
          if (text.endsWith('index.min.json')) {
            AlertDialogBuilder(context)
              ..setTitle('Invalid Repo')
              ..setMessage('Dartotsu does not support Aniyomi repo')
              ..setPositiveButton(getString.ok, null)
              ..show();
          } else {
            setRepo(type, text);
            Navigator.of(context).pop();
          }
        },
      )
      ..setNegativeButton(getString.cancel, () => Navigator.of(context).pop())
      ..popOnFinish(false)
      ..show();
  }
}
