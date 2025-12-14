import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Screens/Settings/BaseSettingsScreen.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Functions/GetXFunctions.dart';
import '../../Theme/CustomColorPicker.dart';
import '../../Theme/ThemeManager.dart';
import '../../Theme/ThemeController.dart';

class SettingsThemeScreen extends StatefulWidget {
  const SettingsThemeScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsThemeScreenState();
}

class SettingsThemeScreenState extends BaseSettingsScreen {
  final ThemeController theme = find<ThemeController>();

  @override
  String title() => getString.theme;

  @override
  Widget icon() => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          Icons.color_lens_outlined,
          size: 52,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );

  @override
  List<Widget> get settingsList => [
        themeDropdown(),
        Obx(
          () => SettingsAdaptor(
            settings: _buildSettings(),
          ),
        ),
      ];

  List<Setting> _buildSettings() {
    return [
      Setting(
        type: SettingType.switchType,
        name: getString.darkMode,
        description: getString.enableDarkMode,
        icon: Icons.dark_mode,
        isChecked: theme.isDarkMode.value,
        onSwitchChange: theme.setDarkMode,
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.glassEffect,
        description: getString.glassEffectDescription,
        icon: Icons.blur_on_outlined,
        isChecked: theme.useGlassMode.value,
        onSwitchChange: theme.setGlassEffect,
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.oledThemeVariant,
        description: getString.oledThemeVariantDescription,
        icon: Icons.brightness_4,
        isChecked: theme.isOled.value,
        onSwitchChange: theme.setOled,
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.materialYou,
        description: getString.materialYouDescription,
        icon: Icons.new_releases,
        isChecked: theme.useMaterialYou.value,
        onSwitchChange: theme.setMaterialYou,
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.coverTheme,
        description: getString.coverThemeDescription,
        icon: Icons.image_outlined,
        isChecked: loadData(PrefName.useCoverTheme),
        onSwitchChange: (bool value) {
          saveData(PrefName.useCoverTheme, value);
        },
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.customTheme,
        description: getString.customThemeDescription,
        icon: Icons.color_lens_outlined,
        isChecked: theme.useCustomColor.value,
        onSwitchChange: theme.useCustomTheme,
      ),
      Setting(
        type: SettingType.normal,
        name: getString.colorPicker,
        description: getString.colorPickerDescription,
        icon: Icons.color_lens_outlined,
        onClick: () async {
          final color = theme.customColor.value;
          final Color? newColor = await showColorPickerDialog(
            context,
            Color(color),
            showTransparent: false,
          );

          if (newColor != null) {
            theme.setCustomColor(newColor);
          }
        },
      ),
    ];
  }
}
