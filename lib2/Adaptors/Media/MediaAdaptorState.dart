import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../Api/Anilist/Anilist.dart';
import '../../Api/Anilist/Screen/AnilistAnimeScreen.dart';
import '../../Core/Services/Model/Media.dart';

class MediaAdaptorState {
  var overscrollProgress = 0.0.obs;
  var isLoadingMore = false.obs;
  var mediaList = <Media>[].obs;
  var canLoadMore = true.obs;
  double lastProgress = 0.0;

  bool scrollListener(
    ScrollNotification scroll,
    Future<List<Media>> Function()? onLoadMore,
  ) {
    if (scroll.metrics.pixels > scroll.metrics.maxScrollExtent) {
      final overscroll =
          scroll.metrics.pixels - scroll.metrics.maxScrollExtent - 30;

      overscrollProgress.value = (overscroll / 80).clamp(0.0, 1.0);

      if (lastProgress < 0.70 && overscrollProgress.value >= 0.70) {
        HapticFeedback.mediumImpact();
      }
      lastProgress = overscrollProgress.value;
      if (!isLoadingMore.value &&
          scroll is ScrollUpdateNotification &&
          scroll.dragDetails == null &&
          overscrollProgress.value >= 0.70) {
        loadMore(onLoadMore);
      }

      if (scroll is ScrollUpdateNotification &&
          scroll.dragDetails == null &&
          overscrollProgress.value < 0.70) {
        overscrollProgress.value = 0.0;
      }
    }
    return false;
  }

  Future<void> loadMore(Future<List<Media>> Function()? onLoadMore) async {
    isLoadingMore.value = true;
    overscrollProgress.value = 0.0;
    final newItems = await onLoadMore?.call();
    if (newItems != null) {
      mediaList.value = [...mediaList, ...newItems];
    } else {
      canLoadMore.value = false;
    }
    overscrollProgress.value = 0.0;
    isLoadingMore.value = false;
  }

  void updateMediaList(List<Media>? media) {
    final random = Random();
    final count = random.nextInt(11) + 7;
    final skeletonMediaList = List.generate(count, (_) => Media.skeleton());

    mediaList.value = media ?? skeletonMediaList;
    _loadData();
  }

  Future<void> _loadData() async {
    var t = Get.put(AnilistAnimeScreen(Get.put(AnilistController())),
        tag: "AnilistHomeScreen");
    await t.loadAll();
    var list = t.mostFavSeries.value;
  }
}
