import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/ThemedContainer.dart';

class HeaderStatPill extends StatelessWidget {
  final IconData icon;
  final String label;
  const HeaderStatPill({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return ThemedContainer(
      blur: false,
      borderRadius: BorderRadius.circular(999),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 15, color: scheme.primary),
          const SizedBox(width: 6),
          Text(
            label,
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
