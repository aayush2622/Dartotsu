import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../Core/ThemeManager/ThemeManager.dart';
import '../Extensions/ContextExtensions.dart';
import 'CopyToClip.dart';

export '../Functions/SnackBar.dart';

Future<void> snackString(
  String? message, {
  String? clipboard,
  BuildContext? c,
  IconData? icon,
  bool simple = false,
}) async {
  final context = c ?? Get.context;
  if (context == null || message == null || message.isEmpty) return;

  final theme = Theme.of(context);
  final scaffold = ScaffoldMessenger.of(context);

  scaffold.hideCurrentSnackBar();

  final snackBar = SnackBar(
    backgroundColor: Colors.transparent,
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    margin: const EdgeInsets.fromLTRB(12, 0, 12, 24),
    duration: const Duration(seconds: 4),
    dismissDirection: DismissDirection.down,
    content: ThemedContainer(
      context: context,
      borderRadius: BorderRadius.circular(18),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onLongPress: () =>
            !simple ? copyToClipboard(clipboard ?? message) : null,
        child: Row(
          children: [
            icon == null
                ? ClipOval(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  )
                : Icon(
                    icon,
                    size: 20,
                    color: theme.colorScheme.primary,
                  ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodyLarge?.copyWith(height: 1.25),
              ),
            ),
            const SizedBox(width: 8),
            if (!simple) ...[
              IconButton(
                constraints: const BoxConstraints(),
                icon: Icon(
                  Icons.copy_rounded,
                  size: 18,
                  color: theme.colorScheme.onSurface.withOpacity(0.5),
                ),
                onPressed: () {
                  scaffold.hideCurrentSnackBar();
                  copyToClipboard(clipboard ?? message);
                },
              ),
              IconButton(
                constraints: const BoxConstraints(),
                onPressed: scaffold.hideCurrentSnackBar,
                icon: Icon(
                  Icons.close_rounded,
                  size: 18,
                  color: theme.colorScheme.onSurface.withOpacity(0.5),
                ),
              )
            ],
          ],
        ),
      ),
    )
        .animate()
        .fadeIn(duration: 150.ms)
        .slideY(begin: 0.4, curve: Curves.easeOutCubic)
        .scale(
          begin: const Offset(0.96, 0.96),
          curve: Curves.easeOutBack,
        ),
  );

  scaffold.showSnackBar(snackBar);
}
