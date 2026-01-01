import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:window_manager/window_manager.dart';

import '../../Core/ThemeManager/ThemeController.dart';
import 'GetXFunctions.dart';
import 'SnackBar.dart';

bool appShortcuts(KeyEvent event) {
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

  final theme = find<ThemeController>();
  switch (event.logicalKey) {
    case LogicalKeyboardKey.keyG:
      final v = !theme.useGlassMode.value;
      theme.setGlassEffect(v);
      snackString(v ? 'Glass effect enabled' : 'Glass effect disabled');
      return true;

    case LogicalKeyboardKey.keyM:
      final v = !theme.useMaterialYou.value;
      theme.setMaterialYou(v);
      snackString(v ? 'Material You enabled' : 'Material You disabled');
      return true;

    case LogicalKeyboardKey.keyD:
      final v = !theme.isDarkMode.value;
      theme.setDarkMode(v);
      snackString(v ? 'Dark mode enabled' : 'Dark mode disabled');
      return true;

    case LogicalKeyboardKey.keyO:
      final v = !theme.isOled.value;
      theme.setOled(v);
      snackString(v ? 'OLED mode enabled' : 'OLED mode disabled');
      return true;
  }

  return false;
}
