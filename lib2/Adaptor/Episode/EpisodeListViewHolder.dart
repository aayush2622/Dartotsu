import 'package:dartotsu/Functions/Extensions/StringExtensions.dart';
import 'package:dartotsu/Theme/Colors.dart';
import 'package:dartotsu/Theme/ThemeController.dart';
import 'package:dartotsu/Widgets/CachedNetworkImage.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import '../../Functions/Functions/GetXFunctions.dart';
import '../../Services/Model/Media.dart';
import 'Widget/HandleProgress.dart';

class EpisodeListView extends StatelessWidget {
  final DEpisode episode;
  final Media mediaData;
  final bool isWatched;

  EpisodeListView({
    super.key,
    required this.episode,
    required this.mediaData,
  }) : isWatched =
            (mediaData.userProgress != null && mediaData.userProgress! > 0)
                ? mediaData.userProgress!.toString().toDouble() >=
                    episode.episodeNumber.toDouble()
                : false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final themeManager = find<ThemeController>();
    final isDark = themeManager.isDarkMode.value;

    Color cardColor = (episode.filler ?? false)
        ? (isDark ? fillerDark : fillerLight)
        : theme.surfaceContainerHighest;

    return Opacity(
      opacity: isWatched ? 0.5 : 1.0,
      child: Card(
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        elevation: 4,
        color: cardColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildEpisodeHeader(context, theme),
            if (episode.description != null && episode.description!.isNotEmpty)
              _buildEpisodeDescription(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildEpisodeHeader(BuildContext context, ColorScheme theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildThumbnail(context, theme),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (episode.filler ?? false)
                  const Text(
                    "Filler",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Poppins',
                    ),
                  ),
                Text(
                  episode.name ?? '',
                  maxLines: 5,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildThumbnail(BuildContext context, ColorScheme theme) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      color: theme.surfaceContainerLowest,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: cachedNetworkImage(
              imageUrl: episode.thumbnail ?? '',
              fit: BoxFit.fill,
              width: 164,
              height: 109,
              placeholder: (context, url) => Container(
                color: Colors.white12,
                width: 164,
                height: 109,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
          Positioned(
            top: -4,
            left: -4,
            child: Card(
              color: theme.onSurface,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16.0),
                  topLeft: Radius.circular(17.0),
                  bottomLeft: Radius.circular(-1.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6.0,
                  vertical: 4.0,
                ),
                child: Text(
                  episode.episodeNumber,
                  style: TextStyle(
                    fontSize: 20,
                    color: theme.surface,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ),
          if (isWatched)
            Positioned(
              bottom: 6,
              left: 3,
              child: Icon(
                Icons.remove_red_eye,
                color: theme.onSurface,
                size: 26,
              ),
            ),
          handleProgress(
            context: context,
            mediaId: mediaData.id,
            ep: episode.episodeNumber,
            width: 162,
          )
        ],
      ),
    );
  }

  Widget _buildEpisodeDescription(ColorScheme theme) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ExpandableText(
        episode.description!,
        style: TextStyle(
          color: theme.onSurface,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        maxLines: 3,
        expandText: 'Show more',
        collapseText: 'Show less',
      ),
    );
  }
}
