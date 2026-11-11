import '../../../../Widgets/Components/ScrollConfig.dart';

import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/Services/MediaService.dart';
import '../Data/SyncController.dart';
import '../Data/SyncModels.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Nav/DpadLayers.dart';
import '../../../../Widgets/Components/AppTabs.dart';
import '../../../../Widgets/Components/Clickable.dart';
import '../../../../Widgets/Components/LoadSvg.dart';
import '../../../../Widgets/Components/ThemedContainer.dart';
import '../SyncState.dart';

class SyncTabs extends StatelessWidget {
  final SyncState state;

  const SyncTabs({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final targets = state.targets;
    if (targets.isEmpty) return const SizedBox.shrink();
    return AppTabs(
      controller: state.tabsFor(targets.length),
      items: [
        for (final s in targets)
          AppTabItem(
            s.name,
            count: state.pendingOf(s.id),
            icon: (color) =>
                loadSvg(s.iconPath, width: 18, height: 18, color: color),
          ),
      ],
    );
  }
}

class SyncOverview extends StatelessWidget {
  final SyncState state;
  final MediaService service;
  final SyncTargetPlan target;

  const SyncOverview({
    super.key,
    required this.state,
    required this.service,
    required this.target,
  });

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final ctl = state.controller;
    final adapter = service.syncAdapter!;
    final wait = ctl.resumeAt[service.id];
    final problems = [?target.error, ?ctl.targetError[service.id]];
    final tiles = <(SyncStatus?, String, int, Color)>[
      (
        SyncStatus.outdated,
        getString.syncStateOutdated,
        target.count(SyncStatus.outdated),
        scheme.tertiary,
      ),
      (
        SyncStatus.missing,
        getString.syncStateMissing,
        target.count(SyncStatus.missing),
        scheme.secondary,
      ),
      (
        SyncStatus.synced,
        getString.syncStateSynced,
        target.count(SyncStatus.synced),
        scheme.primary,
      ),
      (
        SyncStatus.unmapped,
        getString.syncStateUnmapped,
        target.count(SyncStatus.unmapped),
        scheme.outline,
      ),
      (null, getString.all, target.pairs.length, scheme.onSurface),
    ];
    final small = context.textTheme.labelSmall?.copyWith(
      color: scheme.onSurfaceVariant,
    );
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Dimens.gapSm,
        Dimens.gapXs,
        Dimens.gapSm,
        Dimens.gapXs,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final p in problems)
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                p,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.error,
                ),
              ),
            ),
          if (wait != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  const Icon(Icons.hourglass_top_rounded, size: 18),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      getString.syncPaused(_countdown(wait)),
                      style: context.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          DpadRow(
            child: ScrollConfig(
              context,
              child: ScrollConfig(
                context,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (final t in tiles)
                        if (t.$1 == null || t.$3 > 0)
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              end: Dimens.gapSm,
                            ),
                            child: _StatTile(
                              label: t.$2,
                              count: t.$3,
                              color: t.$4,
                              selected:
                                  !state.removing.value &&
                                  state.effectiveFilter == t.$1,
                              onTap: () => state.showFilter(t.$1),
                            ),
                          ),
                      if (state.removals.isNotEmpty)
                        _StatTile(
                          label: getString.syncToDelete,
                          count: state.removals.length,
                          color: scheme.error,
                          selected: state.showingRemovals,
                          onTap: () => state.removing.value = true,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: Dimens.gapSm),
          Wrap(
            spacing: Dimens.gap,
            runSpacing: 2,
            children: [
              if (target.onlyInTarget - state.removals.length > 0)
                Text(
                  getString.syncOnlyIn(
                    target.onlyInTarget - state.removals.length,
                    service.name,
                  ),
                  style: small,
                ),
              for (final limit in adapter.limits)
                Text(
                  getString.syncLimits(
                    ctl.usedIn(service.id, limit),
                    limit.requests,
                    limit.per.inHours >= 24
                        ? getString.syncDay
                        : getString.syncMinute,
                  ),
                  style: small,
                ),
            ],
          ),
          SizedBox(height: Dimens.gapSm),
          SizedBox(
            width: double.infinity,
            child: ctl.phase.value == SyncPhase.syncing
                ? FilledButton.tonalIcon(
                    onPressed: state.stop,
                    icon: const Icon(Icons.stop_rounded),
                    label: Text(getString.syncStop),
                  )
                : FilledButton.tonalIcon(
                    onPressed: ctl.busy || state.pendingOf(service.id) == 0
                        ? null
                        : () => state.syncSelected(context),
                    icon: const Icon(Icons.sync_rounded),
                    label: Text(
                      getString.syncService(
                        service.name,
                        state.pendingOf(service.id),
                      ),
                    ),
                  ),
          ),
          SizedBox(height: Dimens.gapSm),
          _ColumnHeader(
            from: state.isAhead ? null : state.mainService,
            fromLabel: state.isAhead ? getString.syncAhead : null,
            to: service,
          ),
        ],
      ),
    );
  }

  String _countdown(DateTime until) {
    final left = until.difference(DateTime.now());
    final s = left.isNegative ? 0 : left.inSeconds;
    String two(int n) => n.toString().padLeft(2, '0');
    final h = s ~/ 3600;
    return h > 0
        ? '$h:${two((s % 3600) ~/ 60)}:${two(s % 60)}'
        : '${two(s ~/ 60)}:${two(s % 60)}';
  }
}

class _StatTile extends StatelessWidget {
  final String label;
  final int count;
  final Color color;
  final bool selected;
  final VoidCallback onTap;

  const _StatTile({
    required this.label,
    required this.count,
    required this.color,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Clickable(
      onTap: onTap,
      child: ThemedContainer(
        blur: false,
        color: selected
            ? scheme.secondaryContainer
            : scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(16),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$count',
              style: context.textTheme.titleLarge?.copyWith(
                color: color,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              label,
              style: context.textTheme.labelSmall?.copyWith(
                color: selected
                    ? scheme.onSecondaryContainer
                    : scheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ColumnHeader extends StatelessWidget {
  final MediaService? from;
  final String? fromLabel;
  final MediaService to;

  const _ColumnHeader({required this.from, this.fromLabel, required this.to});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    Widget side(MediaService? s) => Expanded(
      child: Row(
        children: [
          if (s != null)
            loadSvg(s.iconPath, width: 16, height: 16, color: scheme.primary),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              s?.name ?? (s == from ? fromLabel ?? '' : ''),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelLarge?.copyWith(
                color: scheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(14, 0, 10, 0),
      child: Row(children: [side(from), const SizedBox(width: 34), side(to)]),
    );
  }
}
