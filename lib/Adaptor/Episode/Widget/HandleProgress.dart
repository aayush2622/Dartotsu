import 'package:flutter/material.dart';

import '../../../Preferences/PrefManager.dart';

Widget handleProgress({
  required BuildContext context,
  required int mediaId,
  required int ep,
  required double width,
}) {
  var currentProgress = PrefManager.getCustomVal<int>("${mediaId}_$ep");
  var maxProgress = PrefManager.getCustomVal<int>("${mediaId}_${ep}_max");
  if (currentProgress == null || maxProgress == null || maxProgress == 0) {
    return const SizedBox.shrink();
  }

  double progressValue = (currentProgress / maxProgress).clamp(0.0, 1.0);

  return SizedBox(
    width: width,
    height: 3,
    child: Stack(
      children: [
        Container(
          color: Colors.grey,
        ),
        FractionallySizedBox(
          widthFactor: progressValue,
          child: Container(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    ),
  );
}