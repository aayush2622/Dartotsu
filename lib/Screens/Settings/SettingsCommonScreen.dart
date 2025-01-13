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
            name: 'Custom Path',
            description: 'Set a custom path to save files\nLong press to remove',
            icon: Icons.folder,
            isVisible: !(Platform.isIOS || Platform.isMacOS),
            onLongClick: () => PrefManager.removeVal(PrefName.customPath),
            onClick: () async {
              var path = PrefManager.getVal(PrefName.customPath);
              final result = await FilePicker.platform.getDirectoryPath(
                dialogTitle: 'Select a directory',
                lockParentWindow: true,
                initialDirectory: path ,
              );
              if (result != null) {
                PrefManager.setVal(PrefName.customPath, result);
              }
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
            isChecked: PrefManager.getVal(PrefName.anilistHidePrivate),
            onSwitchChange: (value) {
              PrefManager.setVal(PrefName.anilistHidePrivate, value);
              Refresh.activity[RefreshId.Anilist.homePage]?.value = true;
            },
          ),
          Setting(
            type: SettingType.normal,
            name: getString.manageLayout(getString.home,getString.anilist),
            description: getString.manageLayoutDescription(getString.home),
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap =
                  PrefManager.getVal(PrefName.anilistHomeLayout);
              List<String> titles =
                  List<String>.from(homeLayoutMap.keys.toList());
              List<bool> checkedStates =
                  List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(getString.manageLayout(getString.home,getString.anilist))
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(getString.ok, () {
                  PrefManager.setVal(PrefName.anilistHomeLayout,
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
            name: getString.manageLayout(getString.home,getString.mal),
            description: getString.manageLayoutDescription(getString.home),
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap = PrefManager.getVal(PrefName.malHomeLayout);
              List<String> titles =
                  List<String>.from(homeLayoutMap.keys.toList());
              List<bool> checkedStates =
                  List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(getString.manageLayout(getString.home,getString.mal))
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(
                  getString.ok,
                  () {
                    PrefManager.setVal(
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
            name: getString.manageLayout(getString.home,getString.simkl),
            description: getString.manageLayoutDescription(getString.home),
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap = PrefManager.getVal(PrefName.simklHomeLayout);
              List<String> titles =
              List<String>.from(homeLayoutMap.keys.toList());
              List<bool> checkedStates =
              List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(getString.manageLayout(getString.home,getString.simkl))
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                      (reorderedItems) => titles = reorderedItems,
                      (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(
                  getString.ok,
                      () {
                    PrefManager.setVal(
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
