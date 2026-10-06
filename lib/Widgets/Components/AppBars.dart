import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';

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
