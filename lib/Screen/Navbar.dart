import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Core/Services/MediaServiceController.dart';
import '../Core/Services/ServiceSwitcher.dart';
import '../Core/ThemeManager/LanguageSwitcher.dart';
import '../Utils/Animation/WidgetAnimations.dart';
import '../Utils/Extensions/ContextExtensions.dart';
import '../Utils/Functions/GetXFunctions.dart';
import '../Utils/Functions/NavigateToScreen.dart';
import '../Widgets/Components/LoadSvg.dart';
import '../Widgets/Components/ThemedContainer.dart';
import 'Settings/SettingsScreen.dart';

class FloatingBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const FloatingBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  State<FloatingBottomNavBar> createState() => _FloatingBottomNavBarState();
}

class _FloatingBottomNavBarState extends State<FloatingBottomNavBar> {
  MediaServiceController get _services => find();

  /// desktop hover / d-pad focus mirror
  final hoveredIndex = (-1).obs;

  List<NavItem> get _items {
    final service = _services.currentService.value;

    if (service is NavBarProvider) {
      return (service as NavBarProvider).navBarItems;
    }

    return [
      NavItem(
        index: 0,
        icon: Icons.movie_filter_rounded,
        label: getString.anime.toUpperCase(),
      ),
      NavItem(
        index: 1,
        icon: Icons.home_rounded,
        label: getString.home.toUpperCase(),
      ),
      NavItem(
        index: 2,
        icon: Icons.import_contacts,
        label: getString.manga.toUpperCase(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final service = _services.currentService.value;

      if (ContextExtensions(context).isPhone) {
        return _buildMobile(context, service);
      }

      return _buildDesktop(context, service);
    });
  }

  Widget _buildDesktop(BuildContext context, MediaService service) {
    final theme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.topCenter,
        child: ThemedContainer(
          borderRadius: BorderRadius.circular(48),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _navButton(
                context: context,
                onTap: () => serviceSwitcher(context),
                iconBuilder: () => CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.transparent,
                  child: loadSvg(
                    service.iconPath,
                    width: 26,
                    height: 26,
                    color: theme.onSurface,
                  ),
                ).animateNavAvatar(),
              ),

              ..._items.map(
                (item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Obx(() {
                    final hovered = hoveredIndex.value == item.index;
                    final selected = widget.selectedIndex == item.index;

                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (_) => !(widget.selectedIndex == item.index)
                          ? hoveredIndex.value = item.index
                          : null,
                      onExit: (_) {
                        if (hoveredIndex.value == item.index) {
                          hoveredIndex.value = -1;
                        }
                      },
                      child: _buildItem(
                        item,
                        context,
                        hovered: hovered,
                        selected: selected,
                      ),
                    );
                  }),
                ),
              ),

              _navButton(
                context: context,
                onTap: () => navigateToPage(context, const SettingsScreen()),
                iconBuilder: () => Icon(
                  Icons.settings_rounded,
                  size: 24,
                  color: theme.onSurface.withValues(alpha: .72),
                ),
              ),
            ],
          ),
        ).animateDropIn(),
      ),
    );
  }

  Widget _buildMobile(BuildContext context, MediaService service) {
    const itemWidth = 72.0;
    const navHeight = 64.0;
    return Positioned(
      left: 0,
      right: 0,
      bottom: 32,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: itemWidth * _items.length,
          height: navHeight,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.center,
                child: ThemedContainer(
                  borderRadius: BorderRadius.circular(32),
                  padding: EdgeInsets.zero,
                  child: SizedBox(
                    width: itemWidth * _items.length,
                    height: navHeight,
                  ),
                ),
              ),

              /// Navigation items
              Row(
                mainAxisSize: MainAxisSize.min,
                children: _items.map((item) {
                  return Expanded(
                    child: Obx(() {
                      final selected = widget.selectedIndex == item.index;
                      final hovered = hoveredIndex.value == item.index;

                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (_) => !(widget.selectedIndex == item.index)
                            ? hoveredIndex.value = item.index
                            : null,
                        onExit: (_) {
                          if (hoveredIndex.value == item.index) {
                            hoveredIndex.value = -1;
                          }
                        },
                        child: _buildItem(
                          item,
                          context,
                          selected: selected,
                          hovered: hovered,
                        ),
                      );
                    }),
                  );
                }).toList(),
              ),
            ],
          ),
        ).animateFadeUp(begin: .2),
      ),
    );
  }

  Widget _navButton({
    required BuildContext context,
    required VoidCallback onTap,
    required Widget Function() iconBuilder,
  }) {
    return DpadFocusable(
      onSelect: onTap,
      effects: const [
        DpadScaleEffect(scale: 1.12),
        DpadGlowEffect(borderRadius: BorderRadius.all(Radius.circular(28))),
      ],
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SizedBox(
          width: 56,
          height: 56,
          child: Center(child: iconBuilder()),
        ),
      ),
    );
  }

  Widget _buildItem(
    NavItem item,
    BuildContext context, {
    required bool hovered,
    required bool selected,
  }) {
    final theme = Theme.of(context).colorScheme;

    return DpadFocusable(
      onSelect: () => widget.onTabSelected(item.index),
      effects: const [
        DpadScaleEffect(scale: 1.12),
        DpadGlowEffect(borderRadius: BorderRadius.all(Radius.circular(24))),
      ],
      child: SizedBox(
        width: 64,
        height: 64,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected
                      ? theme.primary.withValues(alpha: .75)
                      : hovered
                      ? theme.primary.withValues(alpha: .10)
                      : Colors.transparent,
                ),
              ).animateNavSelection(selected: selected),

              Icon(
                item.icon,
                size: 24,
                color: selected
                    ? theme.surface
                    : hovered
                    ? theme.primary
                    : theme.onSurface.withValues(alpha: .72),
              ),
            ],
          ).animateNavItem(selected: selected, active: hovered),
        ),
      ),
    );
  }
}
