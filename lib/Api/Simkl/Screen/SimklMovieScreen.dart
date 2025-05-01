import 'package:dartotsu/Functions/Function.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Media/Widgets/Chips.dart';
import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Services/Screens/BaseMangaScreen.dart';
import '../../../Theme/LanguageSwitcher.dart';
import '../Simkl.dart';
import '../SimklQueries.dart';

class SimklMovieScreen extends BaseMangaScreen {
  final SimklController Simkl;

  SimklMovieScreen(this.Simkl);

  Future<void> getUserId() async {
    if (Simkl.token.isNotEmpty) {
      await Simkl.query!.getUserData();
    }
  }

  var popularMovies = Rxn<List<Media>>();
  var premiereShows = Rxn<List<Media>>();
  var airingShows = Rxn<List<Media>>();

  @override
  Future<void> loadAll() async {
    resetPageData();
    await getUserId();
    var list = await Simkl.query!.getMangaList();
    _setMediaList(list);
  }

  void _setMediaList(Map<String, List<Media>> res) {
    trending.value = res['trendingMovies'];
    popularMovies.value = res['popularMovies'];
    airingShows.value = res['Airing Shows'];
    premiereShows.value = res['Incoming Shows'];
  }

  @override
  Future<void>? loadNextPage() async {
    page++;
    var result =
        await (Simkl.query as SimklQueries?)?.loadNextPage('movies', page);
    if (result != null) {
      canLoadMore.value = true;
      popularMovies.value = [...?popularMovies.value, ...result];
    } else {
      canLoadMore.value = false;
    }
    loadMore.value = true;
    return;
  }

  @override
  void loadTrending(String type) async {
    this.trending.value = null;
    var trending =
        await (Simkl.query as SimklQueries?)!.getTrending(type, time: '');
    this.trending.value = trending;
  }

  @override
  List<Widget> mediaContent(BuildContext context) {
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: 'Incoming Shows',
        pairTitle: 'Incoming Shows',
        list: premiereShows.value,
      ),
      MediaSectionData(
        type: 0,
        title: 'Airing Shows',
        pairTitle: 'Airing Shows',
        list: airingShows.value,
      ),
    ];
    final animeLayoutMap = loadData(PrefName.simklMangaLayout);
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
          title: getString.popular(getString.movie(2)),
          mediaList: popularMovies.value,
        ),
      );
  }

  @override
  List<ChipData> get trendingChips => [
        ChipData(
            label: 'Trending Movies', action: () => loadTrending('movies')),
        ChipData(label: 'Trending Shows', action: () => loadTrending('tv')),
      ];

  @override
  int get refreshID => RefreshId.Simkl.mangaPage;

  void resetPageData() {
    trending.value = null;
    popularMovies.value = null;
    premiereShows.value = null;
    airingShows.value = null;
    page = 1;
  }
}
