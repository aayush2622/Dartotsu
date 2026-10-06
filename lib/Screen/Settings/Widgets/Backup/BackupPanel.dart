import 'package:flutter/material.dart';

import '../../../../Utils/Extensions/ContextExtensions.dart';

class BackupPanel extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const BackupPanel({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(14),
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAlias,
      child: Padding(padding: padding, child: child),
    );
  }
}
