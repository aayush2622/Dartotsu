import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../Core/ThemeManager/ThemeManager.dart';
import '../Animation/WidgetAnimations.dart';
import '../Extensions/ContextExtensions.dart';
import 'CopyToClip.dart';

export '../Functions/SnackBar.dart';

OverlayEntry? _snackOverlay;
void snackString(
  String? message, {
  String? clipboard,
  BuildContext? c,
  IconData? icon,
  bool simple = false,
  Widget? child,
}) {
  final context = c ?? Get.overlayContext ?? Get.context;
  if (context == null || message == null || message.isEmpty) return;

  final theme = Theme.of(context);

  _snackOverlay?.remove();
  _snackOverlay = null;

  _snackOverlay = OverlayEntry(
    builder: (_) => SafeArea(
      child: IgnorePointer(
        ignoring: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 24),
            child: IntrinsicWidth(
              child: Material(
                color: Colors.transparent,
                child: ThemedContainer(
                  context: context,
                  borderRadius: BorderRadius.circular(18),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          message,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: context.textTheme.bodyLarge?.copyWith(
                            height: 1.25,
                          ),
                        ),
                      ),
                      SizedBox(width: simple ? 0 : 8),
                      if (!simple) ...[
                        const SizedBox(width: 8),
                        IconButton(
                          constraints: const BoxConstraints(),
                          padding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            Icons.copy_rounded,
                            size: 18,
                            color: theme.colorScheme.onSurface.withOpacity(0.5),
                          ),
                          onPressed: () {
                            _snackOverlay?.remove();
                            _snackOverlay = null;
                            copyToClipboard(clipboard ?? message);
                          },
                        ),
                        IconButton(
                          constraints: const BoxConstraints(),
                          padding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            Icons.close_rounded,
                            size: 18,
                            color: theme.colorScheme.onSurface.withOpacity(0.5),
                          ),
                          onPressed: () {
                            _snackOverlay?.remove();
                            _snackOverlay = null;
                          },
                        ),
                      ],
                      if (child != null) ...[const SizedBox(width: 8), child],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ).animateFadeUp(),
    ),
  );

  final overlayState =
      Get.key.currentState?.overlay ??
      Navigator.of(context, rootNavigator: true).overlay;

  if (overlayState == null) return;

  overlayState.insert(_snackOverlay!);

  Future.delayed(const Duration(seconds: 4), () {
    _snackOverlay?.remove();
    _snackOverlay = null;
  });
}
