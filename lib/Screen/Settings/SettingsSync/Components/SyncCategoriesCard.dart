import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/SettingsSync/SettingsScope.dart';
import '../../../../Core/SettingsSync/SettingsSync.dart';
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

  static const _preview = 5;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final muted = context.textTheme.bodySmall?.copyWith(
      color: scheme.onSurfaceVariant,
    );
    final items = state.sync.syncedIn(category);
    final parts = state.partsOf(category);
    final all = state.expanded.value.contains(category);
    final shown = all ? items : items.take(_preview).toList();
    final groups = <String, List<_Row>>{};
    for (final item in shown) {
      final cut = item.name.indexOf(': ');
      final group = cut < 0 ? '' : item.name.substring(0, cut);
      groups
          .putIfAbsent(group, () => [])
          .add(_Row(cut < 0 ? item.name : item.name.substring(cut + 2), item));
    }

    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(16, 2, 4, 10),
      padding: const EdgeInsets.fromLTRB(4, 6, 4, 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: scheme.onSurface.withValues(alpha: 0.045),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final part in parts)
            SheetTile(
              title: Text(state.partTitle(part)),
              subtitle: Text(state.partDesc(part)),
              enabled: on,
              onTap: () => state.setPart(part, !state.partSynced(part)),
              trailing: Switch(
                value: state.partSynced(part),
                onChanged: on ? (v) => state.setPart(part, v) : null,
              ),
            ),
          if (parts.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.devices_rounded,
                    size: 14,
                    color: scheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(getString.settingsSyncPartsNote, style: muted),
                  ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    getString.settingsSyncChangedHeader.toUpperCase(),
                    style: context.textTheme.labelSmall?.copyWith(
                      color: scheme.primary,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(getString.settingsSyncChanged(items.length), style: muted),
              ],
            ),
          ),
          if (items.isEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
              child: Text(getString.settingsSyncNoneChanged, style: muted),
            )
          else
            Opacity(
              opacity: on ? 1 : 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (final g in groups.entries) ...[
                    if (g.key.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 2),
                        child: Text(
                          g.key,
                          style: context.textTheme.labelMedium?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    for (final row in g.value) _ItemRow(state: state, row: row),
                  ],
                  if (items.length > _preview)
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: TextButton(
                        onPressed: () => state.toggleExpanded(category),
                        child: Text(
                          all
                              ? getString.showLess
                              : '${getString.showAll} (${items.length})',
                        ),
                      ),
                    ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
            child: Text(
              on
                  ? getString.settingsSyncChangedOnly
                  : getString.settingsSyncOffCategory,
              style: muted,
            ),
          ),
        ],
      ),
    );
  }
}

class _Row {
  final String name;
  final SyncedSetting item;

  const _Row(this.name, this.item);
}

class _ItemRow extends StatelessWidget {
  final SettingsSyncState state;
  final _Row row;

  const _ItemRow({required this.state, required this.row});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final value = row.item.value;
    final swatch = value is int && value > 0xFFFFFF ? Color(value) : null;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(row.name, maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
          const SizedBox(width: 8),
          if (swatch != null)
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: swatch,
                border: Border.all(color: scheme.outlineVariant),
              ),
            )
          else
            Flexible(
              flex: 2,
              child: Text(
                state.valueText(value),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,
                style: context.textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
          const SizedBox(width: 8),
          Icon(
            row.item.onServer
                ? Icons.cloud_done_outlined
                : Icons.cloud_upload_outlined,
            size: 16,
            color: row.item.onServer ? scheme.primary : scheme.onSurfaceVariant,
          ),
        ],
      ),
    );
  }
}
