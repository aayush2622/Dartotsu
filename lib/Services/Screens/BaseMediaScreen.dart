import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Functions/Function.dart';

abstract class BaseMediaScreen extends GetxController {
  var page = 1;
  var scrollToTop = false.obs;
  var loadMore = true.obs;
  var canLoadMore = true.obs;
  var running = true.obs;
  var scrollController = ScrollController();
  var initialLoad = false;

  List<Widget> mediaContent(BuildContext context);

  int get refreshID;

  bool get paging => true;

  Future<void> loadAll();

  Future<void>? loadNextPage() => null;
  @override
  void onInit() {
    super.onInit();
    if (initialLoad) return;
    final live = Refresh.getOrPut(refreshID, false);
    ever(
      live,
      (shouldRefresh) async {
        if (running.value && shouldRefresh) {
          running.value = false;
          await Future.wait([
            loadAll(),
          ]);
          initialLoad = true;
          live.value = false;
          running.value = true;
        }
      },
    );
    live.value = true;
  }
}
