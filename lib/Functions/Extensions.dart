import 'package:flutter/cupertino.dart';

import '../main.dart';

extension IntExtension on int {
  double statusBar() {
    var context = navigatorKey.currentContext;
    return this + MediaQuery.paddingOf(context!).top;
  }

  double bottomBar() {
    var context = navigatorKey.currentContext;
    return this + MediaQuery.of(context!).padding.bottom;
  }

  double screenWidth() {
    var context = navigatorKey.currentContext;
    return MediaQuery.of(context!).size.width;
  }

  double screenHeight() {
    var context = navigatorKey.currentContext;
    return MediaQuery.of(context!).size.height;
  }
}
