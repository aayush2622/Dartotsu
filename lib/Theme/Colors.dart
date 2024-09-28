import 'dart:ui';
import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';

import '../Preferences/Preferences.dart';

Color greyNavDark = const Color(0xFF222222);
Color greyNavLight = const Color(0xFFE5E5E5);
var isDark = PrefManager.getVal(PrefName.isDarkMode);

class color {
  static Color greyNav = isDark ? const Color(0xFF222222) : const Color(0xFFE5E5E5);
  static Color fg = isDark ? const Color(0xA8EEEEEE) : const Color(0xA8000000);
}