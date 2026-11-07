import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import '../../Core/Downloads/DownloadTask.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppTabs.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/Clickable.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import 'Components/DownloadRow.dart';
import 'Components/PendingSyncCard.dart';
import 'DownloadConfirm.dart';
import 'DownloadStorageScreen.dart';
import 'DownloadsState.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({super.key});

  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends BaseScreen<DownloadsScreen>
    with
        TickerProviderStateMixin,
        ScreenStateHost<DownloadsScreen, DownloadsState> {
  @override
  DownloadsState buildState() => DownloadsState();

  @override
  Widget buildContent(BuildContext context) {
    final engine = state.engine;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: getString.downloadsTitle,
        actions: [
          if (state.selecting) ...[
            Center(
              child: Text(
                getString.downloadSelectedCount(state.selected.value.length),
                style: context.textTheme.titleSmall,
              ),
            ),
            IconButton(
              tooltip: getString.downloadSelectAll,
              onPressed: state.selectAll,
              icon: const Icon(Icons.select_all_rounded),
            ),
            IconButton(
              tooltip: getString.downloadDeleteSelected,
              onPressed: () => confirmRemoveMany(
                context,
                engine,
                state.selectedTasks,
                state.clearSelection,
              ),
              icon: const Icon(Icons.delete_outline_rounded),
            ),
            IconButton(
              tooltip: getString.cancel,
              onPressed: state.clearSelection,
              icon: const Icon(Icons.close_rounded),
            ),
          ] else ...[
            IconButton(
              tooltip: getString.downloadPauseAll,
              onPressed: engine.pauseAll,
              icon: const Icon(Icons.pause_circle_outline_rounded),
            ),
            IconButton(
              tooltip: getString.downloadResumeAll,
              onPressed: engine.resumeAll,
              icon: const Icon(Icons.play_circle_outline_rounded),
            ),
            Watch(() {
              final count = state.queue.length + state.failed.length;
              return IconButton(
                tooltip: getString.downloadClearQueue,
                onPressed: count == 0
                    ? null
                    : () => confirmClearQueue(context, engine, count),
                icon: const Icon(Icons.delete_sweep_outlined),
              );
            }),
          ],
        ],
      ),
      body: Watch(() {
        final queue = state.queue;
        final done = state.done;
        final failed = state.failed;
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                Dimens.pagePad,
                0,
                Dimens.pagePad,
                Dimens.gapSm,
              ),
              child: Column(
                children: [
                  if (state.offline.isOffline.value)
                    _banner(
                      context,
                      Icons.cloud_off_rounded,
                      getString.offlineModeOn,
                    ),
                  if (engine.blockedReason.value != null)
                    _banner(
                      context,
                      Icons.pause_circle_outline_rounded,
                      engine.blockedReason.value!,
                    ),
                  PendingSyncCard(pending: state.pending),
                  if (state.bytes.value > 0)
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Clickable(
                        onTap: () => navigateToPage(
                          context,
                          const DownloadStorageScreen(),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: Dimens.gapXs),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                getString.downloadStorage(
                                  formatBytes(state.bytes.value),
                                ),
                                style: context.textTheme.labelMedium?.copyWith(
                                  color: context.colorScheme.primary,
                                ),
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                                size: 18,
                                color: context.colorScheme.primary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            AppTabs(
              controller: state.tabs,
              items: [
                AppTabItem(getString.downloadTabQueue, count: queue.length),
                AppTabItem(getString.downloadTabDone, count: done.length),
                AppTabItem(getString.downloadTabFailed, count: failed.length),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: state.tabs,
                children: [
                  _queueList(context, queue),
                  _grouped(context),
                  _list(context, failed, getString.downloadEmptyFailed),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget _banner(BuildContext context, IconData icon, String text) {
    final scheme = context.colorScheme;
    return Container(
      margin: EdgeInsets.only(bottom: Dimens.gapSm),
      padding: EdgeInsets.all(Dimens.gap),
      decoration: BoxDecoration(
        color: scheme.secondaryContainer,
        borderRadius: Dimens.borderSm,
      ),
      child: Row(
        children: [
          Icon(icon, color: scheme.onSecondaryContainer),
          SizedBox(width: Dimens.gap),
          Expanded(
            child: Text(
              text,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _queueList(BuildContext context, List<DownloadTask> queue) {
    if (queue.isEmpty) {
      return EmptyState(
        icon: Icons.download_done_rounded,
        title: getString.downloadEmptyQueue,
      );
    }
    return ScrollConfig(
      context,
      child: ReorderableListView.builder(
        buildDefaultDragHandles: false,
        padding: EdgeInsets.all(Dimens.pagePad),
        itemCount: queue.length,
        onReorder: (from, to) => state.engine.reorderQueue(queue, from, to),
        itemBuilder: (_, i) => Padding(
          key: ValueKey(queue[i].id),
          padding: EdgeInsets.only(bottom: Dimens.gapSm),
          child: DownloadRow(task: queue[i], dragIndex: i, canMoveUp: i > 0),
        ),
      ),
    );
  }

  Widget _selectable(
    DownloadTask task, {
    bool showMedia = true,
    bool play = false,
  }) {
    final picking = state.selecting;
    return DownloadRow(
      task: task,
      showMedia: showMedia,
      selected: picking ? state.selected.value.contains(task.id) : null,
      onSelect: () => state.toggle(task),
      onTap: picking
          ? () => state.toggle(task)
          : play
          ? () => state.play(task)
          : null,
    );
  }

  Widget _list(BuildContext context, List<DownloadTask> list, String empty) {
    if (list.isEmpty) {
      return EmptyState(icon: Icons.download_done_rounded, title: empty);
    }
    return ScrollConfig(
      context,
      child: ListView.separated(
        padding: EdgeInsets.all(Dimens.pagePad),
        itemCount: list.length,
        separatorBuilder: (_, _) => SizedBox(height: Dimens.gapSm),
        itemBuilder: (_, i) => _selectable(list[i]),
      ),
    );
  }

  Widget _grouped(BuildContext context) {
    final groups = state.grouped.values.toList();
    final local = state.engine.scanner.groups.toList();
    if (groups.isEmpty && local.isEmpty) {
      return EmptyState(
        icon: Icons.download_done_rounded,
        title: getString.downloadEmptyDone,
      );
    }
    final rows = <Widget Function()>[
      for (final list in groups) ...[
        () => Clickable(
          onTap: () => state.openTitle(list.first),
          child: Padding(
            padding: EdgeInsets.only(bottom: Dimens.gapXs),
            child: Text(
              '${list.first.mediaTitle} · ${list.length}',
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        for (final (i, t) in list.indexed)
          () => Padding(
            padding: EdgeInsets.only(
              bottom: i == list.length - 1 ? Dimens.gap : Dimens.gapXs,
            ),
            child: _selectable(t, showMedia: false, play: true),
          ),
      ],
      for (final group in local) ...[
        () => Padding(
          padding: EdgeInsets.only(bottom: Dimens.gapXs),
          child: Text(
            '${group.title} · ${group.files.length}',
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        for (final (i, file) in group.files.indexed)
          () => Padding(
            padding: EdgeInsets.only(
              bottom: i == group.files.length - 1 ? Dimens.gap : Dimens.gapXs,
            ),
            child: Clickable(
              onTap: () => state.playLocal(group, i),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainerLow,
                  borderRadius: Dimens.borderSm,
                ),
                child: Padding(
                  padding: EdgeInsets.all(Dimens.gap),
                  child: Row(
                    children: [
                      const Icon(Icons.movie_outlined),
                      SizedBox(width: Dimens.gap),
                      Expanded(
                        child: Text(
                          p.basename(file),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    ];
    return RefreshIndicator(
      onRefresh: state.refresh,
      child: ScrollConfig(
        context,
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.all(Dimens.pagePad),
          itemCount: rows.length,
          itemBuilder: (_, i) => rows[i](),
        ),
      ),
    );
  }
}
