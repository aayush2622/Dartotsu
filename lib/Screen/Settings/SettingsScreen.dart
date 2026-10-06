import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

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

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends BaseScreen<SettingsScreen> {
  @override
  void initState() {
    super.initState();
    if (settingsAppVersion.value.isEmpty) {
      PackageInfo.fromPlatform().then(
        (i) => settingsAppVersion.value = 'v${i.version}+${i.buildNumber}',
      );
    }
  }

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
    final categories = settingsCategories;

    return ClipRRect(
      borderRadius: Dimens.border,
      child: ThemedContainer(
        color: scheme.surfaceContainerLow,
        borderRadius: Dimens.border,
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            for (var i = 0; i < categories.length; i++) ...[
              if (i > 0)
                Divider(
                  height: 1,
                  indent: 72,
                  endIndent: 0,
                  color: scheme.outlineVariant.withValues(alpha: 0.5),
                ),
              _CategoryRow(category: categories[i]),
            ],
          ],
        ),
      ),
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
