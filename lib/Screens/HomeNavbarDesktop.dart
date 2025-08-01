import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Widgets/CachedNetworkImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Services/ServiceSwitcher.dart';
import '../Widgets/CustomBottomDialog.dart';
import '../Widgets/LoadSvg.dart';
import 'HomeNavBar.dart';
import 'Settings/SettingsBottomSheet.dart';

class FloatingBottomNavBarDesktop extends FloatingBottomNavBar {
  const FloatingBottomNavBarDesktop({
    super.key,
    required super.selectedIndex,
    required super.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final service = context.currentService();
    final navItems = service.navBarItem;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: theme.surface.withOpacity(0.2),
            borderRadius: BorderRadius.circular(48),
            border: Border.all(color: theme.outline, width: 1.2),
            boxShadow: [
              BoxShadow(
                color: theme.primary.withOpacity(0.09),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _navButton(
                context: context,
                onTap: () => serviceSwitcher(context),
                iconBuilder: () => Obx(() {
                  final avatar = service.data.avatar.value;
                  return CircleAvatar(
                    radius: 26.0,
                    backgroundImage: avatar.isNotEmpty
                        ? CachedNetworkImageProvider(avatar)
                        : null,
                    backgroundColor: Colors.transparent,
                    child: avatar.isEmpty
                        ? loadSvg(
                            service.iconPath,
                            width: 28.0,
                            height: 26.0,
                            color: theme.onSurface,
                          )
                        : null,
                  );
                }),
              ),
              ...navItems.map((item) => _buildNavItem(item, context)),
              _navButton(
                context: context,
                onTap: () => showCustomBottomDialog(
                  context,
                  const SettingsBottomSheet(),
                ),
                iconBuilder: () =>
                    Icon(Icons.settings, size: 28.0, color: theme.onSurface),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navButton({
    required BuildContext context,
    required VoidCallback onTap,
    required Widget Function() iconBuilder,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 52,
        height: 52,
        child: Center(
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 26,
            child: iconBuilder(),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(NavItem item, BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final isSelected = item.index == selectedIndex;

    return GestureDetector(
      onTap: () => onTabSelected(item.index),
      behavior: HitTestBehavior.translucent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 80,
        height: 64,
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected
                ? theme.primary.withOpacity(0.7)
                : Colors.transparent,
          ),
          child: Icon(
            item.icon,
            color: isSelected ? theme.surface : theme.onSurface,
          ),
        ),
      ),
    );
  }
}
