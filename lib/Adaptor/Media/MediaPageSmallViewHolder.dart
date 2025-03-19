import 'package:blur/blur.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';

import '../../DataClass/Media.dart';
import '../../Theme/ThemeProvider.dart';
import '../../Widgets/CachedNetworkImage.dart';
import 'Widgets/MediaReleaseingIndicator.dart';
import 'Widgets/MediaScoreBadge.dart';

class MediaPageSmallViewHolder extends StatelessWidget {
  final Media mediaInfo;
  final String tag;

  const MediaPageSmallViewHolder(this.mediaInfo, this.tag, {super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    final theme = Theme.of(context).colorScheme;
    final gradientColors = isDarkMode
        ? [Colors.transparent, theme.surface]
        : [Colors.white.withValues(alpha: 0.2), theme.surface];
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: _buildBackground(mediaInfo.banner ?? mediaInfo.cover),
          ),
          _buildGradientOverlay(gradientColors),
          const Blur(
            colorOpacity: 0.0,
            blur: 10,
            blurColor: Colors.transparent,
            child: SizedBox.expand(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24, top: 0.statusBar()),
            child: _buildContent(context, theme),
          ),
        ],
      ),
    );
  }

  Widget _buildBackground(String? bannerUrl) {
    return KenBurns(
      maxScale: 1.5,
      child: cachedNetworkImage(
        imageUrl: bannerUrl ?? '',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }

  Widget _buildGradientOverlay(List<Color> gradientColors) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ColorScheme theme) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMediaInfoRow(context, theme),
          const SizedBox(height: 16),
          _buildAdditionalInfo(theme),
        ],
      ),
    );
  }

  Widget _buildMediaInfoRow(BuildContext context, ColorScheme theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            _buildMediaCover(),
            if (mediaInfo.status == 'RELEASING') ReleasingIndicator(),
            ScoreBadge(context, mediaInfo),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 92),
              Text(
                mediaInfo.userPreferredName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 8),
              Text(
                mediaInfo.status?.replaceAll("_", " ") ?? "",
                style: TextStyle(
                  fontSize: 14,
                  color: theme.primary,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMediaCover() {
    return Hero(
      tag: tag,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: cachedNetworkImage(
          imageUrl: mediaInfo.cover ?? '',
          fit: BoxFit.cover,
          width: 108,
          height: 160,
          placeholder: (context, url) => Container(
            color: Colors.white12,
            width: 108,
            height: 160,
          ),
        ),
      ),
    );
  }

  Widget _buildAdditionalInfo(ColorScheme theme) {
    final isAnime = mediaInfo.anime != null;
    final mediaType = isAnime ? "Episodes" : "Chapters";
    final mediaCount = isAnime
        ? formatMediaInfo(mediaInfo)
        : mediaInfo.manga?.totalChapters != 0
            ? "${mediaInfo.manga?.totalChapters ?? "??"}"
            : "??";

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 108,
          child: RichText(
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            text: TextSpan(
              children: [
                TextSpan(
                  text: mediaCount,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: theme.onSurface,
                  ),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: mediaType,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: theme.onSurface.withValues(alpha: 0.66),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            mediaInfo.genres.join(" • "),
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 14,
              color: theme.onSurface.withValues(alpha: 0.66),
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}

String formatMediaInfo(Media media) {
  final nextAiringEpisode = media.anime?.nextAiringEpisode;
  final totalEpisodes = "${media.anime?.totalEpisodes ?? "??"}";
  return nextAiringEpisode != null && nextAiringEpisode != -1
      ? "$nextAiringEpisode / $totalEpisodes"
      : totalEpisodes;
}
