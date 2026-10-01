import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:package_info_plus/package_info_plus.dart';

import '../../Model/Setting.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import '../../Widgets/Settings/SettingsAdaptor.dart';
import 'SettingsCategories.dart';
import 'SettingsCategoryScreen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Settings'),
      ),
      body: ScrollConfig(
        context,
        child: ListView(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapXs,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          children: [
            ThemedContainer(
              borderRadius: Dimens.borderLg,
              padding: EdgeInsets.zero,
              child: TextField(
                onChanged: (v) => _query.value = v.trim(),
                textInputAction: TextInputAction.search,
                decoration: const InputDecoration(
                  hintText: 'Search settings',
                  prefixIcon: Icon(Icons.search_rounded),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
            SizedBox(height: Dimens.gap),
            Obx(() {
              final q = _query.value;
              if (q.isNotEmpty) return _searchResults(context, q);
              return _categoryGrid(context);
            }),
          ],
        ),
      ),
    );
  }

  Widget _categoryGrid(BuildContext context) {
    final cols = isMobile ? 2 : 3;
    final categories = settingsCategories;
    final rows = (categories.length / cols).ceil();

    return Column(
      children: [
        for (var row = 0; row < rows; row++)
          Padding(
            padding: EdgeInsets.only(bottom: Dimens.gap),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var col = 0; col < cols; col++) ...[
                  if (col > 0) SizedBox(width: Dimens.gap),
                  Expanded(
                    child: () {
                      final i = row * cols + col;
                      if (i >= categories.length) return const SizedBox.shrink();
                      return _CategoryCard(
                        category: categories[i],
                        index: i,
                      );
                    }(),
                  ),
                ],
              ],
            ),
          ),
      ],
    );
  }

  Widget _searchResults(BuildContext context, String query) {
    final all = allSettings(context);
    final filtered = _filter(all, query);
    if (filtered.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 64),
        child: Center(
          child: Text(
            'Nothing matches "$query"',
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

class _CategoryCard extends StatefulWidget {
  final SettingsCategory category;
  final int index;

  const _CategoryCard({required this.category, required this.index});

  @override
  State<_CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<_CategoryCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final c = widget.category;

    final accent = _categoryColor(scheme, widget.index);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => SettingsCategoryScreen(category: c),
          ),
        ),
        child: AnimatedScale(
          scale: _hovered ? 1.03 : 1.0,
          duration: Durations.short3,
          curve: Curves.easeOutBack,
          child: ThemedContainer(
            color: accent.withValues(alpha: 0.08),
            border: Border.all(
              color: accent.withValues(alpha: _hovered ? 0.35 : 0.15),
              width: 1.5,
            ),
            borderRadius: Dimens.border,
            padding: EdgeInsets.all(Dimens.gapLg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: accent.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(c.icon, size: 24, color: accent),
                ),
                SizedBox(height: Dimens.gapSm),
                Text(
                  c.title,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface,
                  ),
                ),
                SizedBox(height: Dimens.gapXs),
                Text(
                  c.description,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ).animateFadeUp(delay: Duration(milliseconds: widget.index * 55)),
        ),
      ),
    );
  }

  Color _categoryColor(ColorScheme s, int index) {
    const cycle = [
      0, // primary
      1, // tertiary
      2, // secondary
      3, // error-ish
      0,
      1,
    ];
    return switch (cycle[index % cycle.length]) {
      1 => s.tertiary,
      2 => s.secondary,
      3 => s.error,
      _ => s.primary,
    };
  }
}
