import 'dart:ui';
import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';

import '../Preferences/Prefrences.dart';

Color greyNavDark = const Color(0xFF222222);
Color greyNavLight = const Color(0xFFE5E5E5);
var isDark = PrefManager.getVal(PrefName.isDarkMode);

class color {
  Color greyNav = isDark ? const Color(0xFF222222) : const Color(0xFFE5E5E5);
}