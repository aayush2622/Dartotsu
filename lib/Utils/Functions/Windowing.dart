// ignore_for_file: implementation_imports, invalid_use_of_internal_member
import 'dart:io';

import 'package:flutter/src/foundation/_features.dart' as features;

bool get windowingSupported =>
    Platform.isLinux || Platform.isWindows || Platform.isMacOS;

void enableWindowing() {
  if (windowingSupported) features.isWindowingEnabled = true;
}
