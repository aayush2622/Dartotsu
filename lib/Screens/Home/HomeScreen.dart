import 'package:blur/blur.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';

import '../../Adaptor/Media/Widgets/MediaCard.dart';
import '../../Animation/SlideInAnimation.dart';
import '../../Animation/SlideUpAnimation.dart';
import '../../Functions/Function.dart';
import '../../Services/BaseServiceData.dart';
import '../../Services/Screens/BaseHomeScreen.dart';
import '../../Services/ServiceSwitcher.dart';
import '../../Theme/Colors.dart';
import '../../Theme/ThemeProvider.dart';
import '../../Widgets/CachedNetworkImage.dart';
import '../../Widgets/CustomBottomDialog.dart';
import '../../Widgets/LoadSvg.dart';
import '../../Widgets/ScrollConfig.dart';
import '../Home/Widgets/LoadingWidget.dart';
import '../MediaList/MediaListScreen.dart';
import '../Settings/SettingsBottomSheet.dart';
import 'Widgets/AvtarWidget.dart';
import 'Widgets/NotificationBadge.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var service = Provider.of<MediaServiceProvider>(context).currentService;
    var screen = service.homeScreen;
    var data = service.data;
    if (screen == null) {
      return service.notImplemented(widget.runtimeType.toString());
    }
    screen.init();
    return Scaffold(
      body: Stack(
        children: [
          _buildRefreshContent(screen, data),
          _buildScrollToTopButton(screen),
        ],
      ),
    );
  }

  Widget _buildRefreshContent(BaseHomeScreen service, BaseServiceData data) {
    return RefreshIndicator(
      onRefresh: () async => Refresh.activity[service.refreshID]?.value = true,
      child: CustomScrollConfig(
        context,
        controller: service.scrollController,
        children: [
          SliverToBoxAdapter(child: _buildHomeScreenContent(service, data)),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Obx(() => _buildMediaContent()),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildScrollToTopButton(BaseHomeScreen service) {
    var theme = Provider.of<ThemeNotifier>(context);
    return Positioned(
      bottom: 72.0 + 32.bottomBar(),
      left: (0.screenWidthWithContext(context) / 2) - 24.0,
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

  Widget _buildHomeScreenContent(BaseHomeScreen service, BaseServiceData data) {
    var backgroundHeight = 212.statusBar();
    return Column(
      children: [
        SizedBox(
          height: backgroundHeight,
          child: Obx(
            () {
              if (!service.running.value) {
                return const LoadingWidget();
              }
              return Stack(
                fit: StackFit.expand,
                children: [
                  _buildBackgroundImage(data),
                  _buildAvatar(data),
                  _buildUserInfo(data),
                  _buildCards(service, data),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildBackgroundImage(BaseServiceData data) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    final theme = Theme.of(context).colorScheme.surface;
    final gradientColors = isDarkMode
        ? [Colors.transparent, theme]
        : [Colors.white.withValues(alpha: 0.2), theme];

    return SizedBox(
      height: 212.statusBar(),
      child: Stack(
        children: [
          KenBurns(
            minAnimationDuration: const Duration(milliseconds: 9000),
            maxAnimationDuration: const Duration(milliseconds: 30000),
            maxScale: 2.5,
            child: cachedNetworkImage(
              imageUrl: data.bg ?? '',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 212.statusBar(),
            ),
          ),
          Container(
            width: double.infinity,
            height: 212.statusBar(),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Blur(
            colorOpacity: 0.0,
            blur: 10,
            blurColor: Colors.transparent,
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(BaseServiceData data) {
    return Positioned(
      left: Directionality.of(context) == TextDirection.rtl ? 32 : null,
      right: Directionality.of(context) == TextDirection.ltr ? 32 : null,
      top: 36.statusBar(),
      child: SlideUpAnimation(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () =>
                  showCustomBottomDialog(context, const SettingsBottomSheet()),
              child: const SettingIconWidget(icon: Icons.settings),
            ),
            if (data.unreadNotificationCount > 0)
              Positioned(
                right: 0,
                bottom: -2,
                child: NotificationBadge(
                  count: data.unreadNotificationCount,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo(BaseServiceData data) {
    final theme = Theme.of(context).colorScheme;
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;

    var service = context.currentService();
    var home = service.homeScreen!;

    return Positioned(
      top: 36.statusBar(),
      left: 34.0,
      right: 16.0,
      child: SlideUpAnimation(
        child: Row(
          children: [
            GestureDetector(
              onTap: () => serviceSwitcher(context),
              child: loadSvg(
                service.iconPath,
                width: 38.0,
                height: 38.0,
                color: theme.onSurface,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.username.value,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: isDarkMode
                        ? Colors.white
                        : Colors.black.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(height: 2.0),
                _buildInfoRow(home.firstInfoString,
                    data.episodesWatched.toString(), theme.primary),
                _buildInfoRow(home.secondInfoString,
                    data.chapterRead.toString(), theme.primary),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, Color valueColor) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;

    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.0,
            color: isDarkMode
                ? Colors.white.withValues(alpha: 0.58)
                : Colors.black.withValues(alpha: 0.58),
          ),
        ),
        const SizedBox(width: 4.0),
        Text(
          value,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
            color: valueColor,
          ),
        ),
      ],
    );
  }

  Widget _buildCards(BaseHomeScreen service, BaseServiceData data) {
    return Positioned(
      top: 132.statusBar(),
      left: 8.0,
      right: 8.0,
      child: SlideInAnimation(
        child: Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MediaCard(
                context,
                getString.list(getString.anime).toUpperCase(),
                service.listImages.value[0] ?? 'https://bit.ly/31bsIHq',
                onTap: () => navigateToPage(
                  context,
                  MediaListScreen(
                    anime: true,
                    id: data.userid ?? 0,
                  ),
                ),
              ),
              MediaCard(
                context,
                getString.list(getString.manga).toUpperCase(),
                service.listImages.value[1] ?? 'https://bit.ly/2ZGfcuG',
                onTap: () => navigateToPage(
                  context,
                  MediaListScreen(
                    anime: false,
                    id: data.userid ?? 0,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildMediaContent() {
    var home = context.currentService().homeScreen!;
    return Column(
      children: [
        ...home.mediaContent(context),
        if (home.paging)
          SizedBox(
            height: 216,
            child: Center(
              child: !home.loadMore.value && home.canLoadMore.value
                  ? const CircularProgressIndicator()
                  : const SizedBox(height: 216),
            ),
          ),
      ],
    );
  }
}
