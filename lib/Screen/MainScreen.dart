import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../Core/Services/MediaServiceController.dart';
import '../Utils/Extensions/ContextExtensions.dart';
import '../Utils/Functions/GetXFunctions.dart';
import '../Utils/Functions/NavigateToScreen.dart';
import '../Widgets/Components/BaseScreen.dart';
import '../Widgets/Components/ScrollConfig.dart';
import '../Widgets/Sections/Media/MediaSection.dart';
import 'Extension/ExtensionScreen.dart';
import 'Navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

//late FloatingBottomNavBar navbar;

class MainScreenState extends BaseScreen<MainScreen> {
  @override
  Widget buildContent(BuildContext context) {
    final serviceController = find<MediaServiceController>();
    return Obx(() {
      final service = serviceController.currentService.value;
      return Stack(
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
      );
    });
  }

  final _selectedIndex = 1.obs;

  void _onTabSelected(int index) {
    _selectedIndex.value = index;
  }

  Widget get _navbar => FloatingBottomNavBar(
    selectedIndex: _selectedIndex.value,
    onTabSelected: _onTabSelected,
  );

  Widget _buildBody(MediaService service) {
    return Obx(() {
      if (_selectedIndex.value != 1) {
        return const ColoredBox(color: Colors.red, child: SizedBox.expand());
      }
      return CustomScrollConfig(
        context,
        children: [
          SliverToBoxAdapter(
            child: TextButton(
              onLongPress: () async {
                unawaited(navigateToPage(context, const ExtensionScreen()));
              },
              onPressed: () async {},
              child: const Text('Login'),
            ),
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
