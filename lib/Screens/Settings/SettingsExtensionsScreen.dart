import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu_extension_bridge/ExtensionManager.dart';
import 'package:dartotsu_extension_bridge/Extensions/ExtensionSettings.dart';
import 'package:dartotsu_extension_bridge/Extensions/Extensions.dart';
import 'package:dartotsu_extension_bridge/Models/Source.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Widgets/AlertDialogBuilder.dart';
import '../../Widgets/DropdownMenu.dart';
import '../../Widgets/LoadSvg.dart';
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
    var manager = Get.find<ExtensionManager>();
    return [
      Row(
        children: [
          Expanded(
            child: buildDropdownMenu(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              currentValue: manager.current.value.name,
              options: manager.managers.map((e) => e.name).toList(),
              onChanged: (String newValue) {
                final ext = manager.managers
                    .firstWhereOrNull((e) => e.name == newValue);
                if (ext != null) {
                  manager.switchManager(ext.id);
                }
              },
              prefixIcon: Icons.source,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () {
              final manager = Get.find<ExtensionManager>();
              if (manager.current.value.settings(context).isEmpty) {
                snackString("Sorry, this extension doesn't have any settings");
                return;
              }
              navigateToPage(
                context,
                ExtensionSettingsScreen(extension: manager.current.value),
              );
            },
          )
        ],
      ),
      SettingsAdaptor(settings: _buildSettings(context)),
    ];
  }

  List<Setting> _buildSettings(BuildContext context) {
    var manager = Get.find<ExtensionManager>().current.value;
    var theme = context.theme.colorScheme;
    return [
      Setting(
        type: SettingType.normal,
        name: getString.addAnimeRepo,
        description: getString.addAnimeRepoDesc,
        isVisible: manager.supportsAnime,
        iconWidget: loadSvg("assets/svg/github.svg", color: theme.primary),
        onClick: () => addRepo(ItemType.anime),
      ),
      Setting(
        type: SettingType.normal,
        name: getString.addMangaRepo,
        description: getString.addMangaRepoDesc,
        isVisible: manager.supportsManga,
        iconWidget: loadSvg("assets/svg/github.svg", color: theme.primary),
        onClick: () => addRepo(ItemType.manga),
      ),
      Setting(
        type: SettingType.normal,
        name: getString.addNovelRepo,
        description: getString.addNovelRepoDesc,
        isVisible: manager.supportsNovel,
        iconWidget: loadSvg("assets/svg/github.svg", color: theme.primary),
        onClick: () => addRepo(ItemType.novel),
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

  void addRepo(ItemType type) {
    var manager = Get.find<ExtensionManager>().current.value;
    var text = '';
    AlertDialogBuilder(context)
      ..setTitle('${type.toString()} ${getString.source}s')
      ..setCustomView(
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'Repo URL'),
              onChanged: (value) => text = value,
            ),
          ],
        ),
      )
      ..setPositiveButton(
          getString.ok, () async => await manager.addRepo(text, type))
      ..show();
  }
}

class ExtensionSettingsScreen extends StatefulWidget {
  final Extension extension;
  const ExtensionSettingsScreen({super.key, required this.extension});

  @override
  State<StatefulWidget> createState() => _ExtensionSettingsScreenState();
}

class _ExtensionSettingsScreenState
    extends BaseSettingsScreen<ExtensionSettingsScreen> {
  @override
  String title() => widget.extension.name;

  @override
  Widget icon() => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          Icons.extension,
          size: 52,
          color: context.theme.colorScheme.onSurface,
        ),
      );

  @override
  List<Widget> get settingsList {
    final ext = widget.extension;

    final settings = ext.settings(context).map((e) => e.toSetting()).toList();

    return [SettingsAdaptor(settings: settings)];
  }
}

extension on ExtensionSetting {
  Setting toSetting() {
    return Setting(
      type: SettingType.values[type.index],
      name: name,
      description: description,
      icon: icon,
      iconWidget: iconWidget,
      isVisible: isVisible,
      isActivity: isActivity,
      isChecked: isChecked,
      trailingIcon: trailingIcon,
      onClick: onClick,
      onLongClick: onLongClick,
      onSwitchChange: onSwitchChange,
      attach: attach != null ? (ctx) => attach!(ctx) : null,
      minValue: minValue,
      maxValue: maxValue,
      initialValue: initialValue,
      onSliderChange: onSliderChange,
      onInputChange: onInputChange,
    );
  }
}
