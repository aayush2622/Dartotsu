import 'package:flutter/cupertino.dart';

abstract interface class NavBarProvider {
  List<NavItem> get navBarItems;
}

class NavItem {
  final int index;
  final IconData icon;
  final String label;

  const NavItem({required this.index, required this.icon, required this.label});
}
