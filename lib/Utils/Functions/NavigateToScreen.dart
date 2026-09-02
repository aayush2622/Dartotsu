import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Animation/WidgetAnimations.dart';
import '../Extensions/NumExtensions.dart';

Future<T?> navigateToPage<T>(
  BuildContext context,
  Widget page, {
  bool header = true,
}) {
  return Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: 380.ms,
      reverseTransitionDuration: 300.ms,
      pageBuilder: (_, _, _) => page,
      transitionsBuilder: (_, animation, _, child) {
        return child.animatePageTransition(animation.value);
      },
    ),
  );
}

bool _backBusy = false;

/// The single back entry point for ESC, the mouse back-button and the d-pad
/// back key. Re-entrant presses while a pop is already running are swallowed
/// (they used to trip `Navigator._debugLocked`). Returns `true` if a pop was
/// started, `false` if nothing could be popped.
bool guardedBack() {
  if (_backBusy) return true;
  final nav = Get.key.currentState;
  if (nav == null || !nav.canPop()) return false;
  _backBusy = true;
  nav.maybePop().whenComplete(() => _backBusy = false);
  return true;
}
