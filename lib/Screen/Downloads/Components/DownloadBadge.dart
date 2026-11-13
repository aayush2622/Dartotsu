import 'package:flutter/material.dart';

import '../../../Core/Downloads/DownloadEngine.dart';
import '../../../Core/Downloads/DownloadTask.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';

class DownloadBadge extends StatelessWidget {
  final String id;

  const DownloadBadge({super.key, required this.id});

  @override
  Widget build(BuildContext context) => Watch(() {
    final task = find<DownloadEngine>().taskById(id);
    if (task == null) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    final state = task.state.value;
    final (IconData icon, String? text, Color bg, Color fg) = switch (state) {
      DownloadState.done => (
        Icons.download_done_rounded,
        null,
        Colors.green.withValues(alpha: 0.2),
        Colors.green.shade400,
      ),
      DownloadState.failed => (
        Icons.error_outline_rounded,
        null,
        scheme.errorContainer,
        scheme.onErrorContainer,
      ),
      DownloadState.paused => (
        Icons.pause_rounded,
        null,
        scheme.surfaceContainerHighest,
        scheme.onSurfaceVariant,
      ),
      DownloadState.queued => (
        Icons.schedule_rounded,
        null,
        scheme.surfaceContainerHighest,
        scheme.onSurfaceVariant,
      ),
      _ => (
        Icons.downloading_rounded,
        task.total.value > 0 ? '${(task.fraction * 100).round()}%' : null,
        scheme.secondaryContainer,
        scheme.onSecondaryContainer,
      ),
    };
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: fg),
            if (text != null) ...[
              const SizedBox(width: 3),
              Text(
                text,
                style: context.textTheme.labelSmall?.copyWith(
                  color: fg,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  });
}

class DownloadDot extends StatelessWidget {
  final String id;

  const DownloadDot({super.key, required this.id});

  @override
  Widget build(BuildContext context) => Watch(() {
    final done = find<DownloadEngine>().taskById(id)?.isDone ?? false;
    if (!done) return const SizedBox.shrink();
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: Colors.green.shade400,
        shape: BoxShape.circle,
      ),
    );
  });
}
