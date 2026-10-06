import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Functions/GetXFunctions.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Utils/Functions/RefreshController.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Widgets/Components/SheetTile.dart';
import '../../../../Widgets/Components/ThemedContainer.dart';
import '../Services.dart';

class ExtensionServiceSheet extends StatelessWidget {
  final ItemType type;

  const ExtensionServiceSheet({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final services = extensionServicesFor(type);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      child: ThemedContainer(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        padding: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24, top: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: scheme.onSurface.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                child: Text(
                  '$type page',
                  style: context.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
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
                          'No extension service supports ${type.name} here.',
                          style: context.textTheme.bodyMedium,
                        ),
                      ),
                    for (final service in services)
                      Obx(
                        () => SheetTile(
                          selected: extensionServiceFor(type)?.id == service.id,
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              service.icon,
                              width: 28,
                              height: 28,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(service.name),
                          onTap: () {
                            setExtensionService(type, service.id);
                            tryFind<RefreshController>()?.all();
                          },
                        ),
                      ),
                    const SizedBox(height: 8),
                    _label(context, 'Load data from'),
                    Obx(() {
                      final sources = installedSources(type);
                      if (sources.isEmpty) {
                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            'No installed ${type.name} sources yet.',
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        );
                      }
                      return Column(
                        children: [
                          for (final source in sources)
                            Obx(
                              () => SwitchListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                value: isSourceLoaded(type, source),
                                onChanged: (v) {
                                  setSourceLoaded(type, source, v);
                                  tryFind<RefreshController>()?.all();
                                },
                                title: Text(
                                  source.name ?? '',
                                  style: context.textTheme.bodyLarge,
                                ),
                                subtitle: Text(
                                  source.lang?.toUpperCase() ?? '',
                                ),
                                secondary: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: SizedBox(
                                    width: 28,
                                    height: 28,
                                    child: cachedNetworkImage(
                                      imageUrl: source.iconUrl ?? '',
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
                  child: const Text('Done'),
                ),
              ),
            ],
          ),
        ),
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
