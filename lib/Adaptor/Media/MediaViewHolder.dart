import 'package:cached_network_image/cached_network_image.dart';
import 'package:dantotsu/DataClass/Media.dart';
import 'package:flutter/material.dart';

import '../../Widgets/Media/MediaReleaseingIndicator.dart';
import '../../Widgets/Media/MediaScoreBadge.dart';

class MediaViewHolder extends StatelessWidget {
  final media mediaInfo;

  const MediaViewHolder({super.key, required this.mediaInfo});

  @override
  Widget build(BuildContext context) { // holder for media
    final theme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: CachedNetworkImage(
                imageUrl: mediaInfo.cover ?? '',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 154,
                placeholder: (context, url) => Container(
                  color: Colors.white12,
                  width: double.infinity,
                  height: 154,
                ),
              ),
            ),
            if (mediaInfo.status == 'RELEASING') ReleasingIndicator(),
            ScoreBadge(context, mediaInfo),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          mediaInfo.userPreferredName,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 2),
        RichText(
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
                    ? "${mediaInfo.manga?.totalChapters ?? "~"}"
                    : formatMediaInfo(mediaInfo),
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

String formatMediaInfo(media media) {
  final nextAiringEpisode = media.anime?.nextAiringEpisode;
  final totalEpisodes = media.anime?.totalEpisodes?.toString() ?? "~";

  return nextAiringEpisode != null && nextAiringEpisode != -1
      ? "$nextAiringEpisode | $totalEpisodes"
      : totalEpisodes;
}
