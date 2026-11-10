import '../../../../Widgets/Components/ScrollConfig.dart';

import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Data/EpisodeUnits.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Core/Downloads/DownloadEngine.dart';
import '../../../../Core/Downloads/DownloadTask.dart';
import '../../../Downloads/DownloadConfirm.dart';
import '../../../Downloads/DownloadPicker.dart';
import '../../../Share/ShareCard.dart';
import '../../../Share/ShareCardSheet.dart';
import '../WatchState.dart';
import 'UnitTile.dart';

class UnitSheet extends StatelessWidget {
  final WatchState state;
  final WatchUnit unit;
  final VoidCallback? onPlay;

  const UnitSheet({
    super.key,
    required this.state,
    required this.unit,
    this.onPlay,
  });

  void _share(BuildContext context) {
    final anime = state.anime;
    final meta = [
      if (unit.date != null) formatUnitDate(unit.date!),
      if (unit.runtime != null) '${unit.runtime} min',
      if (unit.rating != null && unit.rating! > 0)
        unit.rating!.toStringAsFixed(1),
    ].join(' · ');
    unawaited(
      showShareWidget(
        context,
        state.service,
        card: UnitShareCard(
          media: state.current,
          label: unitLabel(unit, anime),
          title: unitTitle(unit, anime),
          thumbnail: anime ? unit.thumbnail : null,
          meta: meta,
          watched: unit.isWatched(state.progress),
          anime: anime,
          service: state.service.name,
        ),
        fileName: '${state.current.mainName} ${unitLabel(unit, anime)}',
        link: state.current.shareLink,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final anime = state.anime;
    return AppSheet(
      title: unitLabel(unit, anime),
      trailing: IconButton(
        tooltip: getString.shareCard,
        onPressed: () => _share(context),
        icon: const Icon(Icons.ios_share_rounded),
      ),
      child: ScrollConfig(
        context,
        child: ScrollConfig(context, child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            0,
            Dimens.pagePad,
            Dimens.gapLg,
          ),
          child: Watch(() {
            final watched = unit.isWatched(state.progress);
            final meta = [
              if (unit.date != null) formatUnitDate(unit.date!),
              if (unit.runtime != null) '${unit.runtime} min',
              if (unit.rating != null && unit.rating! > 0)
                unit.rating!.toStringAsFixed(1),
              if (unit.scanlator != null) unit.scanlator!,
            ].join(' · ');
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (anime && unit.thumbnail != null) ...[
                  ClipRRect(
                    borderRadius: Dimens.borderSm,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: cachedNetworkImage(
                        imageUrl: unit.thumbnail,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  SizedBox(height: Dimens.gap),
                ],
                Text(
                  unitTitle(unit, anime),
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (meta.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      meta,
                      style: context.textTheme.labelMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                if (unit.filler || unit.recap)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Wrap(
                      spacing: 8,
                      children: [
                        if (unit.filler)
                          Chip(
                            label: Text(getString.watchFiller),
                            backgroundColor: scheme.tertiaryContainer,
                          ),
                        if (unit.recap)
                          Chip(
                            label: Text(getString.watchRecap),
                            backgroundColor: scheme.secondaryContainer,
                          ),
                      ],
                    ),
                  ),
                if (unit.description?.isNotEmpty ?? false)
                  Padding(
                    padding: EdgeInsets.only(top: Dimens.gap),
                    child: Text(
                      unit.description!,
                      style: context.textTheme.bodyMedium,
                    ),
                  ),
                SizedBox(height: Dimens.gapLg),
                Row(
                  children: [
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: () {
                          popPage(context);
                          onPlay?.call();
                        },
                        icon: Icon(
                          anime
                              ? Icons.play_arrow_rounded
                              : Icons.menu_book_rounded,
                        ),
                        label: Text(
                          anime ? getString.watchPlay : getString.watchRead,
                        ),
                      ),
                    ),
                    SizedBox(width: Dimens.gapSm),
                    Expanded(
                      child: FilledButton.tonalIcon(
                        onPressed: () {
                          popPage(context);
                          watched
                              ? state.markUnwatched(unit)
                              : state.markWatched(unit);
                        },
                        icon: Icon(
                          watched
                              ? Icons.remove_done_rounded
                              : Icons.done_all_rounded,
                        ),
                        label: Text(
                          watched
                              ? (anime
                                    ? getString.watchMarkUnwatched
                                    : getString.watchMarkUnread)
                              : (anime
                                    ? getString.watchMarkWatched
                                    : getString.watchMarkRead),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimens.gapSm),
                _download(context),
              ],
            );
          }),
        )),
      ),
    );
  }

  Widget _download(BuildContext context) => Watch(() {
    final engine = find<DownloadEngine>();
    final task = engine.tasks
        .where((t) => t.id == downloadIdOf(state, unit))
        .firstOrNull;
    final done = task?.isDone ?? false;
    final busy = task != null && !done;
    final stalled =
        busy &&
        (task.state.value == DownloadState.paused ||
            task.state.value == DownloadState.failed);
    final button = FilledButton.tonalIcon(
      onPressed: () {
        if (task == null) {
          popPage(context);
          downloadUnits(context, state, [unit]);
        } else {
          unawaited(confirmRemove(context, engine, task));
        }
      },
      icon: Icon(
        done
            ? Icons.delete_outline_rounded
            : busy
            ? Icons.close_rounded
            : Icons.download_rounded,
      ),
      label: Text(
        done
            ? getString.downloadDelete
            : busy
            ? getString.downloadCancel
            : getString.downloadTitle,
      ),
    );
    if (!stalled) return SizedBox(width: double.infinity, child: button);
    return Row(
      children: [
        Expanded(
          child: FilledButton.icon(
            onPressed: () {
              popPage(context);
              engine.resume(task);
            },
            icon: const Icon(Icons.play_arrow_rounded),
            label: Text(getString.downloadResume),
          ),
        ),
        SizedBox(width: Dimens.gapSm),
        Expanded(child: button),
      ],
    );
  });
}
