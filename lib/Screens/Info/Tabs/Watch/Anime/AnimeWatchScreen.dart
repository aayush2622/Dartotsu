import 'package:dantotsu/DataClass/Media.dart';
import 'package:dantotsu/Screens/Info/Tabs/Watch/BaseParser.dart';
import 'package:dantotsu/Screens/Info/Tabs/Watch/BaseWatchScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Adaptor/Episode/EpisodeAdaptor.dart';
import '../../../../../DataClass/Episode.dart';
import '../Widgets/BuildChunkSelector.dart';
import '../Widgets/ContinueCard.dart';
import 'AnimeParser.dart';

class AnimeWatchScreen extends StatefulWidget {
  final Media mediaData;

  const AnimeWatchScreen({super.key, required this.mediaData});

  @override
  AnimeWatchScreenState createState() => AnimeWatchScreenState();
}

class AnimeWatchScreenState extends BaseWatchScreen<AnimeWatchScreen> {
  late AnimeParser _viewModel;

  @override
  Media get mediaData => widget.mediaData;

  @override
  BaseParser get viewModel => _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = Get.put(AnimeParser(), tag: widget.mediaData.id.toString());

    widget.mediaData.selected = _viewModel.loadSelected(widget.mediaData);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _viewModel.init(widget.mediaData);
    });
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

      var (chunks, selectedChunkIndex) = buildChunks(
          context, episodeList, widget.mediaData.userProgress.toString());

      var selectedEpisode = episodeList[((widget.mediaData.userProgress ?? 0) + 1).toString()];
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          ContinueCard(
            mediaData: widget.mediaData,
            episode: selectedEpisode,
            source: _viewModel.source.value!,
          ),
          buildChunkSelector(context, chunks, selectedChunkIndex),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            child: Obx(() => EpisodeAdaptor(
                  type: _viewModel.viewType.value,
                  source: _viewModel.source.value!,
                  episodeList: chunks[selectedChunkIndex.value],
                  mediaData: widget.mediaData,
                )),
          )
        ],
      );
    });
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Episodes',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          _buildIconButtons(),
        ],
      ),
    );
  }

  Widget _buildIconButtons() {
    final theme = Theme.of(context).colorScheme;
    final icons = [
      Icons.view_list_sharp,
      Icons.grid_view_rounded,
      Icons.view_comfy_rounded,
    ];
    var viewType = _viewModel.viewType;

    return Obx(() {
      return Row(
        children: List.generate(icons.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Transform(
                alignment: Alignment.center,
                transform: index == 0
                    ? Matrix4.rotationY(3.14159)
                    : Matrix4.identity(),
                child: Icon(icons[index]),
              ),
              iconSize: 24,
              color: viewType.value == index
                  ? theme.onSurface
                  : theme.onSurface.withValues(alpha: 0.33),
              onPressed: () => changeViewType(viewType, index),
            ),
          );
        }),
      );
    });
  }

  void changeViewType(RxInt viewType, int index) {
    var type = _viewModel.loadSelected(mediaData);
    viewType.value = index;
    type.recyclerStyle = index;
    _viewModel.saveSelected(mediaData.id, type);
  }

  void updateEpisodeDetails(Map<String, Episode> episodeList) {
    widget.mediaData.anime?.episodes = episodeList;
    widget.mediaData.anime?.fillerEpisodes =
        _viewModel.fillerEpisodesList.value;
    widget.mediaData.anime?.kitsuEpisodes = _viewModel.kitsuEpisodeList.value;
    widget.mediaData.anime?.anifyEpisodes = _viewModel.anifyEpisodeList.value;
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
}
