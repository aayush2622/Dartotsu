import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import 'SectionCard.dart';

class NotImplemented extends StatelessWidget {
  final String service;
  final String area;

  const NotImplemented({super.key, required this.service, required this.area});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Center(
      child: Padding(
        padding: EdgeInsets.all(Dimens.gapXl),
        child: SectionCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                  color: scheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.rocket_launch_rounded,
                  size: 36,
                  color: scheme.onPrimaryContainer,
                ),
              ),
              SizedBox(height: Dimens.gapLg),
              Text(
                '$area — coming soon',
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium,
              ),
              SizedBox(height: Dimens.gapXs),
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
      ),
    );
  }
}
