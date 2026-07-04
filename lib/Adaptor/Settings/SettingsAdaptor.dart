import 'package:flutter/cupertino.dart';

import '../../DataClass/Setting.dart';
import '../../Theme/ThemeManager.dart';
import 'SettingsItem.dart';

class SettingsAdaptor extends StatelessWidget {
  final List<Setting> settings;

  const SettingsAdaptor({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: settings
          .map(
            (setting) => ThemedContainer(
              context: context,
              borderRadius: BorderRadius.circular(24.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              margin: EdgeInsets.only(
                bottom: setting == settings.last ? 0 : 12.0,
              ),
              child: switch (setting.type) {
                SettingType.normal => SettingItem(setting: setting),
                SettingType.switchType => SettingSwitchItem(setting: setting),
                SettingType.slider => SettingSliderItem(setting: setting),
                SettingType.inputBox => SettingInputBoxItem(setting: setting),
              },
            ),
          )
          .toList(),
    );
  }
}
