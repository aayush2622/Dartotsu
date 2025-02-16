import 'package:dantotsu/Adaptor/Media/Widgets/MediaSection.dart';
import 'package:dantotsu/DataClass/Media.dart';
import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/api/Simkl/Simkl.dart';
import 'package:dantotsu/api/Simkl/SimklQueries.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Media/Widgets/Chips.dart';
import '../../../Services/Screens/BaseAnimeScreen.dart';

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
    premiereAnime.value = res["premiere"];
    airingAnime.value = res["airingAnime"];
    popularAnime.value = res["popularAnime"];
  }
  @override
  Future<void>? loadNextPage() async {
    page++;
    var result = await (Simkl.query as SimklQueries?)?.loadNextPage('anime', page);
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
  void loadTrending(int page) async{
    this.trending.value = null;
    var type = page == 1 ? "today" : page == 0 ? 'month' : 'week';
    var trending = await (Simkl.query as SimklQueries?)!
        .getTrending(type:type);
    this.trending.value = trending;
  }

  @override
  List<Widget> mediaContent(BuildContext context) {
    return [
      MediaSection(
        context: context,
        type: 0,
        title: 'Incoming',
        mediaList: premiereAnime.value
      ),
      MediaSection(
          context: context,
          type: 0,
          title: 'Airing',
          mediaList: airingAnime.value
      ),
      MediaSection(
          context: context,
          type: 2,
          title: 'Popular',
          mediaList: popularAnime.value
      ),

    ];
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
