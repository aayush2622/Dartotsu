
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../DataClass/Media.dart';
import '../../api/Anilist/Anilist.dart';

class MediaPageViewModel extends GetxController {
  var dataLoaded = false.obs;
  Future<media> getMediaDetails(media media) async {
    var data = await Anilist.query.mediaDetails(media);
    dataLoaded.value = true;
    return data ?? media;
  }
  reset(){
    dataLoaded.value = false;
  }
  List<TextSpan> buildMediaDetailsSpans(media mediaData, BuildContext context) {
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
      if (mediaData.anime!.nextAiringEpisode != -1) {
        spans.add(TextSpan(
            text: "${mediaData.anime!.nextAiringEpisode}",
            style: TextStyle(
                color: theme.onSurface, fontWeight: FontWeight.bold)));
        spans.add(const TextSpan(
          text: " / ",
        ));
      }
      spans.add(TextSpan(
        text: "${mediaData.anime!.totalEpisodes ?? "??"}",
        style: TextStyle(color: theme.onSurface, fontWeight: FontWeight.bold),
      ));
    } else {
      spans.add(TextSpan(
        text: "${mediaData.manga!.totalChapters ?? "??"}",
        style: TextStyle(color: theme.onSurface, fontWeight: FontWeight.bold),
      ));
    }
    return spans;
  }
}