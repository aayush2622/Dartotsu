import 'package:dartotsu/Screens/Settings/SettingsPlayerScreen.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
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
            name: getString.playerSettingsTitle,
            description: getString.playerSettingsDesc,
            icon: Icons.video_settings,
            isActivity: true,
            onClick: () => navigateToPage(
              context,
              const SettingsPlayerScreen(),
            ),
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
            name: getString.manageLayout(getString.anilist, getString.anime),
            description: getString.manageLayoutDescription(getString.home),
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap = loadData(PrefName.anilistAnimeLayout);
              var titles = List<String>.from(homeLayoutMap.keys.toList());
              var checkedStates =
                  List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(
                    getString.manageLayout(getString.anilist, getString.anime))
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(getString.ok, () {
                  saveData(
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
            name: getString.manageLayout(getString.mal, getString.home),
            description: getString.manageLayoutDescription(getString.home),
            icon: Icons.tune,
            onClick: () async {
              final homeLayoutMap = loadData(PrefName.malAnimeLayout);
              var titles = List<String>.from(homeLayoutMap.keys.toList());
              var checkedStates =
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
                ..setPositiveButton(getString.ok, () {
                  saveData(
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
              final homeLayoutMap = loadData(PrefName.simklAnimeLayout);
              var titles = List<String>.from(homeLayoutMap.keys.toList());
              var checkedStates =
                  List<bool>.from(homeLayoutMap.values.toList());
              AlertDialogBuilder(context)
                ..setTitle(
                    getString.manageLayout(getString.home, getString.simkl))
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(getString.ok, () {
                  saveData(
                    PrefName.simklAnimeLayout,
                    Map.fromIterables(titles, checkedStates),
                  );
                  Refresh.activity[RefreshId.Simkl.animePage]?.value = true;
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
