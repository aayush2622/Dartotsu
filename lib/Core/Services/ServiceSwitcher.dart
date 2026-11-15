import 'package:flutter/material.dart';

import '../../Screen/Settings/ServiceSettingsScreen.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/ConnectedPair.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/LoadSvg.dart';
import '../ThemeManager/LanguageSwitcher.dart';
import 'MediaServiceController.dart';
import '../State/State.dart';

void serviceSwitcher(BuildContext context) {
  final mediaServices = find<MediaServiceController>();

  void openServiceSettings(MediaService service) {
    if (service.settingsView == null) return;
    popPage(context);
    navigateToPage(context, ServiceSettingsScreen(initial: service));
  }

  final dialog = CustomBottomDialog(
    title: getString.selectMediaService,
    viewList: [
      Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
        child: Column(
          children: [
            for (final service in mediaServices.shown)
              _ServiceRow(
                service: service,
                selected: mediaServices.currentService.value.id == service.id,
                onTap: () {
                  mediaServices.switchService(service.id);
                  popPage(context);
                },
                onSettings: service.settingsView == null
                    ? null
                    : () => openServiceSettings(service),
              ),
          ],
        ),
      ),
    ],
  );

  showCustomBottomDialog(context, dialog);
}

class _ServiceRow extends StatelessWidget {
  final MediaService service;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback? onSettings;

  const _ServiceRow({
    required this.service,
    required this.selected,
    required this.onTap,
    this.onSettings,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final auth = service.auth;
    final subtitle = auth == null
        ? getString.trackingOnly
        : auth.isLoggedIn
        ? (auth.user.value?.name ?? getString.signedIn)
        : getString.notSignedIn;

    final onColor = selected ? scheme.onPrimaryContainer : scheme.onSurface;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ConnectedPair(
        height: 64,
        color: selected ? scheme.primaryContainer : scheme.surfaceContainerHigh,
        onTap: onTap,
        icon: onSettings == null ? null : Icons.settings_rounded,
        iconColor: scheme.onSurfaceVariant,
        iconTooltip: getString.settings,
        onIconTap: onSettings,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
          child: Row(
            children: [
              loadSvg(
                service.iconPath,
                width: 30,
                height: 30,
                color: scheme.primary,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: onColor,
                      ),
                    ),
                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.labelSmall?.copyWith(
                        color: selected
                            ? onColor.withValues(alpha: 0.8)
                            : scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              if (selected)
                Icon(Icons.check_circle_rounded, color: scheme.primary),
            ],
          ),
        ),
      ),
    );
  }
}
