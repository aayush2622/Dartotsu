import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import 'BackupCategory.dart';
import '../../../../Core/State/State.dart';

class BackupCategoryTile extends StatelessWidget {
  static const _shown = 60;

  final PrefLocation location;
  final List<String> keys;
  final LiveMap<PrefLocation, bool> selected;

  const BackupCategoryTile({
    super.key,
    required this.location,
    required this.keys,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Material(
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(18),
        clipBehavior: Clip.antiAlias,
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            shape: const Border(),
            collapsedShape: const Border(),
            tilePadding: const EdgeInsets.fromLTRB(8, 0, 14, 0),
            childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            leading: Watch(
              () => Checkbox(
                value: selected[location] ?? false,
                onChanged: (v) => selected[location] = v ?? false,
              ),
            ),
            title: Row(
              children: [
                Icon(location.icon, size: 20, color: scheme.primary),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    location.label,
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  getString.backupKeys(keys.length),
                  style: context.textTheme.labelMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            subtitle: Text(
              location.description,
              style: context.textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            children: [
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  for (final key in keys.take(_shown))
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: scheme.surfaceContainerHigh,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(key, style: context.textTheme.labelSmall),
                    ),
                  if (keys.length > _shown)
                    Text(
                      '+${keys.length - _shown}',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
