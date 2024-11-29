import 'package:flutter/material.dart';

import '../../../DataClass/Media.dart';

Widget ScoreBadge(BuildContext context, Media mediaInfo) {
  final theme = Theme.of(context).colorScheme;
  return Positioned(
    bottom: 0,
    right: 0,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.2, vertical: 2.2),
      decoration: BoxDecoration(
        color: mediaInfo.userScore == 0 ? theme.primary : theme.tertiary,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16.0),
          topLeft: Radius.circular(17.0),
          bottomLeft: Radius.circular(-1.0),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              ((mediaInfo.userScore == 0
                          ? mediaInfo.meanScore ?? 0
                          : mediaInfo.userScore ?? 0) /
                      10.0)
                  .toString(),
              style: TextStyle(
                fontFamily: 'Poppins',
                color: theme.onPrimary,
                fontWeight: FontWeight.w800,
                fontSize: 12,
              ),
            ),
          ),
          Icon(
            Icons.star_rounded,
            color: theme.onPrimary,
            size: 12,
          ),
        ],
      ),
    ),
  );
}
