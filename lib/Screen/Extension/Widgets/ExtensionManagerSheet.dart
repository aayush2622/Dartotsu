import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/ThemedContainer.dart';
import '../../Settings/ExtensionSourceSettingsScreen.dart';
import '../ExtensionScreen.dart';

void showExtensionManagerSheet(BuildContext context, ItemType type) {
  final manager = find<ExtensionManager>();
  final theme = context.colorScheme;
  showCustomBottomDialog(
    context,
    CustomBottomDialog(
      title: '${type.name.capitalizeFirst} Manager',
      positiveText: getString.ok,
      positiveCallback: () => popPage(context),
      negativeText: getString.addRepository,
      negativeCallback: () => showAddPluginRepositoryDialog(context),
      viewList: [
        Obx(() {
          final current = manager[type];
          final managers = manager.managers
              .where((e) => e.supports(type))
              .toList();
          return Column(
            children: [
              for (final m in managers)
                _serviceTile(context, manager, theme, type, current, m),
            ],
          );
        }),
      ],
    ),
  );
}

Widget _serviceTile(
  BuildContext context,
  ExtensionManager manager,
  ColorScheme theme,
  ItemType type,
  dynamic current,
  dynamic m,
) {
  final selected = current.id == m.id;
  final installed = m.plugin == null || m.plugin!.installed.value;
  final availableInRepo = m.plugin == null || m.plugin!.availableInRepo.value;
  final enabled = installed;
  final opacity = installed || availableInRepo ? 1.0 : 0.5;

  return Opacity(
    opacity: opacity,
    child: ThemedContainer(
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
      color: selected ? theme.surfaceContainerHigh : null,
      child: Material(
        type: MaterialType.transparency,
        child: ListTile(
          enabled: enabled,
          hoverColor: Colors.transparent,
          onTap: (!enabled || selected)
              ? null
              : () => manager.switchManager(type, m.id),
          leading: ClipOval(
            child: Image.asset(
              m.icon,
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            m.name,
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: _withSettings(
            context,
            m,
            _serviceTrailing(context, m, installed, availableInRepo),
            installed,
          ),
        ),
      ),
    ),
  );
}

Widget? _withSettings(
  BuildContext context,
  Extension m,
  Widget? trailing,
  bool installed,
) {
  final settings = installed ? extensionSettingsButton(context, m) : null;
  if (settings == null) return trailing;
  if (trailing == null) return settings;
  return Row(mainAxisSize: MainAxisSize.min, children: [settings, trailing]);
}

Widget? _serviceTrailing(
  BuildContext context,
  dynamic m,
  bool installed,
  bool availableInRepo,
) {
  if (m.plugin == null) return null;

  if (installed) {
    return IconButton(
      icon: const Icon(Icons.delete, size: 18),
      onPressed: () => showDeleteDialog(context, m.plugin!, m.name),
    );
  }

  if (availableInRepo) {
    return IconButton(
      icon: const Icon(Icons.download, size: 18),
      onPressed: () => showInstallDialog(context, m.plugin!, m.name),
    );
  }

  return null;
}

void showAddPluginRepositoryDialog(BuildContext context) {
  final manager = find<ExtensionManager>();
  final controller = TextEditingController(text: DownloadablePlugin.indexUrl);
  final refreshing = false.obs;

  AlertDialogBuilder(context)
    ..setTitle(getString.addPluginRepository)
    ..setCustomView(
      StatefulBuilder(
        builder: (dialogContext, setState) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: getString.pluginIndexUrlHint,
                ),
              ),
              Obx(
                () => refreshing.value
                    ? const Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          );
        },
      ),
    )
    ..setPositiveButton(getString.ok, () async {
      final url = controller.text.trim();
      if (url.isEmpty || refreshing.value) return;

      DownloadablePlugin.setIndexUrl(url);

      refreshing.value = true;
      try {
        await Future.wait([
          for (final m in manager.managers)
            if (m.plugin != null) m.plugin!.checkAvailability(),
        ]);
        snackString(getString.pluginRepoUpdated);
      } catch (e) {
        snackString(getString.pluginRepoUpdateFailed);
      } finally {
        refreshing.value = false;
      }
    })
    ..show();
}
