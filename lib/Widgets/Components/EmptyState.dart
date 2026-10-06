import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';

class EmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? message;
  final bool failed;
  final String? actionLabel;
  final VoidCallback? onAction;

  const EmptyState({
    super.key,
    required this.icon,
    required this.title,
    this.message,
    this.failed = false,
    this.actionLabel,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final background = failed
        ? scheme.errorContainer
        : scheme.secondaryContainer;
    final foreground = failed
        ? scheme.onErrorContainer
        : scheme.onSecondaryContainer;
    return Center(
      child: Padding(
        padding: EdgeInsets.all(Dimens.gapXl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 32, color: foreground),
            ),
            SizedBox(height: Dimens.gap),
            Text(
              title,
              textAlign: TextAlign.center,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            if (message != null) ...[
              SizedBox(height: Dimens.gapSm),
              Text(
                message!,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ],
            if (onAction != null) ...[
              SizedBox(height: Dimens.gap),
              FilledButton.tonalIcon(
                onPressed: onAction,
                icon: const Icon(Icons.refresh_rounded, size: 18),
                label: Text(actionLabel ?? 'Retry'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
