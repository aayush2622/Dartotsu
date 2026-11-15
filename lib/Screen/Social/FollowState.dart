import '../../Logger.dart';

import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/MediaService.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'Components/UserCard.dart';

enum FollowFilter { all, mutual, notMutual }

class FollowState extends ScreenState {
  final MediaService service;
  final String userId;
  final bool followers;
  final String? userName;

  FollowState({
    required this.service,
    required this.userId,
    required this.followers,
    this.userName,
  });

  final users = Live<List<UserBrief>?>(null);
  final failed = false.live;
  final query = ''.live;
  final filter = FollowFilter.all.live;
  late final wide =
      (PrefManager.getCustomVal<bool>('followWide') ?? false).live;
  final hasNext = true.live;
  final loadingMore = false.live;
  int _page = 1;

  static final _placeholder = UserBrief(id: '0', name: 'Loading user name');

  String get title => followers ? getString.followers : getString.following;

  String get barTitle =>
      userName == null ? title : getString.userTitle(userName!, title);

  bool get loading => users.value == null && !failed.value;

  String get searchHint => getString.searchCategory(title.toLowerCase());

  List<UserBrief> get visible {
    final all = users.value ?? List.generate(8, (_) => _placeholder);
    final q = query.value.trim().toLowerCase();
    final f = filter.value;
    if (q.isEmpty && f == FollowFilter.all) return all;
    return [
      for (final u in all)
        if ((q.isEmpty || u.name.toLowerCase().contains(q)) && _passes(u, f)) u,
    ];
  }

  bool get canFilter => service.socialView?.canInteract ?? false;

  bool get filtering =>
      query.value.trim().isNotEmpty || filter.value != FollowFilter.all;

  bool _passes(UserBrief u, FollowFilter f) => switch (f) {
    FollowFilter.all => true,
    FollowFilter.mutual => u.isFollowing && u.isFollower,
    FollowFilter.notMutual => !(u.isFollowing && u.isFollower),
  };

  void setFilter(FollowFilter v) {
    filter.value = v;
    if (v != FollowFilter.all) unawaited(more());
  }

  @override
  void onInit() => unawaited(load());

  Future<void> load() async {
    failed.value = false;
    _page = 1;
    hasNext.value = true;
    try {
      final result = await service.socialView!.follows(
        userId,
        followers: followers,
      );
      if (!mounted) return;
      users.value = [...result.items];
      hasNext.value = result.hasNext;
      _page = 2;
    } catch (e, st) {
      logError('FollowState', e, st);
      if (mounted) failed.value = true;
    }
  }

  Future<void> more() async {
    if (loadingMore.value || !hasNext.value || users.value == null) return;
    loadingMore.value = true;
    try {
      final result = await service.socialView!.follows(
        userId,
        followers: followers,
        page: _page,
      );
      if (!mounted) return;
      final known = {for (final u in users.value!) u.id};
      users.value!.addAll(result.items.where((u) => !known.contains(u.id)));
      users.refresh();
      hasNext.value = result.hasNext;
      _page++;
    } catch (e, st) {
      logError('FollowState', e, st);
      if (mounted) hasNext.value = false;
    } finally {
      if (mounted) loadingMore.value = false;
    }
    if (mounted && filtering && hasNext.value) {
      unawaited(more());
    }
  }

  bool onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical && n.metrics.extentAfter < 500) {
      unawaited(more());
    }
    return false;
  }

  void onQueryChanged(String v) {
    query.value = v;
    if (v.trim().isNotEmpty) unawaited(more());
  }

  void toggleWide() {
    wide.value = !wide.value;
    PrefManager.setCustomVal<bool>('followWide', wide.value);
  }

  Widget card(UserBrief user, int i, bool loading, {bool wide = false}) {
    final card = UserCard(
      key: ValueKey('user-${user.id}-$i'),
      service: service,
      user: user,
      skeleton: loading,
      wide: wide,
    );
    return loading
        ? card
        : card.animateFadeUp(
            begin: 0.12,
            delay: Duration(milliseconds: 30 * math.min(i, 12)),
            duration: 340,
          );
  }
}
