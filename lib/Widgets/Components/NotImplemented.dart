import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';

class NotImplemented extends StatelessWidget {
  final String service;
  final String area;

  const NotImplemented({super.key, required this.service, required this.area});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: scheme.surfaceContainerHigh,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.rocket_launch_rounded,
                size: 38,
                color: scheme.primary,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '$area — coming soon',
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium,
            ),
            const SizedBox(height: 6),
            Text(
              '$service doesn\'t support this yet.',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
