import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../Utils/Extensions/ContextExtensions.dart';
import '../Widgets/Components/BaseScreen.dart';
import 'Home/MediaHomeScreen.dart';
import 'Navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends BaseScreen<MainScreen> {
  final _tab = 1.obs;

  static const _screens = [
    MediaHomeScreen(key: ValueKey('anime'), anime: true),
    MediaHomeScreen(key: ValueKey('home'), anime: true),
    MediaHomeScreen(key: ValueKey('manga'), anime: false),
  ];

  Widget get _navbar => Obx(
        () => FloatingBottomNavBar(
          selectedIndex: _tab.value,
          onTabSelected: (i) => _tab.value = i,
        ),
      );

  @override
  Widget buildContent(BuildContext context) {
    final body = Obx(
      () => IndexedStack(index: _tab.value, children: _screens),
    );

    return Stack(
      children: [
        Row(
          children: [
            if (!context.isPhone) SizedBox(width: 100, child: _navbar),
            Expanded(child: body),
          ],
        ),
        if (context.isPhone) _navbar,
      ],
    );
  }
}
