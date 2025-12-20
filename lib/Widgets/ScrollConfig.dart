import 'dart:ui';

import 'package:flutter/cupertino.dart';

Widget ScrollConfig(
  BuildContext context, {
  required Widget child,
  ScrollPhysics? physics,
}) {
  return ScrollConfiguration(
    behavior: ScrollConfiguration.of(context).copyWith(
      physics: physics ?? const BouncingScrollPhysics(),
      scrollbars: false,
      dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      },
    ),
    child: child,
  );
}

Widget CustomScrollConfig(
  BuildContext context, {
  required List<Widget> children,
  Axis scrollDirection = Axis.vertical,
  ScrollPhysics? physics,
  ScrollController? controller,
  bool shrinkWrap = false,
}) {
  return CustomScrollView(
    controller: controller,
    scrollBehavior: ScrollConfiguration.of(context).copyWith(
      scrollbars: false,
      dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad
      },
    ),
    shrinkWrap: shrinkWrap,
    physics: physics,
    scrollDirection: scrollDirection,
    slivers: children,
  );
}
