import 'package:dantotsu/Adaptor/Episode/EpisodeAdaptor.dart';
import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Screens/Info/Tabs/Watch/Widgets/SourceSelector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../DataClass/Episode.dart';
import '../../../../DataClass/Media.dart';
import '../../../../Preferences/PrefManager.dart';
import '../../../../Preferences/Preferences.dart';
import '../../../../Widgets/ScrollConfig.dart';
import '../../../../api/Mangayomi/Model/Source.dart';
import '../../Widgets/Releasing.dart';
import 'WatchPageViewModel.dart';

class WatchPage extends StatefulWidget {
  final media mediaData;

  const WatchPage({super.key, required this.mediaData});

  @override
  State<StatefulWidget> createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {
  Source? source;
  late WatchPageViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel =
        Get.put(WatchPageViewModel(), tag: widget.mediaData.id.toString());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _viewModel.reset();
      loadEpisodes();
    });
  }

  void loadEpisodes() async {
    if (widget.mediaData.anime != null) {
      await Future.wait([
        _viewModel.getEpisodeData(widget.mediaData),
        _viewModel.getFillerEpisodes(widget.mediaData),
      ]);
    }
  }

  void onSourceChange(Source source) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        this.source = source;
        _viewModel.searchMedia(source, widget.mediaData);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...releasingIn(widget.mediaData, context),
        _buildContent(theme),
        _buildEpisodeList(),
      ],
    );
  }

  Widget _buildContent(ColorScheme theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ..._buildYouTubeButton(),
          Obx(() => Text(
                _viewModel.status.value ?? '',
                style: TextStyle(
                    color: theme.onSurface, fontWeight: FontWeight.bold),
              )),
          const SizedBox(height: 12),
          SourceSelector(
            currentSource: source,
            onSourceChange: onSourceChange,
            mediaData: widget.mediaData,
          ),
          const SizedBox(height: 16),
          _buildWrongTitle(),
        ],
      ),
    );
  }

  Widget _buildEpisodeList() {
    return Obx(() {
      var episodeList = _viewModel.episodeList.value;
      if (episodeList == null || episodeList.isEmpty ) {
        return const Center(child: CircularProgressIndicator());
      }
      if (!_viewModel.episodeDataLoaded.value) {
        return const Center(child: CircularProgressIndicator());
      }

      updateEpisodeDetails(episodeList);

      final chunks =
          _chunkEpisodes(episodeList, _calculateChunkSize(episodeList));
      final selectedChunkIndex = _findSelectedChunkIndex(
          chunks, widget.mediaData.userProgress.toString());

      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildChunkSelector(chunks, selectedChunkIndex),
          Flexible(
            fit: FlexFit.loose,
            child: Obx(() => EpisodeAdaptor(
                  type: 0,
                  episodeList: chunks[selectedChunkIndex.value],
                  lastWatched: widget.mediaData.userProgress,
                )),
          ),
        ],
      );
    });
  }

  Widget _buildChunkSelector(
      List<List<Episode>> chunks, RxInt selectedChunkIndex) {
    if (chunks.length < 2) {
      return const SizedBox();
    }
    return ScrollConfig(
      context,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(chunks.length, (index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? 32.0 : 6.0,
                  right: index == chunks.length - 1 ? 32.0 : 6.0),
              child: Obx(() => ChoiceChip(
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
                  )),
            );
          }),
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

  Widget _buildWrongTitle() {
    var theme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () async =>
              _viewModel.wrongTitle(context, source!, widget.mediaData),
          child: Text(
            'Wrong title?',
            style: TextStyle(
              color: theme.secondary,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              decoration: TextDecoration.underline,
              decorationColor: theme.secondary,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
        )
      ],
    );
  }

  List<Widget> _buildYouTubeButton() {
    if (widget.mediaData.anime?.youtube == null ||
        !PrefManager.getVal(PrefName.showYtButton)) {
      return [];
    }

    return [
      SizedBox(
        height: 48,
        child: ElevatedButton(
          onPressed: () => openLinkInBrowser(widget.mediaData.anime!.youtube!),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFF0000),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.play_circle_fill, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'Play on YouTube',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 32),
    ];
  }
}
