import 'dart:io';

import 'package:dartotsu/Api/Updater/AppUpdater.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:dartotsu/Widgets/CustomBottomDialog.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import 'BaseSettingsScreen.dart';
import 'Developer.dart';

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
    return [SettingsAdaptor(settings: _buildSettings(context))];
  }

  List<Setting> _buildSettings(BuildContext context) {
    return [
      Setting(
        type: SettingType.normal,
        name: getString.developersHelpers,
        description: getString.developersHelpersDesc,
        icon: Icons.info_outline,
        onClick: () {
          showCustomBottomDialog(
            context,
            CustomBottomDialog(
              title: getString.developersHelpers,
              viewList: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 8.0,
                  ),
                  child: Developers.getDevelopersWidget(context),
                ),
              ],
            ),
          );
        },
      ),
      Setting(
        type: SettingType.normal,
        name: getString.logFile,
        description: getString.logFileDescription,
        icon: Icons.share,
        onClick: () async {
          var p = await PrefManager.getDirectory(
            useSystemPath: false,
            useCustomPath: true,
          );

          var path = p?.path ?? "";
          if (Platform.isLinux) {
            copyToClipboard("$path\\appLogs.txt".fixSeparator);
            return;
          }
          shareFile("$path\\appLogs.txt".fixSeparator, "LogFile");
        },
      ),
      Setting(
        type: SettingType.normal,
        name: getString.checkUpdate,
        description: getString.checkUpdateDesc,
        icon: Icons.update_sharp,
        onClick: () async {
          snackString("Checking for update");
          AppUpdater().checkForUpdate(force: true);
        },
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.autoCheckUpdate,
        description: ,
        icon: Icons.autorenew,
        isChecked: loadCustomData("checkForUpdates") ?? true,
        onSwitchChange: (v) => saveCustomData("checkForUpdates", v),
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.alphaCheckUpdate,
        description: getString.alphaCheckUpdateDesc,
        icon: Icons.warning_amber_rounded,
        isChecked: loadCustomData("alphaUpdates") ?? false,
        onSwitchChange: (v) => saveCustomData("alphaUpdates", v),
      ),
    ];
  }
}
