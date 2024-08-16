import 'package:dantotsu/api/Anilist/AnilistViewModel.dart';
import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

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
import '../Anime/AnimeScreen.dart';

class MangaScreen extends StatefulWidget {
  const MangaScreen({super.key});

  @override
  MangaScreenState createState() => MangaScreenState();
}

class MangaScreenState extends State<MangaScreen> {
  final _viewModel = AnilistMangaViewModel;
  bool running = true;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    final live = Refresh.getOrPut(3, false);
    ever(live, (bool shouldRefresh) async {
      if (running && shouldRefresh) {
        setState(() => running = false);
        await _refreshData();
        live.value = false;
        setState(() => running = true);
      }
    });
    Refresh.activity[3]?.value = true;
  }

  Future<void> _refreshData() async {
    await getUserId(() {});
    await Future.wait([
      _viewModel.loadTrending('MANGA'),
      _viewModel.loadAll(),
      _viewModel.loadPopular(true),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => Refresh.activity[3]?.value = true,
        child: CustomScrollConfig(
          context,
          children: [
            Obx(
              () => SliverToBoxAdapter(
                child: _mangaScreenContent(
                  mediaDataList: _viewModel.trending.value,
                  theme: theme,
                  chipCall: _viewModel.loadTrending,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Obx(() => Column(children: _buildMediaSections())),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildMediaSections() {
    final mediaSections = [
      MediaSectionData(
          title: 'Trending Manga', list: _viewModel.popularManga.value),
      MediaSectionData(
          title: 'Trending Manhwa', list: _viewModel.popularManhwa.value),
      MediaSectionData(
          title: 'Trending Novels', list: _viewModel.popularNovel.value),
      MediaSectionData(
          title: 'Top Rated', list: _viewModel.topRatedManga.value),
      MediaSectionData(
          title: 'Most Favourite', list: _viewModel.mostFavManga.value),
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

  Widget _mangaScreenContent({
    required List<media>? mediaDataList,
    required ColorScheme theme,
    required Future<void> Function(String) chipCall,
  }) {
    return SizedBox(
      height: 486.statusBar(),
      child: running
          ? Stack(
              children: [
                SizedBox(
                  height: 464.statusBar(),
                  child: mediaDataList != null
                      ? MediaAdaptor(type: 1, mediaList: mediaDataList)
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
                        ChipData(
                            label: 'Trending Manga', action: () => chipCall('MANGA')),
                        ChipData(
                            label: 'Trending Manhwa', action: () => chipCall('MANHWA')),
                        ChipData(
                            label: 'Trending Novel', action: () => chipCall('NOVEL')),
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
            )
          : LoadingWidget(theme: theme),
    );
  }
}
