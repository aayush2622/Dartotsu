import 'package:dartotsu/DataClass/Media.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Widgets/CachedNetworkImage.dart';
import 'Widgets/MediaReleaseingIndicator.dart';
import 'Widgets/MediaScoreBadge.dart';

class MediaViewHolder extends StatelessWidget {
  final Media mediaInfo;
  final bool isLarge;
  final String tag;

  const MediaViewHolder({
    super.key,
    required this.mediaInfo,
    required this.tag,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final isSkeleton = Skeletonizer.of(context).enabled;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCoverImage(context, isSkeleton),
        if (isLarge && mediaInfo.relation != null && !isSkeleton)
          _buildRelationRow(theme),
        const SizedBox(height: 8),
        _buildMediaTitle(isSkeleton),
        if (mediaInfo.minimal != true && mediaInfo.mal != true) ...[
          const SizedBox(height: 2),
          _buildProgressInfo(theme),
        ],
      ],
    );
  }

  Widget _buildCoverImage(BuildContext context, bool isSkeleton) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: isSkeleton
              ? Container(
                  color: Colors.white12,
                  width: 108,
                  height: 160,
                )
              : Hero(
                  tag: tag,
                  child: cachedNetworkImage(
                    imageUrl: mediaInfo.cover ?? '',
                    fit: BoxFit.cover,
                    width: 108,
                    height: 160,
                    placeholder: (context, url) => Container(
                      color: Colors.white12,
                      width: 108,
                      height: 160,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.white12,
                      width: 108,
                      height: 160,
                      child: const Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 32,
                      ),
                    ),
                  ),
                ),
        ),
        if (mediaInfo.minimal != true) ...[
          if (mediaInfo.status == 'RELEASING') ReleasingIndicator(),
          ScoreBadge(context, mediaInfo),
        ],
      ],
    );
  }

  Widget _buildRelationRow(ColorScheme theme) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            mediaInfo.anime != null
                ? Icons.movie_filter_rounded
                : Icons.import_contacts,
            size: 16,
            color: theme.onSurface.withValues(alpha: 0.58),
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              mediaInfo.relation?.replaceAll("_", " ") ?? "",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: theme.onSurface.withValues(alpha: 0.58),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMediaTitle(bool isSkeleton) {
    return SizedBox(
      width: 108,
      child: Text(
        isSkeleton ? 'Loading title' : mediaInfo.userPreferredName,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildProgressInfo(ColorScheme theme) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '${mediaInfo.userProgress ?? "~"}',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: theme.secondary,
              fontSize: 14,
            ),
          ),
          const TextSpan(
            text: ' | ',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          TextSpan(
            text: mediaInfo.anime == null
                ? mediaInfo.manga?.totalChapters != 0
                    ? "${mediaInfo.manga?.totalChapters ?? "~"}"
                    : "~"
                : formatMediaInfo(mediaInfo),
            style: const TextStyle(
              fontFamily: 'Poppins',
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

String formatMediaInfo(Media media) {
  final nextAiringEpisode = media.anime?.nextAiringEpisode;
  final totalEpisodes = "${media.anime?.totalEpisodes ?? "~"}";
  return nextAiringEpisode != null && nextAiringEpisode != -1
      ? "$nextAiringEpisode | $totalEpisodes"
      : totalEpisodes;
}
