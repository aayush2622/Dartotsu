import 'package:flutter/material.dart';

import '../../../Model/Setting.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/ThemedContainer.dart';
import 'SettingItem.dart';

class SettingsAdaptor extends StatelessWidget {
  final List<Setting> settings;

  const SettingsAdaptor({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    final visible = settings.where((s) => s.isVisible).toList();
    if (visible.isEmpty) return const SizedBox.shrink();

    final sections = <_Section>[];
    String? header;
    List<Setting> group = [];

    void flush() {
      if (header != null || group.isNotEmpty) {
        sections.add(_Section(header: header, items: List.of(group)));
        header = null;
        group = [];
      }
    }

    for (final s in visible) {
      if (s.type == SettingType.header) {
        flush();
        header = s.name;
      } else {
        group.add(s);
      }
    }
    flush();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < sections.length; i++)
          _SectionGroup(section: sections[i], index: i),
      ],
    );
  }
}

class _Section {
  final String? header;
  final List<Setting> items;
  const _Section({required this.header, required this.items});
}

class _SectionGroup extends StatelessWidget {
  final _Section section;
  final int index;

  const _SectionGroup({required this.section, required this.index});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gap),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (section.header != null)
            Padding(
              padding: EdgeInsets.fromLTRB(
                Dimens.gapSm,
                Dimens.gapXs,
                Dimens.gapSm,
                Dimens.gapSm + 2,
              ),
              child: Text(
                section.header!,
                style: context.textTheme.labelMedium?.copyWith(
                  color: scheme.primary,
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          if (section.items.isNotEmpty)
            ClipRRect(
              borderRadius: Dimens.border,
              child: ThemedContainer(
                blur: false,
                color: scheme.surfaceContainerLow,
                borderRadius: Dimens.border,
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    for (var j = 0; j < section.items.length; j++) ...[
                      if (j > 0)
                        Divider(
                          height: 1,
                          indent: 56,
                          endIndent: 16,
                          color: scheme.outlineVariant.withValues(alpha: 0.5),
                        ),
                      _buildItem(section.items[j]),
                    ],
                  ],
                ),
              ),
            ),
        ],
      ),
    ).animateFadeUp(delay: Duration(milliseconds: index * 50));
  }

  Widget _buildItem(Setting s) => switch (s.type) {
    SettingType.switchType => SettingSwitchItem(setting: s),
    SettingType.slider => SettingSliderItem(setting: s),
    SettingType.inputBox => SettingInputBoxItem(setting: s),
    SettingType.custom => SettingCustomItem(setting: s),
    _ => SettingItem(setting: s),
  };
}
