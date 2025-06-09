import 'dart:io';

import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:dartotsu/Widgets/CustomBottomDialog.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import '../../StorageProvider.dart';
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: Developers.getDevelopersWidget(context),
                  ),
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
          var p = await StorageProvider.getDirectory(
            useCustomPath: true,
            customPath: loadData(PrefName.customPath),
          );

          var path = p?.path ?? "";
          if (Platform.isLinux) {
            copyToClipboard("$path\\appLogs.txt".fixSeparator);
            return;
          }
          shareFile("$path\\appLogs.txt".fixSeparator, "LogFile");
        },
      ),
    ];
  }
}
