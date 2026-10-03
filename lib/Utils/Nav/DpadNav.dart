import 'package:dpad/dpad.dart';
export 'package:dpad/dpad.dart';

import 'package:flutter/material.dart';

import '../Extensions/ContextExtensions.dart';
import '../Functions/AppShortcuts.dart';

bool kDpadFocused(DpadFocusState state) => state.focused && usingKeyboard;

Widget dpadFocusHighlight(
  BuildContext context,
  DpadFocusState state,
  Widget child,
) {
  final focused = kDpadFocused(state);
  final scheme = context.colorScheme;
  return Container(
    decoration: BoxDecoration(
      color: focused ? scheme.secondaryContainer : Colors.transparent,
      borderRadius: BorderRadius.circular(14),
    ),
    child: child,
  );
}
