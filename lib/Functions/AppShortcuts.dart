import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import '../Theme/ThemeProvider.dart';
import 'Function.dart';

var usingKeyboard = false;
bool appShortcuts(KeyEvent event, BuildContext context) {
  usingKeyboard = true;
  if (event is! KeyDownEvent) return false;

  final isShift = HardwareKeyboard.instance.isShiftPressed;
  final isAlt = HardwareKeyboard.instance.isAltPressed;

  Future<void> toggleFullscreen() async {
    final isFull = await windowManager.isFullScreen();
    await windowManager.setFullScreen(!isFull);
  }

  switch (event.logicalKey) {
    case LogicalKeyboardKey.escape:
      if (Get.key.currentState?.canPop() ?? false) {
        Get.back();
        return true;
      }
      return false;

    case LogicalKeyboardKey.f11:
      toggleFullscreen();
      return true;

    case LogicalKeyboardKey.enter:
      if (isAlt) {
        toggleFullscreen();
        return true;
      }
      return false;
  }

  if (!isShift) return false;

  var theme = Provider.of<ThemeNotifier>(context, listen: false);
  switch (event.logicalKey) {
    case LogicalKeyboardKey.keyG:
      final v = !theme.useGlassMode;
      theme.setGlassEffect(v);
      snackString(v ? 'Glass effect enabled' : 'Glass effect disabled');
      return true;

    case LogicalKeyboardKey.keyM:
      final v = !theme.useMaterialYou;
      theme.setMaterialYou(v);
      snackString(v ? 'Material You enabled' : 'Material You disabled');
      return true;

    case LogicalKeyboardKey.keyD:
      final v = !theme.isDarkMode;
      theme.setDarkMode(v);
      snackString(v ? 'Dark mode enabled' : 'Dark mode disabled');
      return true;

    case LogicalKeyboardKey.keyO:
      final v = !theme.isOled;
      theme.setOled(v);
      snackString(v ? 'OLED mode enabled' : 'OLED mode disabled');
      return true;
  }

  return false;
}
