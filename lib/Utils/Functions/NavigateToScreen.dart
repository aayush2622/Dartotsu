import 'package:flutter/widgets.dart';

import '../Animation/WidgetAnimations.dart';
import '../Nav/DpadLayers.dart';
import '../../Core/State/State.dart';

PageRouteBuilder<T> _route<T>(
  Widget page, {
  bool hero = false,
  bool instant = false,
}) => PageRouteBuilder<T>(
  opaque: true,
  transitionDuration: instant ? Duration.zero : animDuration(380),
  reverseTransitionDuration: animDuration(300),
  pageBuilder: (_, _, _) => DpadEnter(child: page),
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
);

Future<T?> navigateToPage<T>(
  BuildContext context,
  Widget page, {
  bool header = true,
  bool hero = false,
  bool instant = false,
}) => Navigator.of(context).push(_route<T>(page, hero: hero, instant: instant));

Future<T?> replacePage<T extends Object?, R extends Object?>(
  BuildContext context,
  Widget page,
) => Navigator.of(context).pushReplacement<T, R>(_route<T>(page));

void popPage<T extends Object?>(BuildContext context, [T? result]) {
  final nav = Navigator.of(context);
  if (nav.canPop()) nav.pop<T>(result);
}

bool _backBusy = false;

bool guardedBack() {
  if (_backBusy) return true;
  final nav = appNavigator;
  if (nav == null || !nav.canPop()) return false;
  _backBusy = true;
  nav.maybePop().whenComplete(() => _backBusy = false);
  return true;
}
