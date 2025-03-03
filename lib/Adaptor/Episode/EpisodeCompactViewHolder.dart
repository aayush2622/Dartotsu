import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../DataClass/Episode.dart';
import '../../DataClass/Media.dart';
import '../../Theme/Colors.dart';
import '../../Theme/ThemeProvider.dart';
import 'Widget/HandleProgress.dart';

class EpisodeCompactView extends StatelessWidget {
  final Episode episode;
  final Media mediaData;
  final bool isWatched;

  EpisodeCompactView({
    super.key,
    required this.episode,
    required this.mediaData,
  }) : isWatched = (mediaData.userProgress != null &&
                mediaData.userProgress! > 0)
            ? mediaData.userProgress!.toDouble() >= episode.number.toDouble()
            : false;

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeNotifier>(context);
    final isDark = themeManager.isDarkMode;
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
              ep: episode.number,
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
              episode.number,
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
