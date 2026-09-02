import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';

class BellButton extends StatelessWidget {
  final int unread;
  final VoidCallback onOpen;
  const BellButton({super.key, required this.unread, required this.onOpen});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_none_rounded),
          onPressed: onOpen,
        ),
        if (unread > 0)
          Positioned(
            right: 6,
            top: 6,
            child: Container(
              padding: const EdgeInsets.all(3),
              constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
              decoration: BoxDecoration(
                color: context.colorScheme.error,
                shape: BoxShape.circle,
              ),
              child: Text(
                unread > 99 ? '99+' : '$unread',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onError,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
