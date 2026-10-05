import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ShelfCardItem {
  final String id;
  final String? imageUrl;
  final String title;
  final String? subtitle;
  final Widget? overlay;
  final double? score;
  final bool scoreHighlight;
  final bool airing;
  final double? progress;
  final String? progressText;
  final String? heroTag;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  final Widget Function(Widget defaultCard)? cardBuilder;

  const ShelfCardItem({
    required this.id,
    required this.title,
    this.imageUrl,
    this.subtitle,
    this.overlay,
    this.score,
    this.scoreHighlight = false,
    this.airing = false,
    this.progress,
    this.progressText,
    this.heroTag,
    this.onTap,
    this.onLongPress,
    this.cardBuilder,
  });

  factory ShelfCardItem.skeleton() =>
      const ShelfCardItem(id: '', title: 'Loading title');
}

class CardShelfState {
  var overscrollProgress = 0.0.obs;
  var isLoadingMore = false.obs;
  var items = <ShelfCardItem>[].obs;
  var canLoadMore = true.obs;
  double lastProgress = 0.0;

  bool scrollListener(
    ScrollNotification scroll,
    Future<List<ShelfCardItem>?> Function()? onLoadMore,
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

  Future<void> loadMore(
    Future<List<ShelfCardItem>?> Function()? onLoadMore,
  ) async {
    isLoadingMore.value = true;
    overscrollProgress.value = 0.0;
    final newItems = await onLoadMore?.call();
    if (newItems != null) {
      items.value = _dedupe([...items, ...newItems]);
    } else {
      canLoadMore.value = false;
    }
    overscrollProgress.value = 0.0;
    isLoadingMore.value = false;
  }

  void updateItems(List<ShelfCardItem>? next) {
    if (next != null) {
      items.value = _dedupe(next);
      return;
    }
    final count = Random().nextInt(11) + 7;
    items.value = List.generate(count, (_) => ShelfCardItem.skeleton());
  }

  List<ShelfCardItem> _dedupe(List<ShelfCardItem> list) {
    final seen = <String>{};
    return [
      for (final it in list)
        if (seen.add(it.id)) it,
    ];
  }
}
