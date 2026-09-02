import 'dart:ui';

import 'package:flutter/cupertino.dart';

const _dragDevices = {
  PointerDeviceKind.touch,
  PointerDeviceKind.trackpad,
  PointerDeviceKind.stylus,
};

Widget ScrollConfig(
  BuildContext context, {
  required Widget child,
  ScrollPhysics? physics,
}) {
  return ScrollConfiguration(
    behavior: ScrollConfiguration.of(context).copyWith(
      physics: physics ?? const BouncingScrollPhysics(),
      scrollbars: false,
      dragDevices: _dragDevices,
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
    scrollBehavior: ScrollConfiguration.of(
      context,
    ).copyWith(scrollbars: false, dragDevices: _dragDevices),
    shrinkWrap: shrinkWrap,
    physics: physics,
    scrollDirection: scrollDirection,
    slivers: children,
  );
}
