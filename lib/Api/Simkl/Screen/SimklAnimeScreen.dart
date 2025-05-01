import 'package:dartotsu/Adaptor/Media/Widgets/MediaSection.dart';
import 'package:dartotsu/Api/Simkl/Simkl.dart';
import 'package:dartotsu/Api/Simkl/SimklQueries.dart';
import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Media/Widgets/Chips.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Services/Screens/BaseAnimeScreen.dart';
import '../../../Theme/LanguageSwitcher.dart';

class SimklAnimeScreen extends BaseAnimeScreen {
  final SimklController Simkl;

  SimklAnimeScreen(this.Simkl);

  Future<void> getUserId() async {
    if (Simkl.token.isNotEmpty) {
      await Simkl.query!.getUserData();
    }
  }

  var popularAnime = Rxn<List<Media>>();
  var premiereAnime = Rxn<List<Media>>();
  var airingAnime = Rxn<List<Media>>();

  @override
  Future<void> loadAll() async {
    resetPageData();
    await getUserId();
    var list = await Simkl.query!.getAnimeList();
    _setMediaList(list);
  }

  void _setMediaList(Map<String, List<Media>> res) {
    trending.value = res["trendingAnime"];
    premiereAnime.value = res['Incoming'];
    airingAnime.value = res['Airing'];
    popularAnime.value = res["popularAnime"];
  }

  @override
  Future<void>? loadNextPage() async {
    page++;
    var result =
        await (Simkl.query as SimklQueries?)?.loadNextPage('anime', page);
    if (result != null) {
      canLoadMore.value = true;
      popularAnime.value = [...?popularAnime.value, ...result];
    } else {
      canLoadMore.value = false;
    }
    loadMore.value = true;
    return;
  }

  @override
  void loadTrending(int page) async {
    this.trending.value = null;
    var time = page == 1
        ? "today"
        : page == 0
            ? 'month'
            : 'week';
    var trending =
        await (Simkl.query as SimklQueries?)!.getTrending('anime', time: time);
    this.trending.value = trending;
  }

  @override
  List<Widget> mediaContent(BuildContext context) {
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: 'Incoming',
        pairTitle: 'Incoming',
        list: premiereAnime.value,
      ),
      MediaSectionData(
        type: 0,
        title: 'Airing',
        pairTitle: 'Airing',
        list: airingAnime.value,
      ),
    ];
    final animeLayoutMap = loadData(PrefName.simklAnimeLayout);
    final sectionMap = {
      for (var section in mediaSections) section.pairTitle: section
    };
    return animeLayoutMap.entries
        .where((entry) => entry.value)
        .map((entry) => sectionMap[entry.key])
        .whereType<MediaSectionData>()
        .map(
          (section) => MediaSection(
            context: context,
            type: section.type,
            title: section.title,
            mediaList: section.list,
            scrollController: section.scrollController,
          ),
        )
        .toList()
      ..add(
        MediaSection(
          context: context,
          type: 2,
          title: getString.popular(getString.anime),
          mediaList: popularAnime.value,
        ),
      );
  }

  @override
  List<ChipData> get trendingChips => [
        ChipData(label: 'Today', action: () => loadTrending(1)),
        ChipData(label: 'Weekly', action: () => loadTrending(2)),
        ChipData(label: 'Monthly', action: () => loadTrending(0)),
      ];

  @override
  int get refreshID => RefreshId.Simkl.animePage;

  void resetPageData() {
    trending.value = null;
    popularAnime.value = null;
    premiereAnime.value = null;
    airingAnime.value = null;
    page = 1;
  }
}
