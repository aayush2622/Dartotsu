import 'package:flutter/material.dart';

import '../../../Model/Setting.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/ThemedContainer.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Nav/DpadNav.dart';
import 'SettingItem.dart';

class SectionStyle {
  final IconData icon;
  final String description;

  const SectionStyle(this.icon, this.description);
}

class SettingsGroup extends StatelessWidget {
  final List<Setting> settings;

  /// Header title -> icon and description. A section whose header is in the
  /// map and holds more than three rows becomes a card that starts collapsed
  /// and opens on tap; other sections stay plain, and an empty header title
  /// ends a section without opening a new one.
  final Map<String, SectionStyle>? accordion;

  const SettingsGroup({super.key, required this.settings, this.accordion});

  @override
  Widget build(BuildContext context) {
    final visible = settings.where((s) => s.isVisible).toList();
    if (visible.isEmpty) return const SizedBox.shrink();

    final sections = <_Section>[];
    String? header;
    List<Setting> group = [];

    void flush() {
      if (group.isNotEmpty) {
        sections.add(_Section(header: header, items: List.of(group)));
        header = null;
        group = [];
      }
    }

    for (final s in visible) {
      if (s.type == SettingType.header) {
        flush();
        header = s.name.isEmpty ? null : s.name;
      } else {
        group.add(s);
      }
    }
    flush();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < sections.length; i++)
          if (accordion != null &&
              sections[i].items.length > 3 &&
              accordion!.containsKey(sections[i].header))
            _AccordionSection(
              key: ValueKey('accordion/${sections[i].header}'),
              section: sections[i],
              style: accordion![sections[i].header]!,
              index: i,
            )
          else
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

  Widget _buildItem(Setting s) => _settingItem(s);
}

Widget _settingItem(Setting s) => switch (s.type) {
  SettingType.switchType => SettingSwitchItem(setting: s),
  SettingType.slider => SettingSliderItem(setting: s),
  SettingType.inputBox => SettingInputBoxItem(setting: s),
  SettingType.custom => SettingCustomItem(setting: s),
  _ => SettingItem(setting: s),
};

class _AccordionSection extends StatefulWidget {
  final _Section section;
  final SectionStyle style;
  final int index;

  const _AccordionSection({
    super.key,
    required this.section,
    required this.style,
    required this.index,
  });

  @override
  State<_AccordionSection> createState() => _AccordionSectionState();
}

class _AccordionSectionState extends State<_AccordionSection> {
  final _open = false.live;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final items = widget.section.items;
    final open = _open.value;

    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gapSm),
      child: ClipRRect(
        borderRadius: Dimens.border,
        child: ThemedContainer(
          blur: false,
          color: scheme.surfaceContainerLow,
          borderRadius: Dimens.border,
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DpadTap(
                onTap: () => _open.value = !open,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  child: Row(
                    children: [
                      Icon(widget.style.icon, size: 22, color: scheme.primary),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              widget.section.header!,
                              style: context.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            if (widget.style.description.isNotEmpty) ...[
                              const SizedBox(height: 3),
                              Text(
                                widget.style.description,
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: scheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                      AnimatedRotation(
                        turns: open ? 0.5 : 0,
                        duration: animDuration(200),
                        child: Icon(
                          Icons.expand_more_rounded,
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AppSize(
                duration: 200,
                child: open
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          for (final item in items) ...[
                            Divider(
                              height: 1,
                              indent: 56,
                              endIndent: 16,
                              color: scheme.outlineVariant.withValues(
                                alpha: 0.5,
                              ),
                            ),
                            _settingItem(item),
                          ],
                        ],
                      )
                    : const SizedBox(width: double.infinity),
              ),
            ],
          ),
        ),
      ),
    ).animateFadeUp(delay: Duration(milliseconds: widget.index * 40));
  }
}
