import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../Utils/Extensions/ContextExtensions.dart';
import '../Widgets/Components/BaseScreen.dart';
import 'Home/Tabs.dart';
import 'Navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends BaseScreen<MainScreen> {
  final _tab = 1.obs;
  final _built = <int>{1};

  static const _tabs = [AnimeTab(), HomeTab(), MangaTab()];

  Widget get _navbar => Obx(
        () => FloatingBottomNavBar(
          selectedIndex: _tab.value,
          onTabSelected: (i) {
            _built.add(i);
            _tab.value = i;
          },
        ),
      );

  @override
  Widget buildContent(BuildContext context) {
    final body = Obx(
      () => IndexedStack(
        index: _tab.value,
        children: [
          for (var i = 0; i < _tabs.length; i++)
            _built.contains(i) ? _tabs[i] : const SizedBox.shrink(),
        ],
      ),
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
