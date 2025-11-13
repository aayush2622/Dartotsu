import 'dart:io';
import 'dart:convert';

import 'package:dartotsu/Preferences/IsarDataClasses/MalToken/MalToken.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/ShowResponse/ShowResponse.dart';
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
            final locations = PrefLocation.values;
            final titles = locations.map((loc) => loc.label(context)).toList();

            List<bool> checkedStates =
                List<bool>.filled(locations.length, false);

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

                  if (picked?.files == null || picked!.files.isEmpty) return;
                  try {
                    final content =
                        await File(picked.files.first.path!).readAsString();
                    final decoded = jsonDecode(content) as Map<String, dynamic>;

                    final selectedLocations = <PrefLocation>[];
                    for (int i = 0; i < checkedStates.length; i++) {
                      if (checkedStates[i]) selectedLocations.add(locations[i]);
                    }

                    if (selectedLocations.isEmpty) {
                      snackString(
                          "Please select at least one category to restore");
                      return;
                    }
                    for (final section in decoded.entries) {
                      final loc = PrefLocation.values.firstWhere(
                        (e) => e.name == section.key,
                        orElse: () => PrefLocation.OTHER,
                      );

                      if (!selectedLocations.contains(loc)) continue;

                      final map =
                          (section.value as Map).cast<String, dynamic>();

                      for (final entry in map.entries) {
                        final key = entry.key;
                        final value = entry.value;

                        final parsed = PrefManager.parsePrefObject(
                          key: key,
                          location: loc,
                          value: value,
                        );
                        PrefManager.setCustomVal(key, parsed, location: loc);
                      }
                    }
                    snackString(
                        'Preferences restored successfully\nRestart the app');
                  } catch (e) {
                    snackString('Failed to restore: $e');
                  }
                },
              )
              ..setNegativeButton(
                getString.backup,
                () async {
                  if (!checkedStates.any((a) => a)) {
                    snackString(
                        'Please select at least one category to backup');
                    return;
                  }

                  final selectedLocations = <PrefLocation>[];
                  for (int i = 0; i < checkedStates.length; i++) {
                    if (checkedStates[i]) selectedLocations.add(locations[i]);
                  }

                  final Map<String, Map<String, dynamic>> grouped = {};

                  for (final loc in selectedLocations) {
                    grouped[loc.name] = {};
                  }

                  for (final key in PrefManager.cache.keys) {
                    final loc = await PrefManager.getLocationForKey(key);

                    if (selectedLocations.contains(loc)) {
                      final value = PrefManager.cache[key];
                      grouped[loc.name]![key] = value;
                    }
                  }

                  grouped.removeWhere((key, value) => value.isEmpty);

                  try {
                    final jsonStr =
                        const JsonEncoder.withIndent('  ').convert(grouped);

                    final dirPath = await FilePicker.platform.getDirectoryPath(
                      dialogTitle: getString.selectDirectory,
                      lockParentWindow: true,
                    );
                    if (dirPath == null) return;
                    final fileName =
                        'dartotsu_backup_${DateTime.now().millisecondsSinceEpoch}.json';
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

  final commonsCustomKeys = [
    'useDifferentCacheManager',
    'loadExtensionIcon',
    'checkForUpdates',
    'alphaUpdates',
  ];
}
