import 'dart:async';

import '../../../../Widgets/Components/LoadSvg.dart';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Utils/Functions/RefreshController.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Widgets/Components/SheetTile.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Screen/Settings/ExtensionSourceSettingsScreen.dart';
import '../Services.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

class ExtensionServiceSheet extends StatelessWidget {
  final ItemType type;

  const ExtensionServiceSheet({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final services = extensionServicesFor(type);

    return AppSheet(
      title: '$type page',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _label(context, 'Service'),
                if (services.isEmpty)
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      getString.noExtensionServiceSupportsHere(type.name),
                      style: context.textTheme.bodyMedium,
                    ),
                  ),
                for (final service in services)
                  Watch(
                    () => SheetTile(
                      selected: extensionServiceFor(type)?.id == service.id,
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: assetIcon(service.icon, size: 28),
                      ),
                      title: Text(service.name),
                      trailing: extensionSettingsButton(context, service),
                      onTap: () {
                        unawaited(setExtensionService(type, service.id));
                        findBuilt<RefreshController>()?.all();
                      },
                    ),
                  ),
                const SizedBox(height: 8),
                _label(context, getString.loadDataFrom),
                Watch(() {
                  final sources = installedSources(type);
                  if (sources.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        getString.noInstalledSourcesYet(type.name),
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    );
                  }
                  return Column(
                    children: [
                      for (final source in sources)
                        Watch(
                          () => SwitchListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            value: isSourceLoaded(type, source),
                            onChanged: (v) {
                              setSourceLoaded(type, source, v);
                              findBuilt<RefreshController>()?.all();
                            },
                            title: Text(
                              source.name ?? '',
                              style: context.textTheme.bodyLarge,
                            ),
                            subtitle: Text(source.lang?.toUpperCase() ?? ''),
                            secondary: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: SizedBox(
                                width: 28,
                                height: 28,
                                child: cachedNetworkImage(
                                  imageUrl: source.iconUrl ?? '',
                                  width: 28,
                                  height: 28,
                                  fit: BoxFit.cover,
                                  errorWidget: (_, _, _) => Icon(
                                    Icons.extension_rounded,
                                    color: scheme.onSurfaceVariant,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: FilledButton.tonal(
              onPressed: () => popPage(context),
              child: Text(getString.done),
            ),
          ),
        ],
      ),
    );
  }

  Widget _label(BuildContext context, String text) => Padding(
    padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
    child: Text(
      text,
      style: context.textTheme.labelMedium?.copyWith(
        color: context.colorScheme.primary,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

Future<void> showExtensionServiceSheet(BuildContext context, ItemType type) =>
    showCustomBottomDialog<void>(
      context,
      FractionallySizedBox(
        heightFactor: 0.8,
        child: ExtensionServiceSheet(type: type),
      ),
    );
