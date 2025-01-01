import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Screens/Calendar/CalendarScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:provider/provider.dart';

import '../../Adaptor/Media/MediaAdaptor.dart';
import '../../Adaptor/Media/Widgets/Chips.dart';
import '../../Adaptor/Media/Widgets/MediaCard.dart';
import '../../Animation/SlideInAnimation.dart';
import '../../Functions/Function.dart';
import '../../Services/Screens/BaseAnimeScreen.dart';
import '../../Services/ServiceSwitcher.dart';
import '../../Theme/Colors.dart';
import '../../Theme/ThemeProvider.dart';
import '../../Widgets/ScrollConfig.dart';
import '../Home/Widgets/LoadingWidget.dart';
import '../Home/Widgets/SearchBar.dart';

class AnimeScreen extends StatefulWidget {
  const AnimeScreen({super.key});

  @override
  AnimeScreenState createState() => AnimeScreenState();
}

class AnimeScreenState extends State<AnimeScreen> {
  @override
  Widget build(BuildContext context) {
    var service = Provider.of<MediaServiceProvider>(context).currentService;
    var screen = service.animeScreen;
    if (screen == null) {
      return service.notImplemented(widget.runtimeType.toString());
    }
    screen.init();
    return Scaffold(
      body: Stack(
        children: [
          _buildRefreshContent(screen),
          _buildScrollToTopButton(screen),
        ],
      ),
    );
  }

  Widget _buildRefreshContent(BaseAnimeScreen service) {
    return RefreshIndicator(
      onRefresh: () async => Refresh.activity[service.refreshID]?.value = true,
      child: CustomScrollConfig(
        context,
        controller: service.scrollController,
        children: [
          SliverToBoxAdapter(child: _buildAnimeScreenContent(service)),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Obx(() => _buildMediaContent(service)),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildScrollToTopButton(BaseAnimeScreen service) {
    var theme = Provider.of<ThemeNotifier>(context);
    return Positioned(
      bottom: 72.0 + 32.bottomBar(),
      left: (0.screenWidth() / 2) - 24.0,
      child: Obx(() => service.scrollToTop.value
          ? Container(
              decoration: BoxDecoration(
                color: theme.isDarkMode ? greyNavDark : greyNavLight,
                borderRadius: BorderRadius.circular(64.0),
              ),
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_upward),
                onPressed: () => service.scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                ),
              ),
            )
          : const SizedBox()),
    );
  }

  Widget _buildAnimeScreenContent(BaseAnimeScreen service) {
    return Obx(() {
      var mediaDataList = service.trending.value;
      var chipCall = service.loadTrending;
      return SizedBox(
        height: 486.statusBar(),
        child: service.running.value
            ? Stack(
                children: [
                  SizedBox(
                    height: 464.statusBar(),
                    child: mediaDataList != null
                        ? MediaAdaptor(type: 1, mediaList: mediaDataList)
                        : const Center(child: CircularProgressIndicator()),
                  ),
                  const MediaSearchBar(title: "ANIME"),
                  Positioned(
                    bottom: 92,
                    left: 8.0,
                    right: 8.0,
                    child: Center(
                      child: ChipsWidget(
                        chips: [
                          ChipData(
                              label: 'This Season', action: () => chipCall(1)),
                          ChipData(
                              label: 'Next Season', action: () => chipCall(2)),
                          ChipData(
                              label: 'Previous Season',
                              action: () => chipCall(0)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 8.0,
                    right: 8.0,
                    child: SlideInAnimation(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MediaCard(
                            context,
                            'GENRES',
                            const Text(""),
                            "https://s4.anilist.co/file/anilistcdn/media/anime/banner/16498-8jpFCOcDmneX.jpg",
                          ),
                          MediaCard(
                            context,
                            'CALENDAR',
                            const CalendarScreen(),
                            "https://s4.anilist.co/file/anilistcdn/media/anime/banner/125367-hGPJLSNfprO3.jpg",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : const LoadingWidget(),
      );
    });
  }

  Widget _buildMediaContent(BaseAnimeScreen service) {
    return Column(
      children: [
        ...service.mediaContent(context),
        if (service.paging)
          SizedBox(
            height: 216,
            child: Center(
              child: !service.loadMore.value && service.canLoadMore.value
                  ? const CircularProgressIndicator()
                  : const SizedBox(height: 216),
            ),
          ),
      ],
    );
  }
}
