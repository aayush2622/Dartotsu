import 'package:flutter/material.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/LoadSvg.dart';
import 'MediaServiceController.dart';

void serviceSwitcher(BuildContext context) {
  final mediaServices = find<MediaServiceController>();

  final dialog = CustomBottomDialog(
    title: getString.selectMediaService,
    viewList: [
      Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
        child: Column(
          children: [
            for (final service in mediaServices.services)
              _ServiceRow(
                service: service,
                selected:
                    mediaServices.currentService.value.id == service.id,
                onTap: () {
                  mediaServices.switchService(service.id);
                  Navigator.pop(context);
                },
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

  const _ServiceRow({
    required this.service,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final auth = service.auth;
    final subtitle = auth == null
        ? 'Tracking only'
        : auth.isLoggedIn
        ? (auth.user.value?.name ?? 'Signed in')
        : 'Not signed in';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Material(
        color: selected
            ? scheme.primaryContainer.withValues(alpha: 0.5)
            : scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(18),
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          onTap: onTap,
          leading: loadSvg(
            service.iconPath,
            width: 30,
            height: 30,
            color: scheme.primary,
          ),
          title: Text(
            service.name,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: context.textTheme.labelSmall?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
          trailing: selected
              ? Icon(Icons.check_circle_rounded, color: scheme.primary)
              : null,
        ),
      ),
    );
  }
}
