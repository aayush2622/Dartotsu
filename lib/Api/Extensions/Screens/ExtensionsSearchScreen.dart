import 'package:dartotsu/Api/Sources/Eval/dart/model/m_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/SearchResults.dart';
import '../../../Functions/GetExtensions.dart';
import '../../../Services/Screens/BaseSearchScreen.dart';
import '../../../logger.dart';
import '../../Sources/Model/Manga.dart';
import '../../Sources/Search/search.dart' as s;

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
    var sources = await Extensions.getSortedExtension(
      searchResults.value.type == SearchType.ANIME
          ? ItemType.anime
          : searchResults.value.type == SearchType.MANGA
              ? ItemType.manga
              : ItemType.novel,
    );
    for (var source in sources) {
      tasks.add(
        () async {
          try {
            var result = (await s.search(
              query: searchResults.value.search ?? '',
              page: searchResults.value.page ?? 1,
              source: source,
              filterList: [],
            ))
                ?.toMedia(
                    isAnime: searchResults.value.type == SearchType.ANIME
                        ? true
                        : false,
                    source: source);
            if (result != null && result.isNotEmpty) {
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
