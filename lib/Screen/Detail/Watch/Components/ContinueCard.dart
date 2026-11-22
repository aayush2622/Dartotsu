import 'package:flutter/material.dart';

import '../Data/Media/MediaRecord.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Data/EpisodeUnits.dart';
import '../Data/LocalProgress.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/Clickable.dart';
import '../../../Player/Components/PlayerSeekBar.dart';
import 'UnitTile.dart';

class ContinueCard extends StatelessWidget {
  final WatchUnit unit;
  final bool anime;
  final bool started;
  final Media media;
  final int progress;
  final Playback? playback;
  final VoidCallback onTap;

  const ContinueCard({
    super.key,
    required this.unit,
    required this.anime,
    required this.started,
    required this.media,
    required this.progress,
    required this.playback,
    required this.onTap,
  });

  String _detail(int? total) {
    final saved = playback;
    final partial = partialFraction(saved) != null;
    if (partial && saved != null) {
      return anime
          ? '${unitLabel(unit, anime)} · ${getString.resumeAt(formatClock(saved.duration - saved.position))}'
          : '${unitLabel(unit, anime)} · ${getString.resumePage(saved.position + 1, saved.duration)}';
    }
    return total == null || total <= 0
        ? unitLabel(unit, anime)
        : '${unitLabel(unit, anime)} · $progress/$total';
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final total = media.totalUnits;
    final background = media.banner ?? media.cover;
    final fraction = partialFraction(playback);
    return Clickable(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: Dimens.borderSm,
        child: Stack(
          children: [
            Positioned.fill(
              child: background == null
                  ? ColoredBox(color: scheme.primaryContainer)
                  : cachedNetworkImage(
                      imageUrl: background,
                      fit: BoxFit.cover,
                      placeholder: (_, _) =>
                          ColoredBox(color: scheme.primaryContainer),
                      errorWidget: (_, _, _) =>
                          ColoredBox(color: scheme.primaryContainer),
                    ),
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.centerStart,
                    end: AlignmentDirectional.centerEnd,
                    colors: [
                      Colors.black.withValues(alpha: 0.85),
                      Colors.black.withValues(alpha: 0.45),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Dimens.gapSm),
              child: Row(
                children: [
                  if (anime && unit.thumbnail != null) ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(Dimens.radiusSm - 6),
                      child: cachedNetworkImage(
                        imageUrl: unit.thumbnail,
                        width: 112,
                        height: 63,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: Dimens.gap),
                  ],
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          started || fraction != null
                              ? getString.watchContinue
                              : getString.watchStart,
                          style: context.textTheme.labelMedium?.copyWith(
                            color: Colors.white70,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          unitTitle(unit, anime),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.titleSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          _detail(total),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.labelSmall?.copyWith(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    anime
                        ? Icons.play_circle_fill_rounded
                        : Icons.menu_book_rounded,
                    size: 36,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            if (fraction != null)
              PositionedDirectional(
                start: 0,
                end: 0,
                bottom: 0,
                child: LinearProgressIndicator(
                  value: fraction,
                  minHeight: 3,
                  backgroundColor: Colors.white24,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
