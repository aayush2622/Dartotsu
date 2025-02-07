import 'package:dantotsu/Functions/GetExtensions.dart';
import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../api/Sources/Model/Manga.dart';
import 'BaseSettingsScreen.dart';

class SettingsExtensionsScreen extends StatefulWidget {
  const SettingsExtensionsScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsExtensionsScreenState();
}

class SettingsExtensionsScreenState extends BaseSettingsScreen {
  @override
  String title() => getString.extension(2);

  @override
  Widget icon() => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          size: 52,
          Icons.extension,
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
        name: 'Add Anime Repo',
        description: 'Add Anime Repo from various sources',
        icon: Bootstrap.github,
        onClick: () => Extensions.addRepo(context, ItemType.anime),
      ),
      Setting(
        type: SettingType.normal,
        name: 'Add Manga Repo',
        description: 'Add Manga Repo from various sources',
        icon: Bootstrap.github,
        onClick: () => Extensions.addRepo(context, ItemType.manga),
      ),
      Setting(
        type: SettingType.normal,
        name: 'Add Novel Repo',
        description: 'Add Novel Repo from various sources',
        icon: Bootstrap.github,
        onClick: () => Extensions.addRepo(context, ItemType.novel),
      ),
      Setting(
        type: SettingType.switchType,
        name: 'Auto Update',
        description: 'Auto Update Extensions',
        icon: Icons.update,
        isChecked: loadData(PrefName.autoUpdateExtensions),
        onSwitchChange: (value) =>
            saveData(PrefName.autoUpdateExtensions, value),
      ),
    ];
  }
}
