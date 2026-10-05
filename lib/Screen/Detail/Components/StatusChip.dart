import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/StringExtensions.dart';

class StatusChip extends StatelessWidget {
  final String status;
  final bool isAnime;

  const StatusChip({super.key, required this.status, this.isAnime = true});

  (String, IconData, Color, Color) _spec(ColorScheme s) {
    final key = status.toUpperCase().replaceAll(' ', '_');
    return switch (key) {
      'FINISHED' => (
        'Finished',
        Icons.check_circle_rounded,
        s.secondaryContainer,
        s.onSecondaryContainer,
      ),
      'RELEASING' => (
        'Releasing',
        Icons.sensors_rounded,
        s.primaryContainer,
        s.onPrimaryContainer,
      ),
      'NOT_YET_RELEASED' => (
        'Not Yet Released',
        Icons.schedule_rounded,
        s.surfaceContainerHighest,
        s.onSurface,
      ),
      'CANCELLED' => (
        'Cancelled',
        Icons.cancel_rounded,
        s.errorContainer,
        s.onErrorContainer,
      ),
      'HIATUS' => (
        'Hiatus',
        Icons.pause_circle_rounded,
        s.tertiaryContainer,
        s.onTertiaryContainer,
      ),
      'CURRENT' => (
        isAnime ? 'Watching' : 'Reading',
        Icons.play_circle_rounded,
        s.primaryContainer,
        s.onPrimaryContainer,
      ),
      'REPEATING' => (
        isAnime ? 'Rewatching' : 'Rereading',
        Icons.replay_circle_filled_rounded,
        s.primaryContainer,
        s.onPrimaryContainer,
      ),
      'PLANNING' => (
        'Planned',
        Icons.bookmark_rounded,
        s.secondaryContainer,
        s.onSecondaryContainer,
      ),
      'COMPLETED' => (
        'Completed',
        Icons.check_circle_rounded,
        s.secondaryContainer,
        s.onSecondaryContainer,
      ),
      'PAUSED' => (
        'Paused',
        Icons.pause_circle_rounded,
        s.tertiaryContainer,
        s.onTertiaryContainer,
      ),
      'DROPPED' => (
        'Dropped',
        Icons.remove_circle_rounded,
        s.errorContainer,
        s.onErrorContainer,
      ),
      'NOT_STARTED' => (
        'Not Started',
        Icons.radio_button_unchecked_rounded,
        s.surfaceContainerHighest,
        s.onSurface,
      ),
      _ => (
        status.titleCase,
        Icons.circle_outlined,
        s.surfaceContainerHighest,
        s.onSurface,
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final (label, icon, bg, fg) = _spec(context.colorScheme);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 12, 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16, color: fg),
            const SizedBox(width: 6),
            Text(
              label,
              style: context.textTheme.labelLarge?.copyWith(
                color: fg,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
