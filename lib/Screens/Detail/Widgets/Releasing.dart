import 'package:dartotsu/DataClass/Media.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../Theme/Colors.dart';
import '../../../Theme/ThemeProvider.dart';
import 'Countdown.dart';

List<Widget> releasingIn(Media mediaData, BuildContext context) {
  var theme = Provider.of<ThemeNotifier>(context);
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
          Flexible(
            child: Text(
              'EPISODE ${mediaData.anime!.nextAiringEpisode! + 1} WILL BE RELEASED IN',
              style: TextStyle(
                color: theme.isDarkMode ? fgDark : fgLight,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
      const SizedBox(height: 6),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CountdownWidget(
            nextAiringEpisodeTime: mediaData.anime!.nextAiringEpisodeTime!,
          ),
        ],
      ),
      const SizedBox(height: 12),
    ],
  ];
}
