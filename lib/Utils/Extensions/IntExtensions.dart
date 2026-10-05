import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

extension IntExtension on int {
  double statusBar() {
    var context = Get.context;
    return this + MediaQuery.paddingOf(context!).top;
  }

  double bottomBar() {
    var context = Get.context;
    return this + MediaQuery.of(context!).padding.bottom;
  }

  double screenWidth() {
    var context = Get.context;
    return MediaQuery.of(context!).size.width;
  }

  double screenWidthWithContext(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double screenHeight() {
    var context = Get.context;
    return MediaQuery.of(context!).size.height;
  }

  String get durationLabel {
    final h = this ~/ 60;
    final m = this % 60;
    if (h > 0 && m > 0) return '${h}h ${m}m';
    if (h > 0) return '${h}h';
    return '${m}m';
  }
}
