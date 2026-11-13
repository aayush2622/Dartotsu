import '../../Logger.dart';

import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/State/State.dart';
import '../../Widgets/Components/PagedList.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'SocialNavigation.dart';

class GroupsState extends ScreenState with PagedFields<SocialGroup> {
  final MediaService service;

  GroupsState(this.service);

  SocialScreenView get view => service.socialView!;

  final controller = TextEditingController();
  late final scope =
      (service.isLoggedIn ? GroupScope.joined : GroupScope.popular).live;
  final category = Live<String?>(null);
  final categories = <GroupCategory>[].liveList;
  @override
  late final list = PagedList<SocialGroup>(
    tag: 'GroupsState',
    idOf: (g) => g.id,
    fetch: (page) async {
      final result = await view.groups(
        scope.value,
        query: controller.text,
        categoryId: scope.value == GroupScope.joined ? null : category.value,
        page: page,
      );
      return (items: result.items, hasNext: result.hasNext);
    },
  );
  Timer? _debounce;

  static final placeholder = SocialGroup(
    id: '0',
    name: 'Loading group name',
    category: 'Category',
    members: 12345,
    isMember: true,
  );

  @override
  void onInit() {
    unawaited(_loadCategories());
    unawaited(load(reset: true));
  }

  @override
  void onClose() {
    _debounce?.cancel();
    controller.dispose();
  }

  Future<void> _loadCategories() async {
    try {
      categories.assignAll(await view.groupCategories());
    } catch (e, st) {
      logError('GroupsState', e, st);
    }
  }

  void setScope(GroupScope next) {
    if (next == scope.value) return;
    scope.value = next;
    unawaited(load(reset: true));
  }

  void setCategory(String? id) {
    category.value = id;
    unawaited(load(reset: true));
  }

  void onTerm(String _) {
    _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 450),
      () => unawaited(load(reset: true)),
    );
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

  void open(SocialGroup group) =>
      openGroup(context, service, group.id, seed: group);
}
