import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../Core/Services/MediaServiceController.dart';
import '../Utils/Extensions/ContextExtensions.dart';
import '../Utils/Functions/GetXFunctions.dart';
import '../Widgets/Components/BaseScreen.dart';
import 'Feed/FeedTabs.dart';
import 'Navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends BaseScreen<MainScreen> {
  MediaServiceController get _services => find();

  late final _tab = homeTabIndex(_services.currentService.value).obs;
  final _built = <int>{};
  Worker? _serviceWorker;

  @override
  void initState() {
    super.initState();
    _built.add(_tab.value);
    _serviceWorker = ever(_services.currentService, (_) {
      _built
        ..clear()
        ..add(homeTabIndex(_services.currentService.value));
      _tab.value = homeTabIndex(_services.currentService.value);
    });
  }

  @override
  void dispose() {
    _serviceWorker?.dispose();
    super.dispose();
  }

  Widget get _navbar => Obx(() {
    final service = _services.currentService.value;
    final tabs = feedTabsFor(service);
    return FloatingBottomNavBar(
      selectedIndex: _tab.value.clamp(0, tabs.length - 1),
      items: [
        for (final (i, t) in tabs.indexed)
          NavItem(index: i, icon: t.icon, label: t.label.toUpperCase()),
      ],
      onTabSelected: (i) {
        _built.add(i);
        _tab.value = i;
      },
    );
  });

  @override
  Widget buildContent(BuildContext context) {
    final body = Obx(() {
      final service = _services.currentService.value;
      final tabs = feedTabsFor(service);
      final index = _tab.value.clamp(0, tabs.length - 1);
      return IndexedStack(
        index: index,
        children: [
          for (final (i, t) in tabs.indexed)
            _built.contains(i)
                ? KeyedSubtree(
                    key: ValueKey('${service.id}-$i'),
                    child: t.build(service),
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
