import 'package:flutter/material.dart';

import '../../../Core/Services/MediaServiceController.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/LoadSvg.dart';

class ServicesSheet extends StatelessWidget {
  const ServicesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final controller = find<MediaServiceController>();
    return AppSheet(
      title: getString.manageServices,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
            child: Text(
              getString.manageServicesHint,
              textAlign: TextAlign.center,
              style: context.textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ),
          Flexible(
            child: Watch(() {
              final services = controller.ordered;
              final shown = controller.shown.map((s) => s.id).toSet();
              return ReorderableListView.builder(
                shrinkWrap: true,
                buildDefaultDragHandles: false,
                padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
                itemCount: services.length,
                onReorder: controller.reorderServices,
                itemBuilder: (context, i) {
                  final service = services[i];
                  final on = shown.contains(service.id);
                  final auth = service.auth;
                  final subtitle = auth == null
                      ? getString.trackingOnly
                      : auth.isLoggedIn
                      ? (auth.user.value?.name ?? getString.signedIn)
                      : getString.notSignedIn;
                  return Padding(
                    key: ValueKey(service.id),
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Material(
                      color: scheme.surfaceContainerHigh,
                      borderRadius: BorderRadius.circular(Dimens.radius),
                      clipBehavior: Clip.antiAlias,
                      child: ListTile(
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16,
                          2,
                          12,
                          2,
                        ),
                        leading: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.grab,
                              child: ReorderableDragStartListener(
                                index: i,
                                child: Icon(
                                  Icons.drag_indicator_rounded,
                                  color: scheme.onSurfaceVariant,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Opacity(
                              opacity: on ? 1 : 0.4,
                              child: loadSvg(
                                service.iconPath,
                                width: 28,
                                height: 28,
                                color: scheme.primary,
                              ),
                            ),
                          ],
                        ),
                        title: Text(
                          service.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: on
                                ? scheme.onSurface
                                : scheme.onSurfaceVariant,
                          ),
                        ),
                        subtitle: Text(
                          subtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Switch(
                          value: on,
                          onChanged: (v) =>
                              controller.setServiceShown(service.id, v),
                        ),
                        onTap: () =>
                            controller.setServiceShown(service.id, !on),
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}

Future<void> showServicesSheet(BuildContext context) =>
    showCustomBottomDialog<void>(
      context,
      const FractionallySizedBox(heightFactor: 0.8, child: ServicesSheet()),
    );
