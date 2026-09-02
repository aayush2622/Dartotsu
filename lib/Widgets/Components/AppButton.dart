import 'package:flutter/material.dart';

Widget AppButton({
  required BuildContext context,
  required VoidCallback? onPressed,
  required String label,
  Widget? iconWidget,
  EdgeInsetsGeometry? padding,
}) {
  final style = padding == null
      ? null
      : FilledButton.styleFrom(padding: padding);

  final text = Text(
    label,
    textAlign: TextAlign.center,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  );

  return iconWidget == null
      ? FilledButton(onPressed: onPressed, style: style, child: text)
      : FilledButton.icon(
          onPressed: onPressed,
          style: style,
          icon: iconWidget,
          label: text,
        );
}
