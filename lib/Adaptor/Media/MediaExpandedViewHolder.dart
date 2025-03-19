import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Preferences/PrefManager.dart';
import '../../Widgets/CachedNetworkImage.dart';
import 'Widgets/MediaReleaseingIndicator.dart';
import 'Widgets/MediaScoreBadge.dart';

class MediaExpandedViewHolder extends StatelessWidget {
  final Media mediaInfo;
  final bool isLarge;
  final String tag;

  const MediaExpandedViewHolder({
    super.key,
    required this.mediaInfo,
    required this.tag,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    var thumb = ''.obs;
    var key = '${context.currentService().getName}_thumbList';
    var data = loadCustomData<Map<dynamic, dynamic>>(key);

    var list = data?.map(
      (key, value) => MapEntry(
        key.toString(),
        (value as Map<dynamic, dynamic>).map(
          (k, v) => MapEntry(
            k.toString(),
            v as String?,
          ),
        ),
      ),
    );

    thumb.value = list?[mediaInfo.id.toString()]
            ?[((mediaInfo.userProgress ?? 0) + 1).toString()] ??
        mediaInfo.cover ??
        '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(() => _buildCoverImage(context, thumb.value)),
        if (isLarge && mediaInfo.relation != null) _buildRelationRow(theme),
        const SizedBox(height: 8),
        _buildMediaTitle(),
        if (mediaInfo.minimal != true && mediaInfo.mal != true) ...[
          const SizedBox(height: 2),
          _buildProgressInfo(theme),
        ],
      ],
    );
  }

  Widget _buildCoverImage(BuildContext context, String? thumb) {
    return Stack(
      children: [
        Hero(
          tag: tag,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: cachedNetworkImage(
              imageUrl: thumb,
              fit: BoxFit.cover,
              width: 250,
              height: 160,
              placeholder: (context, url) => Container(
                color: Colors.white12,
                width: 108,
                height: 160,
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

  Widget _buildMediaTitle() {
    return Text(
      mediaInfo.userPreferredName,
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
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
