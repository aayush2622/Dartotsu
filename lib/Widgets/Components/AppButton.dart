import 'package:flutter/material.dart';

/// M3 filled button with an optional leading icon. Kept as a function for the
/// existing call sites.
Widget AppButton({
  required BuildContext context,
  required VoidCallback? onPressed,
  required String label,
  Widget? iconWidget,
  EdgeInsetsGeometry? padding,
}) {
  final style = FilledButton.styleFrom(
    padding:
        padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    textStyle: Theme.of(context).textTheme.labelLarge,
  );

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
