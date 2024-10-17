import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Screens/Info/Tabs/Watch/Widgets/SourceSelector.dart';
import 'package:dantotsu/Widgets/CachedNetworkImage.dart';
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
      load();
    });
  }

  void load() async {
    if (widget.mediaData.anime != null) {
      _viewModel.getAnifyEpisodes(widget.mediaData);
      _viewModel.getKitsuEpisodes(widget.mediaData);
      _viewModel.getFillerEpisodes(widget.mediaData);
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...releasingIn(widget.mediaData, context),
        _buildWithPadding([
          ..._buildYouTubeButton(),
          Obx(
            () => Text(
              _viewModel.status.value ?? '',
              style: TextStyle(
                  color: theme.onSurface, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12),
          SourceSelector(
            currentSource: source,
            onSourceChange: onSourceChange,
            mediaData: widget.mediaData,
          ),
          const SizedBox(height: 16),
          _buildWrongTitle(),
        ]),
        _buildEpisodeList(),
      ],
    );
  }

  Widget _buildWithPadding(List<Widget> widgets) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }

  Widget _buildEpisodeList() {
    return Obx(() {
      var episodeList = _viewModel.episodeList.value;
      if (episodeList == null || episodeList.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }
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

      final total = episodeList.values.length;
      final divisions = total / 10;
      var chunkSize = (divisions < 25)
          ? 25
          : (divisions < 50)
              ? 50
              : 100;
      List<List<Episode>> chunks = [];
      var episodeValues = episodeList.values.toList();
      for (var i = 0; i < episodeValues.length; i += chunkSize) {
        chunks.add(episodeValues.sublist(
            i,
            i + chunkSize > episodeValues.length
                ? episodeValues.length
                : i + chunkSize));
      }
      final RxInt selectedChunkIndex = 0.obs;
      String targetEpisodeNumber = widget.mediaData.userProgress.toString();

      for (var chunkIndex = 0; chunkIndex < chunks.length; chunkIndex++) {
        if (chunks[chunkIndex]
            .any((episode) => episode.number == targetEpisodeNumber)) {
          selectedChunkIndex.value = chunkIndex;
          break;
        }
      }

      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScrollConfig(
            context,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Obx(
                () => chunks.length > 1
                    ? Row(
                        children: List.generate(chunks.length, (index) {
                          String f = chunks[index].first.number;
                          String l = chunks[index].last.number;
                          return Padding(
                            padding: EdgeInsets.only(
                                left: index == 0 ? 32.0 : 6.0,
                                right: index == chunks.length - 1 ? 32.0 : 6.0),
                            child: ChoiceChip(
                              showCheckmark: false,
                              label: Text('$f - $l',
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                  )),
                              selected: selectedChunkIndex.value == index,
                              onSelected: (bool selected) {
                                if (selected) {
                                  selectedChunkIndex.value = index;
                                }
                              },
                            ),
                          );
                        }),
                      )
                    : const SizedBox(),
              ),
            ),
          ),
          // List of episodes
          Flexible(
            fit: FlexFit.loose,
            child: Obx(() => ListView.builder(
                  shrinkWrap: true,
                  itemCount: chunks[selectedChunkIndex.value].length,
                  itemBuilder: (context, index) {
                    var episode = chunks[selectedChunkIndex.value][index];
                    return GestureDetector(
                      onTap: () async {
                        // Handle tap action
                      },
                      child: ListTile(
                        leading: cachedNetworkImage(
                          imageUrl: episode.thumb,
                          width: 70,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          episode.title ?? 'Episode ${episode.number}',
                          style: TextStyle(
                            color: episode.filler == true
                                ? Colors.black
                                : Colors.grey,
                          ),
                        ),
                        subtitle: Text(
                          episode.desc ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: episode.filler == true
                                ? Colors.black
                                : Colors.grey,
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ),
        ],
      );
    });
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
    return [
      if (widget.mediaData.anime?.youtube != null &&
          PrefManager.getVal(PrefName.showYtButton)) ...[
        SizedBox(
          height: 48,
          child: ElevatedButton(
            onPressed: () =>
                openLinkInBrowser(widget.mediaData.anime!.youtube!),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF0000),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  'Play on YouTube',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32),
      ],
    ];
  }
}
/*
var dialog = CustomBottomDialog(
  title: 'Select episode',
  viewList: [
    FutureBuilder<List<Video>>(
      future: getVideo(
          source: source!,
          url: chapters[index].url ?? ''),
      builder: (context, snapshot) {
        if (snapshot.connectionState ==
            ConnectionState.waiting) {
          return const Center(
              child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
              child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData ||
            snapshot.data!.isEmpty) {
          return const Center(
              child: Text('No episodes found.'));
        }
        var episodeList = snapshot.data!;
        return Column(
          children: [
            for (var episode in episodeList)
              ListTile(
                title: Text(episode.quality),
                onTap: () {
                  openLinkInBrowser(episode.url);
                },
              ),
          ],
        );
      },
    ),
  ],
);
showCustomBottomDialog(context, dialog);*/
