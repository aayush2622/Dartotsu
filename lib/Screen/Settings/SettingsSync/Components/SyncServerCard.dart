import 'package:flutter/material.dart';

import '../../../../Core/SettingsSync/SettingsSync.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import '../SettingsSyncState.dart';

class SyncServerCard extends StatelessWidget {
  final SettingsSyncState state;

  const SyncServerCard({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    if (!state.connected) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    final settings = state.sync.remote.value;
    final titles = state.sync.titles.value;
    final empty =
        (settings?.total ?? 0) +
            (titles?.records ?? 0) +
            (titles?.resume ?? 0) ==
        0;
    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gap),
      child: SectionCard(
        title: getString.settingsSyncServer,
        child: empty
            ? Text(
                getString.settingsSyncServerEmpty,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              )
            : Column(
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
                  Text(
                    _uploaded(settings, titles),
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
      ),
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
                fontWeight: FontWeight.w800,
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
