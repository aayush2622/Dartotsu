import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../DataClass/Media.dart';
import '../../Services/ServiceSwitcher.dart';

class MediaPageViewModel extends GetxController {
  var dataLoaded = false.obs;

  Media? cacheMediaData;

  Future<Media> getMediaDetails(Media media, BuildContext context) async {
    var service = Provider.of<MediaServiceProvider>(context, listen: false)
        .currentService;
    if (cacheMediaData == null) {
      cacheMediaData = (await service.data.query!.mediaDetails(media)) ?? media;
      dataLoaded.value = true;
    }
    return cacheMediaData!;
  }

  List<TextSpan> buildMediaDetailsSpans(Media mediaData, BuildContext context) {
    final List<TextSpan> spans = [];
    var theme = Theme.of(context).colorScheme;
    if (mediaData.userStatus != null) {
      spans.add(TextSpan(
        text: mediaData.anime != null
            ? "${getString.watchStatus} "
            : "${getString.readStatus} ",
      ));
      spans.add(TextSpan(
        text: "${mediaData.userProgress}",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: theme.secondary,
        ),
      ));
      spans.add(TextSpan(text: " ${getString.outOf} "));
    } else {
      spans.add(TextSpan(text: "${getString.totalOf} "));
    }

    if (mediaData.anime != null) {
      if (mediaData.anime!.nextAiringEpisode != -1 &&
          mediaData.anime!.nextAiringEpisode != null) {
        spans.add(
          TextSpan(
            text: "${mediaData.anime!.nextAiringEpisode}",
            style: TextStyle(
              color: theme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
        spans.add(const TextSpan(
          text: " / ",
        ));
      }
      if (mediaData.anime?.totalEpisodes != null &&
          mediaData.anime?.totalEpisodes != 0) {
        spans.add(TextSpan(
          text: "${mediaData.anime!.totalEpisodes}",
          style: TextStyle(color: theme.onSurface, fontWeight: FontWeight.bold),
        ));
      } else {
        spans.add(TextSpan(
          text: "??",
          style: TextStyle(color: theme.onSurface, fontWeight: FontWeight.bold),
        ));
      }
    } else {
      if (mediaData.manga?.totalChapters != null &&
          mediaData.manga?.totalChapters == 0) {
        spans.add(TextSpan(
          text: "${mediaData.manga!.totalChapters}",
          style: TextStyle(color: theme.onSurface, fontWeight: FontWeight.bold),
        ));
      } else {
        spans.add(TextSpan(
          text: "??",
          style: TextStyle(color: theme.onSurface, fontWeight: FontWeight.bold),
        ));
      }
    }
    return spans;
  }
}
