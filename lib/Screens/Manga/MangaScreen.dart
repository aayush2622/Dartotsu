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
import '../Anime/AnimeScreen.dart';

class MangaScreen extends StatefulWidget {
  const MangaScreen({super.key});

  @override
  MangaScreenState createState() => MangaScreenState();
}

class MangaScreenState extends State<MangaScreen> {
  List<media>? _mangaTrendingList;
  Map<String, List<media>>? list;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await Future.wait([
      _loadTrending('MANGA'),
      _loadList(),
    ]);
  }

  Future<void> _loadTrending(String type) async {
    setState(() => _mangaTrendingList = null);

    final country = type == 'MANHWA' ? 'KR' : 'JP';
    final format = type == 'NOVEL' ? 'NOVEL' : null;
    final trending = (await Anilist.query.search(
      type: 'MANGA',
      countryOfOrigin: country,
      format: format,
      perPage: 50,
      sort: AnilistController.sortBy[2],
      hd: true,
    ))?.results;

    setState(() => _mangaTrendingList = trending ?? []);
  }

  Future<void> _loadList() async {
    setState(() => list = null);
    final data = await Anilist.query.loadMangaList();
    setState(() => list = data);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: loadData,
        child: CustomScrollConfig(
          context,
          children: [
            SliverToBoxAdapter(
              child: MangaScreenContent(
                mediaDataList: _mangaTrendingList,
                theme: theme,
                chipCall: _loadTrending,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
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
      MediaSectionData(title: 'Trending Manga', list: list?['trendingManga']),
      MediaSectionData(title: 'Trending Manhwa', list: list?['trendingManhwa']),
      MediaSectionData(title: 'Trending Novels', list: list?['trendingNovel']),
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

class MangaScreenContent extends StatelessWidget {
  final List<media>? mediaDataList;
  final ColorScheme theme;
  final Future<void> Function(String) chipCall;

  const MangaScreenContent({
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
          child: Builder(
            builder: (context) {
              if (!Anilist.isInitialized) {
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
                    theme: theme,
                    title: "MANGA",
                  ),
                  Positioned(
                    bottom: 92,
                    left: 8.0,
                    right: 8.0,
                    child: Center(
                      child: ChipsWidget(
                        chips: [
                          ChipData(label: 'Manga', action: () => chipCall('MANGA')),
                          ChipData(label: 'Manhwa', action: () => chipCall('MANHWA')),
                          ChipData(label: 'Novel', action: () => chipCall('NOVEL')),
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
                            'GENRE',
                            const AnimeScreen(),
                            "https://s4.anilist.co/file/anilistcdn/media/manga/banner/105778-wk5qQ7zAaTGl.jpg",
                          ),
                          MediaCard(
                            context,
                            'TOP SCORE',
                            const AnimeScreen(),
                            "https://s4.anilist.co/file/anilistcdn/media/manga/banner/30002-3TuoSMl20fUX.jpg",
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
