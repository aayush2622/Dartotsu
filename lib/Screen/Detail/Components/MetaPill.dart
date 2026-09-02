import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';

class MetaPill extends StatelessWidget {
  final String text;
  final IconData? icon;
  const MetaPill({super.key, required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 13, color: scheme.primary),
            const SizedBox(width: 4),
          ],
          Text(text, style: context.textTheme.labelMedium),
        ],
      ),
    );
  }
}
