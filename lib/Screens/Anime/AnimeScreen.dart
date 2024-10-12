import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Media/MediaAdaptor.dart';
import '../../Adaptor/Media/Widgets/Chips.dart';
import '../../Adaptor/Media/Widgets/MediaCard.dart';
import '../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../Animation/SlideInAnimation.dart';
import '../../DataClass/Media.dart';
import '../../DataClass/MediaSection.dart';
import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
import '../../api/Anilist/AnilistViewModel.dart';
import '../BaseMediaScreen.dart';
import '../Home/Widgets/LoadingWidget.dart';
import '../Home/Widgets/SearchBar.dart';

class AnimeScreen extends StatefulWidget {
  const AnimeScreen({super.key});

  @override
  AnimeScreenState createState() => AnimeScreenState();
}

class AnimeScreenState extends BaseMediaScreen<AnimeScreen> {
  final _viewModel = AnilistAnimeViewModel;

  @override
  get viewModel => _viewModel;

  @override
  get refreshID => 2;

  @override
  screenContent() => _buildAnimeScreenContent(
        mediaDataList: _viewModel.trending.value,
        chipCall: _viewModel.loadTrending,
      );

  @override
  get mediaSections {
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: 'Recent Updates',
        list: _viewModel.updated.value,
      ),
      MediaSectionData(
        type: 0,
        title: 'Trending Movies',
        list: _viewModel.popularMovies.value,
      ),
      MediaSectionData(
        type: 0,
        title: 'Top Rated Series',
        list: _viewModel.topRatedSeries.value,
      ),
      MediaSectionData(
        type: 0,
        title: 'Most Favourite Series',
        list: _viewModel.mostFavSeries.value,
      ),
    ];
    final animeLayoutMap = PrefManager.getVal(PrefName.animeLayout);
    final sectionMap = {
      for (var section in mediaSections) section.title: section
    };

    return animeLayoutMap.entries
        .where((entry) => entry.value)
        .map((entry) => sectionMap[entry.key])
        .whereType<MediaSectionData>()
        .map((section) => MediaSection(
              context: context,
              type: section.type,
              title: section.title,
              mediaList: section.list,
              scrollController: section.scrollController,
            ))
        .toList()
      ..add(MediaSection(
          context: context,
          type: 2,
          title: 'Popular Anime',
          mediaList: _viewModel.animePopular.value));
  }

  Widget _buildAnimeScreenContent({
    required List<media>? mediaDataList,
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
                const MediaSearchBar(title: "ANIME"),
                Positioned(
                  bottom: 92,
                  left: 8.0,
                  right: 8.0,
                  child: Center(
                    child: ChipsWidget(
                      chips: [
                        ChipData(
                          label: 'This Season',
                          action: () => chipCall(1),
                        ),
                        ChipData(
                          label: 'Next Season',
                          action: () => chipCall(2),
                        ),
                        ChipData(
                          label: 'Previous Season',
                          action: () => chipCall(0),
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
          : const LoadingWidget(),
    );
  }
}
