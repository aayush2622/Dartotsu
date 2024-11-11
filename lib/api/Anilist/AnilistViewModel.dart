import 'package:dantotsu/DataClass/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../DataClass/Media.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
import '../Discord/Discord.dart';
import 'Anilist.dart';

Future<void> getUserId() async {
  if (Anilist.token.isNotEmpty) {
    await Anilist.query.getUserData();
  }
}

abstract class AnilistViewModel extends GetxController {
  var page = 1;
  var scrollToTop = false.obs;
  var loadMore = true.obs;
  var canLoadMore = true.obs;

  var scrollController = ScrollController();

  void resetPageData();

  bool get paging => true;

  Future<void> loadAll();

  Future<void>? loadNextPage() => null;

  bool _canScroll() {
    final maxScrollExtent = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll > (maxScrollExtent * 0.1);
  }

  Future<void> scrollListener() async {
    var scroll = scrollController.position;
    if (scroll.pixels >= scroll.maxScrollExtent - 50 && loadMore.value) {
      loadMore.value = false;
      if (canLoadMore.value) {
        await loadNextPage();
      } else {
        snackString('DAMN! YOU TRULY ARE JOBLESS\nYOU REACHED THE END');
      }
    }
    scrollToTop.value = _canScroll();
  }
}

final AnilistHomeViewModel = Get.put(_AnilistHomeViewModel());

class _AnilistHomeViewModel extends AnilistViewModel {
  var listImages = Rx<List<String?>>([null, null]);
  var animeContinue = Rx<List<Media>?>(null);
  var animeFav = Rx<List<Media>?>(null);
  var animePlanned = Rx<List<Media>?>(null);
  var mangaContinue = Rx<List<Media>?>(null);
  var mangaFav = Rx<List<Media>?>(null);
  var mangaPlanned = Rx<List<Media>?>(null);
  var recommendation = Rx<List<Media>?>(null);
  var userStatus = Rx<List<userData>?>(null);
  var hidden = Rx<List<Media>?>(null);
  var empty = Rxn<bool>(null);
  var genres = Rxn<bool>(null);
  var loaded = false.obs;

  Future<void> setListImages() async {
    listImages.value = await Anilist.query.getBannerImages();
  }

  @override
  get paging => false;

  @override
  Future<void> loadAll() async {
    await Future.wait([
      loadList(),
      setListImages(),
    ]);
  }

  Future<void> loadList() async {
    resetPageData();
    final res = await Anilist.query.initHomePage();
    _setMediaList(res);
  }

  void _setMediaList(Map<String, dynamic> res) {
    if (res["currentAnime"] != null) {
      animeContinue.value = res["currentAnime"];
    }
    if (res["favoriteAnime"] != null) {
      animeFav.value = res["favoriteAnime"];
    }
    if (res["currentAnimePlanned"] != null) {
      animePlanned.value = res["currentAnimePlanned"];
    }
    if (res["currentManga"] != null) {
      mangaContinue.value = res["currentManga"];
    }
    if (res["favoriteManga"] != null) {
      mangaFav.value = res["favoriteManga"];
    }
    if (res["currentMangaPlanned"] != null) {
      mangaPlanned.value = res["currentMangaPlanned"];
    }
    if (res["recommendations"] != null) {
      recommendation.value = res["recommendations"];
    }
    if (res["hidden"] != null) {
      hidden.value = res["hidden"];
    }
  }

  @override
  void resetPageData() {
    animeContinue.value = null;
    animeFav.value = null;
    animePlanned.value = null;
    mangaContinue.value = null;
    mangaFav.value = null;
    mangaPlanned.value = null;
    recommendation.value = null;
    hidden.value = null;
  }

  Future<void> loadMain() async {
    Anilist.getSavedToken();
    Discord.getSavedToken();
    Anilist.query.getGenresAndTags();
  }

}

// Anime ViewModel
final AnilistAnimeViewModel = Get.put(_AnilistAnimeViewModel());

class _AnilistAnimeViewModel extends AnilistViewModel {
  var trending = Rxn<List<Media>>();
  var animePopular = Rxn<List<Media>>();
  var updated = Rxn<List<Media>>();
  var popularMovies = Rxn<List<Media>>();
  var topRatedSeries = Rxn<List<Media>>();
  var mostFavSeries = Rxn<List<Media>>();

  @override
  Future<void> loadAll() async {
    resetPageData();
    final list = await Anilist.query.getAnimeList();
    trending.value = list["trendingAnime"];
    animePopular.value = list["popularAnime"];
    updated.value = list["recentUpdates"];
    popularMovies.value = list["trendingMovies"];
    topRatedSeries.value = list["topRatedSeries"];
    mostFavSeries.value = list["mostFavSeries"];
  }

  Future<void> loadTrending(int s) async {
    this.trending.value = null;
    var currentSeasonMap = Anilist.currentSeasons[s];
    var season = currentSeasonMap.keys.first;
    var year = currentSeasonMap.values.first;
    var trending = await Anilist.query.search(
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
  Future<void> loadNextPage() async {
    final result = await Anilist.query.search(
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
}

// Manga ViewModel
final AnilistMangaViewModel = Get.put(_AnilistMangaViewModel());

class _AnilistMangaViewModel extends AnilistViewModel {
  var trending = Rxn<List<Media>>();
  var mangaPopular = Rxn<List<Media>>();
  var popularManhwa = Rxn<List<Media>>();
  var popularNovel = Rxn<List<Media>>();
  var topRatedManga = Rxn<List<Media>>();
  var mostFavManga = Rxn<List<Media>>();

  @override
  Future<void> loadAll() async {
    resetPageData();
    final list = await Anilist.query.getMangaList();
    trending.value = list["trending"];
    mangaPopular.value = list["popularManga"];
    popularManhwa.value = list["trendingManhwa"];
    popularNovel.value = list["trendingNovel"];
    topRatedManga.value = list["topRated"];
    mostFavManga.value = list["mostFav"];
  }

  @override
  Future<void> loadNextPage() async {
    final result = await Anilist.query.search(
      type: 'MANGA',
      page: page + 1,
      perPage: 50,
      sort: Anilist.sortBy[1],
      onList: PrefManager.getVal(PrefName.includeMangaList),
    );
    page++;
    if (result != null) {
      canLoadMore.value = result.hasNextPage;
      mangaPopular.value = [...?mangaPopular.value, ...result.results];
    }
    loadMore.value = true;
  }

  Future<void> loadTrending(String type) async {
    this.trending.value = null;
    final country = type == 'MANHWA' ? 'KR' : 'JP';
    final format = type == 'NOVEL' ? 'NOVEL' : null;
    final trending = await Anilist.query.search(
      type: 'MANGA',
      countryOfOrigin: country,
      format: format,
      perPage: 50,
      sort: Anilist.sortBy[2],
      hd: true,
    );

    this.trending.value = trending?.results;
  }

  @override
  void resetPageData() {
    trending.value = null;
    mangaPopular.value = null;
    popularManhwa.value = null;
    popularNovel.value = null;
    topRatedManga.value = null;
    mostFavManga.value = null;
    loadMore.value = true;
    canLoadMore.value = true;
    page = 1;
  }
}
