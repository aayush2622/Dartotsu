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
          Text(
            state.isAhead
                ? getString.syncAheadDesc
                : getString.syncMainServiceDesc,
            style: context.textTheme.bodySmall?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: Dimens.gapSm),
          if (candidates.isEmpty)
            Text(getString.syncNoTargets)
          else
            AppChoiceChips<String>(
              value: state.mainId,
              onChanged: state.setMain,
              options: [
                for (final s in candidates) AppSegment(s.id, label: s.name),
                if (candidates.length > 1)
                  AppSegment(syncAheadId, label: getString.syncAhead),
              ],
            ),
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
