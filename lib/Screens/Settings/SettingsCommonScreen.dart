import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Widgets/AlertDialogBuilder.dart';
import 'BaseSettingsScreen.dart';

class SettingsCommonScreen extends StatefulWidget {
  const SettingsCommonScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsCommonScreenState();
}

class SettingsCommonScreenState extends BaseSettingsScreen {
  @override
  String title() => getString.common;

  @override
  Widget icon() => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          size: 52,
          Icons.lightbulb_outline,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );

  @override
  List<Widget> get settingsList {
    return [
      languageSwitcher(context),
      SettingsAdaptor(
        settings: [
          Setting(
            type: SettingType.normal,
            name: getString.customPath,
            description: getString.customPathDescription,
            icon: Icons.folder,
            isVisible: !(Platform.isIOS || Platform.isMacOS),
            onLongClick: () => removeData(PrefName.customPath),
            onClick: () async {
              var path = loadData(PrefName.customPath);
              final result = await FilePicker.platform.getDirectoryPath(
                dialogTitle: getString.selectDirectory,
                lockParentWindow: true,
                initialDirectory: path,
              );
              if (result != null) {
                saveData(PrefName.customPath, result);
              }
            },
          ),
          Setting(
            type: SettingType.switchType,
            name: getString.differentCacheManager,
            description: getString.differentCacheManagerDesc,
            icon: Icons.image,
            isChecked: loadCustomData('useDifferentCacheManager') ?? false,
            onSwitchChange: (value) {
              saveCustomData('useDifferentCacheManager', value);
            },
          ),
        ],
      ),
      Text(
        getString.anilist,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
      ),
      SettingsAdaptor(
        settings: [
          Setting(
            type: SettingType.switchType,
            name: getString.hidePrivate,
            description: getString.hidePrivateDescription,
            icon: Icons.visibility_off,
            isChecked: loadData(PrefName.anilistHidePrivate),
            onSwitchChange: (value) {
              saveData(PrefName.anilistHidePrivate, value);
              Refresh.activity[RefreshId.Anilist.homePage]?.value = true;
            },
          ),
          Setting(
            type: SettingType.normal,
            name: getString.manageLayout(getString.anilist, getString.home),
            description: getString.manageLayoutDescription(getString.home),
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap = loadData(PrefName.anilistHomeLayout);
              List<String> titles =
                  List<String>.from(homeLayoutMap.keys.toList());
              List<bool> checkedStates =
                  List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(
                    getString.manageLayout(getString.anilist, getString.home))
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(getString.ok, () {
                  saveData(PrefName.anilistHomeLayout,
                      Map.fromIterables(titles, checkedStates));
                  Refresh.activity[RefreshId.Anilist.homePage]?.value = true;
                })
                ..setNegativeButton(getString.cancel, null)
                ..show();
            },
          ),
        ],
      ),
      Text(
        getString.mal,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
      ),
      SettingsAdaptor(
        settings: [
          Setting(
            type: SettingType.normal,
            name: getString.manageLayout(getString.mal, getString.home),
            description: getString.manageLayoutDescription(getString.home),
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap = loadData(PrefName.malHomeLayout);
              List<String> titles =
                  List<String>.from(homeLayoutMap.keys.toList());
              List<bool> checkedStates =
                  List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(
                    getString.manageLayout(getString.mal, getString.home))
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(
                  getString.ok,
                  () {
                    saveData(
                      PrefName.malHomeLayout,
                      Map.fromIterables(titles, checkedStates),
                    );
                    Refresh.activity[RefreshId.Mal.homePage]?.value = true;
                  },
                )
                ..setNegativeButton(getString.cancel, null)
                ..show();
            },
          ),
        ],
      ),
      Text(
        getString.simkl,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
      ),
      SettingsAdaptor(
        settings: [
          Setting(
            type: SettingType.normal,
            name: getString.manageLayout(getString.simkl, getString.home),
            description: getString.manageLayoutDescription(getString.home),
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap = loadData(PrefName.simklHomeLayout);
              List<String> titles =
                  List<String>.from(homeLayoutMap.keys.toList());
              List<bool> checkedStates =
                  List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(
                    getString.manageLayout(getString.simkl, getString.home))
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(
                  getString.ok,
                  () {
                    saveData(
                      PrefName.simklHomeLayout,
                      Map.fromIterables(titles, checkedStates),
                    );
                    Refresh.activity[RefreshId.Simkl.homePage]?.value = true;
                  },
                )
                ..setNegativeButton(getString.cancel, null)
                ..show();
            },
          ),
        ],
      ),
    ];
  }
}
