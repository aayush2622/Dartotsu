import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

Widget loadSvg(
  String iconPath, {
  double? width,
  double? height,
  Color? color,
}) {
  return SvgPicture.asset(
    iconPath,
    width: width,
    height: height,
    colorFilter:
        color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
  );
}
