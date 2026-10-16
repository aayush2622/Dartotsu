import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../Detail/Watch/Data/EpisodeMetaService.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Detail/Watch/Data/EpisodeUnits.dart';
import '../../Detail/Watch/Data/LocalProgress.dart';
import '../../Detail/Watch/Data/WatchPrefs.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/ChoiceSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../Detail/Watch/Components/RangeBar.dart';
import '../../Detail/Watch/Components/UnitLayout.dart';
import '../../Detail/Watch/Components/UnitTile.dart';
import '../PlayerState.dart';
import 'EpisodePanel.dart';

class PlayerEpisodes extends StatelessWidget {
  final PlayerState state;

  const PlayerEpisodes({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final record = state.record;
    final items = state.items;
    final current = state.index.value;
    if (record == null || items.any((i) => i.unit == null)) {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => EpisodeTile(state: state, index: i),
          childCount: items.length,
        ),
      );
    }
    final settings = record.watch;
    final view = settings.view;
    state.progressTick.value;
    final units = [for (final i in items) i.unit!];
    final progress = effectiveProgress(
      state.request.media?.userProgress ?? 0,
      units,
      record.playback,
    );
    final chunks = chunkUnits(units, watchChunkSizePref.rx.value);
    final playing = units[current];
    var chunk = state.chunk.value ?? 0;
    final home = chunks.indexWhere((c) => c.contains(playing));
    if (state.chunk.value == null && home >= 0) chunk = home;
    chunk = chunk.clamp(0, chunks.length - 1);
    final shown = settings.reverse
        ? chunks[chunk].reversed.toList()
        : chunks[chunk];
    final blur = watchBlurUnwatchedPref.rx.value;
    final description = watchShowDescriptionPref.rx.value;
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(context, units.length),
              if (chunks.length > 1) ...[
                RangeBar(
                  selected: chunk,
                  onChanged: (i) => state.chunk.value = i,
                  labels: [
                    for (final c in chunks)
                      '${c.first.number}-${c.last.number}',
                  ],
                ),
                SizedBox(height: Dimens.gap),
              ],
            ],
          ),
        ),
        UnitSliver(
          units: shown,
          view: view,
          builder: (u) => UnitTile(
            key: ValueKey('player-unit-${u.number}-${u.scanlator}'),
            unit: u,
            anime: true,
            view: view,
            watched: u.isWatched(progress),
            progress: partialFraction(record.playback[u.number]),
            next: identical(u, playing),
            blur: blur,
            showDescription: description,
            onTap: () {
              final at = units.indexOf(u);
              if (at != state.index.value) state.loadItem(at);
            },
          ),
        ),
      ],
    );
  }

  Future<void> _pickMeta(BuildContext context) async {
    final current = state.record?.watch.metaSource ?? 'auto';
    final picked = await showChoiceSheet<String>(
      context,
      title: getString.watchMetaSource,
      icon: Icons.dataset_rounded,
      selected: current,
      options: [
        ChoiceOption('auto', getString.watchMetaAuto),
        for (final p in EpisodeMetaService.ordered())
          if (EpisodeMetaService.enabled(p.id)) ChoiceOption(p.id, p.name),
        ChoiceOption('off', getString.watchMetaOff),
      ],
    );
    if (picked == null || picked == current) return;
    await state.setMetaSource(picked == 'auto' ? null : picked);
  }

  Widget _header(BuildContext context, int count) => Row(
    children: [
      Expanded(
        child: Text(
          getString.watchEpisodeCount(count),
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      if (state.metaLoading.value)
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: context.colorScheme.primary,
            ),
          ),
        ),
      if (state.canPickMeta)
        IconButton(
          tooltip: getString.watchMetaSource,
          onPressed: () => _pickMeta(context),
          icon: Icon(switch (state.record?.watch.metaSource) {
            null => Icons.auto_awesome_rounded,
            'off' => Icons.hide_image_outlined,
            _ => Icons.image_search_rounded,
          }),
        ),
      IconButton(
        tooltip: getString.watchOptions,
        onPressed: () => showCustomBottomDialog<void>(
          context,
          _PlayerOptionsSheet(state: state),
        ),
        icon: const Icon(Icons.tune_rounded),
      ),
    ],
  );
}

class _PlayerOptionsSheet extends StatelessWidget {
  final PlayerState state;

  const _PlayerOptionsSheet({required this.state});

  @override
  Widget build(BuildContext context) => AppSheet(
    title: getString.watchOptions,
    child: SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        0,
        Dimens.pagePad,
        Dimens.gapLg,
      ),
      child: Watch(() {
        state.progressTick.value;
        final s = state.record!.watch;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            LabeledField(
              label: getString.watchLayout,
              child: AppSegmented<int>(
                value: s.view,
                onChanged: (v) =>
                    state.updateWatchSettings(s.copy()..viewType = v),
                segments: [
                  AppSegment(
                    0,
                    icon: Icons.view_list_rounded,
                    label: getString.watchListView,
                  ),
                  AppSegment(
                    1,
                    icon: Icons.grid_view_rounded,
                    label: getString.watchGridView,
                  ),
                  AppSegment(
                    2,
                    icon: Icons.view_comfy_rounded,
                    label: getString.watchCompactView,
                  ),
                ],
              ),
            ),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(getString.watchReverse),
              value: s.reverse,
              onChanged: (v) =>
                  state.updateWatchSettings(s.copy()..reverse = v),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () {
                  state.updateWatchSettings(
                    MediaWatchSettings(
                      sourceId: s.sourceId,
                      sourceName: s.sourceName,
                    ),
                  );
                  popPage(context);
                },
                icon: const Icon(Icons.restart_alt_rounded),
                label: Text(getString.watchResetOptions),
              ),
            ),
          ],
        );
      }),
    ),
  );
}
