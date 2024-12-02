import 'package:dantotsu/Screens/Settings/BaseSettingsScreen.dart';
import 'package:dantotsu/Widgets/AlertDialogBuilder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Theme/LanguageSwitcher.dart';
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
  String title() => 'Theme';

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
        const ThemeDropdown(),
        languageSwitcher(context),
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
        //isVisible: Platform.isAndroid,
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
          Color? newColor = await showColorPickerDialog(context, Color(color));
          if (newColor != null) {
            themeNotifier.setCustomColor(newColor);
          }
        },
      ),
      Setting(
        type: SettingType.normal,
        name: getString.manageAnimeLayouts,
        description: getString.manageAnimeLayoutsDescription,
        icon: Icons.palette,
        onClick: () async {
          final homeLayoutMap = PrefManager.getVal(PrefName.anilistAnimeLayout);
          List<String> titles = List<String>.from(homeLayoutMap.keys.toList());
          List<bool> checkedStates =
              List<bool>.from(homeLayoutMap.values.toList());

          AlertDialogBuilder(context)
            ..setTitle(getString.manageAnimeLayouts)
            ..reorderableMultiSelectableItems(
              titles,
              checkedStates,
              (reorderedItems) => titles = reorderedItems,
              (newCheckedStates) => checkedStates = newCheckedStates,
            )
            ..setPositiveButton(getString.Ok, () {
              PrefManager.setVal(PrefName.anilistAnimeLayout,
                  Map.fromIterables(titles, checkedStates));
              Refresh.activity[2]?.value = true;
            })
            ..setNegativeButton(getString.Cancel, null)
            ..show();
        },
      ),
      Setting(
        type: SettingType.normal,
        name: getString.manageMangaLayouts,
        description: getString.manageMangaLayoutsDescription,
        icon: Icons.palette,
        onClick: () async {
          final homeLayoutMap = PrefManager.getVal(PrefName.anilistMangaLayout);
          List<String> titles = List<String>.from(homeLayoutMap.keys.toList());
          List<bool> checkedStates =
              List<bool>.from(homeLayoutMap.values.toList());

          AlertDialogBuilder(context)
            ..setTitle(getString.manageMangaLayouts)
            ..reorderableMultiSelectableItems(
              titles,
              checkedStates,
              (reorderedItems) => titles = reorderedItems,
              (newCheckedStates) => checkedStates = newCheckedStates,
            )
            ..setPositiveButton(getString.Ok, () {
              PrefManager.setVal(PrefName.anilistMangaLayout,
                  Map.fromIterables(titles, checkedStates));
              Refresh.activity[3]?.value = true;
            })
            ..setNegativeButton(getString.Cancel, null)
            ..show();
        },
      ),
      Setting(
        type: SettingType.normal,
        name: getString.manageHomeLayouts,
        description: getString.manageHomeLayoutsDescription,
        icon: Icons.palette,
        onClick: () async {
          final homeLayoutMap = PrefManager.getVal(PrefName.anilistHomeLayout);
          List<String> titles = List<String>.from(homeLayoutMap.keys.toList());
          List<bool> checkedStates =
              List<bool>.from(homeLayoutMap.values.toList());

          AlertDialogBuilder(context)
            ..setTitle(getString.manageHomeLayouts)
            ..reorderableMultiSelectableItems(
              titles,
              checkedStates,
              (reorderedItems) => titles = reorderedItems,
              (newCheckedStates) => checkedStates = newCheckedStates,
            )
            ..setPositiveButton(getString.Ok, () {
              PrefManager.setVal(PrefName.anilistHomeLayout,
                  Map.fromIterables(titles, checkedStates));
              Refresh.activity[1]?.value = true;
            })
            ..setNegativeButton(getString.Cancel, null)
            ..show();
        },
      ),
    ];
  }
}
