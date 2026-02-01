import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  bool get isPhone => (mediaQueryShortestSide < 700);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Color get cardColor => Theme.of(this).cardColor;
}
