import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dantotsu/Adaptor/MediaAdaptor.dart';
import 'package:dantotsu/DataClass/Media.dart';
import 'package:dantotsu/Function.dart';
import 'package:dantotsu/Screens/Anime/AnimeScreen.dart';
import 'package:dantotsu/Screens/SettingsBottomSheet.dart';
import 'package:dantotsu/Theme/ThemeManager.dart';
import 'package:dantotsu/api/Anilist/Anilist.dart';
import 'package:dantotsu/api/Anilist/AnilistQueries.dart';
import 'package:flutter/material.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  final int userId;

  const HomeScreen({super.key, required this.userId});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List<String?>? banner;
  bool _areImagesLoaded = false;
  Map<String, List<media>>? list;
  late AnimationController _listController;
  late Animation<Offset> _slideUpAnimation;

  @override
  void initState() {
    super.initState();
    _listController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _slideUpAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _listController,
      curve: Curves.easeInOut,
    ));

    getBanner();
    getList();
  }

  Future<void> getBanner() async {
    final data = await getBannerImages(widget.userId);
    setState(() {
      banner = data;
      _areImagesLoaded = false;
    });
    if (banner != null) {
      final futures = banner!.map((url) => imageLoaded(url)).toList();
      Future.wait(futures).then((results) {
        setState(() {
          _areImagesLoaded = results.every((result) => result == true);
        });
      });
    }
  }

  Future<void> getList() async {
    final data = await initHomePage(widget.userId);
    setState(() {
      list = data;
    });
  }

  Future<void> refresh() async {
    await Future.wait([
      getBanner(),
      getList(),
    ]);
  }

  @override
  void dispose() {
    _listController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    const topInset = 0.0;
    const backgroundHeight = 212.0 + topInset;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refresh,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: backgroundHeight,
                    child: Consumer<AnilistData>(
                      builder: (context, data, child) {
                        if (!data.initialized || !_areImagesLoaded) {
                          return Stack(children: [
                            Container(
                              margin: const EdgeInsets.only(
                                left: 34.0,
                                right: 16.0,
                                bottom: backgroundHeight / 2 - 2,
                                top: backgroundHeight / 2 - 2,
                              ),
                              width: double.infinity,
                              child: const LinearProgressIndicator(),
                            )
                          ]);
                        }
                        _listController.forward();

                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            _buildBackgroundImage(data.bg ?? '', topInset),
                            _buildAvatar(data, topInset),
                            _buildUserInfo(data, isDarkMode, topInset),
                            _buildCards(topInset),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Consumer<AnilistData>(builder: (context, data, child) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSection(
                              'Continue Watching', list?['currentAnime'] ?? []),
                          _buildSection(
                              'Favorite Anime', list?['favoriteAnime'] ?? []),
                          _buildSection('Planned Anime',
                              list?['currentAnimePlanned'] ?? []),
                          _buildSection(
                              'Continue Reading', list?['currentManga'] ?? []),
                          _buildSection(
                              'Favorite Manga', list?['favoriteManga'] ?? []),
                          _buildSection('Planned Manga',
                              list?['currentMangaPlanned'] ?? []),
                          _buildSection(
                              'Recommended', list?['recommendations'] ?? []),
                          const SizedBox(height: 128),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage(String imageUrl, double topInset) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    final theme = Theme.of(context).colorScheme.surface;
    final gradientColors = isDarkMode
        ? [Colors.transparent, theme]
        : [Colors.white.withOpacity(0.2), theme];

    return SizedBox(
      height: 212.0 + topInset,
      child: Stack(
        children: [
          KenBurns(
            maxScale: 1.5,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 212+ topInset,
            ),
          ),
          Container(
            width: double.infinity,
            height: 212+ topInset,
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

  Widget _buildAvatar(AnilistData data, double topInset) {
    return Positioned(
      right: 34,
      top: 36 + topInset,
      child: SlideTransition(
        position: _slideUpAnimation,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => settingsBottomSheet(context),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 26.0,
                backgroundImage: data.avatar != null && data.avatar!.isNotEmpty
                    ? CachedNetworkImageProvider(data.avatar!)
                    : const NetworkImage(""),
              ),
            ),
            if (data.unreadNotificationCount > 0)
              Positioned(
                right: 0,
                bottom: -2,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Color(0xFFC6140A),
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 18,
                    minHeight: 18,
                  ),
                  child: Text(
                    data.unreadNotificationCount.toString(),
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFF3F3F3),
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo(AnilistData data, bool isDarkMode, double topInset) {
    final theme = Theme.of(context).colorScheme;

    return Positioned(
      top: 36.0 + topInset,
      left: 34.0,
      right: 16.0,
      child: SlideTransition(
        position: _slideUpAnimation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.username ?? "",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color:
                isDarkMode ? Colors.white : Colors.black.withOpacity(0.6),
              ),
            ),
            const SizedBox(height: 2.0),
            _buildInfoRow('Episodes Watched', data.episodesWatched.toString(),
                theme.primary),
            _buildInfoRow(
                'Chapters Read', data.chapterRead.toString(), theme.primary),
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
                ? Colors.white.withOpacity(0.58)
                : Colors.black.withOpacity(0.58),
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

  Widget _buildCards(double topInset) {
    return Positioned(
      top: 132.0 + topInset,
      left: 8.0,
      right: 8.0,
      child: SlideTransition(
        position: _slideUpAnimation,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildCard(
              context,
              'ANIME LIST',
              const AnimeScreen(),
              banner?[0],
            ),
            _buildCard(
              context,
              'MANGA LIST',
              const AnimeScreen(),
              banner?[1],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, StatelessWidget route,
      String? imageUrl) {
    double height = 72;
    final theme = Theme.of(context).colorScheme;
    var screenWidth = MediaQuery.of(context).size.width;
    double width = screenWidth * 0.4;
    if (width > 256) width = 256;
    double radius = width * 0.07;

    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => route)),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl ??
                  (title == "ANIME LIST"
                      ? 'https://bit.ly/31bsIHq'
                      : 'https://bit.ly/2ZGfcuG'),
              fit: BoxFit.cover,
              width: width,
              height: height,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 9.0),
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 3.0,
                      width: 64.0,
                      color: theme.primary,
                      margin: const EdgeInsets.only(bottom: 4.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<media> mediaList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (mediaList.isEmpty)
          const SizedBox(
            height: 250,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: MediaGrid(type: 0, mediaList: mediaList),
              ),
              const SizedBox(height: 4),
            ],
          ),
      ],
    );
  }
}