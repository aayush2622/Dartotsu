import 'package:blurbox/blurbox.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Theme/ThemeManager.dart';
import '../Theme/ThemeProvider.dart';
import 'HomeNavBar.dart';

class FloatingBottomNavBarMobile extends FloatingBottomNavBar {
  const FloatingBottomNavBarMobile({
    super.key,
    required super.selectedIndex,
    required super.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final theme = Theme.of(context).colorScheme;
    final navItems = context.currentService().navBarItem;

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
                child: ThemedWidget(
                  context: context,
                  materialWidget: Container(
                    width: 246.0,
                    height: 54.0,
                    decoration: BoxDecoration(
                      color:
                          themeNotifier.isDarkMode ? greyNavDark : greyNavLight,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  glassWidget: BlurBox(
                    blur: 12.0,
                    boxShadow: [
                      BoxShadow(
                        color: theme.surface.withOpacity(0.2),
                        blurRadius: 6.0,
                        spreadRadius: 0.5,
                      ),
                    ],
                    border: Border.all(
                      color: theme.onSurface.withOpacity(0.2),
                      width: 1.5,
                    ),
                    padding: const EdgeInsets.all(0),
                    color: theme.surface.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                      width: 246.0,
                      height: 54.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        alignment: Alignment.center,
        width: 80.0,
        height: 64.0,
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!isSelected) const SizedBox(height: 16.0),
            if (!isSelected)
              AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: isSelected ? 0.0 : 1.0,
                  child: Icon(
                    item.icon,
                    color: theme.onSurface.withOpacity(0.7),
                  )),
            if (isSelected) const SizedBox(height: 12.0),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isSelected ? 1.0 : 0.0,
              child: Text(
                item.label,
                style: TextStyle(
                  color: theme.primary,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                ),
              ),
            ),
            if (isSelected) const SizedBox(height: 9.0),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: isSelected ? 3.0 : 0.0,
              width: isSelected ? 18.0 : 0.0,
              color: theme.tertiary,
            ),
          ],
        ),
      ),
    );
  }
}
