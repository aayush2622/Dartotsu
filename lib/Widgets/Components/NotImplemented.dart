import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';

class NotImplemented extends StatelessWidget {
  final String service;
  final String area;

  const NotImplemented({super.key, required this.service, required this.area});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.construction_rounded,
              size: 40,
              color: context.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 12),
            Text(
              '$area is not implemented on $service',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
