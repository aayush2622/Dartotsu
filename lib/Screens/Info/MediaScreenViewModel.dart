import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../DataClass/Media.dart';
import '../../api/Anilist/Anilist.dart';

class MediaPageViewModel extends GetxController {
  var dataLoaded = false.obs;

  Media? cacheMediaData;

  Future<Media> getMediaDetails(Media media) async {
    if (cacheMediaData == null) {
      cacheMediaData = (await Anilist.query!.mediaDetails(media)) ?? media;
      dataLoaded.value = true;
    }
    return cacheMediaData!;
  }

  List<TextSpan> buildMediaDetailsSpans(Media mediaData, BuildContext context) {
    final List<TextSpan> spans = [];
    var theme = Theme.of(context).colorScheme;
    if (mediaData.userStatus != null) {
      spans.add(TextSpan(
        text: mediaData.anime != null ? "Watched " : "Read ",
      ));
      spans.add(TextSpan(
        text: "${mediaData.userProgress}",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: theme.secondary,
        ),
      ));
      spans.add(const TextSpan(text: " out of "));
    } else {
      spans.add(const TextSpan(text: "Total of "));
    }

    if (mediaData.anime != null) {
      if (mediaData.anime!.nextAiringEpisode != -1 &&
          mediaData.anime!.nextAiringEpisode != null) {
        spans.add(TextSpan(
            text: "${mediaData.anime!.nextAiringEpisode}",
            style: TextStyle(
                color: theme.onSurface, fontWeight: FontWeight.bold)));
        spans.add(const TextSpan(
          text: " / ",
        ));
      }
      if (mediaData.anime!.totalEpisodes != null &&
          mediaData.anime!.totalEpisodes != 0) {
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
      if (mediaData.manga!.totalChapters != null &&
          mediaData.manga!.totalChapters == 0) {
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
