import 'package:dantotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';

import '../../StorageProvider.dart';
import 'BaseSettingsScreen.dart';

class SettingsAboutScreen extends StatefulWidget {
  const SettingsAboutScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsAboutScreenState();
}

class SettingsAboutScreenState extends BaseSettingsScreen {
  @override
  String title() => getString.about;

  @override
  Widget icon() => Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Icon(
      size: 52,
      Icons.info,
      color: Theme.of(context).colorScheme.onSurface,
    ),
  );

  @override
  List<Widget> get settingsList {
    return [
      SettingsAdaptor(
        settings: _buildSettings(context),
      ),
    ];
  }

  List<Setting> _buildSettings(BuildContext context) {
    return [
      Setting(
        type: SettingType.normal,
        name: getString.logFile,
        description: getString.logFileDescription,
        icon: Icons.share,
        onClick: () async {
          var path = (await StorageProvider().getDirectory(
            useCustomPath: true,
            customPath: PrefManager.getVal(PrefName.customPath),
          ))
              ?.path;
          shareFile("$path\\appLogs.txt".fixSeparator, "LogFile");
        },
      ),
    ];
  }
}
