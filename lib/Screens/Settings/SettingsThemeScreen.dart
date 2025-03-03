import 'package:dartotsu/Screens/Settings/BaseSettingsScreen.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Theme/CustomColorPicker.dart';
import '../../Theme/ThemeManager.dart';
import '../../Theme/ThemeProvider.dart';

class SettingsThemeScreen extends StatefulWidget {
  const SettingsThemeScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsThemeScreenState();
}

class SettingsThemeScreenState extends BaseSettingsScreen {
  @override
  String title() => getString.theme;

  @override
  Widget icon() => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          size: 52,
          Icons.color_lens_outlined,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );

  @override
  List<Widget> get settingsList => [
        themeDropdown(context),
        SettingsAdaptor(
          settings: _buildSettings(context),
        ),
      ];

  List<Setting> _buildSettings(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return [
      Setting(
        type: SettingType.switchType,
        name: getString.darkMode,
        description: getString.enableDarkMode,
        icon: Icons.dark_mode,
        isChecked: themeNotifier.isDarkMode,
        onSwitchChange: (bool value) async {
          themeNotifier.setDarkMode(value);
        },
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.oledThemeVariant,
        description: getString.oledThemeVariantDescription,
        icon: Icons.brightness_4,
        isChecked: themeNotifier.isOled,
        onSwitchChange: (bool value) async {
          themeNotifier.setOled(value);
        },
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.materialYou,
        description: getString.materialYouDescription,
        icon: Icons.new_releases,
        isChecked: themeNotifier.useMaterialYou,
        onSwitchChange: (bool value) async {
          themeNotifier.setMaterialYou(value);
        },
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.customTheme,
        description: getString.customThemeDescription,
        icon: Icons.color_lens_outlined,
        isChecked: themeNotifier.useCustomColor,
        onSwitchChange: (bool value) async {
          themeNotifier.useCustomTheme(value);
        },
      ),
      Setting(
        type: SettingType.normal,
        name: getString.colorPicker,
        description: getString.colorPickerDescription,
        icon: Icons.color_lens_outlined,
        onClick: () async {
          var color = themeNotifier.customColor;
          Color? newColor = await showColorPickerDialog(context, Color(color),
              showTransparent: false);
          if (newColor != null) {
            themeNotifier.setCustomColor(newColor);
          }
        },
      ),
    ];
  }
}
