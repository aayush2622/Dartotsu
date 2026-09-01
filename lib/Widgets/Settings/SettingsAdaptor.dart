import 'package:flutter/material.dart';

import '../../Model/Setting.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Components/SectionCard.dart';
import 'SettingItem.dart';

/// Renders a flat `List<Setting>` — one [SectionCard] per row, plain labels for
/// [SettingType.header]. Same card surface and spacing as the rest of the app.
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
              padding: EdgeInsets.fromLTRB(
                Dimens.gapSm,
                Dimens.gapSm,
                Dimens.gapSm,
                Dimens.gapSm + 2,
              ),
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
              padding: EdgeInsets.only(bottom: Dimens.gap),
              child: SectionCard(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.cardPad,
                  vertical: Dimens.gapXs + 2,
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
