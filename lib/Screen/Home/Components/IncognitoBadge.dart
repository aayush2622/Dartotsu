import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/LoadSvg.dart';

class IncognitoBadge extends StatelessWidget {
  final VoidCallback? onTap;

  const IncognitoBadge({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Clickable(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: scheme.tertiaryContainer,
          borderRadius: BorderRadius.circular(999),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            loadSvg(
              'assets/svg/incognito.svg',
              width: 14,
              height: 14,
              color: scheme.onTertiaryContainer,
            ),
            const SizedBox(width: 6),
            Text(
              'Incognito',
              style: context.textTheme.labelSmall?.copyWith(
                color: scheme.onTertiaryContainer,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
