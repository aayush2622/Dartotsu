import 'dart:async';

import 'package:flutter/widgets.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Widgets/Components/PagedList.dart';
import '../../../Widgets/Components/ScreenState.dart';

class GroupMembersState extends ScreenState with PagedFields<UserBrief> {
  final MediaService service;
  final String groupId;

  GroupMembersState({required this.service, required this.groupId});

  SocialScreenView get view => service.socialView!;

  @override
  late final list = PagedList<UserBrief>(
    tag: 'GroupMembersState',
    idOf: (u) => u.id,
    fetch: (page) async {
      final result = await view.groupMembers(groupId, page: page);
      return (items: result.items, hasNext: result.hasNext);
    },
  );

  LiveList<UserBrief> get users => items;

  @override
  void onInit() => unawaited(load());

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
