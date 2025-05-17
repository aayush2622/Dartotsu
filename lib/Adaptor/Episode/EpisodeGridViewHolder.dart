import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:dartotsu/Theme/ThemeProvider.dart';
import 'package:dartotsu/Widgets/CachedNetworkImage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../DataClass/Episode.dart';
import '../../DataClass/Media.dart';
import '../../Theme/Colors.dart';
import 'Widget/HandleProgress.dart';

class EpisodeCardView extends StatelessWidget {
  final Episode episode;
  final Media mediaData;
  final bool isWatched;

  EpisodeCardView({
    super.key,
    required this.episode,
    required this.mediaData,
  }) : isWatched = (mediaData.userProgress != null &&
                mediaData.userProgress! > 0)
            ? mediaData.userProgress!.toDouble() >= episode.number.toDouble()
            : false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    Color cardColor = isWatched
        ? theme.surface.withOpacity(0.5)
        : theme.surfaceContainerHighest;

    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      color: cardColor,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _buildBackgroundImage(context),
          _buildEpisodeInfo(context),
          if (isWatched) _buildWatchedOverlay(context),
          if (isWatched) _buildWatchedIcon(context),
          if (episode.filler ?? false) _fillerColor(context),
          _buildNumber(context),
          handleProgress(
            context: context,
            mediaId: mediaData.id,
            ep: episode.number,
            width: double.infinity,
          )
        ],
      ),
    );
  }

  Widget _fillerColor(BuildContext context) {
    final themeManager = Provider.of<ThemeNotifier>(context);
    final isDark = themeManager.isDarkMode;
    return Positioned(
      child: Container(
        color: isDark ? fillerDark : fillerLight,
      ),
    );
  }

  Widget _buildNumber(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Align(
      alignment: Alignment.bottomRight,
      child: Transform.translate(
        offset: const Offset(0, 6),
        child: Padding(
          padding: const EdgeInsets.only(right: 8, bottom: 0),
          child: Text(
            episode.number.toString(),
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: theme.onSurface.withOpacity(0.6),
                fontSize: 42),
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: cachedNetworkImage(
        width: double.infinity,
        height: 120,
        imageUrl: episode.thumb ?? '',
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          color: Colors.white12,
          width: 180,
          height: 120,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  Widget _buildEpisodeInfo(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (episode.title != null)
              Text(
                episode.title!,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildWatchedOverlay(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.55),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  Widget _buildWatchedIcon(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Icon(
          Icons.remove_red_eye,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}
