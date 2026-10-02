import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:package_info_plus/package_info_plus.dart';

import '../../Model/Setting.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import 'Widgets/SettingsAdaptor.dart';
import 'Widgets/SettingsSearchField.dart';
import 'SettingsCategories.dart';
import 'SettingsCategoryScreen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends BaseScreen<SettingsScreen> {
  final _query = ''.obs;

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
      body: CustomScrollConfig(
        context,
        children: [
          SliverAppBar.medium(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20,
                color: context.colorScheme.onSurfaceVariant,
              ),
              onPressed: () {
                if (Get.key.currentState?.canPop() ?? false) Get.back();
              },
            ),
            backgroundColor: Colors.transparent,
            title: Text(getString.settings),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              Dimens.gapXs,
              Dimens.pagePad,
              Dimens.gapXl,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                SettingsSearchField(query: _query),
                SizedBox(height: Dimens.gap),
                Obx(() {
                  final q = _query.value;
                  if (q.isNotEmpty) return _searchResults(context, q);
                  return _categoryList(context);
                }),
              ]),
            ),
          ),
        ],
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

  Widget _searchResults(BuildContext context, String query) {
    final all = allSettings(context);
    final filtered = _filter(all, query);
    if (filtered.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 64),
        child: Center(
          child: Text(
            getString.nothingMatches(query),
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      );
    }
    return SettingsAdaptor(settings: filtered);
  }

  static List<Setting> _filter(List<Setting> all, String query) {
    final out = <Setting>[];
    for (var i = 0; i < all.length; i++) {
      final s = all[i];
      if (s.type == SettingType.header) {
        var hit = false;
        for (var j = i + 1; j < all.length; j++) {
          if (all[j].type == SettingType.header) break;
          if (all[j].matches(query)) {
            hit = true;
            break;
          }
        }
        if (hit) out.add(s);
      } else if (s.matches(query)) {
        out.add(s);
      }
    }
    return out;
  }
}

// ─── category row ─────────────────────────────────────────────────────────────

class _CategoryRow extends StatefulWidget {
  final SettingsCategory category;

  const _CategoryRow({required this.category});

  @override
  State<_CategoryRow> createState() => _CategoryRowState();
}

class _CategoryRowState extends State<_CategoryRow> {
  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final c = widget.category;

    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => SettingsCategoryScreen(category: c),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: scheme.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(c.icon, size: 22, color: scheme.onSecondaryContainer),
            ),
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
