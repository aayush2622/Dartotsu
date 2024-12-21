import 'package:flutter/material.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
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
            name: getString.manageHomeLayouts,
            description: getString.manageHomeLayoutsDescription,
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap =
                  PrefManager.getVal(PrefName.anilistHomeLayout);
              List<String> titles =
                  List<String>.from(homeLayoutMap.keys.toList());
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
            name: getString.manageHomeLayouts,
            description: getString.manageHomeLayoutsDescription,
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap = PrefManager.getVal(PrefName.malHomeLayout);
              List<String> titles =
                  List<String>.from(homeLayoutMap.keys.toList());
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
    ];
  }
}
