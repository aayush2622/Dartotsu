import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:string_similarity/string_similarity.dart';

import '../../Animation/ScaleAnimation.dart';
import '../../DataClass/Media.dart';
import '../../Screens/Anime/Player/Player.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'EpisodeCompactViewHolder.dart';
import 'EpisodeGridViewHolder.dart';
import 'EpisodeListViewHolder.dart';

class EpisodeAdaptor extends StatefulWidget {
  final int type;
  final Source source;
  final List<DEpisode> episodeList;
  final Media mediaData;
  final VoidCallback? onEpisodeClick;

  const EpisodeAdaptor({
    super.key,
    required this.type,
    required this.source,
    required this.episodeList,
    required this.mediaData,
    this.onEpisodeClick,
  });

  @override
  EpisodeAdaptorState createState() => EpisodeAdaptorState();
}

class EpisodeAdaptorState extends State<EpisodeAdaptor> {
  late List<DEpisode> episodeList;

  @override
  void initState() {
    super.initState();
    episodeList = widget.episodeList;
  }

  @override
  void didUpdateWidget(EpisodeAdaptor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.episodeList != widget.episodeList) {
      episodeList = widget.episodeList;
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case 0:
        return _buildListLayout();
      case 1:
        return _buildGridLayout();
      case 2:
        return _buildCompactView();
      default:
        return _buildListLayout();
    }
  }

  Widget _buildListLayout() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: Container(
        constraints: const BoxConstraints(maxHeight: double.infinity),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: episodeList.length,
          itemBuilder: (context, index) {
            return SlideAndScaleAnimation(
              initialScale: 0.0,
              finalScale: 1.0,
              initialOffset: const Offset(1.0, 0.0),
              finalOffset: Offset.zero,
              duration: const Duration(milliseconds: 200),
              child: GestureDetector(
                onTap: () => onEpisodeClick(
                  context,
                  episodeList[index],
                  widget.source,
                  widget.mediaData,
                  widget.onEpisodeClick,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: EpisodeListView(
                    episode: episodeList[index],
                    mediaData: widget.mediaData,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildGridLayout() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final parentWidth = constraints.maxWidth;
        var crossAxisCount = (parentWidth / 180).floor();
        if (crossAxisCount < 1) crossAxisCount = 1;
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: StaggeredGrid.count(
              crossAxisCount: crossAxisCount,
              children: List.generate(
                episodeList.length,
                (index) {
                  return SlideAndScaleAnimation(
                    initialScale: 0.0,
                    finalScale: 1.0,
                    initialOffset: const Offset(1.0, 0.0),
                    finalOffset: Offset.zero,
                    duration: const Duration(milliseconds: 200),
                    child: GestureDetector(
                      onTap: () => onEpisodeClick(
                        context,
                        episodeList[index],
                        widget.source,
                        widget.mediaData,
                        widget.onEpisodeClick,
                      ),
                      onLongPress: () {},
                      child: SizedBox(
                        width: 180,
                        height: 120,
                        child: EpisodeCardView(
                          episode: episodeList[index],
                          mediaData: widget.mediaData,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildCompactView() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final parentWidth = constraints.maxWidth;
        var crossAxisCount = (parentWidth / 82).floor();
        if (crossAxisCount < 1) crossAxisCount = 1;
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: StaggeredGrid.count(
              crossAxisCount: crossAxisCount,
              children: List.generate(
                episodeList.length,
                (index) {
                  return SlideAndScaleAnimation(
                    initialScale: 0.0,
                    finalScale: 1.0,
                    initialOffset: const Offset(1.0, 0.0),
                    finalOffset: Offset.zero,
                    duration: const Duration(milliseconds: 200),
                    child: GestureDetector(
                      onTap: () => onEpisodeClick(
                        context,
                        episodeList[index],
                        widget.source,
                        widget.mediaData,
                        widget.onEpisodeClick,
                      ),
                      onLongPress: () {},
                      child: SizedBox(
                        width: 82,
                        height: 82,
                        child: EpisodeCompactView(
                          episode: episodeList[index],
                          mediaData: widget.mediaData,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

void onEpisodeClick(
  BuildContext context,
  DEpisode episode,
  Source source,
  Media mediaData,
  VoidCallback? onEpisodeClick,
) {
  if (mediaData.nameRomaji == 'Local files') {
    navigateToPage(
      context,
      MediaPlayer(
        media: mediaData,
        index: 0,
        videos: [Video(episode.name, episode.url!, 'Media')],
        currentEpisode: episode,
        source: source,
      ),
    );
    return;
  }

  final lastQualityKey = "${mediaData.id}-${source.name}-lastQuality";
  final autoSourceKey = "${mediaData.id}-${source.name}-autoSource";

  var autoSelectSourceSetting =
      loadCustomData(autoSourceKey, defaultValue: false);

  final videos = source.methods.getVideoList(episode);

  final episodeDialog = CustomBottomDialog(
    title: 'Select Source',
    viewList: [
      StatefulBuilder(
          builder: (context, setState) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Checkbox(
                      value: autoSelectSourceSetting,
                      onChanged: (checked) {
                        autoSelectSourceSetting = checked ?? false;
                        saveCustomData(autoSourceKey, autoSelectSourceSetting);
                        setState(() {});
                      },
                      activeColor: Theme.of(context).colorScheme.primary,
                    ),
                    const Text(
                      'Auto Select Source',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
      FutureBuilder<List<Video>>(
        future: videos,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            var videos = snapshot.data!;

            return Column(
              children: videos.map((item) {
                var index = videos.indexOf(item);

                var allSubtitles = <Track>[];
                var addedSubtitleTitles = <String>{};
                for (var video in videos) {
                  if (video.subtitles != null && video.subtitles!.length > 1) {
                    for (var subtitle in video.subtitles!) {
                      if (!addedSubtitleTitles.contains(subtitle.label)) {
                        addedSubtitleTitles.add(subtitle.label ?? '');
                        var newSubtitle = Track(
                          label: '${subtitle.label} (from external)',
                          file: subtitle.file,
                        );
                        allSubtitles.add(newSubtitle);
                      }
                    }
                  }
                }

                for (var video in videos) {
                  if (video.subtitles == null || video.subtitles!.length <= 1) {
                    video.subtitles = List.from(allSubtitles);
                  }
                }

                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      saveCustomData<String?>(
                          lastQualityKey, item.title ?? item.quality);
                      onEpisodeClick?.call();
                      Get.back();
                      navigateToPage(
                        context,
                        MediaPlayer(
                          media: mediaData,
                          index: index,
                          videos: videos,
                          currentEpisode: episode,
                          source: source,
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              item.title ?? item.quality,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.play_arrow,
                            size: 24,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          } else {
            return const Center(child: Text('No sources available'));
          }
        },
      ),
    ],
  );

  if (autoSelectSourceSetting == true) {
    var lastQualityTitle =
        loadCustomData<String?>(lastQualityKey, defaultValue: null);

    if (lastQualityTitle != null) {
      videos.then((videos) async {
        if (!context.mounted) return;

        final autoSourceMatch =
            AutoSourceMatch.fromJson(loadData(PrefName.autoSourceMatch));

        int? index;
        if (autoSourceMatch == AutoSourceMatch.Exact) {
          index = videos.indexWhere(
              (video) => (video.title ?? video.quality) == lastQualityTitle);
          if (index == -1) index = null;
        } else {
          var bestMatch = 0;
          var bestRating = 0.0;

          for (var i = 0; i < videos.length; i++) {
            var videoTitle = videos[i].title ?? videos[i].quality;
            var rating = lastQualityTitle.similarityTo(videoTitle);
            if (rating > bestRating) {
              bestRating = rating;
              bestMatch = i;
            }
          }

          index = videos.isNotEmpty ? bestMatch : null;
        }

        if (index == null) {
          saveCustomData<String?>(lastQualityKey, null);
          showCustomBottomDialog(context, episodeDialog);
          return;
        }
        if (videos.isEmpty || !context.mounted) return;

        onEpisodeClick?.call();
        navigateToPage(
          context,
          MediaPlayer(
            media: mediaData,
            index: index,
            videos: videos,
            currentEpisode: episode,
            source: source,
          ),
        );
      });

      return;
    }
  }

  showCustomBottomDialog(context, episodeDialog);
}
