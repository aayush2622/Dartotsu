import 'dart:io';

import 'package:window_manager/window_manager.dart';

Window? get appWindow => WindowManager.instance.getCurrent();

final bool tilingCompositor =
    Platform.isLinux &&
    const [
      'HYPRLAND_INSTANCE_SIGNATURE',
      'SWAYSOCK',
      'NIRI_SOCKET',
      'I3SOCK',
      'RIVER_SOCKET',
    ].any(Platform.environment.containsKey);
