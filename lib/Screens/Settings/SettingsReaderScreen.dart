import 'dart:convert';

import 'package:dartotsu/Screens/Settings/BaseSettingsScreen.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Media.dart';
import '../../DataClass/Setting.dart';
import '../../Preferences/IsarDataClasses/DefaultReaderSettings/DafaultReaderSettings.dart';
import '../../Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import '../../Preferences/PrefManager.dart';

class SettingsReaderScreen extends StatefulWidget {
  const SettingsReaderScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsReaderScreenState();
}

class SettingsReaderScreenState extends BaseSettingsScreen {
  @override
  String title() => 'Reader Settings';

  @override
  Widget icon() => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          size: 52,
          Icons.video_settings,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );

  @override
  List<Widget> get settingsList => readerSettings(context, setState);
}

List<Widget> readerSettings(
  BuildContext context,
  void Function(void Function()) setState, {
  void Function(void Function())? dialogSetState,
  Media? media,
}) {
  void saveReaderSettings(ReaderSettings readerSettings) {
    if (media != null) {
      media.settings.readerSettings = readerSettings;
      MediaSettings.saveMediaSettings(media);
    } else {
      saveData(PrefName.readerSettings, jsonEncode(readerSettings.toJson()));
    }
    setState(() {});
    dialogSetState?.call(() {});
  }

  var readerSettings = media?.settings.readerSettings ??
      ReaderSettings.fromJson(
        jsonDecode(loadData(PrefName.readerSettings) ?? '{}'),
      );

  Widget buildTrailingIcon(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Row(
      children: [
        for (var type in LayoutType.values)
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Transform(
                alignment: Alignment.center,
                transform: type == LayoutType.values.first
                    ? Matrix4.rotationY(3.14159)
                    : Matrix4.identity(),
                child: Icon(type.icon),
              ),
              iconSize: 24,
              color: type == readerSettings.layoutType
                  ? theme.onSurface
                  : theme.onSurface.withOpacity(0.33),
              onPressed: () {
                if (readerSettings.layoutType != type) {
                  readerSettings.layoutType = type;
                  saveReaderSettings(readerSettings);
                }
              },
            ),
          ),
      ],
    );
  }

  return [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Layout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 6),
              Text(
                readerSettings.layoutType.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        buildTrailingIcon(context),
      ],
    ),
    const SizedBox(height: 12),
    SettingsAdaptor(
      settings: [
        Setting(
          type: SettingType.normal,
          name: 'Direction',
          description: readerSettings.direction.toString(),
          trailingIcon: readerSettings.direction.icon,
          onClick: () {
            readerSettings.direction = readerSettings.direction.next;
            saveReaderSettings(readerSettings);
          },
        ),
        Setting(
          type: SettingType.switchType,
          name: 'Spaced Pages',
          description: 'Add space between pages',
          isChecked: readerSettings.spacedPages,
          onSwitchChange: (value) {
            if (readerSettings.spacedPages != value) {
              readerSettings.spacedPages = value;
              saveReaderSettings(readerSettings);
            }
          },
        ),
        Setting(
          type: SettingType.switchType,
          name: 'Hide Scrollbar',
          description: 'Hide scrollbar while reading',
          isChecked: readerSettings.hideScrollbar,
          onSwitchChange: (value) {
            if (readerSettings.hideScrollbar != value) {
              readerSettings.hideScrollbar = value;
              saveReaderSettings(readerSettings);
            }
          },
        ),
        Setting(
          type: SettingType.switchType,
          name: 'Hide Page Number',
          description: 'Hide page number while reading',
          isChecked: readerSettings.hidePageNumber,
          onSwitchChange: (value) {
            if (readerSettings.hidePageNumber != value) {
              readerSettings.hidePageNumber = value;
              saveReaderSettings(readerSettings);
            }
          },
        )
      ],
    ),
  ];
}
