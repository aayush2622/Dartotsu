import 'package:dartotsu/Api/MyAnimeList/MalQueries.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Functions/Function.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Services/Screens/BaseAnimeScreen.dart';
import '../Mal.dart';

class MalAnimeScreen extends BaseAnimeScreen {
  final MalController Mal;

  MalAnimeScreen(this.Mal);

  var animePopular = Rxn<List<Media>>();
  var updated = Rxn<List<Media>>();
  var popularMovies = Rxn<List<Media>>();
  var topRatedSeries = Rxn<List<Media>>();
  var mostFavSeries = Rxn<List<Media>>();

  Future<void> getUserId() async {
    if (Mal.token.isNotEmpty) {
      await Mal.query!.getUserData();
    }
  }

  @override
  Future<void> loadAll() async {
    await getUserId();
    resetPageData();
    final list = await Mal.query!.getAnimeList();
    updated.value = list["topAiring"];
    popularMovies.value = list["trendingMovies"];
    topRatedSeries.value = list["topRatedSeries"];
    mostFavSeries.value = list["mostFavouriteSeries"];
    animePopular.value = list["popularAnime"];
    trending.value = list["trendingAnime"];
  }

  @override
  int get refreshID => RefreshId.Mal.animePage;

  void resetPageData() {
    trending.value = null;
    animePopular.value = null;
    updated.value = null;
    popularMovies.value = null;
    topRatedSeries.value = null;
    mostFavSeries.value = null;
    loadMore.value = true;
    page = 1;
  }

  @override
  Future<void>? loadNextPage() async {
    var result = await (Mal.query as MalQueries?)?.loadNextPage('anime', page);
    page++;
    if (result != null) {
      canLoadMore.value = true;
      animePopular.value = [...?animePopular.value, ...result];
    } else {
      canLoadMore.value = false;
    }
    loadMore.value = true;
    return;
  }

  @override
  Future<void> loadTrending(int page) async {
    this.trending.value = null;
    var currentSeasonMap = Mal.currentSeasons[page];
    var season = currentSeasonMap.keys.first;
    var year = currentSeasonMap.values.first;
    var trending = await (Mal.query as MalQueries?)!
        .getTrending(year: year.toString(), season: season);
    this.trending.value = trending;
  }

  @override
  List<Widget> mediaContent(BuildContext context) {
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: getString.topAiring,
        pairTitle: 'Top Airing',
        list: updated.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.trending(getString.movie(2)),
        pairTitle: 'Trending Movies',
        list: popularMovies.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.topRated(getString.series),
        pairTitle: 'Top Rated Series',
        list: topRatedSeries.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.mostFavourite(getString.series),
        pairTitle: 'Most Favourite Series',
        list: mostFavSeries.value,
      ),
    ];
    final animeLayoutMap = loadData(PrefName.malAnimeLayout);
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
            mediaList: animePopular.value),
      );
  }
}
