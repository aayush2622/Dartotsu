import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Functions/Function.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Services/Screens/BaseMangaScreen.dart';
import '../Mal.dart';
import '../MalQueries.dart';

class MalMangaScreen extends BaseMangaScreen {
  final MalController Mal;

  MalMangaScreen(this.Mal);

  var mangaPopular = Rxn<List<Media>>();
  var popularManhwa = Rxn<List<Media>>();
  var popularNovel = Rxn<List<Media>>();
  var topRatedManga = Rxn<List<Media>>();
  var mostFavManga = Rxn<List<Media>>();

  Future<void> getUserId() async {
    if (Mal.token.isNotEmpty) {
      await Mal.query!.getUserData();
    }
  }

  @override
  Future<void> loadAll() async {
    await getUserId();
    resetPageData();
    final list = await Mal.query!.getMangaList();
    trending.value = list["trendingManga"];
    mangaPopular.value = list["popularManga"];
    popularManhwa.value = list["trendingManhwa"];
    popularNovel.value = list["trendingNovels"];
    topRatedManga.value = list["topRatedManga"];
    mostFavManga.value = list["mostFavouriteManga"];
  }

  @override
  int get refreshID => RefreshId.Mal.mangaPage;

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
  Future<void>? loadNextPage() async {
    var result = await (Mal.query as MalQueries?)?.loadNextPage('manga', page);
    page++;
    if (result != null) {
      canLoadMore.value = true;
      mangaPopular.value = [...?mangaPopular.value, ...result];
    } else {
      canLoadMore.value = false;
    }
    loadMore.value = true;
    return;
  }

  @override
  void loadTrending(String type) async {
    this.trending.value = null;
    if (type == "NOVEL") type = "NOVELS";
    var trending = await (Mal.query as MalQueries?)!
        .getTrending(season: type.toLowerCase());
    this.trending.value = trending;
  }

  @override
  List<Widget> mediaContent(BuildContext context) {
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: getString.trending(getString.manhwa),
        pairTitle: 'Trending Manhwa',
        list: popularManhwa.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.trending(getString.novel),
        pairTitle: 'Trending Novels',
        list: popularNovel.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.topRated(getString.manga),
        pairTitle: 'Top Rated Manga',
        list: topRatedManga.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.mostFavourite(getString.manga),
        pairTitle: 'Most Favourite Manga',
        list: mostFavManga.value,
      ),
    ];
    final mangaLayoutMap = loadData(PrefName.malMangaLayout);
    final sectionMap = {
      for (var section in mediaSections) section.pairTitle: section
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
          title: getString.popular(getString.manhwa),
          mediaList: mangaPopular.value,
        ),
      );
  }
}
