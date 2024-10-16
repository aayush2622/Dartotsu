import 'package:dantotsu/Functions/Extensions.dart';
import 'package:dantotsu/Screens/BaseMediaScreen.dart';
import 'package:dantotsu/api/Anilist/AnilistViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../Adaptor/Media/MediaAdaptor.dart';
import '../../Adaptor/Media/Widgets/Chips.dart';
import '../../Adaptor/Media/Widgets/MediaCard.dart';
import '../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../Animation/SlideInAnimation.dart';
import '../../DataClass/MediaSection.dart';
import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
import '../Anime/AnimeScreen.dart';
import '../Home/Widgets/LoadingWidget.dart';
import '../Home/Widgets/SearchBar.dart';

class MangaScreen extends StatefulWidget {
  const MangaScreen({super.key});

  @override
  MangaScreenState createState() => MangaScreenState();
}

class MangaScreenState extends BaseMediaScreen<MangaScreen> {
  final _viewModel = AnilistMangaViewModel;

  @override
  get viewModel => _viewModel;

  @override
  get refreshID => 3;

  @override
  get screenContent => Obx(() => _buildMangaScreenContent());

  @override
  get mediaSections {
    final mediaSections = [
      MediaSectionData(
          type: 0,
          title: 'Trending Manhwa',
          list: _viewModel.popularManhwa.value),
      MediaSectionData(
          type: 0,
          title: 'Trending Novels',
          list: _viewModel.popularNovel.value),
      MediaSectionData(
          type: 0,
          title: 'Top Rated Manga',
          list: _viewModel.topRatedManga.value),
      MediaSectionData(
          type: 0,
          title: 'Most Favourite Manga',
          list: _viewModel.mostFavManga.value),
    ];
    final mangaLayoutMap = PrefManager.getVal(PrefName.mangaLayout);
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
      ..add(MediaSection(
        context: context,
        type: 2,
        title: 'Popular Manga',
        mediaList: _viewModel.mangaPopular.value,
      ));
  }

  Widget _buildMangaScreenContent() {
    var mediaDataList = _viewModel.trending.value;
    var chipCall = _viewModel.loadTrending;
    return SizedBox(
      height: 486.statusBar(),
      child: running ? Stack(
        children: [
          SizedBox(
            height: 464.statusBar(),
            child: mediaDataList != null
              ? MediaAdaptor(type: 1, mediaList: mediaDataList)
              : const Center(child: CircularProgressIndicator()),
          ),
          const MediaSearchBar(
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
                    label: 'Trending Manga',
                    action: () => chipCall('MANGA'),
                  ),
                  ChipData(
                    label: 'Trending Manhwa',
                    action: () => chipCall('MANHWA'),
                  ),
                  ChipData(
                    label: 'Trending Novel',
                    action: () => chipCall('NOVEL'),
                  ),
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
      ) : const LoadingWidget(),
    );
  }
}
