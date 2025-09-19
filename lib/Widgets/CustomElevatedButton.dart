import 'package:dartotsu/Functions/Extensions/ContextExtensions.dart';
import 'package:flutter/material.dart';

Widget CustomElevatedButton({
  required BuildContext context,
  required VoidCallback? onPressed,
  required String label,
  Widget? iconWidget,
  EdgeInsetsGeometry? padding,
}) {
  final theme = Theme.of(context);

  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: theme.primaryColor,
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
    child: Row(
      mainAxisSize: MainAxisSize.min, // shrink to content
      children: [
        iconWidget ?? const SizedBox.shrink(),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.primaryContainer,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    ),
  );
}
