import 'package:dantotsu/Functions/string_extensions.dart';
import 'package:flutter/widgets.dart';

import '../../Animation/ScaleAnimation.dart';
import '../../DataClass/Episode.dart';
import '../../DataClass/Media.dart';
import '../../api/Discord/Discord.dart';
import 'EpisodeListViewHolder.dart';

class EpisodeAdaptor extends StatefulWidget {
  final int type;
  final List<Episode> episodeList;
  final media mediaData;

  const EpisodeAdaptor(
      {super.key,
      required this.type,
      required this.episodeList,
      required this.mediaData});

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
            bool isWatched;
            if (widget.mediaData.userProgress != null &&
                widget.mediaData.userProgress! > 0) {
              isWatched =
                  widget.mediaData.userProgress!.toString().toDouble() >=
                      episodeList[index].number.toDouble();
            } else {
              isWatched = false;
            }
            return SlideAndScaleAnimation(
              initialScale: 0.0,
              finalScale: 1.0,
              initialOffset: const Offset(1.0, 0.0),
              finalOffset: Offset.zero,
              duration: const Duration(milliseconds: 200),
              child: GestureDetector(
                onTap: () => Discord.setRpc(widget.mediaData, episodeList[index]),
                child: Container(
                  width: double.infinity,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                  child: Opacity(
                    opacity: isWatched ? 0.5 : 1.0,
                    child: EpisodeListView(episode: episodeList[index], isWatched: isWatched,mediaData: widget.mediaData),
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
