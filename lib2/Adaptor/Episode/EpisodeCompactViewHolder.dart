import 'package:dartotsu/Functions/Extensions/StringExtensions.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Functions/Functions/GetXFunctions.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Theme/Colors.dart';
import '../../Theme/ThemeController.dart';
import 'Widget/HandleProgress.dart';

class EpisodeCompactView extends StatelessWidget {
  final DEpisode episode;
  final Media mediaData;
  final bool isWatched;

  EpisodeCompactView({
    super.key,
    required this.episode,
    required this.mediaData,
  }) : isWatched =
            (mediaData.userProgress != null && mediaData.userProgress! > 0)
                ? mediaData.userProgress!.toDouble() >=
                    episode.episodeNumber.toDouble()
                : false;

  @override
  Widget build(BuildContext context) {
    final themeManager = find<ThemeController>();
    final isDark = themeManager.isDarkMode.value;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.antiAlias,
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
              ep: episode.episodeNumber,
              width: double.infinity,
            ),
          ),

          if (episode.filler ?? false)
            Positioned(
              child: Container(
                color: isDark ? fillerDark : fillerLight,
              ),
            ),
          Center(
            child: Text(
              episode.episodeNumber,
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
