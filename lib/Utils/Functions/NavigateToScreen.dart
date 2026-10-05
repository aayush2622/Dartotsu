import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Animation/WidgetAnimations.dart';
import '../Extensions/NumExtensions.dart';

Future<T?> navigateToPage<T>(
  BuildContext context,
  Widget page, {
  bool header = true,
  bool hero = false,
}) {
  return Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: 380.ms,
      reverseTransitionDuration: 300.ms,
      pageBuilder: (_, _, _) => page,
      transitionsBuilder: (_, animation, _, child) {
        if (hero) {
          return FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: const Interval(0, 0.5, curve: Curves.easeOut),
            ),
            child: child,
          );
        }
        return child.animatePageTransition(animation.value);
      },
    ),
  );
}

void popPage<T extends Object?>(BuildContext context, [T? result]) {
  final nav = Navigator.of(context);
  if (nav.canPop()) nav.pop<T>(result);
}

bool _backBusy = false;

bool guardedBack() {
  if (_backBusy) return true;
  final nav = Get.key.currentState;
  if (nav == null || !nav.canPop()) return false;
  _backBusy = true;
  nav.maybePop().whenComplete(() => _backBusy = false);
  return true;
}
