import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/State/State.dart';
import '../Data/SyncAhead.dart';
import '../Data/SyncController.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Nav/DpadLayers.dart';
import '../../../../Widgets/Components/AppControls.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import '../../../../Core/Services/MediaServiceController.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/ConnectedPair.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Widgets/Components/LoadSvg.dart';
import '../../../../Widgets/Components/SheetTile.dart';
import '../SyncState.dart';

class SyncHeader extends StatelessWidget {
  final SyncState state;

  const SyncHeader({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final ctl = state.controller;
    final scheme = context.colorScheme;
    final plan = state.plan;
    final candidates = state.candidates;
    final fetching = ctl.phase.value == SyncPhase.fetching;
    final syncing = ctl.phase.value == SyncPhase.syncing;
    final busy = ctl.busy;
    final pending = plan == null
        ? 0
        : plan.targets.keys.fold<int>(0, (n, id) => n + state.pendingOf(id));
    final done = plan == null
        ? 0
        : plan.targets.values.fold<int>(0, (n, t) => n + t.done);
    final progress = fetching
        ? (ctl.fetchTotal.value == 0
              ? null
              : ctl.fetchDone.value / ctl.fetchTotal.value)
        : (done + pending == 0 ? null : done / (done + pending));

    return SectionCard(
      margin: EdgeInsets.fromLTRB(
        Dimens.gapSm,
        Dimens.gapSm,
        Dimens.gapSm,
        Dimens.gapXs,
      ),
      title: getString.syncMainService,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (plan == null) ...[
            Text(
              state.isAhead
                  ? getString.syncAheadDesc
                  : getString.syncMainServiceDesc,
              style: context.textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: Dimens.gapSm),
          ],
          if (candidates.isEmpty)
            Text(getString.syncNoTargets)
          else
            _mainPicker(context, candidates),
          SizedBox(height: Dimens.gap),
          AppSegmented<bool>(
            value: state.isAnime,
            onChanged: state.setType,
            segments: [
              AppSegment(true, label: getString.anime),
              AppSegment(false, label: getString.manga),
            ],
          ),
          SizedBox(height: Dimens.gap),
          DpadRow(
            child: Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: busy || candidates.isEmpty ? null : state.fetch,
                    icon: const Icon(Icons.cloud_download_rounded),
                    label: Text(
                      plan == null
                          ? getString.syncFetch
                          : getString.syncFetchAgain,
                    ),
                  ),
                ),
                SizedBox(width: Dimens.gapSm),
                Expanded(
                  child: syncing
                      ? FilledButton.tonalIcon(
                          onPressed: state.stop,
                          icon: const Icon(Icons.stop_rounded),
                          label: Text(getString.syncStop),
                        )
                      : FilledButton.tonalIcon(
                          onPressed: busy || pending == 0
                              ? null
                              : () => state.syncAll(context),
                          icon: const Icon(Icons.sync_rounded),
                          label: Text(
                            '${done > 0 && pending > 0 ? getString.syncResume : getString.syncAll} ($pending)',
                          ),
                        ),
                ),
              ],
            ),
          ),
          if (fetching || syncing) ...[
            SizedBox(height: Dimens.gapSm),
            LinearProgressIndicator(
              value: progress,
              borderRadius: BorderRadius.circular(8),
            ),
            SizedBox(height: Dimens.gapXs),
            Text(
              fetching
                  ? '${ctl.fetchLabel.value}  ·  ${getString.syncProgressOf(ctl.fetchDone.value, ctl.fetchTotal.value)}'
                  : getString.syncProgressOf(done, done + pending),
              style: context.textTheme.labelMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
          SizedBox(height: Dimens.gapXs),
          Material(
            type: MaterialType.transparency,
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              childrenPadding: EdgeInsets.zero,
              shape: const Border(),
              collapsedShape: const Border(),
              title: Text(
                getString.syncOptions,
                style: context.textTheme.titleSmall,
              ),
              children: [_options()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _icon(BuildContext context, String id, double size, Color color) {
    final service = id == syncAheadId
        ? null
        : state.candidates.firstWhere((c) => c.id == id).iconPath;
    return service == null
        ? Icon(Icons.swap_vert_rounded, size: size, color: color)
        : loadSvg(service, width: size, height: size, color: color);
  }

  Widget _mainPicker(BuildContext context, List<MediaService> candidates) {
    final scheme = context.colorScheme;
    final names = {
      for (final c in candidates) c.id: c.name,
      if (candidates.length > 1) syncAheadId: getString.syncAhead,
    };
    return ConnectedPair(
      color: scheme.secondaryContainer,
      onTap: () => _pickMain(context, names),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        child: Row(
          children: [
            _icon(context, state.mainId, 26, scheme.onSecondaryContainer),
            SizedBox(width: Dimens.gap),
            Expanded(
              child: Text(
                names[state.mainId] ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: scheme.onSecondaryContainer,
                ),
              ),
            ),
            Icon(Icons.expand_more_rounded, color: scheme.onSecondaryContainer),
          ],
        ),
      ),
    );
  }

  Future<void> _pickMain(
    BuildContext context,
    Map<String, String> names,
  ) async {
    final entries = names.entries.toList();
    final picked = await showCustomBottomDialog<String>(
      context,
      AppSheet(
        title: getString.syncMainService,
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
          itemCount: entries.length,
          itemBuilder: (sheet, i) => SheetTile(
            tinted: true,
            radius: groupedRadius(i, entries.length),
            selected: entries[i].key == state.mainId,
            leading: _icon(
              sheet,
              entries[i].key,
              28,
              entries[i].key == state.mainId
                  ? sheet.colorScheme.onPrimaryContainer
                  : sheet.colorScheme.onSurfaceVariant,
            ),
            title: Text(entries[i].value),
            onTap: () => popPage(sheet, entries[i].key),
          ),
        ),
      ),
    );
    if (picked != null) state.setMain(picked);
  }

  Widget _options() => Watch(
    () => Column(
      children: [
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(getString.syncAuto),
          subtitle: Text(getString.syncAutoDesc),
          value: PrefName.syncAuto.rx.value,
          onChanged: (v) => PrefName.syncAuto.rx.value = v,
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(getString.syncOnEdit),
          subtitle: Text(getString.syncOnEditDesc),
          value: PrefName.syncOnEdit.rx.value || PrefName.syncAuto.rx.value,
          onChanged: PrefName.syncAuto.rx.value
              ? null
              : (v) => PrefName.syncOnEdit.rx.value = v,
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(getString.syncConfirm),
          subtitle: Text(getString.syncConfirmDesc),
          value: PrefName.syncConfirm.rx.value,
          onChanged: (v) => PrefName.syncConfirm.rx.value = v,
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(getString.syncAddMissing),
          subtitle: Text(getString.syncAddMissingDesc),
          value: PrefName.syncAddMissing.rx.value,
          onChanged: (v) => PrefName.syncAddMissing.rx.value = v,
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(getString.syncPrivate),
          subtitle: Text(getString.syncPrivateDesc),
        ),
        AppChoiceChips<String>(
          value: PrefName.syncPrivate.rx.value,
          onChanged: (v) => PrefName.syncPrivate.rx.value = v,
          options: [
            AppSegment('ask', label: getString.syncPrivateModeAsk),
            AppSegment('sync', label: getString.syncPrivateModeSync),
            AppSegment('skip', label: getString.syncPrivateModeSkip),
          ],
        ),
        for (final service in state.controller.signedIn)
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            secondary: loadSvg(service.iconPath, width: 22, height: 22),
            title: Text(getString.syncServiceOn(service.name)),
            value: !PrefName.syncDisabled.rx.value.contains(service.id),
            onChanged: (on) {
              final off = [...PrefName.syncDisabled.rx.value]
                ..remove(service.id);
              if (!on) off.add(service.id);
              PrefName.syncDisabled.rx.value = off;
              state.controller.changes.fire();
            },
          ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(getString.syncDelete),
          subtitle: Text(getString.syncDeleteDesc),
          value: PrefName.syncDelete.rx.value,
          onChanged: (v) => PrefName.syncDelete.rx.value = v,
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(getString.syncOnlyForward),
          subtitle: Text(getString.syncOnlyForwardDesc),
          value: PrefName.syncOnlyForward.rx.value,
          onChanged: (v) => PrefName.syncOnlyForward.rx.value = v,
        ),
      ],
    ),
  );
}
