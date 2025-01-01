import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/api/Mangayomi/Eval/dart/model/m_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../DataClass/Media.dart';
import '../../Services/Screens/BaseAnimeScreen.dart';
import '../Mangayomi/Extensions/extensions_provider.dart';
import '../Mangayomi/Model/Manga.dart';
import '../Mangayomi/Model/Source.dart';
import '../Mangayomi/Search/search.dart';

class OtherAnimeScreen extends BaseAnimeScreen {
  var data = Rxn<Map<String, List<Media>>>({});

  @override
  get paging => false;

  @override
  Future<void> loadAll() async {
    resetPageData();
    final container = ProviderContainer();
    final sourcesAsyncValue =
        await container.read(getExtensionsStreamProvider(ItemType.anime).future);
    final installedSources = sourcesAsyncValue
        ..where((source) => source.isAdded!)
        ..reversed;
    var result = (await search(
      source: installedSources.first,
      page: 1,
      query: '',
      filterList: [],
    ))
        ?.toMedia();
    trending.value = result;
    _buildSections(installedSources);
  }

  Future<void> _buildSections(List<Source> s) async {
    for (var source in s) {
      if (source.name == s.first.name || source.name == 'Kaido.to') continue;

      var result = (await search(
        source: source,
        page: 1,
        query: '',
        filterList: [],
      ))
          ?.toMedia();
      if (result != null) {
        data.value = {
          ...data.value!,
          source.name!: result,
        };
      }
    }
  }

  @override
  void loadTrending(int page) {}

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
                onMediaTap: (_, m) {
                  snackString(m.cover);
                },
              ),
          ],
        ),
    ];
  }

  @override
  int get refreshID => 90;

  @override
  void resetPageData() {
    data.value = {};
  }
}
