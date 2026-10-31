import 'dart:async';

import '../../../Widgets/Components/LoadSvg.dart';
import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../Api/Services/Extension/Services.dart';
import '../../../Core/Downloads/DownloadPrefs.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../../Settings/ExtensionSourceSettingsScreen.dart';
import '../ExtensionScreen.dart';
import 'PluginInstallSheet.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../../../Widgets/Components/AppSpinner.dart';

void showExtensionManagerSheet(BuildContext context, ItemType type) {
  final manager = find<ExtensionManager>();
  for (final m in manager.managers) {
    final plugin = m.plugin;
    if (plugin != null && plugin.installed.value) {
      unawaited(plugin.checkForUpdate(forceRefresh: true));
    }
  }
  showCustomBottomDialog(
    context,
    AppSheet(
      title: getString.extensionManagerTitle(type.name.capitalizeFirst),
      child: Watch(() {
        final current = manager[type];
        final managers = manager.managers
            .where((e) => e.supports(type))
            .toList();
        return ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
          children: [
            for (var i = 0; i < managers.length; i++)
              _serviceTile(
                context,
                manager,
                type,
                current,
                managers[i],
                groupedRadius(i, managers.length),
              ),
            if (repoToolsUnlockedPref.rx.value) ...[
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () => showAddPluginRepositoryDialog(context),
                icon: const Icon(Icons.add_rounded),
                label: Text(getString.addRepository),
              ),
            ],
            const SizedBox(height: 16),
          ],
        );
      }),
    ),
  );
}

Widget _serviceTile(
  BuildContext context,
  ExtensionManager manager,
  ItemType type,
  dynamic current,
  dynamic m,
  BorderRadius radius,
) {
  final selected = current.id == m.id;
  final installed = m.plugin == null || m.plugin!.installed.value;
  final availableInRepo = m.plugin == null || m.plugin!.availableInRepo.value;
  final scheme = context.colorScheme;

  return Opacity(
    opacity: installed || availableInRepo ? 1.0 : 0.5,
    child: SheetTile(
      tinted: true,
      radius: radius,
      selected: selected,
      enabled: installed && !selected,
      onTap: () => unawaited(setExtensionService(type, m.id)),
      leading: Container(
        width: 36,
        height: 36,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected
              ? scheme.primary.withValues(alpha: 0.18)
              : scheme.secondaryContainer,
          shape: BoxShape.circle,
        ),
        clipBehavior: Clip.antiAlias,
        child: assetIcon(m.icon, size: 22),
      ),
      title: Text(m.name),
      trailing: _withSettings(
        context,
        m,
        _serviceTrailing(context, m, installed, availableInRepo),
        installed,
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
    final plugin = m.plugin as DownloadablePlugin;
    final remove = IconButton(
      icon: const Icon(Icons.delete, size: 18),
      onPressed: () => showDeleteDialog(context, plugin, m.name),
    );
    if (!plugin.updateAvailable.value) return remove;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          tooltip: getString.update,
          icon: Icon(
            Icons.system_update_alt_rounded,
            size: 18,
            color: context.colorScheme.primary,
          ),
          onPressed: () =>
              showInstallDialog(context, plugin, m.name, icon: m.icon),
        ),
        remove,
      ],
    );
  }

  if (availableInRepo) {
    return IconButton(
      icon: const Icon(Icons.download, size: 18),
      onPressed: () =>
          showInstallDialog(context, m.plugin!, m.name, icon: m.icon),
    );
  }

  return null;
}

void showAddPluginRepositoryDialog(BuildContext context) {
  final manager = find<ExtensionManager>();
  final controller = TextEditingController(text: DownloadablePlugin.indexUrl);
  final refreshing = false.live;

  AlertDialogBuilder(context)
    ..setTitle(getString.addPluginRepository)
    ..setOnDismissListener(controller.dispose)
    ..setCustomView(
      Builder(
        builder: (dialogContext) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: getString.pluginIndexUrlHint,
                ),
              ),
              Watch(
                () => refreshing.value
                    ? const Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: AppSpinner(size: 20),
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
