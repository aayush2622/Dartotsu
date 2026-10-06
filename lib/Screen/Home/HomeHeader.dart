import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../Feed/FeedNavigation.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../MediaList/MediaListScreen.dart';
import 'Components/AccountSheet.dart';
import 'Components/BellButton.dart';
import 'Components/HeaderAvatar.dart';
import 'Components/HeaderStatPill.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  MediaServiceController get _controller => find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final service = _controller.currentService.value;
      final user = service.auth?.user.value;
      final glass = find<ThemeController>().useGlassMode.value;
      final banner = glass ? null : user?.banner;
      return Stack(
        children: [
          if (banner != null && banner.isNotEmpty)
            Positioned.fill(child: _HeaderBanner(url: banner)),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: banner == null ? 0 : 176),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 22, 16, 6),
              child: _content(context, service, user),
            ),
          ),
        ],
      );
    });
  }

  Widget _content(
    BuildContext context,
    MediaService service,
    ServiceUser? user,
  ) {
    final greeting = user?.name ?? 'Welcome';
    return Builder(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _timeGreeting(),
                        style: context.textTheme.labelMedium?.copyWith(
                          color: context.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        greeting,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                if (user != null && service.notificationView != null)
                  BellButton(
                    unread: user.unreadNotifications,
                    onOpen: () => openNotifications(context, service),
                  ),
                if (service.searchView != null)
                  IconButton(
                    icon: const Icon(Icons.search_rounded),
                    onPressed: () => openSearch(context, service),
                  ),
                const SizedBox(width: 6),
                HeaderAvatar(
                  url: user?.avatar,
                  onTap: () => showAccountSheet(context, _controller),
                ),
              ],
            ),
            if (user != null && (user.episodesWatched + user.chaptersRead) > 0)
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 8),
                child: Row(
                  children: [
                    HeaderStatPill(
                      icon: Icons.smart_display_rounded,
                      label: '${user.episodesWatched} ep',
                      onTap: () => navigateToPage(
                        context,
                        MediaListScreen(service: service, anime: true),
                      ),
                    ),
                    const SizedBox(width: 8),
                    HeaderStatPill(
                      icon: Icons.menu_book_rounded,
                      label: '${user.chaptersRead} ch',
                      onTap: () => navigateToPage(
                        context,
                        MediaListScreen(service: service, anime: false),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }

  static String _timeGreeting() {
    final h = DateTime.now().hour;
    if (h < 12) return 'Good morning';
    if (h < 18) return 'Good afternoon';
    return 'Good evening';
  }
}

class _HeaderBanner extends StatelessWidget {
  final String url;

  const _HeaderBanner({required this.url});

  @override
  Widget build(BuildContext context) {
    final surface = context.colorScheme.surface;
    return ClipRect(
      child: Stack(
        fit: StackFit.expand,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: cachedNetworkImage(imageUrl: url, fit: BoxFit.cover),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [surface.withValues(alpha: 0.25), surface],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
