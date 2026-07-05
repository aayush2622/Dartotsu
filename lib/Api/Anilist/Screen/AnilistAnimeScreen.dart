import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/DataClass/SearchResults.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Functions/Function.dart';
import '../../../Preferences/PrefManager.dart';
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
    resetPageData();
    await getUserId();
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
      SearchResults(
        type: SearchType.ANIME,
        page: page + 1,
        perPage: 50,
        sort: Anilist.sortBy[1],
        onList: loadData(PrefName.includeAnimeList),
      ),
    );
    page++;
    if (result != null) {
      canLoadMore.value = result.hasNextPage ?? false;
      animePopular.value = [...?animePopular.value, ...?result.results];
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
      SearchResults(
        type: SearchType.ANIME,
        perPage: 12,
        sort: Anilist.sortBy[2],
        season: season,
        seasonYear: year,
        hdCover: true,
      ),
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
        title: getString.trending(getString.anime),
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

    final animeLayoutMap = loadData(PrefName.anilistAnimeLayout);

    final sectionMap = {
      for (final section in mediaSections) section.pairTitle: section,
    };

    final sections = animeLayoutMap.entries
        .where((entry) => entry.value)
        .map((entry) => sectionMap[entry.key])
        .whereType<MediaSectionData>()
        .toList();

    final groupedWidgets = sections
        .map(
          (section) => MediaSection(
            context: context,
            type: section.type,
            title: section.title,
            mediaList: section.list,
          ),
        )
        .toList();
    final popularSection = MediaSection(
      context: context,
      type: 2,
      title: getString.popular(getString.anime),
      mediaList: animePopular.value,
    );

    return [
      LayoutBuilder(
        builder: (context, constraints) {
          const spacing = 16.0;
          final horizontalPadding = context.isPhone ? 0.0 : 16.0;
          final maxWidth = constraints.maxWidth - (horizontalPadding * 2);

          final columns = context.isPhone ? 1 : 2;
          final width = (maxWidth - ((columns - 1) * spacing)) / columns;
          final useColumnLayout = width < 480;

          final children = groupedWidgets
              .map(
                (widget) => SizedBox(
                  width: useColumnLayout ? null : width,
                  child: widget,
                ),
              )
              .toList();

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              children: [
                useColumnLayout
                    ? Column(
                        children: children
                            .map(
                              (child) => Padding(
                                padding: const EdgeInsets.only(bottom: spacing),
                                child: child,
                              ),
                            )
                            .toList(),
                      )
                    : Wrap(
                        spacing: spacing,
                        runSpacing: spacing,
                        children: children,
                      ),
                const SizedBox(height: spacing),

                popularSection,
                const SizedBox(height: 128),
              ],
            ),
          );
        },
      ),
    ];
  }
}
