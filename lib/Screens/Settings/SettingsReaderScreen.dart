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
      MediaSettings.saveMediaSettings(
        media..settings.readerSettings = readerSettings,
      );
    } else {
      saveData(PrefName.readerSettings, jsonEncode(readerSettings.toJson()));
    }
    setState(() {});
    dialogSetState?.call(() {});
  }

  var readerSettings = media?.settings.readerSettings ??
      ReaderSettings.fromJson(
        jsonDecode(loadData(PrefName.readerSettings)),
      );

  return [
    SettingsAdaptor(
      settings: [
        Setting(
          type: SettingType.normal,
          name: 'Direction',
          description: readerSettings.direction.toString(),
          trailingIcon: readerSettings.direction.icon(),
          onClick: () {
            readerSettings.direction = readerSettings.direction.next();
            saveReaderSettings(readerSettings);
          },
        ),
        Setting(
          type: SettingType.switchType,
          name: 'Spaced Pages',
          description: 'Add space between pages',
          isChecked: readerSettings.spacedPages,
          onSwitchChange: (value) {
            readerSettings.spacedPages = value;
            saveReaderSettings(readerSettings);
          },
        ),
      ],
    ),
  ];
}
