import 'package:dantotsu/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Theme/ThemeProvider.dart';

class FloatingBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const FloatingBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final bottomInset = MediaQuery.of(context).padding.bottom;
    // Define the navigation items
    final navItems = [
      _NavItem(index: 0, icon: Icons.movie_filter_rounded, label: 'ANIME'),
      _NavItem(index: 1, icon: Icons.home_rounded, label: 'HOME'),
      _NavItem(index: 2, icon: Icons.import_contacts, label: 'MANGA'),
    ];

    return Positioned(
      bottom: bottomInset + 32.0,
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
                child: Container(
                  width: 246.0,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color:
                        themeNotifier.isDarkMode ? greyNavDark : greyNavLight,
                    borderRadius: BorderRadius.circular(30.0),
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

  Widget _buildNavItem(_NavItem item, BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final isSelected = item.index == selectedIndex;

    return GestureDetector(
      onTap: () => onTabSelected(item.index),
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
                  color: theme.outline,
                ),
              ),
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

class _NavItem {
  final int index;
  final IconData icon;
  final String label;

  _NavItem({
    required this.index,
    required this.icon,
    required this.label,
  });
}
