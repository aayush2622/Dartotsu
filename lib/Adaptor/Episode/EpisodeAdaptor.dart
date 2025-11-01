import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
  VoidCallback? onTapCallback, {
  List<Video>? servers,
}) async {
  if (mediaData.nameRomaji == "Local files") {
    onTapCallback?.call();
    navigateToPage(
      context,
      MediaPlayer(
        media: mediaData,
        index: 0,
        videos: [Video(episode.name, episode.url!, "Media")],
        currentEpisode: episode,
        source: source,
      ),
    );
    return;
  }
  final lastSourceKey = "${mediaData.id}-${source.name}-lastSource";
  final autoKey = "${mediaData.id}-${source.name}-autoSource";

  final autoSourceMatch =
      AutoSourceMatch.fromJson(loadData(PrefName.autoSourceMatch));

  String? lastSelectedSource = loadCustomData(lastSourceKey);
  bool autoSelect = loadCustomData(autoKey, defaultValue: false)!;

  if (servers != null) {
    if (!autoSelect || lastSelectedSource == null) {
      openSourceSelectionSheet(
        context,
        episode,
        source,
        mediaData,
        onTapCallback,
      );
      return;
    }
    final index = findBestSourceIndex(
      servers,
      lastSelectedSource,
      autoSourceMatch,
    );

    if (index == null) {
      saveCustomData(lastSourceKey, null);
      openSourceSelectionSheet(
        context,
        episode,
        source,
        mediaData,
        onTapCallback,
      );
      return;
    }

    onTapCallback?.call();
    navigateToPage(
      context,
      MediaPlayer(
        media: mediaData,
        index: index,
        videos: servers,
        currentEpisode: episode,
        source: source,
      ),
    );
    return;
  }

  if (!autoSelect) {
    openSourceSelectionSheet(
        context, episode, source, mediaData, onTapCallback);
    return;
  }

  if (lastSelectedSource == null) {
    openSourceSelectionSheet(
        context, episode, source, mediaData, onTapCallback);
    return;
  }

  showAutoSelectingDialog(context, mediaData, autoKey, lastSourceKey);

  final videos = await source.methods.getVideoList(episode);

  if (!context.mounted) return;

  if (!loadCustomData(autoKey, defaultValue: false)!) {
    return;
  }

  final index =
      findBestSourceIndex(videos, lastSelectedSource, autoSourceMatch);

  Navigator.pop(context);

  if (index == null) {
    saveCustomData(lastSourceKey, null);
    openSourceSelectionSheet(
        context, episode, source, mediaData, onTapCallback);
    return;
  }

  onTapCallback?.call();
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
}

void showAutoSelectingDialog(
  BuildContext context,
  Media mediaData,
  String autoKey,
  String lastSourceKey,
) {
  final dialog = CustomBottomDialog(
    viewList: [
      Row(
        children: [
          const SizedBox(width: 16),
          const SizedBox(
            height: 28,
            width: 28,
            child: CircularProgressIndicator(strokeWidth: 3),
          ),
          const SizedBox(width: 16),
          const Text(
            "Auto selecting...",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              saveCustomData(autoKey, false);
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
        ],
      ),
    ],
    onClose: () {
      saveCustomData(lastSourceKey, null);
      saveCustomData(autoKey, false);
    },
  );
  showCustomBottomDialog(context, dialog);
}

int? findBestSourceIndex(
  List<Video> videos,
  String lastSource,
  AutoSourceMatch autoSourceMatch,
) {
  if (autoSourceMatch == AutoSourceMatch.Exact) {
    final index = videos.indexWhere(
      (v) => (v.title ?? v.quality) == lastSource,
    );
    return index == -1 ? null : index;
  }

  var bestScore = 0.0;
  var bestIndex = -1;

  for (var i = 0; i < videos.length; i++) {
    final title = videos[i].title ?? videos[i].quality;
    final score = lastSource.similarityTo(title);
    if (score > bestScore) {
      bestScore = score;
      bestIndex = i;
    }
  }

  return bestIndex >= 0 ? bestIndex : null;
}

void openSourceSelectionSheet(
  BuildContext context,
  DEpisode episode,
  Source source,
  Media mediaData,
  VoidCallback? onTapCallback,
) {
  final autoKey = "${mediaData.id}-${source.name}-autoSource";
  final lastSourceKey = "${mediaData.id}-${source.name}-lastSource";

  bool autoSelect = loadCustomData(autoKey, defaultValue: false)!;

  final dialog = CustomBottomDialog(
    title: "Select Source",
    viewList: [
      StatefulBuilder(
        builder: (context, setState) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Checkbox(
                value: autoSelect,
                onChanged: (checked) {
                  autoSelect = checked ?? false;
                  saveCustomData(autoKey, autoSelect);
                  if (!autoSelect) {
                    saveCustomData(lastSourceKey, null);
                  }
                  setState(() {});
                },
              ),
              const Text(
                "Auto Select Source",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      FutureBuilder<List<Video>>(
        future: source.methods.getVideoList(episode),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          return _buildSourceList(
            context,
            snapshot.data!,
            episode,
            source,
            mediaData,
            onTapCallback,
          );
        },
      ),
    ],
  );

  showCustomBottomDialog(context, dialog);
}

Widget _buildSourceList(
  BuildContext context,
  List<Video> videos,
  DEpisode episode,
  Source source,
  Media mediaData,
  VoidCallback? onTapCallback,
) {
  final allSubtitles = <Track>[];
  final seenLabels = <String>{};

  for (final video in videos) {
    if (video.subtitles != null && video.subtitles!.isNotEmpty) {
      for (final sub in video.subtitles!) {
        if (sub.label != null && !seenLabels.contains(sub.label)) {
          seenLabels.add(sub.label!);
          allSubtitles.add(
            Track(
              label: "${sub.label} (from external)",
              file: sub.file,
            ),
          );
        }
      }
    }
  }

  for (var video in videos) {
    if (video.subtitles == null || video.subtitles!.length <= 1) {
      video.subtitles = List.from(allSubtitles);
    }
  }

  return Column(
    children: List.generate(
      videos.length,
      (index) {
        final item = videos[index];

        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              MediaSettings.saveMediaSettings(
                mediaData..settings.server = item.title ?? item.quality,
              );

              onTapCallback?.call();
              Navigator.pop(context);

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
      },
    ),
  );
}
