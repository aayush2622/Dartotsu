import 'package:dantotsu/DataClass/Media.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Functions/Function.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Preferences/Preferences.dart';
import '../../../Services/Screens/BaseAnimeScreen.dart';
import '../../../Theme/LanguageSwitcher.dart';
import '../Anilist.dart' hide Anilist;

class AnilistAnimeScreen extends BaseAnimeScreen {
  final AnilistController Anilist;

  AnilistAnimeScreen(this.Anilist);

  var animePopular = Rxn<List<Media>>();
  var updated = Rxn<List<Media>>();
  var popularMovies = Rxn<List<Media>>();
  var topRatedSeries = Rxn<List<Media>>();
  var mostFavSeries = Rxn<List<Media>>();

  Future<void> getUserId() async {
    if (Anilist.token.isNotEmpty) {
      await Anilist.query!.getUserData();
    }
  }

  @override
  Future<void> loadAll() async {
    await getUserId();
    resetPageData();
    final list = await Anilist.query!.getAnimeList();
    trending.value = list["trendingAnime"];
    animePopular.value = list["popularAnime"];
    updated.value = list["recentUpdates"];
    popularMovies.value = list["trendingMovies"];
    topRatedSeries.value = list["topRatedSeries"];
    mostFavSeries.value = list["mostFavSeries"];
  }

  @override
  int get refreshID => RefreshId.Anilist.animePage;

  @override
  void resetPageData() {
    trending.value = null;
    animePopular.value = null;
    updated.value = null;
    popularMovies.value = null;
    topRatedSeries.value = null;
    mostFavSeries.value = null;
    loadMore.value = true;
    canLoadMore.value = true;
    page = 1;
  }

  @override
  Future<void> loadNextPage() async {
    final result = await Anilist.query!.search(
      type: 'ANIME',
      page: page + 1,
      perPage: 50,
      sort: Anilist.sortBy[1],
      onList: PrefManager.getVal(PrefName.includeAnimeList),
    );
    page++;
    if (result != null) {
      canLoadMore.value = result.hasNextPage;
      animePopular.value = [...?animePopular.value, ...result.results];
    }
    loadMore.value = true;
  }

  @override
  Future<void> loadTrending(int page) async {
    this.trending.value = null;
    var currentSeasonMap = Anilist.currentSeasons[page];
    var season = currentSeasonMap.keys.first;
    var year = currentSeasonMap.values.first;
    var trending = await Anilist.query!.search(
      type: 'ANIME',
      perPage: 12,
      sort: Anilist.sortBy[2],
      season: season,
      seasonYear: year,
      hd: true,
    );
    this.trending.value = trending?.results;
  }

  @override
  List<Widget> mediaContent(BuildContext context) {
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: getString.recentUpdates,
        pairTitle: 'Recent Updates',
        list: updated.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.trendingMovies,
        pairTitle: 'Trending Movies',
        list: popularMovies.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.topRatedSeries,
        pairTitle: 'Top Rated Series',
        list: topRatedSeries.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.mostFavouriteSeries,
        pairTitle: 'Most Favourite Series',
        list: mostFavSeries.value,
      ),
    ];
    final animeLayoutMap = PrefManager.getVal(PrefName.anilistAnimeLayout);
    final sectionMap = {
      for (var section in mediaSections) section.pairTitle: section
    };
    return animeLayoutMap.entries
        .where((entry) => entry.value)
        .map((entry) => sectionMap[entry.key])
        .whereType<MediaSectionData>()
        .map((section) => MediaSection(
              context: context,
              type: section.type,
              title: section.title,
              mediaList: section.list,
              scrollController: section.scrollController,
          ),
        )
        .toList()
      ..add(MediaSection(
          context: context,
          type: 2,
          title: getString.popularAnime,
          mediaList: animePopular.value,
        ),
      );
  }
}
