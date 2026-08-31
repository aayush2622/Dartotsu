import 'package:flutter/cupertino.dart';

import '../Animation/WidgetAnimations.dart';
import '../Extensions/NumExtensions.dart';

Future<T?> navigateToPage<T>(
  BuildContext context,
  Widget page, {
  bool header = true,
}) {
  return Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: 580.ms,
      reverseTransitionDuration: 480.ms,
      pageBuilder: (_, _, _) => page,
      transitionsBuilder: (_, animation, _, child) {
        return child.animatePageTransition(animation.value);
      },
    ),
  );
}
