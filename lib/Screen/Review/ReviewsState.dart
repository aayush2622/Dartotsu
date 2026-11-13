import '../../Logger.dart';
import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Widgets/Components/ScreenState.dart';

class ReviewsState extends ScreenState {
  final Media media;
  final DetailScreenView view;

  ReviewsState({
    required this.media,
    required this.view,
    List<Review> initial = const [],
  }) : items = initial.liveList;

  final LiveList<Review> items;
  final loadingMore = false.live;
  final failed = false.live;
  var _page = 0;
  var _hasMore = true;

  MediaService get service => view.service;

  @override
  void onInit() => unawaited(more());

  Future<void> more() async {
    if (loadingMore.value || !_hasMore) return;
    loadingMore.value = true;
    try {
      final next = await view.reviews(media, page: _page + 1);
      final known = {for (final r in items) r.id};
      final fresh = next.where((r) => !known.contains(r.id)).toList();
      if (fresh.isEmpty) {
        _hasMore = false;
      } else {
        items.addAll(fresh);
        _page++;
      }
    } catch (e, st) {
      logError('ReviewsState', e, st);
      _hasMore = false;
      failed.value = items.isEmpty;
    } finally {
      loadingMore.value = false;
    }
  }

  bool onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical && n.metrics.extentAfter < 500) {
      unawaited(more());
    }
    return false;
  }
}
