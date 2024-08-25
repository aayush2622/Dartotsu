import 'package:blur/blur.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dantotsu/Animation/SlideUpAnimation.dart';
import 'package:dantotsu/Functions/Extensions.dart';
import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Screens/Login/LoginScreen.dart';
import 'package:dantotsu/Theme/ThemeProvider.dart';
import 'package:dantotsu/Widgets/CustomElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';

import '../../Animation/SlideInAnimation.dart';
import '../../DataClass/MediaSection.dart';
import '../../Preferences/PrefManager.dart';
import '../../Preferences/Prefrences.dart';
import '../../Widgets/Home/AvtarWidget.dart';
import '../../Widgets/Home/LoadingWidget.dart';
import '../../Widgets/Home/NotificationBadge.dart';
import '../../Widgets/Media/MediaCard.dart';
import '../../Widgets/Media/MediaSection.dart';
import '../../Widgets/ScrollConfig.dart';
import '../../api/Anilist/Anilist.dart';
import '../../api/Anilist/AnilistViewModel.dart';
import '../Anime/AnimeScreen.dart';
import '../Settings/SettingsBottomSheet.dart';

/* TODO
list button, more button
*/
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _viewModel = AnilistHomeViewModel;

  @override
  void initState() {
    super.initState();
    load();
  }

  var running = true;

  Future<void> load() async {
    final live = Refresh.getOrPut(1, false);
    ever(live, (shouldRefresh) async {
      if (running && shouldRefresh) {
        setState(() => running = false);
        await getUserId(() => setState(() => running = true));
        await Future.wait([
          _viewModel.setListImages(),
          _viewModel.initHomePage(),
        ]);
        live.value = false;
      }
    });
    Refresh.activity[1]?.value = true;
  }

  @override
  Widget build(BuildContext context) {
    var backgroundHeight = 212.statusBar();
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          Refresh.activity[1]?.value = true;
        },
        child: CustomScrollConfig(
          context,
          children: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: backgroundHeight,
                    child: Builder(
                      builder: (context) {
                        if (!running) {
                          return const LoadingWidget();
                        }
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            _buildBackgroundImage(),
                            _buildAvatar(),
                            _buildUserInfo(),
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
                    child: Obx(() {
                      return Column(children: buildMediaSections(context));
                    }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> buildMediaSections(BuildContext context) {
    final mediaSections = [
      MediaSectionData(
        title: 'Continue Watching',
        list: _viewModel.animeContinue.value,
        icon: Icons.movie_filter_rounded,
        message: 'All caught up, when New?',
        buttonText: 'Browse\nAnime',
      ),
      MediaSectionData(
        title: 'Favourite Anime',
        list: _viewModel.animeFav.value,
        icon: Icons.heart_broken,
        message:
            'Looks like you don\'t like anything,\nTry liking a show to keep it here.',
      ),
      MediaSectionData(
        title: 'Planned Anime',
        list: _viewModel.animePlanned.value,
        icon: Icons.movie_filter_rounded,
        message: 'All caught up, when New?',
        buttonText: 'Browse\nAnime',
      ),
      MediaSectionData(
        title: 'Continue Reading',
        list: _viewModel.mangaContinue.value,
        icon: Icons.import_contacts,
        message: 'All caught up, when New?',
        buttonText: 'Browse\nManga',
      ),
      MediaSectionData(
        title: 'Favourite Manga',
        list: _viewModel.mangaFav.value,
        icon: Icons.heart_broken,
        message:
            'Looks like you don\'t like anything,\nTry liking a show to keep it here.',
      ),
      MediaSectionData(
        title: 'Planned Manga',
        list: _viewModel.mangaPlanned.value,
        icon: Icons.import_contacts,
        message: 'All caught up, when New?',
        buttonText: 'Browse\nManga',
      ),
      MediaSectionData(
        title: 'Recommended',
        list: _viewModel.recommendation.value,
        icon: Icons.auto_awesome,
        message: 'Watch/Read some Anime or Manga to get Recommendations',
      )
    ];

    var homeLayoutOrder = PrefManager.getVal(PrefName.homeLayoutOrder);
    var toShow = PrefManager.getVal(PrefName.homeLayout);

    List<MediaSectionData> getOrderedMediaSections() {
      final Map<String, MediaSectionData> sectionMap = {
        for (var section in mediaSections) section.title: section
      };

      return homeLayoutOrder
          .map((title) => sectionMap[title])
          .whereType<MediaSectionData>()
          .toList();
    }

    List<Widget> sectionWidgets = [];
    var order = getOrderedMediaSections();
    order.asMap().forEach((index, section) {
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

  Widget _buildBackgroundImage() {
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
              imageUrl: Anilist.bg ?? '',
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

  Widget _buildAvatar() {
    return Positioned(
      right: 32,
      top: 36.statusBar(),
      child: SlideUpAnimation(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => settingsBottomSheet(context),
              child: const AvatarWidget(icon: Icons.settings),
            ),
            if (Anilist.unreadNotificationCount > 0)
              Positioned(
                right: 0,
                bottom: -2,
                child: NotificationBadge(
                  count: Anilist.unreadNotificationCount,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    final theme = Theme.of(context).colorScheme;
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    return Positioned(
        top: 36.statusBar(),
        left: 34.0,
        right: 16.0,
        child: SlideUpAnimation(
          child: Row(children: [
            GestureDetector(
              onTap: () => settingsBottomSheet(context),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 26.0,
                backgroundImage: Anilist.avatar.value != null &&
                    Anilist.avatar.value!.isNotEmpty
                    ? CachedNetworkImageProvider(Anilist.avatar.value!)
                    : const NetworkImage(""),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Anilist.username ?? "",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: isDarkMode
                        ? Colors.white
                        : Colors.black.withOpacity(0.6),
                  ),
                ),
                const SizedBox(height: 2.0),
                _buildInfoRow('Episodes Watched',
                    Anilist.episodesWatched.toString(), theme.primary),
                _buildInfoRow('Chapters Read', Anilist.chapterRead.toString(),
                    theme.primary),
              ],
            ),
          ]),
        )
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
        child: Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MediaCard(
                context,
                'ANIME LIST',
                const LoginScreen(),
                _viewModel.listImages.value[0] ?? 'https://bit.ly/31bsIHq',
              ),
              MediaCard(
                context,
                'MANGA LIST',
                const AnimeScreen(),
                _viewModel.listImages.value[1] ?? 'https://bit.ly/2ZGfcuG',
              ),
            ],
          );
        }),
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
