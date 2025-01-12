import 'package:collection/collection.dart';
import 'package:dantotsu/DataClass/Media.dart';
import 'package:dantotsu/Functions/Extensions.dart';
import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:dantotsu/Screens/Detail/Tabs/Watch/BaseParser.dart';
import 'package:dantotsu/Screens/Detail/Tabs/Watch/BaseWatchScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Adaptor/Episode/EpisodeAdaptor.dart';
import '../../../../../DataClass/Episode.dart';
import '../../../../../Theme/LanguageSwitcher.dart';
import 'AnimeParser.dart';
import 'Widget/BuildChunkSelector.dart';
import 'Widget/ContinueCard.dart';

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
      if (episodeList == null) {
        return const Center(child: CircularProgressIndicator());
      }

      if (!_viewModel.episodeDataLoaded.value) {
        return const Center(child: CircularProgressIndicator());
      }
      if (episodeList.isEmpty){
        return Center(
          child: Text(
            _viewModel.errorType.value == ErrorType.NotFound
                ? 'Media not found'
                : 'No episodes found',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }
      updateEpisodeDetails(episodeList);

      var (chunks, initChunkIndex) = buildChunks(
          context, episodeList, widget.mediaData.userProgress.toString());

      var selectedEpisode = episodeList.values.firstWhereOrNull((element) =>
          element.number ==
          ((widget.mediaData.userProgress ?? 0) + 1).toString());

      RxInt selectedChunkIndex = (-1).obs;

      selectedChunkIndex =
          selectedChunkIndex.value == -1 ? initChunkIndex : selectedChunkIndex;
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
          ChunkSelector(
            context,
            chunks,
            selectedChunkIndex,
            _viewModel.reversed,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            child: Obx(() {
              var reversed = _viewModel.reversed.value
                  ? chunks.map((element) => element.reversed.toList())
                  .toList()
                  : chunks;
              return EpisodeAdaptor(
                type: _viewModel.viewType.value,
                source: _viewModel.source.value!,
                episodeList: reversed[selectedChunkIndex.value],
                mediaData: widget.mediaData,
              );
            }),
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
          Expanded(
            child: Text(
              getString.episode(_viewModel.episodeList.value?.length ?? 1),
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          IconButton(
            onPressed: () => _viewModel.settingsDialog(context, mediaData),
            icon: Icon(
              Icons.menu_rounded,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
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
    var key = '${context.currentService().getName}_thumbList';
    Map<dynamic, dynamic>? t = loadCustomData(key);

    var thumbList = (t)?.map(
          (key, value) => MapEntry(
        key.toString(),
        (value as Map<dynamic, dynamic>).map(
              (k, v) => MapEntry(k.toString(), v as String?),
        ),
      ),
    ) ?? {};
    for (var i in episodeList.values) {
      thumbList[mediaData.id.toString()] ??= {};

      thumbList[mediaData.id.toString()]![i.number] = i.thumb;
    }

  }
}
