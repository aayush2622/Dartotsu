import 'dart:async';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/CommunityList.dart';
import '../../Core/State/State.dart';
import '../../Logger.dart';
import '../../Widgets/Components/ScreenState.dart';

class CommunityListsState extends ScreenState {
  final CommunityListsView view;

  CommunityListsState(this.view);

  late final kind = view.kinds.first.$1.live;
  late final sort = view.sorts.first.$1.live;
  final items = <CommunityList>[].liveList;
  final loading = false.live;
  final failed = false.live;
  final first = true.live;
  final hasNext = true.live;
  int _page = 1;
  int _run = 0;

  @override
  void onInit() => unawaited(load(reset: true));

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

  Future<void> load({bool reset = false}) async {
    if (reset) {
      _run++;
      items.clear();
      _page = 1;
      hasNext.value = true;
      failed.value = false;
      first.value = true;
      loading.value = false;
    }
    if (loading.value || !hasNext.value) return;
    final run = _run;
    loading.value = true;
    try {
      final page = await view.lists(
        kind: kind.value,
        sort: sort.value,
        page: _page,
      );
      if (run != _run) return;
      final known = {for (final l in items) l.id};
      items.addAll(page.items.where((l) => !known.contains(l.id)));
      hasNext.value = page.hasNext;
      if (page.hasNext) _page++;
      failed.value = false;
    } catch (e, st) {
      logError('CommunityListsState', e, st);
      if (run == _run) failed.value = true;
    } finally {
      if (run == _run) {
        loading.value = false;
        first.value = false;
      }
    }
  }
}
