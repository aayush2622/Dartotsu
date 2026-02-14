import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../Core/NetworkManager/NetworkManager.dart';
import '../Core/Services/MediaService.dart';
import '../Core/ThemeManager/ThemeController.dart';
import '../Utils/Extensions/ContextExtensions.dart';
import '../Utils/Functions/GetXFunctions.dart';
import '../Utils/Functions/NavigateToScreen.dart';
import '../Widgets/Components/CachedNetworkImage.dart';
import '../Widgets/Components/ScrollConfig.dart';
import '../Widgets/Sections/Media/MediaSection.dart';
import 'Extension/ExtensionScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

//late FloatingBottomNavBar navbar;

class MainScreenState extends State<MainScreen> {
  final _selectedIndex = 1.obs;

  //void _onTabSelected(int index) => _selectedIndex.value = index;

  @override
  Widget build(BuildContext context) {
    final serviceController = find<MediaServiceController>();
    return Obx(
      () {
        final service = serviceController.currentService.value;
        return Scaffold(
          body: Stack(
            children: [
              _buildBackground(service),
              Row(
                children: [
                  if (!context.isPhone) SizedBox(width: 100, child: _navbar),
                  Expanded(child: _buildBody(service)),
                ],
              ),
              if (context.isPhone) _navbar,
              /*Positioned(
                bottom: 92.bottomBar(),
                right: 12,
                child: GestureDetector(
                  onLongPress: () =>
                      service.searchScreen?.onSearchIconLongClick(context),
                  onTap: () => service.searchScreen?.onSearchIconClick(context),
                  child: ThemedContainer(
                    context: context,
                    borderRadius: BorderRadius.circular(16.0),
                    padding: const EdgeInsets.all(4.0),
                    child: const Icon(Icons.search),
                  ),
                ),
              ),*/
            ],
          ),
        );
      },
    );
  }

  Widget get _navbar {
    return const SizedBox();
    /* return Obx(() {
      navbar = context.isPhone
          ? FloatingBottomNavBarMobile(
              selectedIndex: _selectedIndex.value,
              onTabSelected: _onTabSelected,
            )
          : FloatingBottomNavBarDesktop(
              selectedIndex: _selectedIndex.value,
              onTabSelected: _onTabSelected,
            );
      return navbar;
    });*/
  }

  Widget _buildBackground(MediaService service) {
    final themeController = find<ThemeController>();
    final useGlassMode = themeController.useGlassMode.value;
    if (!useGlassMode) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    return Positioned.fill(
      child: Stack(
        children: [
          Positioned.fill(
            child: RepaintBoundary(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Opacity(
                  opacity: 0.8,
                  child: Obx(
                    () => cachedNetworkImage(
                      imageUrl: service.data.bg.value,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.55,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, scheme.surface],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(MediaService service) {
    return Obx(
      () {
        if (_selectedIndex.value != 1) {
          return const SizedBox();
        }
        return CustomScrollConfig(
          context,
          children: [
            SliverToBoxAdapter(
              child: TextButton(
                  onLongPress: () async {
                    var t = await find<NetworkManager>()
                        .get("https://anilist.co/home");
                    print(t.data);
                  },
                  onPressed: () async {
                    unawaited(
                      navigateToPage(
                        context,
                        const ExtensionScreen(),
                      ),
                    );
                  },
                  child: const Text('Login')),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaSection(
                data: MediaSectionData.skeleton(0),
              ),
            ),
          ],
        );
      },
    );
  }
}
