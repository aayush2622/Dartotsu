import 'package:blurbox/blurbox.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Api/EpisodeDetails/GetMediaIDs/GetMediaIDs.dart';
import '../../Functions/Function.dart';
import '../../Theme/Colors.dart';
import '../../Theme/ThemeManager.dart';

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

  Widget buildScrollToTopButton(BuildContext context) {
    var themeNotifier = context.themeNotifier;
    final theme = Theme.of(context).colorScheme;
    var icon = IconButton(
      icon: const Icon(Icons.arrow_upward),
      onPressed: () => scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      ),
    );
    return Positioned(
      bottom: 72.0 + 32.bottomBar(),
      left: (0.screenWidthWithContext(context) / 2) - 24.0,
      child: Obx(() => scrollToTop.value
          ? ThemedWidget(
              context: context,
              materialWidget: Container(
                decoration: BoxDecoration(
                  color: themeNotifier.isDarkMode ? greyNavDark : greyNavLight,
                  borderRadius: BorderRadius.circular(64.0),
                ),
                padding: const EdgeInsets.all(4.0),
                child: icon,
              ),
              glassWidget: BlurBox(
                blur: 12.0,
                padding: const EdgeInsets.all(4.0),
                borderRadius: BorderRadius.circular(64.0),
                border: Border.all(
                  color: theme.onSurface.withOpacity(0.2),
                  width: 1,
                ),
                child: icon,
              ),
            )
          : const SizedBox()),
    );
  }
}
