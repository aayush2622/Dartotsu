import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/State/State.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import 'ThemedContainer.dart';
import '../../Utils/Functions/AppShortcuts.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Nav/DpadLayers.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AppBackButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Watch(() {
      usingKeyboard;
      return _button(context);
    });
  }

  Widget _button(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        fixedSize: const Size(32, 32),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
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
    return DpadRow(
      child: AppBar(
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
      ),
    );
  }
}

class AppSliverBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;

  const AppSliverBar({super.key, required this.title, this.actions = const []});

  static const double _expanded = 112;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final toolbar = kToolbarHeight + MediaQuery.paddingOf(context).top;
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      elevation: 0,
      expandedHeight: _expanded + MediaQuery.paddingOf(context).top,
      titleSpacing: 4,
      leadingWidth: 44,
      leading: const Skeleton.keep(child: AppBackButton()),
      title: const SizedBox.shrink(),
      iconTheme: IconThemeData(color: scheme.primary),
      actionsIconTheme: IconThemeData(color: scheme.primary),
      actions: [for (final a in actions) Skeleton.keep(child: a)],
      flexibleSpace: LayoutBuilder(
        builder: (context, box) {
          final open =
              ((box.maxHeight - toolbar) / (_expanded - kToolbarHeight)).clamp(
                0.0,
                1.0,
              );
          final collapsed = 1 - open;
          final smallTitle = ((0.4 - open) / 0.4).clamp(0.0, 1.0);
          final largeTitle = ((open - 0.4) / 0.6).clamp(0.0, 1.0);
          return Stack(
            fit: StackFit.expand,
            children: [
              Opacity(
                opacity: collapsed,
                child: find<ThemeController>().useGlassMode.value
                    ? const ThemedContainer(
                        blur: true,
                        borderRadius: BorderRadius.zero,
                        border: Border(),
                        padding: EdgeInsets.zero,
                        child: SizedBox.expand(),
                      )
                    : ColoredBox(color: scheme.surface),
              ),
              PositionedDirectional(
                start: 44,
                end: 56,
                top: MediaQuery.paddingOf(context).top,
                height: kToolbarHeight,
                child: Opacity(
                  opacity: smallTitle,
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: AppScreenTitle(title),
                  ),
                ),
              ),
              PositionedDirectional(
                start: 16,
                end: 16,
                bottom: 16,
                child: Opacity(
                  opacity: largeTitle,
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.headlineSmall?.copyWith(
                      color: scheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
