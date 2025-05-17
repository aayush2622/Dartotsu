import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Api/EpisodeDetails/GetMediaIDs/GetMediaIDs.dart';
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

  void init() {
    if (initialLoad) return;
    scrollController.addListener(scrollListener);
    final live = Refresh.getOrPut(refreshID, false);
    ever(live, (bool shouldRefresh) async {
      if (running.value && shouldRefresh) {
        running.value = false;
        await Future.wait([
          loadAll(),
          GetMediaIDs.getData(),
        ]);
        initialLoad = true;
        live.value = false;
        running.value = true;
      }
    });
    Refresh.activity[refreshID]?.value = true;
  }

  bool _canScroll() {
    final maxScrollExtent = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll > (maxScrollExtent * 0.1);
  }

  Future<void> scrollListener() async {
    var scroll = scrollController.position;
    if (scroll.pixels >= scroll.maxScrollExtent - 50 && loadMore.value) {
      loadMore.value = false;
      if (canLoadMore.value) {
        await loadNextPage();
      } else {
        snackString('DAMN! YOU TRULY ARE JOBLESS\nYOU REACHED THE END');
      }
    }
    scrollToTop.value = _canScroll();
  }
}
