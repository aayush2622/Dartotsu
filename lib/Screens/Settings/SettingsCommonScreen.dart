import 'dart:io';
import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

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
      SettingsAdaptor(settings: [
        Setting(
          type: SettingType.normal,
          name: getString.backupAndRestore,
          description: getString.backupAndRestoreDescription,
          icon: Icons.settings_backup_restore,
          onClick: () {
            final titles = [
              getString.theme,
              getString.common,
              getString.playerSettingsTitle,
              getString.readerSettings,
            ];
            List<bool> checkedStates = List<bool>.filled(titles.length, false);

            AlertDialogBuilder(context)
              ..setTitle(getString.backupAndRestore)
              ..multiChoiceItems(
                titles,
                checkedStates,
                (newCheckedStates) => checkedStates = newCheckedStates,
              )
              ..setPositiveButton(
                getString.restore,
                () async {
                  final picked = await FilePicker.platform.pickFiles(
                    allowMultiple: false,
                    dialogTitle: getString.restore,
                  );
                  if (picked?.files == null || picked!.files.isEmpty) {
                    return; // user cancelled, no need of showing the snackbar (I hope)
                  }
                  final file = picked.files.first;
                  try {
                    final content = await File(file.path!).readAsString();
                    final decoded = jsonDecode(content) as Map<String, dynamic>;

                    if (decoded.containsKey('UI')) {
                      final uiMap = (decoded['UI'] as Map).cast<String, dynamic>();
                      for (final pref in uiPrefs) {
                        if (uiMap.containsKey(pref.key)) {
                          saveData(pref, uiMap[pref.key]);
                        }
                      }
                    }
                    if (decoded.containsKey('Commons')) {
                      final cMap = (decoded['Commons'] as Map).cast<String, dynamic>();
                      for (final pref in commonsPrefs) {
                        if (cMap.containsKey(pref.key)) {
                          saveData(pref, cMap[pref.key]);
                        }
                      }
                      for (final k in commonsCustomKeys) {
                        if (cMap.containsKey(k)) {
                          saveCustomData(k, cMap[k]);
                        }
                      }
                    }
                    if (decoded.containsKey('Player Settings')) {
                      final pMap = (decoded['Player Settings'] as Map).cast<String, dynamic>();
                      for (final pref in playerPrefs) {
                        if (pMap.containsKey(pref.key)) {
                          saveData(pref, pMap[pref.key]);
                        }
                      }
                    }
                    if (decoded.containsKey('Reader Settings')) {
                      final rMap = (decoded['Reader Settings'] as Map).cast<String, dynamic>();
                      for (final pref in readerPrefs) {
                        if (rMap.containsKey(pref.key)) {
                          saveData(pref, rMap[pref.key]);
                        }
                      }
                    }
                    snackString('Preferences restored successfully');
                  } catch (e) {
                    snackString('Failed to restore: $e');
                  }
                },
              )
              ..setNegativeButton(
                getString.backup,
                () async {
                  if (!checkedStates.any((a) => a)) {
                    snackString('Please select at least one category to backup');
                    return;
                  }
                  final Map<String, dynamic> data = {};
                  // backup for theme
                  if (checkedStates[0]) {
                    final Map<String, dynamic> uiMap = {};
                    for (var pref in uiPrefs) {
                      uiMap[pref.key] = loadData(pref);
                    }
                    data['UI'] = uiMap;
                  }

                  // backup for common
                  if (checkedStates[1]) {
                    final Map<String, dynamic> cMap = {};
                    for (var pref in commonsPrefs) {
                      cMap[pref.key] = loadData(pref);
                    }
                    for (var k in commonsCustomKeys) {
                      cMap[k] = loadCustomData(k);
                    }
                    data['Commons'] = cMap;
                  }

                  // backup for player
                  if (checkedStates[2]) {
                    final Map<String, dynamic> pMap = {};
                    for (var pref in playerPrefs) {
                      pMap[pref.key] = loadData(pref);
                    }
                    data['Player Settings'] = pMap;
                  }

                  // backup for reader
                  if (checkedStates[3]) {
                    final Map<String, dynamic> rMap = {};
                    for (var pref in readerPrefs) {
                      rMap[pref.key] = loadData(pref);
                    }
                    data['Reader Settings'] = rMap;
                  }

                  try {
                    final jsonStr = const JsonEncoder.withIndent('  ').convert(data);

                    // let the user select a directory for the backup file
                    final dirPath = await FilePicker.platform.getDirectoryPath(
                      dialogTitle: getString.selectDirectory,
                      lockParentWindow: true,
                    );
                    if (dirPath == null) return;
                    final fileName = 'dartotsu_backup_${DateTime.now().millisecondsSinceEpoch}.json';
                    final file = File(p.join(dirPath, fileName));
                    await file.writeAsString(jsonStr);
                    snackString('Backup saved to $fileName');
                  } catch (e) {
                    snackString('Backup failed: $e');
                  }
                },
              )
              ..setNeutralButton(getString.cancel, null)
              ..show();
          },
        ),
      ]),
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
              List<String> titles = List<String>.from(homeLayoutMap.keys.toList());
              List<bool> checkedStates = List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(getString.manageLayout(getString.anilist, getString.home))
                ..reorderableMultiSelectableItems(
                  titles,
                  checkedStates,
                  (reorderedItems) => titles = reorderedItems,
                  (newCheckedStates) => checkedStates = newCheckedStates,
                )
                ..setPositiveButton(getString.ok, () {
                  saveData(PrefName.anilistHomeLayout, Map.fromIterables(titles, checkedStates));
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
              List<String> titles = List<String>.from(homeLayoutMap.keys.toList());
              List<bool> checkedStates = List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(getString.manageLayout(getString.mal, getString.home))
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
              List<String> titles = List<String>.from(homeLayoutMap.keys.toList());
              List<bool> checkedStates = List<bool>.from(homeLayoutMap.values.toList());

              AlertDialogBuilder(context)
                ..setTitle(getString.manageLayout(getString.simkl, getString.home))
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

  // Theme page items
  final uiPrefs = [
    PrefName.isDarkMode,
    PrefName.isOled,
    PrefName.useMaterialYou,
    PrefName.useGlassMode,
    PrefName.useCustomColor,
    PrefName.customColor,
    PrefName.useCoverTheme,
    PrefName.theme,
  ];

  // Commons
  final commonsPrefs = [
    PrefName.source,
    PrefName.customPath,
    PrefName.incognito,
    PrefName.offlineMode,
    PrefName.autoUpdateExtensions,
    PrefName.includeAnimeList,
    PrefName.includeMangaList,
    PrefName.adultOnly,
    PrefName.recentlyListOnly,
    PrefName.NSFWExtensions,
    PrefName.showYtButton,
    PrefName.defaultLanguage,
    PrefName.anilistHidePrivate,
    PrefName.anilistRemoveList,
    PrefName.malRemoveList,
    PrefName.anilistHomeLayout,
    PrefName.malHomeLayout,
    PrefName.simklHomeLayout,
    PrefName.extensionsHomeLayout,
    PrefName.anilistAnimeLayout,
    PrefName.malAnimeLayout,
    PrefName.simklAnimeLayout,
    PrefName.anilistMangaLayout,
    PrefName.malMangaLayout,
    PrefName.simklMangaLayout,
    PrefName.userAgent,
  ];
  final commonsCustomKeys = [
    'useDifferentCacheManager',
    'loadExtensionIcon',
    'checkForUpdates',
    'alphaUpdates',
  ];

  // Player
  final playerPrefs = [
    PrefName.perAnimePlayerSettings,
    PrefName.playerSettings,
    PrefName.cursedSpeed,
    PrefName.thumbLessSeekBar,
    PrefName.mpvConfigDir,
    PrefName.useCustomMpvConfig,
    PrefName.autoSourceMatch,
  ];

  // Reader
  final readerPrefs = [
    PrefName.readerSettings,
  ];
}
