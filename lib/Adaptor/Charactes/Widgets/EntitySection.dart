import 'package:flutter/material.dart';

import '../EntityAdaptor.dart';

Widget entitySection({
  required BuildContext context,
  required EntityType type,
  required String title,
  int adaptorType = 1,
  List<Object>? list,
  List<Widget>? customNullListIndicator,
}) {
  var theme = Theme.of(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (list == null)
        const SizedBox(
          height: 250,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        )
      else
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: theme.colorScheme.onSurface,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // Use a rotated IconButton
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationZ(3.14),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, size: 24),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: list.isEmpty
                  ? SizedBox(
                      height: 250,
                      child: Center(
                        child: customNullListIndicator?.isNotEmpty ?? false
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: customNullListIndicator!,
                              )
                            : const Text(
                                'Nothing here',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                      ),
                    )
                  : EntityAdaptor(
                      type: type,
                      adaptorType: adaptorType,
                      list: list,
                    ),
            ),
          ],
        )
    ],
  );
}

enum EntityType {
  Character,
  Staff,
  Studio,
}
