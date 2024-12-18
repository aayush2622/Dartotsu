import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/api/Mangayomi/Eval/dart/model/video.dart';
import 'package:dantotsu/api/Mangayomi/Search/getVideo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Animation/ScaleAnimation.dart';
import '../../DataClass/Episode.dart';
import '../../DataClass/Media.dart';
import '../../Screens/Info/Tabs/Watch/Anime/Player/Player.dart';
import '../../Widgets/CustomBottomDialog.dart';
import '../../api/Mangayomi/Model/Source.dart';
import 'EpisodeListViewHolder.dart';

class EpisodeAdaptor extends StatefulWidget {
  final int type;
  final Source source;
  final List<Episode> episodeList;
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
  late List<Episode> episodeList;

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
        return _buildListLayout();
      case 2:
        return const SizedBox();
      default:
        return const SizedBox();
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
}

void onEpisodeClick(
  BuildContext context,
  Episode episode,
  Source source,
  Media mediaData,
  VoidCallback? onEpisodeClick,
) {
  var episodeDialog = CustomBottomDialog(
    title: 'Select Source',
    viewList: [
      FutureBuilder<List<Video>>(
        future: getVideo(source: source, url: episode.link!),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            var videos = snapshot.data!;
            return ListView.builder(
              shrinkWrap: true,
              itemCount: videos.length,
              itemBuilder: (context, index) {
                var item = videos[index];
                return ListTile(
                  title: Text(item.quality),
                  onTap: () {
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
                );
              },
            );
          } else {
            return const Center(child: Text('No sources available'));
          }
        },
      ),
    ],
  );
  showCustomBottomDialog(context, episodeDialog);
}
