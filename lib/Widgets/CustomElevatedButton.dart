import 'package:flutter/material.dart';

Widget CustomElevatedButton({
  required BuildContext context,
  required VoidCallback? onPressed,
  required String label,
  Widget? iconWidget,
  EdgeInsetsGeometry? padding,
}) {
  final theme = Theme.of(context);

  return ElevatedButton.icon(
    onPressed: onPressed,
    icon: iconWidget != null
        ? Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: iconWidget,
          )
        : const SizedBox.shrink(),
    label: Text(
      textAlign: TextAlign.center,
      label,
      style: TextStyle(
        fontFamily: 'Poppins-SemiBold',
        color: theme.colorScheme.primaryContainer,
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      padding: padding ??
          const EdgeInsets.only(
            top: 16,
            bottom: 16,
            left: 28,
            right: 36,
          ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );
}
