import 'package:flutter/cupertino.dart';

import '../DataClass/Setting.dart';
import 'SettingsItem.dart';

class SettingsAdaptor extends StatelessWidget {
  final List<Setting> settings;

  const SettingsAdaptor({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: settings.map((setting) {
        switch (setting.type) {
          case SettingType.normal:
            return SettingItem(setting: setting);
          case SettingType.switchType:
            return SettingSwitchItem(setting: setting);
        }
      }).toList(),
    );
  }
}
