import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../Feed/FeedNavigation.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../MediaList/MediaListScreen.dart';
import '../Social/SocialNavigation.dart';
import 'Components/AccountSheet.dart';
import 'Components/HeaderAvatar.dart';
import 'Components/HeaderBanner.dart';
import 'Components/HeaderStatPill.dart';
import 'Components/IncognitoBadge.dart';

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
            Positioned.fill(child: HeaderBanner(url: banner)),
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
                        greeting,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Obx(
                        () => PrefName.incognito.rx.value
                            ? Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: IncognitoBadge(
                                  onTap: () =>
                                      showAccountSheet(context, _controller),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
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
                  onLongPress: user == null || service.socialView == null
                      ? null
                      : () {
                          unawaited(HapticFeedback.mediumImpact());
                          openProfile(context, service, id: '${user.id}');
                        },
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
                      onLongPress: service.socialView == null
                          ? null
                          : () => openProfile(
                              context,
                              service,
                              id: '${user.id}',
                              tab: 2,
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
                      onLongPress: service.socialView == null
                          ? null
                          : () => openProfile(
                              context,
                              service,
                              id: '${user.id}',
                              tab: 2,
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
}
