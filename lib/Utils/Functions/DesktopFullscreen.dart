import 'dart:io';

import 'package:window_manager/window_manager.dart';

import '../../Logger.dart';
import 'AppWindow.dart';

bool _wasMaximized = false;

Future<void> setDesktopFullscreen(bool value) async {
  final window = appWindow;
  if (window == null) return;
  if (Platform.isWindows) {
    await _setWindowsFullscreen(window, value);
    return;
  }
  if (Platform.isLinux || Platform.isMacOS) {
    window.isFullScreen = value;
  }
}

Future<void> toggleDesktopFullscreen() async {
  if (!Platform.isWindows && !Platform.isLinux && !Platform.isMacOS) return;
  final window = appWindow;
  if (window == null) return;
  await setDesktopFullscreen(!window.isFullScreen);
}

Future<void> _setWindowsFullscreen(Window window, bool value) async {
  if (window.isFullScreen == value) return;
  if (!value) {
    window.isFullScreen = false;
    if (_wasMaximized) {
      _wasMaximized = false;
      window.maximize();
    }
    return;
  }
  final wasMaximized = window.isMaximized;
  if (wasMaximized) {
    window.unmaximize();
    final restored = await _waitUntilNotMaximized(window);
    if (!restored) {
      logWarn('window stayed maximized; caption bar may remain', tag: 'WINDOW');
    }
  }
  window.isFullScreen = true;
  _wasMaximized = wasMaximized;
}

Future<bool> _waitUntilNotMaximized(Window window) async {
  for (var i = 0; i < 40; i++) {
    if (!window.isMaximized) return true;
    await Future<void>.delayed(const Duration(milliseconds: 16));
  }
  return false;
}
