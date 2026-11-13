import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/SettingsSync/SettingsSync.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Animation/WidgetAnimations.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Nav/DpadLayers.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import '../SettingsSyncState.dart';

class SyncStatusCard extends StatelessWidget {
  final SettingsSyncState state;

  const SyncStatusCard({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final sync = state.sync;
    final connected = state.connected;
    final on = state.enabled;
    final syncing = sync.phase.value == SettingsSyncPhase.syncing;
    final error = sync.error.value;
    final last = sync.lastSync.value;
    final muted = context.textTheme.bodyMedium?.copyWith(
      color: scheme.onSurfaceVariant,
    );

    final IconData icon;
    final Color tint;
    final String title;
    final String subtitle;
    if (!connected) {
      icon = Icons.cloud_off_rounded;
      tint = scheme.onSurfaceVariant;
      title = getString.settingsSyncConnect;
      subtitle = getString.settingsSyncConnectDesc;
    } else if (error != null) {
      icon = Icons.sync_problem_rounded;
      tint = scheme.error;
      title = getString.settingsSyncFailedTitle;
      subtitle = error;
    } else if (!on) {
      icon = Icons.pause_circle_outline_rounded;
      tint = scheme.onSurfaceVariant;
      title = getString.settingsSyncPaused;
      subtitle = getString.settingsSyncPausedDesc;
    } else if (syncing) {
      icon = Icons.sync_rounded;
      tint = scheme.primary;
      title = getString.settingsSyncRunning;
      subtitle = last == null
          ? getString.settingsSyncNever
          : getString.settingsSyncLast(state.time(last));
    } else {
      icon = Icons.cloud_done_rounded;
      tint = scheme.primary;
      title = getString.settingsSyncUpToDate;
      subtitle = last == null
          ? getString.settingsSyncNever
          : getString.settingsSyncLast(state.time(last));
    }

    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              AnimatedContainer(
                duration: animDuration(250),
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: tint.withValues(alpha: 0.14),
                ),
                child: Center(
                  child: syncing && on && error == null
                      ? SizedBox(
                          width: 26,
                          height: 26,
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            color: tint,
                          ),
                        )
                      : Icon(icon, color: tint, size: 28, key: ValueKey(icon)),
                ),
              ),
              SizedBox(width: Dimens.gap),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: muted,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (!connected) ...[SizedBox(height: Dimens.gap), const _Benefits()],
          if (connected) ...[
            SizedBox(height: Dimens.gap),
            _Stats(state: state),
            SizedBox(height: Dimens.gapSm),
            Material(
              type: MaterialType.transparency,
              child: SwitchListTile(
                contentPadding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                title: Text(getString.settingsSyncSwitch),
                subtitle: Text(getString.settingsSyncDesc),
                value: PrefName.settingsSync.rx.value,
                onChanged: state.setEnabled,
              ),
            ),
            if (on)
              DpadRow(
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: FilledButton.tonalIcon(
                    onPressed: syncing ? null : sync.syncNow,
                    icon: Icon(
                      error != null
                          ? Icons.refresh_rounded
                          : Icons.sync_rounded,
                    ),
                    label: Text(
                      error != null
                          ? getString.settingsSyncRetry
                          : getString.settingsSyncNow,
                    ),
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }
}

class _Benefits extends StatelessWidget {
  const _Benefits();

  @override
  Widget build(BuildContext context) {
    final items = [
      (Icons.tune_rounded, getString.settingsSyncStatSettings),
      (Icons.history_rounded, getString.settingsSyncStatTitles),
      (Icons.lock_rounded, getString.settingsSyncSecrets),
    ];
    return Wrap(
      spacing: Dimens.gapSm,
      runSpacing: Dimens.gapSm,
      children: [for (final (icon, label) in items) _Pill(icon, label)],
    );
  }
}

class _Pill extends StatelessWidget {
  final IconData icon;
  final String label;

  const _Pill(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: scheme.onSurface.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: scheme.primary),
          const SizedBox(width: 6),
          Text(label, style: context.textTheme.labelLarge),
        ],
      ),
    );
  }
}

class _Stats extends StatelessWidget {
  final SettingsSyncState state;

  const _Stats({required this.state});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final settings = state.sync.remote.value;
    final titles = state.sync.titles.value;
    final empty =
        (settings?.total ?? 0) +
            (titles?.records ?? 0) +
            (titles?.resume ?? 0) ==
        0;
    final muted = context.textTheme.bodySmall?.copyWith(
      color: scheme.onSurfaceVariant,
    );
    if (empty) return Text(getString.settingsSyncServerEmpty, style: muted);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _Stat(
              value: settings?.total ?? 0,
              label: getString.settingsSyncStatSettings,
              icon: Icons.tune_rounded,
            ),
            SizedBox(width: Dimens.gapSm),
            _Stat(
              value: titles?.records ?? 0,
              label: getString.settingsSyncStatTitles,
              icon: Icons.history_rounded,
            ),
            SizedBox(width: Dimens.gapSm),
            _Stat(
              value: titles?.resume ?? 0,
              label: getString.settingsSyncStatShelf,
              icon: Icons.play_circle_outline_rounded,
            ),
          ],
        ),
        SizedBox(height: Dimens.gapSm),
        Text(_uploaded(settings, titles), style: muted),
      ],
    );
  }

  String _uploaded(RemoteInfo? settings, TitlesInfo? titles) {
    final useSettings =
        settings != null && (titles == null || settings.at.isAfter(titles.at));
    final at = useSettings ? settings.at : titles?.at;
    if (at == null) return '';
    final mine = useSettings ? settings.mine : titles!.mine;
    final platform = useSettings ? settings.platform : titles!.platform;
    return getString.settingsSyncUploaded(
      state.time(at),
      state.device(mine, platform),
    );
  }
}

class _Stat extends StatelessWidget {
  final int value;
  final String label;
  final IconData icon;

  const _Stat({required this.value, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          color: scheme.onSurface.withValues(alpha: 0.06),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Icon(icon, size: 18, color: scheme.primary),
            const SizedBox(height: 6),
            Text(
              '$value',
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelSmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
