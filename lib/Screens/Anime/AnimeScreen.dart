import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:provider/provider.dart';

import '../../Adaptor/Media/MediaAdaptor.dart';
import '../../Adaptor/Media/Widgets/Chips.dart';
import '../../Animation/SlideInAnimation.dart';
import '../../Functions/Function.dart';
import '../../Services/Screens/BaseAnimeScreen.dart';
import '../../Services/ServiceSwitcher.dart';
import '../../Widgets/ScrollConfig.dart';
import '../Home/Widgets/ServiceSwitcherBar.dart';

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
    return Scaffold(
      body: Stack(
        children: [
          _buildRefreshContent(screen),
          screen.buildScrollToTopButton(context),
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

  Widget _buildAnimeScreenContent(BaseAnimeScreen service) {
    return Obx(() {
      var mediaDataList = service.trending.value;
      return SizedBox(
          height: 486.statusBar(),
          child: Stack(
            children: [
              SizedBox(
                  height: 464.statusBar(),
                  child: MediaAdaptor(type: 1, mediaList: mediaDataList)),
              ServiceSwitcherBar(title: getString.anime.toUpperCase()),
              Positioned(
                bottom: 92,
                left: 8.0,
                right: 8.0,
                child: Center(
                  child: ChipsWidget(
                    chips: service.trendingChips,
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
                    children: service.trendingCards(context),
                  ),
                ),
              ),
            ],
          ));
    });
  }

  Widget _buildMediaContent(BaseAnimeScreen service) {
    return Column(
      children: [
        ...service.mediaContent(context),
        if (service.paging)
          !service.loadMore.value && service.canLoadMore.value
              ? const MediaAdaptor(
                  type: 2,
                  mediaList: null,
                  skeletonObjects: 2,
                )
              : const SizedBox(height: 216),
      ],
    );
  }
}
