import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../Core/Services/MediaService.dart';
import '../Utils/Extensions/ContextExtensions.dart';
import '../Utils/Functions/GetXFunctions.dart';
import '../Utils/Functions/NavigateToScreen.dart';
import '../Widgets/Components/BaseScreen.dart';
import '../Widgets/Components/ScrollConfig.dart';
import '../Widgets/Sections/Media/MediaSection.dart';
import 'Extension/ExtensionScreen.dart';
import 'Webview/WebView.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

//late FloatingBottomNavBar navbar;

class MainScreenState extends BaseScreen<MainScreen> {
  final _selectedIndex = 1.obs;

  //void _onTabSelected(int index) => _selectedIndex.value = index;

  @override
  Widget buildContent(BuildContext context) {
    final serviceController = find<MediaServiceController>();
    return Obx(() {
      final service = serviceController.currentService.value;
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
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
    });
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

  Widget _buildBody(MediaService service) {
    return Obx(() {
      if (_selectedIndex.value != 1) {
        return const SizedBox();
      }
      return CustomScrollConfig(
        context,
        children: [
          SliverToBoxAdapter(
            child: TextButton(
              onLongPress: () async {
                unawaited(navigateToPage(context, const ExtensionScreen()));
              },
              onPressed: () async {
                unawaited(
                  navigateToPage(
                    context,
                    const WebView(
                      url: 'https://drive.google.com/drive/u/0/home',
                    ),
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
          SliverToBoxAdapter(
            child: MediaSection(data: MediaSectionData.skeleton(0)),
          ),
        ],
      );
    });
  }
}
