import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Functions/Function.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Preferences/Preferences.dart';
import '../../../Services/Screens/BaseMangaScreen.dart';
import '../Anilist.dart';
import '../Screens/Settings/language.dart';

class AnilistMangaScreen extends BaseMangaScreen {
  final AnilistController Anilist;

  AnilistMangaScreen(this.Anilist);

  var mangaPopular = Rxn<List<Media>>();
  var popularManhwa = Rxn<List<Media>>();
  var popularNovel = Rxn<List<Media>>();
  var topRatedManga = Rxn<List<Media>>();
  var mostFavManga = Rxn<List<Media>>();

  Future<void> getUserId() async {
    if (Anilist.token.isNotEmpty) {
      await Anilist.query!.getUserData();
    }
  }

  @override
  Future<void> loadAll() async {
    resetPageData();
    final list = await Anilist.query!.getMangaList();
    trending.value = list["trending"];
    mangaPopular.value = list["popularManga"];
    popularManhwa.value = list["trendingManhwa"];
    popularNovel.value = list["trendingNovel"];
    topRatedManga.value = list["topRated"];
    mostFavManga.value = list["mostFav"];
  }

  @override
  int get refreshID => RefreshId.Anilist.mangaPage;

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

  @override
  Future<void> loadNextPage() async {
    final result = await Anilist.query!.search(
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

  @override
  Future<void> loadTrending(String type) async {
    this.trending.value = null;
    final country = type == 'MANHWA' ? 'KR' : 'JP';
    final format = type == 'NOVEL' ? 'NOVEL' : null;
    final trending = await Anilist.query!.search(
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
  List<Widget> mediaContent(BuildContext context) {
    final mediaSections = [
      MediaSectionData(
          type: 0, title: getString.trendingManhwa, list: popularManhwa.value),
      MediaSectionData(
          type: 0, title: getString.trendingNovels, list: popularNovel.value),
      MediaSectionData(
          type: 0, title: getString.topRatedManga, list: topRatedManga.value),
      MediaSectionData(
          type: 0, title: getString.mostFavouriteManga, list: mostFavManga.value),
    ];
    final mangaLayoutMap = PrefManager.getVal(PrefName.anilistMangaLayout);
    final sectionMap = {
      for (var section in mediaSections) section.title: section
    };
    return mangaLayoutMap.entries
        .where((entry) => entry.value)
        .map((entry) => sectionMap[entry.key])
        .whereType<MediaSectionData>()
        .map((section) => MediaSection(
              context: context,
              type: section.type,
              title: section.title,
              mediaList: section.list,
            ))
        .toList()
      ..add(
        MediaSection(
          context: context,
          type: 2,
          title: getString.popularManga,
          mediaList: mangaPopular.value,
        ),
      );
  }
}
