import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Nav/DpadNav.dart';
import '../../../Widgets/Components/ThemedContainer.dart';

class HeaderStatPill extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  const HeaderStatPill({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final split = label.lastIndexOf(' ');
    final value = split < 0 ? label : label.substring(0, split);
    final unit = split < 0 ? '' : label.substring(split + 1);
    final pill = ThemedContainer(
      blur: false,
      color: scheme.surfaceContainerHigh,
      borderRadius: BorderRadius.circular(16),
      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 12, 0),
      child: SizedBox(
        height: 32,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: scheme.onSurfaceVariant),
            const SizedBox(width: 6),
            Text(
              value,
              style: text.labelLarge?.copyWith(
                fontWeight: FontWeight.w600,
                fontFeatures: const [FontFeature.tabularFigures()],
              ),
            ),
            if (unit.isNotEmpty) ...[
              const SizedBox(width: 3),
              Text(
                unit,
                style: text.labelSmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ],
          ],
        ),
      ),
    );
    if (onTap == null) return pill;
    return DpadTap(
      onTap: onTap,
      onLongPress: onLongPress,
      borderRadius: BorderRadius.circular(16),
      child: pill,
    );
  }
}
