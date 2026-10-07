import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';

class MediaSectionState {
  var overscrollProgress = 0.0.live;
  var isLoadingMore = false.live;
  var mediaList = <Media>[].liveList;
  var canLoadMore = true.live;
  double lastProgress = 0.0;

  bool scrollListener(
    ScrollNotification scroll,
    Future<List<Media>?> Function()? onLoadMore,
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

  Future<void> loadMore(Future<List<Media>?> Function()? onLoadMore) async {
    isLoadingMore.value = true;
    overscrollProgress.value = 0.0;
    final newItems = await onLoadMore?.call();
    if (newItems != null) {
      mediaList.value = _dedupe([...mediaList, ...newItems]);
    } else {
      canLoadMore.value = false;
    }
    overscrollProgress.value = 0.0;
    isLoadingMore.value = false;
  }

  void updateMediaList(List<Media>? media) {
    if (media != null) {
      mediaList.value = _dedupe(media);
      return;
    }
    final count = Random().nextInt(11) + 7;
    mediaList.value = List.generate(count, (_) => Media.skeleton());
  }

  List<Media> _dedupe(List<Media> media) {
    final seen = <String>{};
    return [
      for (final m in media)
        if (seen.add(m.id)) m,
    ];
  }
}
