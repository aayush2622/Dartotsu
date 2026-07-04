import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Theme/ThemeManager.dart';
import 'package:dartotsu_extension_bridge/ExtensionManager.dart';
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
import '../Extensions/ExtensionScreen.dart';
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
      Obx(() => managerCard(title: "Anime Extensions", type: ItemType.anime)),
      const SizedBox(height: 12),
      Obx(() => managerCard(title: "Manga Extensions", type: ItemType.manga)),
      const SizedBox(height: 12),
      Obx(() => managerCard(title: "Novel Extensions", type: ItemType.novel)),
      const SizedBox(height: 12),
      SettingsAdaptor(settings: _buildSettings(context)),
    ];
  }

  Widget managerCard({required String title, required ItemType type}) {
    final controller = Get.find<ExtensionManager>();
    final manager = controller[type];
    final theme = Theme.of(context).colorScheme;
    return ThemedContainer(
      context: context,
      borderRadius: const BorderRadius.all(Radius.circular(32)),
      padding: const EdgeInsets.all(32),

      child: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(switch (type) {
                  ItemType.anime => Icons.movie_filter_rounded,
                  ItemType.manga => Icons.import_contacts,
                  ItemType.novel => Icons.book_rounded,
                }, color: theme.primary),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            buildDropdownMenu(
              padding: EdgeInsets.zero,
              currentValue: controller[type],
              options: controller.managers
                  .where((e) => e.supports(type))
                  .toList(),
              labelBuilder: (e) => e.name,
              isEnabled: (e) => e.plugin == null || e.plugin!.installed.value,
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
                    if (isInstalled) {
                      showDeleteDialog(context, plugin, ext.name);
                    } else {
                      await showInstallDialog(context, plugin, ext.name);
                    }
                  },
                );
              },
              onChanged: (e) {
                controller.switchManager(type, e.id);
              },
            ),

            const SizedBox(height: 16),

            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                OutlinedButton.icon(
                  onPressed: () => addRepo(type),
                  icon: const Icon(Icons.add),
                  label: const Text("Repository"),
                ),
                if (manager.settings(context).isNotEmpty)
                  OutlinedButton.icon(
                    onPressed: () {
                      final settings = manager.settings(context);

                      if (settings.isEmpty) {
                        snackString(
                          "${manager.name} doesn't provide any settings.",
                        );
                        return;
                      }

                      navigateToPage(
                        context,
                        ExtensionSettingsScreen(extension: manager),
                      );
                    },
                    icon: const Icon(Icons.settings),
                    label: const Text("Settings"),
                  ),
              ],
            ),
          ],
        );
      }),
    );
  }

  List<Setting> _buildSettings(BuildContext context) {
    return [
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
    final manager = Get.find<ExtensionManager>()[type];
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
        getString.ok,
        () async => await manager.addRepo(text, type),
      )
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
