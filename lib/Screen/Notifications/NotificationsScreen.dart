import '../../Utils/Nav/DpadNav.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../Detail/DetailScreen.dart';
import '../Social/SocialNavigation.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/State/State.dart';

class NotificationsScreen extends StatefulWidget {
  final NotificationScreenView view;
  const NotificationsScreen({super.key, required this.view});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends BaseScreen<NotificationsScreen> {
  final _items = <ServiceNotification>[].liveList;
  final _loading = true.live;

  @override
  void initState() {
    super.initState();
    _load();
  }

  var _page = 1;
  var _hasMore = true;
  final _loadingMore = false.live;

  Future<void> _more() async {
    if (_loadingMore.value || _loading.value || !_hasMore) return;
    _loadingMore.value = true;
    try {
      final next = await widget.view.notifications(page: _page + 1);
      final known = {for (final n in _items) n.id};
      final fresh = next.where((n) => !known.contains(n.id)).toList();
      if (fresh.isEmpty) {
        _hasMore = false;
      } else {
        _items.addAll(fresh);
        _page++;
      }
    } catch (_) {
      _hasMore = false;
    } finally {
      _loadingMore.value = false;
    }
  }

  bool _onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical && n.metrics.extentAfter < 500) {
      unawaited(_more());
    }
    return false;
  }

  Future<void> _load() async {
    _loading.value = true;
    _page = 1;
    _hasMore = true;
    try {
      _items.value = await widget.view.notifications();
      final auth = find<MediaServiceController>().currentService.value.auth;
      if (auth != null) unawaited(auth.refreshUser());
    } catch (_) {
    } finally {
      _loading.value = false;
    }
  }

  @override
  DiscordPresence? get presence =>
      DiscordPresence.browsing('Checking notifications');

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const AppScreenBar(title: 'Notifications'),
      body: RefreshIndicator(
        onRefresh: _load,
        child: Watch(() {
          if (_loading.value && _items.isEmpty) return _skeleton();
          if (_items.isEmpty) {
            return const EmptyState(
              icon: Icons.notifications_off_rounded,
              title: 'Nothing new',
            );
          }
          return NotificationListener<ScrollNotification>(
            onNotification: _onScroll,
            child: ScrollConfig(
              context,
              child: ListView(
                padding: EdgeInsets.fromLTRB(
                  Dimens.gap,
                  Dimens.gapXs,
                  Dimens.gap,
                  Dimens.gapXl,
                ),
                children: [
                  for (final group in _grouped()) ...[
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        Dimens.gapSm,
                        Dimens.gap,
                        Dimens.gapSm,
                        Dimens.gapSm,
                      ),
                      child: Text(
                        group.$1,
                        style: context.textTheme.labelLarge?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                    ),
                    for (final n in group.$2) _row(n),
                  ],
                  if (_loadingMore.value)
                    const Padding(
                      padding: EdgeInsets.all(24),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _row(ServiceNotification n) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.gapXs),
      child: SectionCard(
        padding: EdgeInsets.zero,
        child: Material(
          color: Colors.transparent,
          borderRadius: Dimens.border,
          clipBehavior: Clip.antiAlias,
          child: DpadTap(
            borderRadius: Dimens.border,
            onTap: n.mediaId == null && n.activityId == null && n.userId == null
                ? null
                : () => _open(n),
            child: Padding(
              padding: EdgeInsets.all(Dimens.gapSm + 2),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 44,
                      height: 58,
                      child: n.imageUrl == null
                          ? ColoredBox(
                              color: scheme.surfaceContainerHighest,
                              child: Icon(
                                Icons.notifications_rounded,
                                color: scheme.onSurfaceVariant,
                                size: 20,
                              ),
                            )
                          : cachedNetworkImage(
                              imageUrl: n.imageUrl,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          n.text,
                          style: context.textTheme.bodyMedium,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _ago(n.createdAt),
                          style: context.textTheme.labelSmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (n.mediaId != null)
                    Icon(
                      Icons.chevron_right_rounded,
                      color: scheme.onSurfaceVariant,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _open(ServiceNotification n) {
    final service = find<MediaServiceController>().currentService.value;
    if (n.mediaId == null) {
      if (n.activityId != null) {
        return openActivityFeed(context, service, activityId: n.activityId);
      }
      if (n.userId != null) {
        return openProfile(context, service, id: n.userId);
      }
      return;
    }
    navigateToPage(
      context,
      DetailScreen(
        media: Media(
          id: n.mediaId!,
          cover: n.imageUrl,
          shareLink: 'https://anilist.co/anime/${n.mediaId}',
        ),
        view: service.detailView,
        mutations: service.getMutations,
      ),
      hero: true,
    );
  }

  Widget _skeleton() => Skeletonizer(
    child: ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
      itemCount: 8,
      itemBuilder: (_, i) => _row(
        ServiceNotification(
          id: '$i',
          text: 'A new episode of something has just aired somewhere',
          createdAt: DateTime.now(),
        ),
      ),
    ),
  );

  List<(String, List<ServiceNotification>)> _grouped() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final buckets = <String, List<ServiceNotification>>{
      'Today': [],
      'This week': [],
      'Earlier': [],
    };
    for (final n in _items) {
      final d = today
          .difference(
            DateTime(n.createdAt.year, n.createdAt.month, n.createdAt.day),
          )
          .inDays;
      if (d <= 0) {
        buckets['Today']!.add(n);
      } else if (d <= 7) {
        buckets['This week']!.add(n);
      } else {
        buckets['Earlier']!.add(n);
      }
    }
    return [
      for (final e in buckets.entries)
        if (e.value.isNotEmpty) (e.key, e.value),
    ];
  }

  static String _ago(DateTime time) {
    final d = DateTime.now().difference(time);
    if (d.inMinutes < 1) return 'just now';
    if (d.inMinutes < 60) return '${d.inMinutes}m ago';
    if (d.inHours < 24) return '${d.inHours}h ago';
    if (d.inDays < 7) return '${d.inDays}d ago';
    return '${(d.inDays / 7).floor()}w ago';
  }
}
