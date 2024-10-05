import 'package:dantotsu/DataClass/User.dart';
import 'package:get/get.dart';

import '../../DataClass/Media.dart';
import '../../DataClass/SearchResults.dart';
import '../Discord/Discord.dart';
import 'Anilist.dart';

Future<void> getUserId() async {
  if (Anilist.token.isNotEmpty) {
    await Anilist.query.getUserData();
  }
}

final AnilistHomeViewModel = Get.put(_AnilistHomeViewModel());

class _AnilistHomeViewModel extends GetxController {
  var listImages = Rx<List<String?>>([null, null]);
  var animeContinue = Rx<List<media>?>(null);
  var animeFav = Rx<List<media>?>(null);
  var animePlanned = Rx<List<media>?>(null);
  var mangaContinue = Rx<List<media>?>(null);
  var mangaFav = Rx<List<media>?>(null);
  var mangaPlanned = Rx<List<media>?>(null);
  var recommendation = Rx<List<media>?>(null);
  var userStatus = Rx<List<userData>?>(null);
  var hidden = Rx<List<media>?>(null);
  var empty = Rxn<bool>(null);
  var genres = Rxn<bool>(null);
  var loaded = false.obs;

  Future<void> setListImages() async {
    listImages.value = await Anilist.query.getBannerImages();
  }

  /* Future<void> initUserStatus() async {
    final res = await Anilist.query.getUserStatus();
    if (res != null) {
      userStatus.value = res;
    }
  }*/

  Future<void> loadAll() async {
    resetHomePageData();
    await Anilist.query.getMediaLists(anime: true, userId: Anilist.userid ?? 0);
    final res = await Anilist.query.initHomePage();
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

  void resetHomePageData() {
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
    /*MAL.getSavedToken();



      if (PrefManager.getVal(PrefName.CheckUpdate) ?? false) {
        AppUpdater.check(context, false);
      }
    */

    /* final ret = await Anilist.query.getGenresAndTags();
    genres.value = ret;*/
  }
}

final AnilistAnimeViewModel = Get.put(_AnilistAnimeViewModel());

class _AnilistAnimeViewModel extends GetxController {
  var searched = false;
  var notSet = true;
  var type = 'ANIME';
  var trending = Rx<List<media>?>(null);
  var animePopular = Rx<List<media>?>(null);
  var updated = Rx<List<media>?>(null);
  var popularMovies = Rx<List<media>?>(null);
  var topRatedSeries = Rxn<List<media>>();
  var mostFavSeries = Rxn<List<media>>();

  Future<void> loadTrending(int s) async {
    this.trending.value = null;
    var currentSeasonMap = Anilist.currentSeasons[s];
    var season = currentSeasonMap.keys.first;
    var year = currentSeasonMap.values.first;
    var trending = (await Anilist.query.search(
            type: 'ANIME',
            perPage: 12,
            sort: Anilist.sortBy[2],
            season: season,
            seasonYear: year,
            hd: true))
        ?.results;
    this.trending.value = trending;
  }

  Future<void> loadNextPage(SearchResults r) async {
    final result = (await Anilist.query.search(
      type: r.type,
      search: r.search,
      page: r.page + 1,
      perPage: r.perPage,
      sort: r.sort,
      genres: r.genres,
      tags: r.tags,
      status: r.status,
      source: r.source,
      format: r.format,
      countryOfOrigin: r.countryOfOrigin,
      isAdult: r.isAdult,
      onList: r.onList,
      adultOnly: false,
    ))
        ?.results;

    if (result != null) {
      animePopular.value = [...?animePopular.value, ...result];
    }
  }

  Future<void> loadAll() async {
    resetAnimePageData();
    final list = await Anilist.query.getAnimeList();
    animePopular.value = list["popularAnime"];
    trending.value = list["trendingAnime"];
    updated.value = list["recentUpdates"];
    popularMovies.value = list["trendingMovies"];
    topRatedSeries.value = list["topRatedSeries"];
    mostFavSeries.value = list["mostFavSeries"];

  }

  void resetAnimePageData() {
    trending.value = null;
    animePopular.value = null;
    updated.value = null;
    popularMovies.value = null;
    topRatedSeries.value = null;
    mostFavSeries.value = null;
  }
}

final AnilistMangaViewModel = Get.put(_AnilistMangaViewModel());

class _AnilistMangaViewModel extends GetxController {
  var searched = false;
  var notSet = true;
  var type = 'MANGA';
  var trending = Rx<List<media>?>(null);
  var mangaPopular = Rx<List<media>?>(null);
  var popularManhwa = Rxn<List<media>>();
  var popularNovel = Rxn<List<media>>();
  var topRatedManga = Rxn<List<media>>();
  var mostFavManga = Rxn<List<media>>();

  Future<void> loadTrending(String type) async {
    this.trending.value = null;
    final country = type == 'MANHWA' ? 'KR' : 'JP';
    final format = type == 'NOVEL' ? 'NOVEL' : null;
    final trending = (await Anilist.query.search(
      type: 'MANGA',
      countryOfOrigin: country,
      format: format,
      perPage: 50,
      sort: Anilist.sortBy[2],
      hd: true,
    ))
        ?.results;

    this.trending.value = trending;
  }

  Future<void> loadNextPage(SearchResults r) async {
    final result = (await Anilist.query.search(
      type: r.type,
      search: r.search,
      page: r.page + 1,
      perPage: r.perPage,
      sort: r.sort,
      genres: r.genres,
      tags: r.tags,
      status: r.status,
      source: r.source,
      format: r.format,
      countryOfOrigin: r.countryOfOrigin,
      isAdult: r.isAdult,
      onList: r.onList,
      adultOnly: false,
    ))
        ?.results;
    mangaPopular.value = result;
    if (result != null) {
      mangaPopular.value = [...?mangaPopular.value, ...result];
    }
  }

  Future<void> loadAll() async {
    resetMangaPageData();
    final list = await Anilist.query.getMangaList();
    trending.value = list["trending"];
    mangaPopular.value = list["popularManga"];
    popularManhwa.value = list["trendingManhwa"];
    popularNovel.value = list["trendingNovel"];
    topRatedManga.value = list["topRated"];
    mostFavManga.value = list["mostFav"];
  }

  void resetMangaPageData() {
    trending.value = null;
    mangaPopular.value = null;
    popularManhwa.value = null;
    popularNovel.value = null;
    topRatedManga.value = null;
    mostFavManga.value = null;
  }
}
