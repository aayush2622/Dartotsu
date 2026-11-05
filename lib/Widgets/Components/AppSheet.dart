import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import 'SheetDragScope.dart';
import 'SheetHandle.dart';
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
    final sheet = ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      child: ThemedContainer(
        blur: true,
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
              const SheetHandle(),
              if (title != null)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 12, 8),
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
    final scoped = SheetDragScope(child: sheet);
    return heightFactor == null
        ? scoped
        : FractionallySizedBox(heightFactor: heightFactor, child: scoped);
  }
}
