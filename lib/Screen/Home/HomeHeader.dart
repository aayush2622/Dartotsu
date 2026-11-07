import '../../Core/Offline/OfflineMode.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Downloads/DownloadsScreen.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../Feed/FeedNavigation.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../MediaList/MediaListScreen.dart';
import '../Social/SocialNavigation.dart';
import 'Components/AccountSheet.dart';
import 'Components/HeaderAvatar.dart';
import 'Components/HeaderBanner.dart';
import 'Components/HeaderStatPill.dart';
import 'Components/IncognitoBadge.dart';
import '../../Core/State/State.dart';
import '../../Utils/Nav/DpadLayers.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  MediaServiceController get _controller => find();

  @override
  Widget build(BuildContext context) {
    return Watch(() {
      final service = _controller.currentService.value;
      final user = service.auth?.user.value;
      final glass = find<ThemeController>().useGlassMode.value;
      final banner = glass ? null : user?.banner;
      return Stack(
        children: [
          if (banner != null && banner.isNotEmpty)
            Positioned.fill(child: HeaderBanner(url: banner)),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: banner == null
                  ? 0
                  : 136 + MediaQuery.paddingOf(context).top,
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                24,
                22 + MediaQuery.paddingOf(context).top,
                16,
                6,
              ),
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
            DpadRow(
              child: Row(
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
                        Watch(
                          () => find<OfflineMode>().isOffline.value
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: ActionChip(
                                    avatar: const Icon(
                                      Icons.cloud_off_rounded,
                                      size: 18,
                                    ),
                                    label: Text(getString.offlineModeChip),
                                    onPressed: () => navigateToPage(
                                      context,
                                      const DownloadsScreen(),
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),
                        Watch(
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
                    badge: user?.unreadNotifications ?? 0,
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
            ),
            if (user != null &&
                ((service.hasVideo ? user.episodesWatched : 0) +
                        (service.hasReading ? user.chaptersRead : 0)) >
                    0)
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 10, end: 8),
                child: Row(
                  children: [
                    if (service.hasVideo)
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
                    if (service.hasVideo && service.hasReading)
                      const SizedBox(width: 6),
                    if (service.hasReading)
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
