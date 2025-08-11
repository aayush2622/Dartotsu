part of 'HomeScreen.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  createState() => HomeScreenMobileState();
}

class HomeScreenMobileState extends State<HomeScreenMobile> {
  late MediaService service;
  late BaseServiceData data;
  late BaseHomeScreen screen;
  late ThemeNotifier themeNotifier;
  late ColorScheme theme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    service = context.currentService();
    data = service.data;
    screen = service.homeScreen!;
    themeNotifier = context.themeNotifier;
    theme = Theme.of(context).colorScheme;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildRefreshContent,
        screen.buildScrollToTopButton(context),
      ],
    );
  }

  Widget get _buildRefreshContent {
    return RefreshIndicator(
      onRefresh: () async => Refresh.activity[screen.refreshID]?.value = true,
      child: CustomScrollConfig(
        context,
        controller: screen.scrollController,
        children: [
          SliverToBoxAdapter(child: _buildHomeScreenContent),
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

  Widget get _buildHomeScreenContent {
    var backgroundHeight = 212.statusBar();
    return Column(
      children: [
        SizedBox(
          height: backgroundHeight,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 0.05),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
            child: Obx(() {
              if (!screen.running.value) {
                return const LoadingWidget();
              }
              return Stack(
                fit: StackFit.expand,
                children: [
                  if (!context.useGlassMode) _buildBackgroundImage,
                  _buildAvatar,
                  _buildUserInfo,
                  _buildCards,
                ],
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget get _buildBackgroundImage {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    final theme = Theme.of(context).colorScheme.surface;
    final gradientColors = isDarkMode
        ? [Colors.transparent, theme]
        : [Colors.white.withValues(alpha: 0.2), theme];

    return SizedBox(
      height: 212.statusBar(),
      child: Stack(
        children: [
          cachedNetworkImage(
            imageUrl: data.bg.value,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 212.statusBar(),
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

  Widget get _buildAvatar {
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

  Widget get _buildUserInfo {
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
                    color: themeNotifier.isDarkMode
                        ? Colors.white
                        : Colors.black.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(height: 2.0),
                _buildInfoRow(screen.firstInfoString,
                    data.episodesWatched.toString(), theme.primary),
                _buildInfoRow(screen.secondInfoString,
                    data.chapterRead.toString(), theme.primary),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, Color valueColor) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.0,
            color: themeNotifier.isDarkMode
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

  Widget get _buildCards {
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
                screen.listImages.value[0] ?? 'https://bit.ly/31bsIHq',
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
                screen.listImages.value[1] ?? 'https://bit.ly/2ZGfcuG',
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
    return Column(
      children: [
        ...screen.mediaContent(context),
        if (screen.paging)
          SizedBox(
            height: 216,
            child: Center(
              child: !screen.loadMore.value && screen.canLoadMore.value
                  ? const CircularProgressIndicator()
                  : const SizedBox(height: 216),
            ),
          ),
      ],
    );
  }
}
