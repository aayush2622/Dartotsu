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
          if (connected) ...[
            SizedBox(height: Dimens.gapSm),
            Material(
              type: MaterialType.transparency,
              child: SwitchListTile(
                contentPadding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
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
