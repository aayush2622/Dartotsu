import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import 'ThemedContainer.dart';

class AppSheet extends StatelessWidget {
  final String? title;
  final Widget? trailing;
  final Widget child;
  final double? heightFactor;

  const AppSheet({
    super.key,
    this.title,
    this.trailing,
    required this.child,
    this.heightFactor,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final sheet = ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      child: ThemedContainer(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        padding: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.only(
            top: 12,
            bottom: MediaQuery.viewInsetsOf(context).bottom,
          ),
          child: Column(
            mainAxisSize: heightFactor == null
                ? MainAxisSize.min
                : MainAxisSize.max,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: scheme.onSurface.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              if (title != null)
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 12, 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          title!,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      ?trailing,
                    ],
                  ),
                ),
              Flexible(child: child),
            ],
          ),
        ),
      ),
    );
    return heightFactor == null
        ? sheet
        : FractionallySizedBox(heightFactor: heightFactor, child: sheet);
  }
}
