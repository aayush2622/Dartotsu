import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../Core/Services/MediaServiceController.dart';
import '../Utils/Extensions/ContextExtensions.dart';
import '../Utils/Functions/GetXFunctions.dart';
import '../Widgets/Components/BaseScreen.dart';
import 'Feed/FeedScreens.dart';
import 'Navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends BaseScreen<MainScreen> {
  final _tab = 1.obs;
  final _built = <int>{1};

  MediaServiceController get _services => find();

  Widget _tabView(BuildContext context, int index) {
    final s = _services.currentService.value;
    return switch (index) {
      0 => BrowseFeed(service: s, anime: true),
      2 => BrowseFeed(service: s, anime: false),
      _ => HomeFeed(service: s),
    };
  }

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
    final body = Obx(() {
      // Depend on the current service so tabs rebuild on a switch.
      _services.currentService.value;
      return IndexedStack(
        index: _tab.value,
        children: [
          for (var i = 0; i < 3; i++)
            _built.contains(i)
                ? KeyedSubtree(
                    key: ValueKey('${_services.currentService.value.id}-$i'),
                    child: _tabView(context, i),
                  )
                : const SizedBox.shrink(),
        ],
      );
    });

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
