import 'package:dartotsu/Functions/Extensions/StringExtensions.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Services/Model/Media.dart';
import '../Episode/Widget/HandleProgress.dart';

class ChapterCompactView extends StatelessWidget {
  final DEpisode chapter;
  final Media mediaData;
  final bool isWatched;

  ChapterCompactView({
    super.key,
    required this.chapter,
    required this.mediaData,
  }) : isWatched =
            (mediaData.userProgress != null && mediaData.userProgress! > 0)
                ? mediaData.userProgress!.toDouble() >=
                    chapter.episodeNumber.toDouble()
                : false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
      elevation: 4,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.surfaceVariant,
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: handleProgress(
              context: context,
              mediaId: mediaData.id,
              ep: chapter.episodeNumber,
              width: 162,
            ),
          ),
          Center(
            child: Text(
              chapter.episodeNumber,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
            ),
          ),

          // Viewed cover
          if (isWatched)
            Container(
              decoration: BoxDecoration(
                color:
                    Theme.of(context).colorScheme.background.withOpacity(0.33),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
        ],
      ),
    );
  }
}
