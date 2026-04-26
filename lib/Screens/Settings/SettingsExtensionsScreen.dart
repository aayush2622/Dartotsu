import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Widgets/CustomBottomDialog.dart';
import 'package:dartotsu_extension_bridge/ExtensionManager.dart';
import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';
import 'package:dartotsu_extension_bridge/Extensions/ExtensionSettings.dart';
import 'package:dartotsu_extension_bridge/Extensions/Extensions.dart';
import 'package:dartotsu_extension_bridge/Models/Source.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Extensions/ContextExtensions.dart';
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
    final manager = Get.find<ExtensionManager>();

    return [
      Row(
        children: [
          Expanded(
            child: Obx(
              () {
                return buildDropdownMenu<Extension>(
                  key: ValueKey(
                    manager.managers
                        .map((e) => e.plugin?.installed.value ?? false)
                        .toList()
                        .hashCode,
                  ),
                  currentValue: manager.current.value,
                  options: manager.managers,
                  labelBuilder: (ext) => ext.name,
                  isEnabled: (ext) =>
                      ext.plugin == null || ext.plugin!.installed.value,
                  trailingBuilder: (ext) {
                    final plugin = ext.plugin;
                    if (plugin == null) return const SizedBox();
                    final isInstalled = plugin.installed.value;
                    return IconButton(
                      icon: Icon(
                        isInstalled ? Icons.delete : Icons.download,
                        size: 18,
                      ),
                      onPressed: () async {
                        if (Get.isDialogOpen == true) return;

                        if (isInstalled) {
                          _showDeleteDialog(context, plugin, ext.name);
                        } else {
                          await _showInstallDialog(context, plugin, ext.name);
                        }
                      },
                    );
                  },
                  onChanged: (ext) {
                    manager.switchManager(ext.id);
                  },
                );
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () {
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
      Obx(() => SettingsAdaptor(settings: _buildSettings(context))),
    ];
  }

  void _showDeleteDialog(
      BuildContext context, DownloadablePlugin plugin, String name) {
    AlertDialogBuilder(context)
      ..setTitle("Delete $name?")
      ..setMessage("Are you sure you want to delete this plugin?")
      ..setPositiveButton(getString.yes, () async {
        await plugin.delete();
        snackString("$name deleted");
      })
      ..setNegativeButton(getString.no, () {})
      ..show();
  }

  Future<void> _showInstallDialog(
    BuildContext context,
    DownloadablePlugin plugin,
    String name,
  ) async {
    Map<String, dynamic> remote;

    try {
      remote = await plugin.fetchRemote();
    } catch (_) {
      snackString("Failed to fetch plugin info");
      return;
    }

    final scheme = context.colorScheme;
    final textStyle = Theme.of(context).textTheme.labelMedium;

    final version = remote["versionName"] ?? "";
    final sizeBytes = remote["fileSize"] ?? 0;
    final sizeMB = plugin.formatSize(sizeBytes);
    final description = remote["description"] ?? "";
    final author = remote["author"] ?? "";

    showCustomBottomDialog(
      context,
      CustomBottomDialog(
        title: "Install $name",
        viewList: [
          const SizedBox(height: 8),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: scheme.primary.withOpacity(0.12),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                version,
                style: textStyle?.copyWith(
                  color: scheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.cardColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: scheme.outline.withOpacity(0.2),
                ),
              ),
              child: Obx(() {
                final downloading = plugin.downloading.value;
                final progress = plugin.progress.value;

                if (downloading) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LinearProgressIndicator(
                        value: progress,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${(progress * 100).toStringAsFixed(1)}%",
                        style: textStyle?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  );
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.storage_rounded,
                            size: 16, color: scheme.primary),
                        const SizedBox(width: 6),
                        Text("Size: $sizeMB", style: textStyle),
                        const SizedBox(width: 16),
                        if (author.isNotEmpty) ...[
                          Icon(Icons.person_rounded,
                              size: 16, color: scheme.primary),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              author,
                              style: textStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ]
                      ],
                    ),
                    const SizedBox(height: 14),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: scheme.surface.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        description,
                        style: textStyle?.copyWith(
                          fontSize: 13,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          const SizedBox(height: 20),
        ],
        negativeText: "Cancel",
        positiveText: "Install",
        negativeCallback: () {
          Navigator.pop(context);
        },
        positiveCallback: () {
          if (plugin.downloading.value) return;

          plugin.download();
        },
      ),
    );
  }

  List<Setting> _buildSettings(BuildContext context) {
    final manager = Get.find<ExtensionManager>().current.value;
    final theme = ContextExtensions(context).theme.colorScheme;

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
    final manager = Get.find<ExtensionManager>().current.value;
    var text = '';

    AlertDialogBuilder(context)
      ..setTitle('${type.toString()} ${getString.source}s')
      ..setCustomView(
        Column(
          mainAxisSize: MainAxisSize.min,
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
          color: ContextExtensions(context).theme.colorScheme.onSurface,
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
      attach: attach,
      minValue: minValue,
      maxValue: maxValue,
      initialValue: initialValue,
      onSliderChange: onSliderChange,
      onInputChange: onInputChange,
    );
  }
}
