import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import '../../../Core/Downloads/DownloadEngine.dart';
import '../../../Core/Downloads/DownloadPaths.dart';
import '../../../Core/Downloads/DownloadTask.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../DownloadConfirm.dart';

Widget downloadCover(
  DownloadTask task, {
  double width = 56,
  double height = 80,
}) {
  final cover = task.cover;
  final remote = cover == null || cover.isEmpty
      ? SizedBox(
          width: width,
          height: height,
          child: const ColoredBox(
            color: Colors.black12,
            child: Icon(Icons.menu_book_rounded),
          ),
        )
      : cachedNetworkImage(
          imageUrl: cover,
          width: width,
          height: height,
          fit: BoxFit.cover,
        );
  final path = task.path;
  if (path == null) return remote;
  return Image.file(
    File(p.join(p.dirname(path), 'cover.jpg')),
    width: width,
    height: height,
    fit: BoxFit.cover,
    errorBuilder: (_, _, _) => remote,
  );
}

class DownloadRow extends StatelessWidget {
  final DownloadTask task;
  final VoidCallback? onTap;
  final bool showMedia;
  final int? dragIndex;
  final bool canMoveUp;

  const DownloadRow({
    super.key,
    required this.task,
    this.onTap,
    this.showMedia = true,
    this.dragIndex,
    this.canMoveUp = false,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final engine = find<DownloadEngine>();
    return Clickable(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: scheme.surfaceContainerLow,
          borderRadius: Dimens.borderSm,
        ),
        child: Padding(
          padding: EdgeInsets.all(Dimens.gapSm),
          child: Row(
            children: [
              if (showMedia) ...[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: downloadCover(task),
                ),
                SizedBox(width: Dimens.gap),
              ],
              Expanded(
                child: Watch(() {
                  final state = task.state.value;
                  final total = task.total.value;
                  final received = task.received.value;
                  final detail = switch (state) {
                    DownloadState.done =>
                      task.path == null
                          ? ''
                          : task.kind == DownloadKind.chapter && !task.isNovel
                          ? getString.downloadPagesCount(task.total.value)
                          : formatBytes(task.size),
                    DownloadState.failed => task.error.value ?? '',
                    DownloadState.queued => getString.downloadQueuedState,
                    DownloadState.resolving => getString.downloadResolving,
                    DownloadState.paused =>
                      task.error.value ?? getString.downloadPaused,
                    DownloadState.downloading =>
                      task.finishing.value
                          ? getString.downloadFinishing
                          : task.segmented
                          ? getString.downloadSegmentsProgress(received, total)
                          : task.kind == DownloadKind.chapter
                          ? getString.downloadPagesProgress(received, total)
                          : [
                              if (total > 0)
                                '${formatBytes(received)} / ${formatBytes(total)}'
                              else
                                formatBytes(received),
                              if (task.speed.value > 0)
                                '${formatBytes(task.speed.value.round())}/s',
                              if (task.swarm.value != null) task.swarm.value!,
                            ].join(' · '),
                  };
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (showMedia)
                        Text(
                          task.mediaTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.labelMedium?.copyWith(
                            color: scheme.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      Text(
                        task.title.isEmpty
                            ? unitBaseName(task)
                            : '${unitBaseName(task)} · ${task.title}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (state == DownloadState.downloading ||
                          state == DownloadState.paused ||
                          state == DownloadState.queued)
                        Padding(
                          padding: EdgeInsets.only(top: Dimens.gapXs),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: LinearProgressIndicator(
                              value:
                                  total > 0 &&
                                      state != DownloadState.queued &&
                                      !task.finishing.value
                                  ? task.fraction
                                  : null,
                              minHeight: 4,
                            ),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsets.only(top: Dimens.gapXs),
                        child: Text(
                          detail,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.labelSmall?.copyWith(
                            color: state == DownloadState.failed
                                ? scheme.error
                                : scheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      if (task.fallback)
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            getString.downloadUsedFallback,
                            style: context.textTheme.labelSmall?.copyWith(
                              color: scheme.tertiary,
                            ),
                          ),
                        ),
                    ],
                  );
                }),
              ),
              if (canMoveUp)
                _button(
                  Icons.keyboard_double_arrow_up_rounded,
                  getString.downloadMoveToTop,
                  () => engine.moveToTop(task),
                ),
              Watch(() => _actions(context, engine)),
              if (dragIndex != null)
                ReorderableDragStartListener(
                  index: dragIndex!,
                  child: Padding(
                    padding: EdgeInsets.all(Dimens.gapSm),
                    child: Icon(
                      Icons.drag_handle_rounded,
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _button(IconData icon, String tooltip, VoidCallback onPressed) =>
      IconButton(
        visualDensity: VisualDensity.compact,
        tooltip: tooltip,
        onPressed: onPressed,
        icon: Icon(icon, size: 22),
      );

  Widget _actions(BuildContext context, DownloadEngine engine) {
    switch (task.state.value) {
      case DownloadState.done:
        return _button(
          Icons.delete_outline_rounded,
          getString.downloadDelete,
          () => confirmRemove(context, engine, task),
        );
      case DownloadState.failed:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _button(
              Icons.refresh_rounded,
              getString.retry,
              () => engine.resume(task),
            ),
            _button(
              Icons.close_rounded,
              getString.downloadCancel,
              () => confirmRemove(context, engine, task),
            ),
          ],
        );
      case DownloadState.paused:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _button(
              Icons.play_arrow_rounded,
              getString.downloadResume,
              () => engine.resume(task),
            ),
            _button(
              Icons.close_rounded,
              getString.downloadCancel,
              () => confirmRemove(context, engine, task),
            ),
          ],
        );
      default:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _button(
              Icons.pause_rounded,
              getString.downloadPause,
              () => engine.pause(task),
            ),
            _button(
              Icons.close_rounded,
              getString.downloadCancel,
              () => confirmRemove(context, engine, task),
            ),
          ],
        );
    }
  }
}
