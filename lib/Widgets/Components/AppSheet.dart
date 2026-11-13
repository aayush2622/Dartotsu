import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import 'ScrollConfig.dart';
import 'SheetDragScope.dart';
import 'SheetHandle.dart';
import 'ThemedContainer.dart';

class AppSheet extends StatelessWidget {
  final String? title;
  final Widget? trailing;
  final Widget child;
  final double? heightFactor;
  final bool expandable;

  const AppSheet({
    super.key,
    this.title,
    this.trailing,
    required this.child,
    this.heightFactor,
    this.expandable = false,
  });

  @override
  Widget build(BuildContext context) {
    if (expandable) {
      return DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.25,
        maxChildSize: 1,
        snap: true,
        snapSizes: const [0.5],
        builder: (context, controller) => _sheet(
          context,
          fill: true,
          body: PrimaryScrollController(
            controller: controller,
            child: ScrollConfig(
              context,
              physics: const ClampingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: child,
            ),
          ),
        ),
      );
    }
    final sheet = _sheet(context, fill: heightFactor != null, body: child);
    final scoped = SheetDragScope(child: sheet);
    return heightFactor == null
        ? scoped
        : FractionallySizedBox(heightFactor: heightFactor, child: scoped);
  }

  Widget _sheet(
    BuildContext context, {
    required bool fill,
    required Widget body,
  }) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      child: ThemedContainer(
        blur: true,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        padding: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.only(
            top: 12,
            bottom: math.max(
              MediaQuery.viewInsetsOf(context).bottom,
              MediaQuery.viewPaddingOf(context).bottom,
            ),
          ),
          child: Column(
            mainAxisSize: fill ? MainAxisSize.max : MainAxisSize.min,
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
              Flexible(child: body),
            ],
          ),
        ),
      ),
    );
  }
}
