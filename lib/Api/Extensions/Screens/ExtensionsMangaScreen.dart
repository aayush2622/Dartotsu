import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Media/Widgets/Chips.dart';
import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../Functions/Function.dart';
import '../../../Services/Screens/BaseMangaScreen.dart';
import '../../../Logger.dart';

class ExtensionsMangaScreen extends BaseMangaScreen {
  var data = Rxn<Map<String, List<Media>>>({});

  @override
  get paging => false;

  @override
  Future<void> loadAll() async {
    resetPageData();
    final manager = Get.find<ExtensionManager>().currentManager;

    var sources = [
      ...(manager.getSortedInstalledExtension(ItemType.manga)).value.take(4),
      ...(manager.getSortedInstalledExtension(ItemType.novel)).value.take(4),
    ];
    _buildSections(sources);
    for (var source in sources) {
      try {
        var result = (await source.methods.getLatestUpdates(1))
            .toMedia(isAnime: false, source: source);

        if (result.isNotEmpty) {
          trending.value = result;
          return;
        }
      } catch (e) {
        Logger.log('Source ${source.name} failed: $e');
        continue;
      }
    }
  }

  Future<void> _buildSections(List<Source> sources) async {
    List<Future<void>> tasks = [];
    for (var source in sources) {
      tasks.add(
        () async {
          try {
            var result = (await source.methods.getLatestUpdates(1))
                .toMedia(isAnime: false, source: source);
            if (result.isNotEmpty) {
              data.value = {...data.value!, source.name ?? 'Unknown': result};
            }
          } catch (e) {
            Logger.log('Failed to load data ${source.name}, error: $e');
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
      const SizedBox(height: 128),
    ];
  }

  @override
  List<ChipData> get trendingChips => [];

  @override
  int get refreshID => RefreshId.Extensions.mangaPage;

  void resetPageData() {
    data.value = {};
  }
}
