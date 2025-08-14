import 'package:blurbox/blurbox.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Theme/ThemeManager.dart';
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

    final borderColor = theme.onSurface.withOpacity(0.2);
    final surfaceColor = theme.surface.withOpacity(0.2);
    final primaryShadowColor = theme.primary.withOpacity(0.09);
    const verticalPadding = EdgeInsets.symmetric(vertical: 10);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: ThemedWidget(
          context: context,
          materialWidget: Container(
            padding: verticalPadding,
            decoration: BoxDecoration(
              color: theme.surfaceContainerLow,
              border: Border.all(
                color: theme.outlineVariant,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(48),
              boxShadow: [
                BoxShadow(
                  color: theme.shadow.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: _buildNavBar(context),
          ),
          glassWidget: BlurBox(
            blur: 12.0,
            boxShadow: [
              BoxShadow(
                color: surfaceColor,
                blurRadius: 6.0,
                spreadRadius: 0.5,
              ),
            ],
            border: Border.all(color: borderColor, width: 1.5),
            padding: verticalPadding,
            color: surfaceColor,
            borderRadius: BorderRadius.circular(48),
            child: _buildNavBar(context),
          ),
        ),
      ),
    );
  }

  Widget _buildNavBar(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final service = context.currentService();
    final navItems = service.navBarItem;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _navButton(
          context: context,
          onTap: () => serviceSwitcher(context),
          iconBuilder: () => Obx(() {
            final avatar = service.data.avatar.value;
            return CircleAvatar(
              radius: 26.0,
              backgroundImage:
                  avatar.isNotEmpty ? CachedNetworkImageProvider(avatar) : null,
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
          onTap: () =>
              showCustomBottomDialog(context, const SettingsBottomSheet()),
          iconBuilder: () => Icon(
            Icons.settings,
            size: 28.0,
            color: theme.onSurface.withOpacity(0.7),
          ),
        ),
      ],
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
            color:
                isSelected ? theme.surface : theme.onSurface.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}
