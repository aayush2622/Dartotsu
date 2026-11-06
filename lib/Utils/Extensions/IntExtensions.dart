import 'package:flutter/widgets.dart';
import '../../Core/State/State.dart';

extension IntExtension on int {
  double statusBar() {
    var context = appContext;
    return this + MediaQuery.paddingOf(context!).top;
  }

  double bottomBar() {
    var context = appContext;
    return this + MediaQuery.paddingOf(context!).bottom;
  }

  double screenWidth() {
    var context = appContext;
    return MediaQuery.sizeOf(context!).width;
  }

  double screenWidthWithContext(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  double screenHeight() {
    var context = appContext;
    return MediaQuery.sizeOf(context!).height;
  }

  String get durationLabel {
    final h = this ~/ 60;
    final m = this % 60;
    if (h > 0 && m > 0) return '${h}h ${m}m';
    if (h > 0) return '${h}h';
    return '${m}m';
  }
}
