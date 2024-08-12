import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dantotsu/Animation/SlideUpAnimation.dart';
import 'package:dantotsu/DataClass/Media.dart';
import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Functions/Extensions.dart';
import 'package:dantotsu/Screens/Login/LoginScreen.dart';
import 'package:dantotsu/Screens/Settings/SettingsBottomSheet.dart';
import 'package:dantotsu/Theme/ThemeProvider.dart';
import 'package:dantotsu/Widgets/CustomElevatedButton.dart';
import 'package:dantotsu/api/Anilist/Anilist.dart';
import 'package:dantotsu/api/Anilist/AnilistQueries.dart';
import 'package:flutter/material.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';

import '../../Animation/SlideInAnimation.dart';
import '../../DataClass/MediaSection.dart';
import '../../Prefrerences/PrefManager.dart';
import '../../Prefrerences/Prefrences.dart';
import '../../Widgets/Home/LoadingWidget.dart';
import '../../Widgets/Home/NotificationBadge.dart';
import '../../Widgets/Media/MediaCard.dart';
import '../../Widgets/Media/MediaSection.dart';
import '../../Widgets/ScrollConfig.dart';
import '../Anime/AnimeScreen.dart';

/* TODO
get status bar height and give to: var topInset
list button, more button
*/
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List<String?>? banner;
  bool _areImagesLoaded = false;
  Map<String, List<media>>? list;
  late AnilistData userData;
  @override
  void initState() {
    super.initState();
    load(context);
  }


  Future<void> load(BuildContext context) async {
    userData = Provider.of<AnilistData>(context, listen: false);
    if (!userData.initialized) {
      await userData.get();
    }
    await _loadBanner();

    await _loadList();
  }

  Future<void> _loadBanner() async {
    setState(() => banner = null);
    final data = await getBannerImages(userData.userid!);
    setState(() {
      banner = data;
      _areImagesLoaded = false;
    });

    if (banner != null) {
      final futures = banner!.map((url) => imageLoaded(url)).toList();
      final results = await Future.wait(futures);

      setState(() {
        _areImagesLoaded = results.every((result) => result == true);
      });
    }
  }

  Future<void> _loadList() async {
    setState(() => list = null);
    final data = await initHomePage(userData.userid!);
    setState(() => list = data);
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    var backgroundHeight = 212.statusBar();
    var theme = Theme.of(context).colorScheme;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => load(context),
        child: CustomScrollConfig(
          context,
          children: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: backgroundHeight,
                    child: Consumer<AnilistData>(
                      builder: (context, data, child) {
                        if (!data.initialized || !_areImagesLoaded) {
                          if (!data.initialized) {
                            return LoadingWidget(theme: theme);
                          }
                        }
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            _buildBackgroundImage(data.bg ?? ''),
                            _buildAvatar(data),
                            _buildUserInfo(data, isDarkMode),
                            _buildCards(),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: buildMediaSections(context),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  List<Widget> buildMediaSections(BuildContext  context) {
    final mediaSections = [
      MediaSectionData(
        title: 'Continue Watching',
        list: list?['currentAnime'],
        icon: Icons.movie_filter_rounded,
        message: 'All caught up, when New?',
        buttonText: 'Browse\nAnime',
      ),
      MediaSectionData(
        title: 'Favorite Anime',
        list: list?['favoriteAnime'],
        icon: Icons.heart_broken,
        message:
            'Looks like you don\'t like anything,\nTry liking a show to keep it here.',
      ),
      MediaSectionData(
        title: 'Planned Anime',
        list: list?['currentAnimePlanned'],
        icon: Icons.movie_filter_rounded,
        message: 'All caught up, when New?',
        buttonText: 'Browse\nAnime',
      ),
      MediaSectionData(
        title: 'Continue Reading',
        list: list?['currentManga'],
        icon: Icons.import_contacts,
        message: 'All caught up, when New?',
        buttonText: 'Browse\nManga',
      ),
      MediaSectionData(
        title: 'Favorite Manga',
        list: list?['favoriteManga'],
        icon: Icons.heart_broken,
        message:
            'Looks like you don\'t like anything,\nTry liking a show to keep it here.',
      ),
      MediaSectionData(
        title: 'Planned Manga',
        list: list?['currentMangaPlanned'],
        icon: Icons.import_contacts,
        message: 'All caught up, when New?',
        buttonText: 'Browse\nManga',
      ),
      MediaSectionData(
        title: 'Recommended',
        list: list?['recommendations'],
        icon: Icons.auto_awesome,
        message: 'Watch/Read some Anime or Manga to get Recommendations',
      )
    ];

    var toShow = PrefManager.getVal(PrefName.homeLayout);
    List<Widget> sectionWidgets = [];
    mediaSections.asMap().forEach((index, section) {
      if (toShow[index]) {
        sectionWidgets.add(
          MediaSection(
            context: context,
            title: section.title,
            mediaList: section.list,
            customNullListIndicator: _buildNullIndicator(
              context,
              section.icon,
              section.message,
              section.buttonText,
              section.onPressed,
            ),
          ),
        );
      }
    });
    sectionWidgets.add(const SizedBox(height: 128));

    return sectionWidgets;
  }

  Widget _buildBackgroundImage(String imageUrl) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    final theme = Theme.of(context).colorScheme.surface;
    final gradientColors = isDarkMode
        ? [Colors.transparent, theme]
        : [Colors.white.withOpacity(0.2), theme];

    return SizedBox(
      height: 212.statusBar(),
      child: Stack(
        children: [
          KenBurns(
            maxScale: 1.5,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
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

  Widget _buildAvatar(AnilistData data) {
    return Positioned(
      right: 34,
      top: 3.statusBar(),
      child: SlideUpAnimation(
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
                child: NotificationBadge(count: data.unreadNotificationCount)
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo(AnilistData data, bool isDarkMode) {
    final theme = Theme.of(context).colorScheme;
    return Positioned(
      top: 36.statusBar(),
      left: 34.0,
      right: 16.0,
      child: SlideUpAnimation(
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

  Widget _buildCards() {
    return Positioned(
      top: 132.statusBar(),
      left: 8.0,
      right: 8.0,
      child: SlideInAnimation(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MediaCard(
              context,
              'ANIME LIST',
              const LoginScreen(),
              banner?[0] ?? 'https://bit.ly/31bsIHq',
            ),
            MediaCard(
              context,
              'MANGA LIST',
              const AnimeScreen(),
              banner?[1] ?? 'https://bit.ly/2ZGfcuG',
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildNullIndicator(BuildContext context, IconData? icon,
      String? message, String? buttonLabel, void Function()? onPressed) {
    var theme = Theme.of(context).colorScheme;

    return [
      Icon(
        icon,
        color: theme.onSurface.withOpacity(0.58),
        size: 32,
      ),
      Text(
        message ?? '',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: theme.onSurface.withOpacity(0.58),
        ),
      ),
      if (buttonLabel != null) ...[
        const SizedBox(height: 24.0),
        CustomElevatedButton(
          context: context,
          onPressed: onPressed ?? () {},
          label: buttonLabel,
        ),
      ]
    ];
  }
}

