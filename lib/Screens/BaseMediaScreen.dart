import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../Functions/Function.dart';
import '../Theme/Colors.dart';
import '../Theme/ThemeProvider.dart';
import '../Widgets/ScrollConfig.dart';
import '../api/Anilist/AnilistViewModel.dart';

abstract class BaseMediaScreen<T extends StatefulWidget> extends State<T> {

  AnilistViewModel get viewModel;

  int get refreshID;

  List<Widget> get mediaSections;

  Widget screenContent();

  @override
  void initState() {
    super.initState();
    viewModel.scrollController.addListener(viewModel.scrollListener);
    _initialize();
  }

  bool running = true;

  Future<void> _initialize() async {
    final live = Refresh.getOrPut(refreshID, false);
    ever(live, (bool shouldRefresh) async {
      if (running && shouldRefresh) {
        setState(() => running = false);
        await refreshData();
        live.value = false;
        setState(() => running = true);
      }
    });
    Refresh.activity[refreshID]?.value = true;
  }

  refreshData() async {
    await getUserId();
    await viewModel.loadAll();
  }

  @override
  void dispose() {
    viewModel.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async => Refresh.activity[refreshID]?.value = true,
            child: CustomScrollConfig(
              context,
              controller: viewModel.scrollController,
              children: [
                Obx(() => SliverToBoxAdapter(child: screenContent())),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Obx(
                          () => Column(children: [
                            ...mediaSections,
                            SizedBox(
                              height: 216,
                              child: Center(child: !viewModel.loadMore.value && viewModel.canLoadMore.value
                                  ? const CircularProgressIndicator()
                                  : const SizedBox(height: 216),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _BuildScrollToTop(),
        ],
      ),
    );
  }

  Widget _BuildScrollToTop() {
    var theme = Provider.of<ThemeNotifier>(context);
    return Positioned(
      bottom: 72.0 + 32.bottomBar(),
      left: (0.screenWidth() / 2) - 24.0,
      child: Obx(() => viewModel.scrollToTop.value ? Container(
        decoration: BoxDecoration(
          color: theme.isDarkMode ? greyNavDark : greyNavLight,
          borderRadius: BorderRadius.circular(64.0),
        ),
        padding: const EdgeInsets.all(4.0),
        child: IconButton(
          icon: const Icon(Icons.arrow_upward),
          onPressed: () => viewModel.scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          ),
        ),
      ) : const SizedBox()),
    );
  }
}
