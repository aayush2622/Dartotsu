import 'package:dartotsu/Screens/Settings/SettingsPlayerScreen.dart';
import 'package:flutter/material.dart';
import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Widgets/AlertDialogBuilder.dart';
import 'BaseSettingsScreen.dart';

class SettingsAnimeScreen extends StatefulWidget {
  const SettingsAnimeScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsAnimeScreenState();
}

class SettingsAnimeScreenState extends BaseSettingsScreen {
  @override
  String title() => getString.anime;

  @override
  Widget icon() => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          size: 52,
          Icons.movie_filter_rounded,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );

  @override
  List<Widget> get settingsList {
    return [
      SettingsAdaptor(
        settings: [
          Setting(
            type: SettingType.normal,
            name: 'Player Settings',
            description: 'Change player settings',
            icon: Icons.video_settings,
            isActivity: true,
            onClick: () => navigateToPage(
                context, const SettingsPlayerScreen()),
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
            type: SettingType.normal,
            name: getString.manageAnimeLayouts,
            description: getString.manageAnimeLayoutsDescription,
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap =
                  PrefManager.getVal(PrefName.anilistAnimeLayout);
              var titles = List<String>.from(homeLayoutMap.keys.toList());
              var checkedStates =
                  List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(getString.manageAnimeLayouts)
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(getString.ok, () {
                  PrefManager.setVal(
                    PrefName.anilistAnimeLayout,
                    Map.fromIterables(titles, checkedStates),
                  );
                  Refresh.activity[RefreshId.Anilist.animePage]?.value = true;
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
            name: getString.manageAnimeLayouts,
            description: getString.manageAnimeLayoutsDescription,
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap = PrefManager.getVal(PrefName.malAnimeLayout);
              var titles = List<String>.from(homeLayoutMap.keys.toList());
              var checkedStates =
                  List<bool>.from(homeLayoutMap.values.toList());
              AlertDialogBuilder(context)
                ..setTitle(getString.manageAnimeLayouts)
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(getString.ok, () {
                  PrefManager.setVal(
                    PrefName.malAnimeLayout,
                    Map.fromIterables(titles, checkedStates),
                  );
                  Refresh.activity[RefreshId.Mal.animePage]?.value = true;
                })
                ..setNegativeButton(getString.cancel, null)
                ..show();
            },
          ),
        ],
      ),
    ];
  }
}
