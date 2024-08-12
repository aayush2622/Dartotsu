import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Adaptor/Media/MediaAdaptor.dart';
import '../../Animation/SlideInAnimation.dart';
import '../../DataClass/Media.dart';
import '../../DataClass/MediaSection.dart';
import '../../Functions/Function.dart';
import '../../Widgets/Home/LoadingWidget.dart';
import '../../Widgets/Home/SearchBar.dart';
import '../../Widgets/Media/Chips.dart';
import '../../Widgets/Media/MediaCard.dart';
import '../../Widgets/Media/MediaSection.dart';
import '../../Widgets/ScrollConfig.dart';
import '../../api/Anilist/Anilist.dart';
import '../../api/Anilist/AnilistQueries.dart';
import '../../api/AnilistNew.dart';

class AnimeScreen extends StatefulWidget {
  const AnimeScreen({super.key});

  @override
  AnimeScreenState createState() => AnimeScreenState();
}

class AnimeScreenState extends State<AnimeScreen> {
  List<media>? mediaDataList;
  Map<String, List<media>>? list;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> loadData() async {
    await Future.wait([
      _loadTrending(1),
      _loadList(),
    ]);
  }


  Future<void> _loadTrending(int s) async {
    setState(() => mediaDataList = null);
    var currentSeasonMap = currentSeasons[s];
    var season = currentSeasonMap.keys.first;
    var year = currentSeasonMap.values.first;
    var trending = (await Anilist.query.search(
        type: 'ANIME',
        perPage: 12,
        sort: sortBy[2],
        season: season,
        seasonYear: year,
        hd: true))
        ?.results;
    setState(() => mediaDataList = trending);
  }

  Future<void> _loadList() async {
    setState(() => list = null);
    final data = await loadAnimeList();
    setState(() => list = data);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: loadData,
        child: CustomScrollConfig(
          context,
          children: [
            SliverToBoxAdapter(
              child: AnimeScreenContent(
                mediaDataList: mediaDataList,
                theme: theme,
                chipCall: _loadTrending,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: buildMediaSections(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildMediaSections(BuildContext context) {
    final mediaSections = [
      MediaSectionData(title: 'Recent Updates', list: list?['recentUpdates']),
      MediaSectionData(title: 'Trending Movies', list: list?['trendingMovies']),
      MediaSectionData(title: 'Top Rated', list: list?['topRated']),
      MediaSectionData(title: 'Most Favourite', list: list?['mostFav']),
    ];

    return mediaSections
        .map((section) => MediaSection(
      context: context,
      title: section.title,
      mediaList: section.list,
    ))
        .toList()
      ..add(const SizedBox(height: 128));
  }
}

class AnimeScreenContent extends StatelessWidget {
  final List<media>? mediaDataList;
  final ColorScheme theme;
  final Future<void> Function(int) chipCall;

  const AnimeScreenContent({
    super.key,
    required this.mediaDataList,
    required this.theme,
    required this.chipCall,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 486.statusBar(),
          child: Consumer<AnilistData>(
            builder: (context, data, child) {
              if (!data.initialized) {
                return LoadingWidget(theme: theme);
              }
              return Stack(
                children: [
                  SizedBox(
                    height: 464.statusBar(),
                    child: mediaDataList != null
                        ? MediaAdaptor(type: 1, mediaList: mediaDataList!)
                        : const Center(child: CircularProgressIndicator()),
                  ),
                  MediaSearchBar(
                    data: data,
                    theme: theme,
                    title: "ANIME",
                  ),
                  Positioned(
                    bottom: 92,
                    left: 8.0,
                    right: 8.0,
                    child: Center(
                      child: ChipsWidget(
                        chips: [
                          ChipData(label: 'This Season', action: () => chipCall(1)),
                          ChipData(label: 'Next Season', action: () => chipCall(2)),
                          ChipData(label: 'Previous Season', action: () => chipCall(0)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 8.0,
                    right: 8.0,
                    child: SlideInAnimation(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MediaCard(
                            context,
                            'GENRES',
                            const AnimeScreen(),
                            "https://s4.anilist.co/file/anilistcdn/media/anime/banner/16498-8jpFCOcDmneX.jpg",
                          ),
                          MediaCard(
                            context,
                            'CALENDAR',
                            const AnimeScreen(),
                            "https://s4.anilist.co/file/anilistcdn/media/anime/banner/125367-hGPJLSNfprO3.jpg",
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
