import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/SettingsSync/SettingsScope.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Animation/WidgetAnimations.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import '../../../../Widgets/Components/SheetTile.dart';
import '../../Widgets/Backup/BackupCategory.dart';
import '../SettingsSyncState.dart';

class SyncCategoriesCard extends StatelessWidget {
  final SettingsSyncState state;

  const SyncCategoriesCard({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final muted = context.textTheme.bodySmall?.copyWith(
      color: scheme.onSurfaceVariant,
    );
    final enabled = state.categories;
    final open = state.open.value;
    final counts = state.sync.remote.value?.counts ?? const {};
    final titles = state.sync.titles.value;
    final titlesText = titles == null || titles.records + titles.resume == 0
        ? getString.settingsSyncTitlesNone
        : getString.settingsSyncTitlesCount(titles.records, titles.resume);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionCard(
          title: getString.settingsSyncWhat,
          padding: EdgeInsets.fromLTRB(
            Dimens.cardPad,
            Dimens.cardPad,
            Dimens.cardPad,
            Dimens.gapSm,
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              children: [
                for (final c in SettingsScope.categories) ...[
                  SheetTile(
                    leading: _Badge(icon: c.icon, active: enabled.contains(c)),
                    title: Text(state.label(c)),
                    subtitle: Text(getString.settingsSyncCount(counts[c] ?? 0)),
                    onTap: () => state.toggleOpen(c),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(
                          value: enabled.contains(c),
                          onChanged: (v) => state.setCategory(c, v),
                        ),
                        AnimatedRotation(
                          turns: open == c ? 0.5 : 0,
                          duration: animDuration(200),
                          child: const Icon(Icons.expand_more_rounded),
                        ),
                      ],
                    ),
                  ),
                  AppSize(
                    child: open == c
                        ? _Items(
                            state: state,
                            category: c,
                            on: enabled.contains(c),
                          )
                        : const SizedBox(width: double.infinity),
                  ),
                ],
                Divider(
                  height: Dimens.gap * 2,
                  color: scheme.outlineVariant.withValues(alpha: 0.4),
                ),
                SheetTile(
                  leading: _Badge(
                    icon: Icons.history_rounded,
                    active: state.titlesOn,
                  ),
                  title: Text(getString.settingsSyncTitles),
                  subtitle: Text(titlesText),
                  onTap: () => state.setTitles(!state.titlesOn),
                  trailing: Switch(
                    value: state.titlesOn,
                    onChanged: state.setTitles,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(60, 0, 8, 4),
                  child: Text(getString.settingsSyncTitlesNote, style: muted),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(Dimens.gap),
          child: Text(getString.settingsSyncScope, style: muted),
        ),
      ],
    );
  }
}

class _Badge extends StatelessWidget {
  final IconData icon;
  final bool active;

  const _Badge({required this.icon, required this.active});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return AnimatedContainer(
      duration: animDuration(200),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active
            ? scheme.primaryContainer
            : scheme.onSurface.withValues(alpha: 0.06),
      ),
      child: Icon(
        icon,
        size: 20,
        color: active ? scheme.onPrimaryContainer : scheme.onSurfaceVariant,
      ),
    );
  }
}

class _Items extends StatelessWidget {
  final SettingsSyncState state;
  final PrefLocation category;
  final bool on;

  const _Items({required this.state, required this.category, required this.on});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final muted = context.textTheme.bodySmall?.copyWith(
      color: scheme.onSurfaceVariant,
    );
    final items = state.sync.syncedIn(category);
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(60, 0, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (items.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(getString.settingsSyncNoneChanged, style: muted),
            )
          else
            for (final item in items)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Opacity(
                  opacity: on ? 1 : 0.5,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          item.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: Dimens.gapSm),
                      Expanded(
                        flex: 2,
                        child: Text(
                          state.valueText(item.value),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style: muted,
                        ),
                      ),
                      SizedBox(width: Dimens.gapSm),
                      Icon(
                        item.onServer
                            ? Icons.cloud_done_outlined
                            : Icons.cloud_upload_outlined,
                        size: 16,
                        color: item.onServer
                            ? scheme.primary
                            : scheme.onSurfaceVariant,
                      ),
                    ],
                  ),
                ),
              ),
          const SizedBox(height: 6),
          Text(
            on
                ? getString.settingsSyncChangedOnly
                : getString.settingsSyncOffCategory,
            style: muted,
          ),
        ],
      ),
    );
  }
}
