import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../Services/Model/Media.dart';
import '../../../DataClass/SearchResults.dart';
import '../../../Services/Screens/BaseSearchScreen.dart';
import '../../../Logger.dart';

class ExtensionsSearchScreen extends BaseSearchScreen {
  var data = Rxn<Map<String, List<Media>>>({});

  @override
  List<SearchType> get searchTypes =>
      [SearchType.ANIME, SearchType.MANGA, SearchType.NOVEL];

  @override
  void init({SearchResults? s}) {
    resetData();
    super.init(s: s);
  }

  @override
  bool get paging => false;

  @override
  Future<void> search() async {
    showHistory.value = false;
    data.value = null;
    canLoadMore.value = true;
    loadMore.value = true;
    searchResults.value = searchResults.value..page = 1;
    await _buildSections();
  }

  Future<void> _buildSections() async {
    List<Future<void>> tasks = [];
    final manager = Get.find<ExtensionManager>().currentManager;
    var sources = manager
        .getSortedInstalledExtension(
          searchResults.value.type == SearchType.ANIME
              ? ItemType.anime
              : searchResults.value.type == SearchType.MANGA
                  ? ItemType.manga
                  : ItemType.novel,
        )
        .value;
    for (var source in sources) {
      tasks.add(
        () async {
          try {
            var result = (await source.methods.search(
              searchResults.value.search ?? '',
              searchResults.value.page ?? 1,
              [],
            ))
                .toMedia(
                    isAnime: searchResults.value.type == SearchType.ANIME
                        ? true
                        : false,
                    source: source);
            if (result.isNotEmpty) {
              data.value = {...?data.value, source.name ?? 'Unknown': result};
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
  List<Widget> searchWidget(BuildContext context) {
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

  void resetData() {
    data.value = {};
  }
}
