import 'package:dantotsu/api/Mangayomi/Eval/dart/model/m_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Services/Screens/BaseMangaScreen.dart';
import '../../../logger.dart';
import '../../Mangayomi/Extensions/extensions_provider.dart';
import '../../Mangayomi/Model/Manga.dart';
import '../../Mangayomi/Model/Source.dart';
import '../../Mangayomi/Search/get_popular.dart';

class ExtensionsMangaScreen extends BaseMangaScreen {
  var data = Rxn<Map<String, List<Media>>>({});

  @override
  get paging => false;

  @override
  Future<void> loadAll() async {
    resetPageData();
    final container = ProviderContainer();
    final sourcesAsyncValue = await container
        .read(getExtensionsStreamProvider(ItemType.manga).future);

    final ids = loadCustomData<List<int>?>('sortedExtensions_${ItemType.manga.name}') ?? [];
    final installedSources = sourcesAsyncValue
        .where((source) => source.isAdded!)
        .toList();

    final sortedInstalledSources = [
      ...installedSources
          .where((source) => ids.contains(source.id))
          .toList()
        ..sort((a, b) => ids.indexOf(a.id!).compareTo(ids.indexOf(b.id!))),
      ...installedSources.where((source) => !ids.contains(source.id)),
    ];

    _buildSections(sortedInstalledSources);
    for (var source in sortedInstalledSources) {
      try {
        var result = (await getLatest(
          source: source,
          page: 1,
        ))
            ?.toMedia(isAnime: false, source: source);

        if (result != null && result.isNotEmpty) {
          trending.value = result;
          return;
        }
      } catch (e) {
        Logger.log('Source ${source.name} failed: ${e.toString()}');
      }
    }

  }

  Future<void> _buildSections(List<Source> sources) async {
    List<Future<void>> tasks = [];
    var limit = 6;
    for (var source in sources) {
      if (limit-- <= 0) break;
      tasks.add(
        () async {
          try {
            var result = (await getLatest(
              source: source,
              page: 1,
            ))
                ?.toMedia(isAnime: false, source: source);
            if (result != null && result.isNotEmpty) {
              data.value = {
                ...data.value!,
                source.name!: result,
              };
            }
          } catch (e) {
            Logger.log(
                'Failed to load data for source: ${source.name}, error: $e');
          }
        }(),
      );
    }

    await Future.wait(tasks);
  }

  @override
  void loadTrending(String type) {}

  @override
  List<Widget> mediaContent(BuildContext context) {
    return [
      if (data.value == null || data.value!.isEmpty || data.value == {})
        const Center(
          child: CircularProgressIndicator(),
        )
      else
        Column(
          children: [
            for (var entry in data.value!.entries)
              MediaSection(
                context: context,
                type: 0,
                title: entry.key,
                mediaList: entry.value,
              ),
          ],
        ),
    ];
  }

  @override
  int get refreshID => 91;

  void resetPageData() {
    data.value = {};
  }
}
