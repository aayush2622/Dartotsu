import 'package:flutter/material.dart';

import '../../Model/Setting.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../Components/ThemedContainer.dart';
import 'SettingItem.dart';

/// Renders a flat `List<Setting>` — one [ThemedContainer] card per row, plain
/// labels for [SettingType.header]. Mirrors `main`'s `SettingsAdaptor`.
class SettingsAdaptor extends StatelessWidget {
  final List<Setting> settings;

  const SettingsAdaptor({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    final visible = settings.where((s) => s.isVisible).toList();
    if (visible.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final setting in visible)
          if (setting.type == SettingType.header)
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 10),
              child: Text(
                setting.name,
                style: context.textTheme.titleSmall?.copyWith(
                  color: context.colorScheme.primary,
                  letterSpacing: 0.4,
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: ThemedContainer(
                borderRadius: BorderRadius.circular(24),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                child: switch (setting.type) {
                  SettingType.switchType => SettingSwitchItem(setting: setting),
                  SettingType.slider => SettingSliderItem(setting: setting),
                  SettingType.inputBox => SettingInputBoxItem(setting: setting),
                  SettingType.custom => SettingCustomItem(setting: setting),
                  _ => SettingItem(setting: setting),
                },
              ),
            ),
      ],
    );
  }
}
