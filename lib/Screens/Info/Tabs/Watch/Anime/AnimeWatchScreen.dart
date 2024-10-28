import 'package:dantotsu/DataClass/Media.dart';
import 'package:dantotsu/Screens/Info/Tabs/Watch/BaseParser.dart';
import 'package:dantotsu/Screens/Info/Tabs/Watch/BaseWatchScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Adaptor/Episode/EpisodeAdaptor.dart';
import '../../../../../DataClass/Episode.dart';
import '../../../../../Preferences/PrefManager.dart';
import '../../../../../Preferences/Preferences.dart';
import '../../../../../Widgets/ScrollConfig.dart';
import 'AnimeParser.dart';

class AnimeWatchScreen extends StatefulWidget {
  final media mediaData;

  const AnimeWatchScreen({super.key, required this.mediaData});

  @override
  AnimeWatchScreenState createState() => AnimeWatchScreenState();
}

class AnimeWatchScreenState extends BaseWatchScreen<AnimeWatchScreen> {
  late AnimeParser _viewModel;

  @override
  media get mediaData => widget.mediaData;

  @override
  BaseParser get viewModel => _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = Get.put(AnimeParser(), tag: widget.mediaData.id.toString());
    widget.mediaData.selected = _viewModel.loadSelected(widget.mediaData);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _viewModel.reset();
      loadEpisodes();
    });
  }

  void loadEpisodes() async {
    if (mediaData.anime != null) {
      await Future.wait([
        _viewModel.getEpisodeData(widget.mediaData),
        _viewModel.getFillerEpisodes(widget.mediaData),
      ]);
    }
  }

  @override
  get widgetList => [_buildEpisodeList()];

  Widget _buildEpisodeList() {
    return Obx(() {
      var episodeList = _viewModel.episodeList.value;
      if (episodeList == null || episodeList.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }

      if (!_viewModel.episodeDataLoaded.value) {
        return const Center(child: CircularProgressIndicator());
      }

      updateEpisodeDetails(episodeList);
      final chunks =
          _chunkEpisodes(episodeList, _calculateChunkSize(episodeList));
      final selectedChunkIndex = _findSelectedChunkIndex(
        chunks,
        widget.mediaData.userProgress.toString(),
      );

      var viewType = (mediaData.selected?.recyclerStyle ??
              PrefManager.getVal(PrefName.AnimeDefaultView))
          .obs;
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(viewType),
          _buildChunkSelector(chunks, selectedChunkIndex),
          Obx(
            () => EpisodeAdaptor(
              type: viewType.value!,
              episodeList: chunks[selectedChunkIndex.value],
              mediaData: widget.mediaData,
            ),
          ),
        ],
      );
    });
  }

  Widget _buildTitle(Rx<int?> viewType) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Episode',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          _buildIconButtons(viewType),
        ],
      ),
    );
  }

  Widget _buildIconButtons(Rx<int?> viewType) {
    final theme = Theme.of(context).colorScheme;
    final icons = [
      Icons.view_list_sharp,
      Icons.grid_view_rounded,
      Icons.view_comfy_sharp,
    ];

    return Row(
      children: List.generate(icons.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Transform(
              alignment: Alignment.center,
              transform: index == 0 ? Matrix4.rotationY(3.14159) : Matrix4.identity(),
              child: Icon(icons[index]),
            ),
            iconSize: 24,
            color: viewType.value == index
                ? theme.onSurface
                : theme.onSurface.withOpacity(0.33),
            onPressed: () {
              viewType.value = index;
              changeViewType(index);
            },
          ),
        );
      }),
    );
  }

  void changeViewType(int? viewType) {
    final type = _viewModel.loadSelected(mediaData);
    type.recyclerStyle = viewType;
    _viewModel.saveSelected(mediaData.id, type);
  }

  Widget _buildChunkSelector(
    List<List<Episode>> chunks,
    RxInt selectedChunkIndex,
  ) {
    if (chunks.length < 2) {
      return const SizedBox();
    }
    return ScrollConfig(
      context,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            chunks.length,
            (index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? 32.0 : 6.0,
                    right: index == chunks.length - 1 ? 32.0 : 6.0),
                child: Obx(
                  () => ChoiceChip(
                    showCheckmark: false,
                    label: Text(
                        '${chunks[index].first.number} - ${chunks[index].last.number}',
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold)),
                    selected: selectedChunkIndex.value == index,
                    onSelected: (bool selected) {
                      if (selected) {
                        selectedChunkIndex.value = index;
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void updateEpisodeDetails(Map<String, Episode> episodeList) {
    episodeList.forEach((number, episode) {
      episode.title = _viewModel.anifyEpisodeList.value?[number]?.title ??
          _viewModel.kitsuEpisodeList.value?[number]?.title ??
          episode.title ??
          '';
      episode.desc = _viewModel.anifyEpisodeList.value?[number]?.desc ??
          _viewModel.kitsuEpisodeList.value?[number]?.desc ??
          episode.desc ??
          '';
      episode.thumb = _viewModel.anifyEpisodeList.value?[number]?.thumb ??
          _viewModel.kitsuEpisodeList.value?[number]?.thumb ??
          episode.thumb ??
          widget.mediaData.banner ??
          widget.mediaData.cover;
      episode.filler =
          _viewModel.fillerEpisodesList.value?[number]?.filler == true;
    });
  }

  int _calculateChunkSize(Map<String, Episode> episodeList) {
    final total = episodeList.values.length;
    final divisions = total / 10;
    return (divisions < 25)
        ? 25
        : (divisions < 50)
            ? 50
            : 100;
  }

  List<List<Episode>> _chunkEpisodes(
      Map<String, Episode> episodeList, int chunkSize) {
    final episodeValues = episodeList.values.toList();
    return List.generate(
        (episodeValues.length / chunkSize).ceil(),
        (index) => episodeValues.sublist(
              index * chunkSize,
              (index + 1) * chunkSize > episodeValues.length
                  ? episodeValues.length
                  : (index + 1) * chunkSize,
            ));
  }

  RxInt _findSelectedChunkIndex(
      List<List<Episode>> chunks, String targetEpisodeNumber) {
    for (var chunkIndex = 0; chunkIndex < chunks.length; chunkIndex++) {
      if (chunks[chunkIndex]
          .any((episode) => episode.number == targetEpisodeNumber)) {
        return chunkIndex.obs;
      }
    }
    return 0.obs;
  }
}
