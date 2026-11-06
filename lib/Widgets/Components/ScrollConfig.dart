import 'dart:ui';

import 'package:flutter/widgets.dart';

const _dragDevices = {
  PointerDeviceKind.touch,
  PointerDeviceKind.stylus,
  PointerDeviceKind.invertedStylus,
  PointerDeviceKind.unknown,
  PointerDeviceKind.trackpad,
  PointerDeviceKind.mouse,
};

const bouncingPhysics = BouncingScrollPhysics(
  decelerationRate: ScrollDecelerationRate.normal,
  parent: AlwaysScrollableScrollPhysics(),
);

class AppScrollBehavior extends ScrollBehavior {
  const AppScrollBehavior();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const BouncingScrollPhysics(
        decelerationRate: ScrollDecelerationRate.normal,
      );

  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) => child;

  @override
  Set<PointerDeviceKind> get dragDevices => _dragDevices;

  @override
  Widget buildScrollbar(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) => child;
}

Widget ScrollConfig(
  BuildContext context, {
  required Widget child,
  ScrollPhysics? physics,
}) {
  return ScrollConfiguration(
    behavior: ScrollConfiguration.of(context).copyWith(
      physics: physics ?? bouncingPhysics,
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
  double? cacheExtent,
}) {
  return CustomScrollView(
    controller: controller,
    cacheExtent: cacheExtent,
    scrollBehavior: ScrollConfiguration.of(
      context,
    ).copyWith(scrollbars: false, dragDevices: _dragDevices),
    shrinkWrap: shrinkWrap,
    physics: physics ?? (shrinkWrap ? null : bouncingPhysics),
    scrollDirection: scrollDirection,
    slivers: children,
  );
}
