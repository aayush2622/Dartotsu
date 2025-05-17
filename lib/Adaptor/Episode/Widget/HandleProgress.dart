import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Preferences/PrefManager.dart';
import '../../../Services/ServiceSwitcher.dart';

Widget handleProgress({
  required BuildContext context,
  required int mediaId,
  required dynamic ep,
  required double width,
}) {
  var sourceName =
      Provider.of<MediaServiceProvider>(context).currentService.getName;
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
