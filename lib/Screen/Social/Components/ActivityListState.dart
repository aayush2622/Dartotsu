import '../../../Logger.dart';

import 'dart:async';

import 'package:flutter/widgets.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'ActivityComposer.dart';

class ActivityListState extends ScreenState {
  final MediaService service;
  final ActivityScope scope;
  final String? userId;
  final String? activityId;
  final ComposerKind? composer;
  final String? groupId;

  ActivityListState({
    required this.service,
    required this.scope,
    this.userId,
    this.activityId,
    this.composer,
    this.groupId,
  });

  SocialScreenView get view => service.socialView!;
  final items = <Activity>[].liveList;
  var page = 1;
  final hasNext = true.live;
  final loading = false.live;
  final failed = false.live;
  final first = true.live;
  final filter = ActivityFilter.all.live;

  @override
  void onInit() => unawaited(load());

  bool matches(Activity a) => switch (filter.value) {
    ActivityFilter.all => true,
    ActivityFilter.animeProgress =>
      a.kind == ActivityKind.list && a.mediaType == 'ANIME',
    ActivityFilter.mangaProgress =>
      a.kind == ActivityKind.list && a.mediaType == 'MANGA',
    ActivityFilter.messages => a.isMessage,
  };

  List<Activity> get visible => [
    for (final a in items)
      if (matches(a)) a,
  ];

  int _generation = 0;

  Future<void> load({bool reset = false}) async {
    if (loading.value && !reset) return;
    if (reset) {
      _generation++;
      items.clear();
      page = 1;
      hasNext.value = true;
      failed.value = false;
    }
    if (!hasNext.value) return;
    loading.value = true;
    final generation = _generation;
    try {
      var pages = 0;
      final before = visible.length;
      do {
        final result = groupId != null
            ? await view.groupPosts(groupId!, page: page)
            : await view.activities(
                scope,
                userId: userId,
                activityId: activityId,
                page: page,
              );
        if (generation != _generation) return;
        final known = {for (final a in items) a.id};
        items.addAll(result.items.where((a) => !known.contains(a.id)));
        hasNext.value = result.hasNext;
        if (hasNext.value) page++;
        pages++;
      } while (filter.value != ActivityFilter.all &&
          hasNext.value &&
          pages < 10 &&
          visible.length == before);
      failed.value = false;
    } catch (e, st) {
      if (generation != _generation) return;
      logError('ActivityListState', e, st);
      failed.value = true;
    }
    if (mounted && generation == _generation) {
      loading.value = false;
      first.value = false;
    }
  }

  bool onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical &&
        n.metrics.extentAfter < 700 &&
        hasNext.value &&
        !loading.value &&
        !failed.value) {
      unawaited(load());
    }
    return false;
  }

  Future<void> post() async {
    final kind = composer;
    if (kind == null) return;
    final done = await showActivityComposer(
      context,
      view,
      kind: kind,
      userId: groupId ?? userId,
    );
    if (done) await load(reset: true);
  }
}
