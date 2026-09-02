import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../Feed/FeedNavigation.dart';
import 'Components/AccountSheet.dart';
import 'Components/BellButton.dart';
import 'Components/HeaderAvatar.dart';
import 'Components/HeaderStatPill.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  MediaServiceController get _controller => find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 22, 16, 6),
      child: Obx(() {
        final service = _controller.currentService.value;
        final user = service.auth?.user.value;
        final greeting = user?.name ?? 'Welcome';

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
                IconButton(
                  icon: const Icon(Icons.search_rounded),
                  onPressed: () => openSearch(context, service, anime: true),
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
                    ),
                    const SizedBox(width: 8),
                    HeaderStatPill(
                      icon: Icons.menu_book_rounded,
                      label: '${user.chaptersRead} ch',
                    ),
                  ],
                ),
              ),
          ],
        );
      }),
    );
  }

  static String _timeGreeting() {
    final h = DateTime.now().hour;
    if (h < 12) return 'Good morning';
    if (h < 18) return 'Good afternoon';
    return 'Good evening';
  }
}
