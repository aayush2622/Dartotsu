import 'package:dantotsu/DataClass/Media.dart';
import 'package:flutter/cupertino.dart';

import '../../../Theme/Colors.dart';
import 'Countdown.dart';

List<Widget> releasingIn(media mediaData) {
  var show = (mediaData.anime?.nextAiringEpisode != null &&
      mediaData.anime?.nextAiringEpisodeTime != null &&
      (mediaData.anime!.nextAiringEpisodeTime! -
          DateTime.now().millisecondsSinceEpoch / 1000) <=
          86400 * 28);
  return [
    if (show) ...[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'EPISODE ${mediaData.anime!.nextAiringEpisode! + 1} WILL BE RELEASED IN',
              style: TextStyle(
                  color: color.fg,
                  fontWeight: FontWeight.bold,
                  fontSize: 14)),
        ],
      ),
      const SizedBox(height: 6),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CountdownWidget(
              nextAiringEpisodeTime:
              mediaData.anime!.nextAiringEpisodeTime!),
        ],
      ),
      const SizedBox(height: 12),
    ],
  ];
}