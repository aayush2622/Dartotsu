import '../../../Logger.dart';

import 'dart:async';

import 'package:flutter/widgets.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Widgets/Components/ScreenState.dart';

class GroupMembersState extends ScreenState {
  final MediaService service;
  final String groupId;

  GroupMembersState({required this.service, required this.groupId});

  SocialScreenView get view => service.socialView!;

  final users = <UserBrief>[].liveList;
  final loading = false.live;
  final failed = false.live;
  final first = true.live;
  final hasNext = true.live;
  int _page = 1;

  @override
  void onInit() => unawaited(load());

  int _generation = 0;

  Future<void> load({bool reset = false}) async {
    if (reset) {
      _generation++;
      loading.value = false;
      users.clear();
      _page = 1;
      hasNext.value = true;
      failed.value = false;
      first.value = true;
    }
    if (loading.value || !hasNext.value) return;
    loading.value = true;
    final generation = _generation;
    try {
      final page = await view.groupMembers(groupId, page: _page);
      if (generation != _generation) return;
      final known = {for (final u in users) u.id};
      users.addAll(page.items.where((u) => !known.contains(u.id)));
      hasNext.value = page.hasNext;
      if (page.hasNext) _page++;
      failed.value = false;
    } catch (e, st) {
      if (generation != _generation) return;
      logError('GroupMembersState', e, st);
      failed.value = true;
    }
    if (mounted && generation == _generation) {
      loading.value = false;
      first.value = false;
    }
  }

  bool onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical &&
        n.metrics.extentAfter < 600 &&
        hasNext.value &&
        !loading.value &&
        !failed.value) {
      unawaited(load());
    }
    return false;
  }
}
