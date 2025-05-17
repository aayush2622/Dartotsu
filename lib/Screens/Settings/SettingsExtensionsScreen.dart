import 'package:dartotsu/Functions/GetExtensions.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../Api/Sources/Model/Manga.dart';
import '../../DataClass/Setting.dart';
import '../../Theme/LanguageSwitcher.dart';
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
        name: getString.addAnimeRepo,
        description: getString.addAnimeRepoDesc,
        icon: Bootstrap.github,
        onClick: () => Extensions.addRepo(context, ItemType.anime),
      ),
      Setting(
        type: SettingType.normal,
        name: getString.addMangaRepo,
        description: getString.addMangaRepoDesc,
        icon: Bootstrap.github,
        onClick: () => Extensions.addRepo(context, ItemType.manga),
      ),
      Setting(
        type: SettingType.normal,
        name: getString.addNovelRepo,
        description: getString.addNovelRepoDesc,
        icon: Bootstrap.github,
        onClick: () => Extensions.addRepo(context, ItemType.novel),
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.loadExtensionsIcon,
        description: getString.loadExtensionsIconDesc,
        icon: Icons.image_not_supported_rounded,
        isChecked: loadCustomData('loadExtensionIcon') ?? true,
        onSwitchChange: (value) => saveCustomData('loadExtensionIcon', value),
      ),
      Setting(
        type: SettingType.switchType,
        name: getString.autoUpdate,
        description: getString.autoUpdateDesc,
        icon: Icons.update,
        isChecked: loadData(PrefName.autoUpdateExtensions),
        onSwitchChange: (value) =>
            saveData(PrefName.autoUpdateExtensions, value),
      ),
    ];
  }
}
