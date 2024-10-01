import 'package:flutter/material.dart';

import '../CharacterAdaptor.dart';
import '../../../../DataClass/Author.dart';

Widget StaffSection({
  required BuildContext context,
  required int type,
  required String title,
  List<author>? staffList,
  List<Widget>? customNullListIndicator,
}) {
  var theme = Theme.of(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (staffList == null)
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
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: theme.colorScheme.onSurface,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
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
              child: staffList.isEmpty
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
                  : StaffAdaptor(
                type: type,
                staffList: staffList,
                // Pass the callback here
              ),
            ),
          ],
        )
    ],
  );
}
