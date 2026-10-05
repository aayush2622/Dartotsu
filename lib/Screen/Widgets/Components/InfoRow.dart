import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';

class InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const InfoRow(this.label, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 92,
            child: Text(
              label,
              style: context.textTheme.labelMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(value, style: context.textTheme.bodyMedium)),
        ],
      ),
    );
  }
}
