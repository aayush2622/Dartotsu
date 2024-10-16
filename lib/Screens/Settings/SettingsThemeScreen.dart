import 'package:dantotsu/Screens/Settings/BaseSettingsScreen.dart';
import 'package:dantotsu/Widgets/AlertDialogBuilder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
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
  String get title => 'Theme';

  @override
  Widget get icon => Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Icon(
      size: 52,
      Icons.color_lens_outlined,
      color: Theme.of(context).colorScheme.onSurface,
    ),
  );

  @override
  List<Widget> get settingsList => [
    const ThemeDropdown(),
    const SizedBox(height: 8),
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: SettingsAdaptor(
        settings: _buildSettings(context),
      ),
    )
  ];

  List<Setting> _buildSettings(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return [
      Setting(
        type: SettingType.switchType,
        name: 'Dark Mode',
        description: 'Enable Dark Mode',
        icon: Icons.dark_mode,
        isChecked: themeNotifier.isDarkMode,
        onSwitchChange: (bool value) async {
          themeNotifier.setDarkMode(value);
        },
      ),
      Setting(
        type: SettingType.switchType,
        name: 'OLED theme Variant',
        description: 'Enable OLED Mode',
        icon: Icons.brightness_4,
        isChecked: themeNotifier.isOled,
        onSwitchChange: (bool value) async {
          themeNotifier.setOled(value);
        },
      ),
      Setting(
        type: SettingType.switchType,
        name: 'Material You',
        description: 'Use the same color as your wallpaper',
        icon: Icons.new_releases,
        //isVisible: Platform.isAndroid,
        isChecked: themeNotifier.useMaterialYou,
        onSwitchChange: (bool value) async {
          themeNotifier.setMaterialYou(value);
        },
      ),
      Setting(
        type: SettingType.switchType,
        name: 'Custom theme',
        description: 'Use your own color for the theme',
        icon: Icons.color_lens_outlined,
        isChecked: themeNotifier.useCustomColor,
        onSwitchChange: (bool value) async {
          themeNotifier.useCustomTheme(value);
        },
      ),
      Setting(
        type: SettingType.normal,
        name: 'Color Picker',
        description: 'Choose a color',
        icon: Icons.color_lens_outlined,
        onClick: () async {
          var color = themeNotifier.customColor;
          Color? newColor = await showColorPickerDialog(context, Color(color));
          if (newColor != null) {
            themeNotifier.setCustomColor(newColor);
          }
        },
      ),
      Setting(
        type: SettingType.normal,
        name: 'Manage Layouts on Anime Page',
        description: 'Does not belong here',
        icon: Icons.palette,
        onClick: () async {
          final homeLayoutMap = PrefManager.getVal(PrefName.animeLayout);
          List<String> titles = List<String>.from(homeLayoutMap.keys.toList());
          List<bool> checkedStates =
              List<bool>.from(homeLayoutMap.values.toList());

          AlertDialogBuilder(context)
            ..setTitle('Manage Layouts on Anime Page')
            ..reorderableMultiSelectableItems(
              titles,
              checkedStates,
              (reorderedItems) => titles = reorderedItems,
              (newCheckedStates) => checkedStates = newCheckedStates,
            )
            ..setPositiveButton('OK', () {
              PrefManager.setVal(PrefName.animeLayout,
                  Map.fromIterables(titles, checkedStates));
              Refresh.activity[2]?.value = true;
            })
            ..setNegativeButton("Cancel", null)
            ..show();
        },
      ),
      Setting(
        type: SettingType.normal,
        name: 'Manage Layouts on Manga Page',
        description: 'Does not belong here',
        icon: Icons.palette,
        onClick: () async {
          final homeLayoutMap = PrefManager.getVal(PrefName.mangaLayout);
          List<String> titles = List<String>.from(homeLayoutMap.keys.toList());
          List<bool> checkedStates =
              List<bool>.from(homeLayoutMap.values.toList());

          AlertDialogBuilder(context)
            ..setTitle('Manage Layouts on Manga Page')
            ..reorderableMultiSelectableItems(
              titles,
              checkedStates,
              (reorderedItems) => titles = reorderedItems,
              (newCheckedStates) => checkedStates = newCheckedStates,
            )
            ..setPositiveButton('OK', () {
              PrefManager.setVal(PrefName.mangaLayout,
                  Map.fromIterables(titles, checkedStates));
              Refresh.activity[3]?.value = true;
            })
            ..setNegativeButton("Cancel", null)
            ..show();
        },
      ),
      Setting(
        type: SettingType.normal,
        name: 'Manage Layouts on Home Page',
        description: 'Does not belong here',
        icon: Icons.palette,
        onClick: () async {
          final homeLayoutMap = PrefManager.getVal(PrefName.homeLayout);
          List<String> titles = List<String>.from(homeLayoutMap.keys.toList());
          List<bool> checkedStates =
              List<bool>.from(homeLayoutMap.values.toList());

          AlertDialogBuilder(context)
            ..setTitle('Manage Layouts on Home Page')
            ..reorderableMultiSelectableItems(
              titles,
              checkedStates,
              (reorderedItems) => titles = reorderedItems,
              (newCheckedStates) => checkedStates = newCheckedStates,
            )
            ..setPositiveButton('OK', () {
              PrefManager.setVal(PrefName.homeLayout,
                  Map.fromIterables(titles, checkedStates));
              Refresh.activity[1]?.value = true;
            })
            ..setNegativeButton("Cancel", null)
            ..show();
        },
      ),
    ];
  }


}

