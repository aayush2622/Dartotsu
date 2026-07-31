import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Functions/Function.dart';
import '../../../Services/Screens/BaseMangaScreen.dart';
import '../MangaBaka.dart';

class MangaBakaMangaScreen extends BaseMangaScreen {
  final MangaBakaController controller;

  MangaBakaMangaScreen(this.controller);

  var mangaPopular = Rxn<List<Media>>();
  var popularManhwa = Rxn<List<Media>>();
  var popularManhua = Rxn<List<Media>>();
  var popularNovel = Rxn<List<Media>>();
  var topRatedManga = Rxn<List<Media>>();

  @override
  Future<void> loadAll() async {
    resetPageData();
    final list = await controller.query!.getMangaList();
    trending.value = list["trendingManga"];
    mangaPopular.value = list["popularManga"];
    popularManhwa.value = list["trendingManhwa"];
    popularManhua.value = list["trendingManhua"];
    popularNovel.value = list["trendingNovels"];
    topRatedManga.value = list["topRatedManga"];
  }

  @override
  int get refreshID => RefreshId.MangaBaka.mangaPage;

  void resetPageData() {
    trending.value = null;
    mangaPopular.value = null;
    popularManhwa.value = null;
    popularManhua.value = null;
    popularNovel.value = null;
    topRatedManga.value = null;
    loadMore.value = true;
    canLoadMore.value = true;
    page = 1;
  }

  @override
  Future<void>? loadNextPage() async {
    page++;
    final results = await controller.fetchSeries(
      types: [MangaBakaType.manga, MangaBakaType.manhwa, MangaBakaType.manhua],
      sortBy: 'popularity_desc',
      limit: 15,
    );
    if (results.isNotEmpty) {
      canLoadMore.value = true;
      final mediaList = results.map((s) => Media.fromMangaBaka(s)).toList();
      mangaPopular.value = [...?mangaPopular.value, ...mediaList];
    } else {
      canLoadMore.value = false;
    }
    loadMore.value = true;
    return;
  }

  @override
  void loadTrending(String type) async {
    trending.value = null;
    final results = await controller.fetchSeries(
      query: type.toLowerCase(),
      sortBy: 'popularity_desc',
      limit: 15,
    );
    trending.value = results.map((s) => Media.fromMangaBaka(s)).toList();
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
    ];

    return mediaSections
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
          title: getString.popular(getString.manga),
          mediaList: mangaPopular.value,
        ),
      );
  }
}
