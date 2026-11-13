import 'package:flutter/material.dart';

import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Nav/KeyboardMode.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Nav/DpadNav.dart';

class SheetHandle extends StatelessWidget {
  const SheetHandle({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: IgnorePointer(
        ignoring: true,
        child: DpadFocusable(
          autofocus: true,
          entry: true,
          onSelect: () => popPage(context),
          child: Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: colorScheme.onSurface.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          builder: (context, state, child) {
            final focus = state.focused && usingKeyboard;
            return Center(
              child: AnimatedContainer(
                duration: animDuration(120),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: focus
                      ? colorScheme.onSurface.withValues(alpha: 0.08)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: focus
                      ? Border.all(
                          color: colorScheme.onSurface.withValues(alpha: 0.25),
                          width: 1,
                        )
                      : null,
                ),
                child: child,
              ),
            );
          },
        ),
      ),
    );
  }
}
