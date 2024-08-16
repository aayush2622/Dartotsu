import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../Adaptor/Media/MediaAdaptor.dart';
import '../../api/Anilist/AnilistViewModel.dart';
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

class AnimeScreen extends StatefulWidget {
  const AnimeScreen({super.key});

  @override
  AnimeScreenState createState() => AnimeScreenState();
}

class AnimeScreenState extends State<AnimeScreen> {
  final _viewModel = AnilistAnimeViewModel;

  bool running = true;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    final live = Refresh.getOrPut(2, false);
    ever(live, (bool shouldRefresh) async {
      if (running && shouldRefresh) {
        setState(() => running = false);
        await _refreshData();
        live.value = false;
        setState(() => running = true);
      }
    });
    Refresh.activity[2]?.value = true;
  }

  Future<void> _refreshData() async {
    await getUserId(() {});
    await Future.wait([
      _viewModel.loadTrending(1),
      _viewModel.loadAll(),
      _viewModel.loadPopular(true),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => Refresh.activity[2]?.value = true,
        child: CustomScrollConfig(
          context,
          children: [
            Obx(
              () => SliverToBoxAdapter(
                child: _buildAnimeScreenContent(
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
      MediaSectionData(title: 'Recent Updates', list: _viewModel.updated.value),
      MediaSectionData(
          title: 'Trending Movies', list: _viewModel.popularMovies.value),
      MediaSectionData(
          title: 'Top Rated', list: _viewModel.topRatedAnime.value),
      MediaSectionData(
          title: 'Most Favourite', list: _viewModel.mostFavAnime.value),
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

  Widget _buildAnimeScreenContent({
    required List<media>? mediaDataList,
    required ColorScheme theme,
    required Future<void> Function(int) chipCall,
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
                MediaSearchBar(theme: theme, title: "ANIME"),
                Positioned(
                  bottom: 92,
                  left: 8.0,
                  right: 8.0,
                  child: Center(
                    child: ChipsWidget(
                      chips: [
                        ChipData(
                            label: 'This Season', action: () => chipCall(1)),
                        ChipData(
                            label: 'Next Season', action: () => chipCall(2)),
                        ChipData(
                            label: 'Previous Season',
                            action: () => chipCall(0)),
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
            )
          : LoadingWidget(theme: theme),
    );
  }
}
