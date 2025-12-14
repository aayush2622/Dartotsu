import 'package:dartotsu/Services/MediaService.dart';
import 'package:flutter/material.dart';

import '../../../Functions/Functions/GetXFunctions.dart';
import '../../../Preferences/PrefManager.dart';

Widget handleProgress({
  required BuildContext context,
  required String mediaId,
  required dynamic ep,
  required double width,
}) {
  var sourceName = find<MediaServiceController>().currentService.value.getName;
  var currentProgress = loadCustomData<int>("$mediaId-$ep-$sourceName-current");
  var maxProgress = loadCustomData<int>("$mediaId-$ep-$sourceName-max");
  if (currentProgress == null || maxProgress == null || maxProgress == 0) {
    return const SizedBox.shrink();
  }

  double progressValue = (currentProgress / maxProgress).clamp(0.0, 1.0);

  return SizedBox(
    width: width,
    height: 3.4,
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
