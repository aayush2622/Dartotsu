import 'package:dartotsu/Adaptor/Chapter/ChapterAdaptor.dart';
import 'package:dartotsu/Widgets/CachedNetworkImage.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../../../../Adaptor/Episode/Widget/HandleProgress.dart';
import '../../../../../../Core/Services/Model/Media.dart';

class ContinueCard extends StatelessWidget {
  final Media mediaData;
  final DEpisode? chapter;
  final Source source;

  const ContinueCard({
    super.key,
    required this.mediaData,
    required this.chapter,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    if (chapter == null ||
        mediaData.userProgress == null ||
        mediaData.userProgress == 0) {
      return const SizedBox();
    }

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      child: GestureDetector(
        onTap: () =>
            onChapterClick(context, chapter!, source, mediaData, () {}),
        child: SizedBox(
          height: 80,
          child: Stack(
            children: [
              Positioned.fill(
                child: cachedNetworkImage(
                  imageUrl: mediaData.cover ?? mediaData.banner,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Continue : Chapter ${chapter!.episodeNumber} \n ${chapter!.name}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: handleProgress(
                  context: context,
                  mediaId: mediaData.id,
                  ep: chapter!.episodeNumber,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
