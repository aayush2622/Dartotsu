import 'package:blur/blur.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Screens/Info/Tabs/Info/InfoPage.dart';
import 'package:dartotsu/Screens/Info/Tabs/Watch/Anime/AnimeWatchScreen.dart';
import 'package:dartotsu/Screens/Info/Tabs/Watch/Manga/MangaWatchScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';

import '../../DataClass/Media.dart';
import '../../Functions/Function.dart';
import '../../Services/ServiceSwitcher.dart';
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
  int _selectedIndex = 0;
  late MediaPageViewModel _viewModel;

  late Media mediaData;

  @override
  void initState() {
    super.initState();
    var service = Provider.of<MediaServiceProvider>(context, listen: false)
        .currentService;
    _viewModel = Get.put(MediaPageViewModel(),
        tag: "${widget.mediaData.id.toString()}-${service.getName}");
    mediaData = widget.mediaData;
    loadData();
  }

  var loaded = false;

  Future<void> loadData() async {
    mediaData = await _viewModel.getMediaDetails(widget.mediaData, context);
    if (mounted) setState(() => loaded = true);
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
                  child: loaded
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [_buildSliverContent()],
                        )
                      : const Center(child: CircularProgressIndicator()),
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
    return IndexedStack(
      index: _selectedIndex,
      children: [
        InfoPage(mediaData: mediaData),
        if (mediaData.anime != null)
          AnimeWatchScreen(mediaData: mediaData)
        else
          MangaWatchScreen(mediaData: mediaData),
        const SizedBox(),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    var isAnime = mediaData.anime != null;
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.info),
          label: getString.info,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            isAnime
                ? Icons.movie_filter_rounded
                : mediaData.format?.toLowerCase() != 'novel'
                    ? Icons.import_contacts
                    : Icons.book_rounded,
          ),
          label: isAnime ? getString.watch : getString.read,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_rounded),
          label: getString.comments,
        ),
      ],
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      iconSize: 26,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
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
        onPressed: () {},
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
