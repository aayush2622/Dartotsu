import 'dart:async';

import '../../Core/State/State.dart';
import '../../Logger.dart';

typedef PageResult<T> = ({List<T> items, bool hasNext});

class PagedList<T> {
  final Future<PageResult<T>> Function(int page) fetch;
  final Object Function(T item) idOf;
  final String tag;
  final bool Function(Object error)? onError;
  final void Function()? onReset;

  PagedList({
    required this.fetch,
    required this.idOf,
    required this.tag,
    this.onError,
    this.onReset,
  });

  final items = <T>[].liveList;
  final loading = false.live;
  final failed = false.live;
  final first = true.live;
  final hasNext = true.live;
  int _page = 1;
  int _run = 0;

  Future<void> load({bool reset = false}) async {
    if (reset) {
      _run++;
      items.clear();
      _page = 1;
      hasNext.value = true;
      failed.value = false;
      first.value = true;
      loading.value = false;
      onReset?.call();
    }
    if (loading.value || !hasNext.value) return;
    final run = _run;
    loading.value = true;
    try {
      final page = await fetch(_page);
      if (run != _run) return;
      final known = {for (final i in items) idOf(i)};
      items.addAll(page.items.where((i) => !known.contains(idOf(i))));
      hasNext.value = page.hasNext;
      if (page.hasNext) _page++;
      failed.value = false;
    } catch (e, st) {
      if (run == _run && !(onError?.call(e) ?? false)) {
        logError(tag, e, st);
        failed.value = true;
      }
    } finally {
      if (run == _run) {
        loading.value = false;
        first.value = false;
      }
    }
  }
}

mixin PagedFields<T> {
  PagedList<T> get list;

  LiveList<T> get items => list.items;
  Live<bool> get loading => list.loading;
  Live<bool> get failed => list.failed;
  Live<bool> get first => list.first;
  Live<bool> get hasNext => list.hasNext;

  Future<void> load({bool reset = false}) => list.load(reset: reset);
}
