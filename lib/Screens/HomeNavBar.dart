import 'package:flutter/cupertino.dart';

abstract class FloatingBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const FloatingBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  void onClick(int index) => onTabSelected(index);
}

class NavItem {
  final int index;
  final IconData icon;
  final String label;

  NavItem({
    required this.index,
    required this.icon,
    required this.label,
  });
}
