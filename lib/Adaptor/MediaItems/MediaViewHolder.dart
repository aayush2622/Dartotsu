import 'package:cached_network_image/cached_network_image.dart';
import 'package:dantotsu/DataClass/Media.dart';
import 'package:flutter/material.dart';

class MediaViewHolder extends StatelessWidget {
  final media Media;

  const MediaViewHolder({super.key, required this.Media});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: CachedNetworkImage(
                imageUrl: Media.cover ?? '',
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
            if (Media.status == 'RELEASING') _buildReleasingIndicator(),
            _buildScoreBadge(context),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          Media.userPreferredName,
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
                text: '${Media.userProgress ?? "~"}',
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
                text: Media.anime == null
                    ? "${Media.manga?.totalChapters ?? "~"}"
                    : formatMediaInfo(Media),
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

  Widget _buildReleasingIndicator() {
    return Positioned(
      bottom: -3,
      left: -2,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: const Color(0xFF6BF170),
            border: Border.all(
              color: const Color(0xFF208358),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  Widget _buildScoreBadge(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.2, vertical: 2.2),
        decoration: BoxDecoration(
          color: Media.userScore == 0 ? theme.primary : theme.tertiary,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(16.0),
            topLeft: Radius.circular(17.0),
            bottomLeft: Radius.circular(-1.0),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(
                ((Media.userScore == 0
                    ? Media.meanScore ?? 0
                    : Media.userScore ?? 0) /
                    10.0)
                    .toString(),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: theme.onPrimary,
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                ),
              ),
            ),
            Icon(
              Icons.star_rounded,
              color: theme.onPrimary,
              size: 12,
            ),
          ],
        ),
      ),
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
