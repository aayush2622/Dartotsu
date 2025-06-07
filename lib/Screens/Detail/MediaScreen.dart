import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'package:dartotsu/Screens/Detail/Tabs/Info/InfoPage.dart';
import 'package:dartotsu/Screens/Detail/Tabs/Watch/Anime/AnimeWatchScreen.dart';
import 'package:dartotsu/Screens/Detail/Tabs/Watch/Manga/MangaWatchScreen.dart';
import 'package:dartotsu/Screens/Detail/Tabs/Watch/Source/Source.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';

import '../../DataClass/Media.dart';
import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Theme/ThemeProvider.dart';
import '../../Widgets/CachedNetworkImage.dart';
import '../../Widgets/ScrollConfig.dart';
import 'MediaScreenViewModel.dart';

class MediaInfoPage extends StatefulWidget {
  final Media mediaData;
  final String tag;

  const MediaInfoPage(this.mediaData, this.tag, {super.key});

  @override
  MediaInfoPageState createState() => MediaInfoPageState();
}

class MediaInfoPageState extends State<MediaInfoPage> {
  final _selectedIndex = 0.obs;
  late MediaPageViewModel _viewModel;

  late PageController pageController = PageController();
  late Media mediaData;

  late Worker reload;

  @override
  void initState() {
    var service = context.currentService(listen: false);
    _viewModel = Get.put(MediaPageViewModel(),
        tag: "${widget.mediaData.id.toString()}-${service.getName}");

    var key = "${service.getName}-${widget.mediaData.id}-Settings";
    widget.mediaData.settings = loadCustomData(key) ?? MediaSettings();
    _selectedIndex.value = widget.mediaData.settings.navBarIndex;
    pageController = PageController(initialPage: _selectedIndex.value);
    mediaData = widget.mediaData;
    MediaSettings.saveMediaSettings(mediaData..settings.navBarIndex = 1);

    var refreshID = widget.mediaData.id;

    final live = Refresh.getOrPut(refreshID, false);
    reload = ever(live, (bool shouldRefresh) async {
      if (shouldRefresh) {
        setState(() {});
        live.value = false;
      }
    });
    reload;
    super.initState();
    loadMediaData();
  }

  var loaded = false;

  Future<void> loadMediaData() async {
    mediaData = await _viewModel.getMediaDetails(widget.mediaData, context);
    if (mounted) setState(() => loaded = true);
  }

  @override
  void dispose() {
    super.dispose();
    reload.dispose();
    Refresh.activity.remove(widget.mediaData.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollConfig(
        context,
        children: [
          SliverToBoxAdapter(child: _buildMediaSection()),
          SliverToBoxAdapter(child: _buildMediaDetails()),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [_buildSliverContent()],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSliverContent() {
    return ExpandablePageView(
      controller: pageController,
      onPageChanged: (index) => _selectedIndex.value = index,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad
        },
      ),
      children: [
        loaded
            ? SingleChildScrollView(child: InfoPage(mediaData: mediaData))
            : _buildProgressIndicator(),
        loaded
            ? SingleChildScrollView(
                child: mediaData.sourceData != null
                    ? Source(media: mediaData)
                    : mediaData.anime != null
                        ? AnimeWatchScreen(mediaData: mediaData)
                        : MangaWatchScreen(mediaData: mediaData),
              )
            : _buildProgressIndicator(),
        loaded ? const SizedBox() : _buildProgressIndicator(),
      ],
    );
  }

  Widget _buildProgressIndicator() {
    return const SizedBox(
      height: 251,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    var isAnime = mediaData.anime != null;
    return Obx(() {
      return BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex.value == 0
                ? const SizedBox()
                : const Icon(Icons.info),
            label: getString.info.toUpperCase(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex.value == 1
                ? const SizedBox()
                : Icon(
                    isAnime
                        ? Icons.movie_filter_rounded
                        : mediaData.format?.toLowerCase() != 'novel'
                            ? Icons.import_contacts
                            : Icons.book_rounded,
                  ),
            label: isAnime
                ? getString.watch.toUpperCase()
                : getString.read.toUpperCase(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex.value == 2
                ? const SizedBox()
                : const Icon(Icons.chat_bubble_rounded),
            label: getString.comments.toUpperCase(),
          ),
        ],
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        iconSize: 26,
        currentIndex: _selectedIndex.value,
        onTap: (index) async {
          if (pageController.positions.isEmpty) return;
          _selectedIndex.value = index;
          final currentPage = pageController.page?.round() ?? 0;
          final isRight = index > currentPage;

          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: isRight ? Curves.easeInOut : Curves.easeOutQuad,
          );
        },
      );
    });
  }

  Widget _buildMediaDetails() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children:
                        _viewModel.buildMediaDetailsSpans(mediaData, context),
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              _buildFavoriteButton(),
              _buildShareButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFavoriteButton() {
    return IconButton(
      icon: mediaData.isFav
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_border),
      iconSize: 32,
      onPressed: () {
        // Favorite action
      },
    );
  }

  Widget _buildShareButton() {
    return IconButton(
      icon: const Icon(Icons.share),
      iconSize: 32,
      onPressed: () {
        if (mediaData.shareLink != null) {
          shareLink(mediaData.shareLink!);
        }
      },
    );
  }

  Widget _buildMediaSection() {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    final theme = Theme.of(context).colorScheme;
    final gradientColors = isDarkMode
        ? [Colors.transparent, theme.surface]
        : [Colors.white.withValues(alpha: 0.2), theme.surface];

    return SizedBox(
      height: 384 + (0.statusBar() * 2),
      child: Stack(
        children: [
          KenBurns(
            maxScale: 2.5,
            minAnimationDuration: const Duration(milliseconds: 6000),
            maxAnimationDuration: const Duration(milliseconds: 20000),
            child: cachedNetworkImage(
              imageUrl: mediaData.banner ?? mediaData.cover ?? '',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 384 + (0.statusBar() * 2),
            ),
          ),
          Container(
            width: double.infinity,
            height: 384 + (0.statusBar() * 2),
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
          _buildCloseButton(theme),
          Padding(
              padding: EdgeInsets.only(
                top: 64.statusBar(),
                left: Directionality.of(context) == TextDirection.rtl
                    ? 0.0
                    : 32.0,
                right: Directionality.of(context) == TextDirection.rtl
                    ? 32.0
                    : 0.0,
              ),
              child: _buildMediaInfo(theme)),
          _buildAddToListButton(theme),
        ],
      ),
    );
  }

  Positioned _buildCloseButton(ColorScheme theme) {
    return Positioned(
      top: 14.statusBar(),
      right: 24,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Card(
          elevation: 7,
          color: theme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(
            width: 32,
            height: 32,
            child: Center(
              child: Icon(Icons.close, size: 24, color: theme.onSurface),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCoverImage() {
    return Hero(
      tag: widget.tag,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: cachedNetworkImage(
          imageUrl: mediaData.cover ?? '',
          fit: BoxFit.cover,
          width: 108,
          height: 160,
          placeholder: (context, url) => Container(
            color: Colors.white12,
            width: 108,
            height: 160,
          ),
        ),
      ),
    );
  }

  Widget _buildMediaInfo(ColorScheme theme) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildCoverImage(),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 92),
                  Text(
                    mediaData.userPreferredName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    mediaData.status?.replaceAll("_", " ") ?? "",
                    style: TextStyle(
                      fontSize: 14,
                      color: theme.primary,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Positioned _buildAddToListButton(ColorScheme theme) {
    return Positioned(
      bottom: 0,
      left: 32,
      right: 32,
      height: 48,
      child: OutlinedButton(
        onPressed: () => loaded
            ? context
                .currentService(listen: false)
                .listEditor(context, mediaData)
            : null,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          side: BorderSide(color: theme.onSurface),
          backgroundColor: Colors.transparent,
        ),
        child: Text(
          mediaData.userStatus?.toUpperCase() ?? getString.addToList,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: theme.secondary,
            letterSpacing: 1.25,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
