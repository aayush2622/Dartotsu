import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/CommunityList.dart';
import '../../Core/State/State.dart';
import '../../Widgets/Components/PagedList.dart';
import '../../Widgets/Components/ScreenState.dart';

class CommunityListsState extends ScreenState with PagedFields<CommunityList> {
  final CommunityListsView view;

  CommunityListsState(this.view);

  late final kind = view.kinds.first.$1.live;
  late final sort = view.sorts.first.$1.live;
  @override
  late final list = PagedList<CommunityList>(
    tag: 'CommunityListsState',
    idOf: (l) => l.id,
    fetch: (page) async {
      final result = await view.lists(
        kind: kind.value,
        sort: sort.value,
        page: page,
      );
      return (items: result.items, hasNext: result.hasNext);
    },
  );

  late final tabs = TabController(length: view.kinds.length, vsync: vsync)
    ..addListener(_tabChanged);

  @override
  void onInit() => unawaited(load(reset: true));

  @override
  void onClose() => tabs.dispose();

  void _tabChanged() {
    if (tabs.indexIsChanging) return;
    pickKind(view.kinds[tabs.index].$1);
  }

  void pickKind(String value) {
    if (kind.value == value) return;
    kind.value = value;
    unawaited(load(reset: true));
  }

  void pickSort(String value) {
    if (sort.value == value) return;
    sort.value = value;
    unawaited(load(reset: true));
  }
}
