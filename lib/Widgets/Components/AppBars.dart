import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Nav/DpadNav.dart';
import 'ThemedContainer.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AppBackButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        fixedSize: const Size(24, 24),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        foregroundColor: Colors.transparent,
      ),
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 18,
        color: context.colorScheme.primary,
      ),
      onPressed: onPressed ?? () => popPage(context),
    );
  }
}

class AppScreenTitle extends StatelessWidget {
  final String text;

  const AppScreenTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: context.colorScheme.primary,
      ),
    );
  }
}

class AppScreenBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final List<Widget> actions;
  final PreferredSizeWidget? bottom;
  final bool showBack;

  const AppScreenBar({
    super.key,
    this.title,
    this.titleWidget,
    this.actions = const [],
    this.bottom,
    this.showBack = true,
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      elevation: 0,
      titleSpacing: showBack ? 4 : null,
      leadingWidth: showBack ? 44 : null,
      leading: showBack ? const AppBackButton() : null,
      title: titleWidget ?? (title == null ? null : AppScreenTitle(title!)),
      iconTheme: IconThemeData(color: context.colorScheme.primary),
      actions: actions,
      bottom: bottom,
    );
  }
}

class AppSliverBar extends StatelessWidget {
  final String title;

  const AppSliverBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      titleSpacing: 4,
      leadingWidth: 44,
      leading: const Skeleton.keep(child: AppBackButton()),
      title: AppScreenTitle(title),
    );
  }
}

class AppTab extends StatelessWidget {
  final String label;
  final int? count;
  final Widget Function(Color color)? icon;
  final bool selected;
  final bool focused;

  const AppTab({
    super.key,
    required this.label,
    required this.selected,
    this.count,
    this.icon,
    this.focused = false,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final color = selected ? scheme.primary : scheme.onSurfaceVariant;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      child: ThemedContainer(
        color: focused
            ? scheme.secondaryContainer
            : selected
            ? scheme.surfaceContainerHigh
            : null,
        borderRadius: BorderRadius.circular(16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[icon!(color), const SizedBox(width: 8)],
            Text(
              label,
              style: context.textTheme.titleMedium?.copyWith(
                fontSize: 14,
                color: color,
              ),
            ),
            if (count != null) ...[
              const SizedBox(width: 8),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: selected
                      ? scheme.primary.withValues(alpha: 0.15)
                      : scheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  '$count',
                  style: context.textTheme.labelMedium?.copyWith(color: color),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController controller;
  final List<Widget> tabs;
  final void Function(bool focused, int index)? onFocusChange;
  final double inset;

  const AppTabBar({
    super.key,
    required this.controller,
    required this.tabs,
    this.onFocusChange,
    this.inset = 16,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight + 8);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final shown = [...tabs];
    if (shown.isNotEmpty) {
      shown[0] = Padding(
        padding: EdgeInsets.only(left: inset),
        child: shown[0],
      );
    }
    return TabBar(
      controller: controller,
      isScrollable: true,
      dividerColor: Colors.transparent,
      tabAlignment: TabAlignment.start,
      indicator: const BoxDecoration(),
      indicatorPadding: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      labelColor: scheme.primary,
      unselectedLabelColor: scheme.onSurfaceVariant,
      splashFactory: NoSplash.splashFactory,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onFocusChange: onFocusChange,
      tabs: shown,
    );
  }
}

class AppTabItem {
  final String label;
  final int? count;
  final Widget Function(Color color)? icon;

  const AppTabItem(this.label, {this.count, this.icon});
}

class AppTabs extends StatefulWidget implements PreferredSizeWidget {
  final TabController controller;
  final List<AppTabItem> items;

  const AppTabs({super.key, required this.controller, required this.items});

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight + 8);

  @override
  State<AppTabs> createState() => _AppTabsState();
}

class _AppTabsState extends State<AppTabs> {
  int? _focused;

  void _onFocus(bool focused, int index) {
    final next = focused ? index : (_focused == index ? null : _focused);
    if (next != _focused) setState(() => _focused = next);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (_, _) => AppTabBar(
        controller: widget.controller,
        onFocusChange: _onFocus,
        tabs: [
          for (final (i, item) in widget.items.indexed)
            AppTab(
              label: item.label,
              count: item.count,
              icon: item.icon,
              selected: widget.controller.index == i,
              focused: kFocused(_focused == i),
            ),
        ],
      ),
    );
  }
}
