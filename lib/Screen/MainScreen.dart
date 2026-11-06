import 'package:flutter/material.dart';

import '../Core/Services/MediaServiceController.dart';
import '../Core/ThemeManager/CardStyleController.dart';
import '../Utils/Animation/WidgetAnimations.dart';
import '../Utils/Extensions/ContextExtensions.dart';
import '../Widgets/Components/BaseScreen.dart';
import 'Feed/FeedTabs.dart';
import 'Navbar.dart';
import '../Api/Discord/DiscordPresence.dart';
import '../Core/State/State.dart';
import '../Utils/Nav/DpadLayers.dart';
import '../Utils/Nav/DpadNav.dart';
import '../Widgets/Components/ScreenState.dart';
import 'MainState.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends BaseScreen<MainScreen>
    with ScreenStateHost<MainScreen, MainState> {
  @override
  bool get safeArea => false;

  @override
  MainState buildState() => MainState(onPresenceChanged: refreshPresence);

  MediaServiceController get _services => state.services;

  @override
  DiscordPresence? get presence => state.presence;

  Widget _navbar(GlobalKey<DpadRegionState> key) => Watch(() {
    final service = _services.currentService.value;
    final tabs = feedTabsFor(service);
    return FloatingBottomNavBar(
      laneKey: key,
      selectedIndex: state.tab.value.clamp(0, tabs.length - 1),
      items: [
        for (final (i, t) in tabs.indexed)
          NavItem(index: i, icon: t.icon, label: t.label.toUpperCase()),
      ],
      onTabSelected: state.select,
    );
  });

  final _pages = <String, Widget>{};

  Widget _page(MediaService service, int i, FeedTab t) {
    final key = '${service.id}-$i-${t.type?.name}';
    return _pages.putIfAbsent(
      key,
      () => KeyedSubtree(
        key: ValueKey(key),
        child: Watch(() {
          find<CardStyleController>().epoch.value;
          return t.build(service);
        }),
      ),
    );
  }

  @override
  Widget buildContent(BuildContext context) {
    final body = Watch(() {
      final service = _services.currentService.value;
      _pages.removeWhere((k, _) => !k.startsWith('${service.id}-'));
      final tabs = feedTabsFor(service);
      final index = state.tab.value.clamp(0, tabs.length - 1);
      return IndexedStack(
        index: index,
        children: [
          for (final (i, t) in tabs.indexed)
            state.built.contains(i)
                ? _page(service, i, t)
                : const SizedBox.shrink(),
        ],
      );
    });

    return Stack(
      children: [
        Row(
          children: [
            if (!context.isPhone)
              SizedBox(width: 100, child: _navbar(shellRailKey)),
            Expanded(child: body.animateFadeUp(begin: 0.015, duration: 520)),
          ],
        ),
        if (context.isPhone) _navbar(shellLaneKey),
      ],
    );
  }
}
