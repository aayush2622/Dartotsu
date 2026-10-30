import 'package:flutter/material.dart';

import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import 'SettingsListView.dart';
import 'SettingsCategories.dart';
import 'SettingsCategoryScreen.dart';
import 'SettingsState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Api/Discord/DiscordPresence.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends BaseScreen<SettingsScreen>
    with ScreenStateHost<SettingsScreen, SettingsState> {
  @override
  SettingsState buildState() => SettingsState();

  @override
  DiscordPresence? get presence => state.presence;

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SettingsListView(
        title: getString.settings,
        searchable: allSettings,
        emptyBuilder: _categoryList,
      ),
    );
  }

  Widget _categoryList(BuildContext context) {
    final scheme = context.colorScheme;
    final groups = <String, List<SettingsCategory>>{};
    for (final c in settingsCategories) {
      groups.putIfAbsent(c.group, () => []).add(c);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final entry in groups.entries) ...[
          Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.gapSm,
              Dimens.gapXs,
              Dimens.gapSm,
              Dimens.gapSm + 2,
            ),
            child: Text(
              entry.key.toUpperCase(),
              style: context.textTheme.labelMedium?.copyWith(
                color: scheme.primary,
                letterSpacing: 0.8,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: Dimens.gap),
            child: ClipRRect(
              borderRadius: Dimens.border,
              child: ThemedContainer(
                blur: false,
                color: scheme.surfaceContainerLow,
                borderRadius: Dimens.border,
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    for (var i = 0; i < entry.value.length; i++) ...[
                      if (i > 0)
                        Divider(
                          height: 1,
                          indent: 56,
                          endIndent: 16,
                          color: scheme.outlineVariant.withValues(alpha: 0.5),
                        ),
                      _CategoryRow(category: entry.value[i]),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ],
    ).animateFadeUp();
  }
}

// ─── category row ─────────────────────────────────────────────────────────────

class _CategoryRow extends StatelessWidget {
  final SettingsCategory category;

  const _CategoryRow({required this.category});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final c = category;

    void onTap() =>
        navigateToPage(context, SettingsCategoryScreen(category: c));

    return DpadTap(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Icon(c.icon, size: 22, color: scheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    c.title,
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    c.description,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.chevron_right_rounded,
              color: scheme.onSurfaceVariant,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
