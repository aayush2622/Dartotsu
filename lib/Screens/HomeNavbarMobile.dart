import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../Theme/ThemeManager.dart';
import 'HomeNavBar.dart';

class FloatingBottomNavBarMobile extends FloatingBottomNavBar {
  const FloatingBottomNavBarMobile({
    super.key,
    required super.selectedIndex,
    required super.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final navItems = context.currentService().navBarItem;
    ThemedContainer(
      context: context,
      borderRadius: BorderRadius.circular(30.0),
      padding: const EdgeInsets.all(0),
      child: const SizedBox(
        width: 246.0,
        height: 54.0,
      ),
    );
    return Positioned(
      bottom: 32.bottomBar(),
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 64.0,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.center,
                child: ThemedContainer(
                  context: context,
                  borderRadius: BorderRadius.circular(30.0),
                  padding: const EdgeInsets.all(0),
                  child: const SizedBox(
                    width: 246.0,
                    height: 54.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: navItems
                      .map((item) => _buildNavItem(item, context))
                      .toList(),
                ),
              ),
            ],
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
      child: SizedBox(
        width: 80.0,
        height: 64.0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Icon
            Icon(
              item.icon,
              color: theme.onSurface.withOpacity(0.7),
            )
                .animate(target: isSelected ? 0 : 1)
                .fade(duration: 300.ms)
                .slideY(begin: -0.5, end: 0, duration: 300.ms),

            // Label
            Text(
              item.label,
              style: TextStyle(
                color: theme.primary,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 14,
              ),
            )
                .animate(target: isSelected ? 1 : 0)
                .fade(duration: 300.ms)
                .slideY(begin: 0.9, end: 0.1, duration: 300.ms),

            // Underline indicator
            if (isSelected)
              Positioned(
                bottom: 6,
                child: Container(
                  height: 3.0,
                  width: 18.0,
                  color: theme.tertiary,
                ).animate().fade(duration: 300.ms).scale(
                      begin: const Offset(0.5, 1),
                      end: const Offset(1, 1),
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
