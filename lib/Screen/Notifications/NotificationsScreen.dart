import '../Social/SocialNavigation.dart';
import '../../Widgets/Components/AppControls.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../Detail/Comments/Data/CommentModels.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/NotificationKindInfo.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppTabs.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/Clickable.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../Navbar.dart';
import '../../Core/SourceAlerts/SourceAlerts.dart';
import '../../Core/SourceAlerts/SourceSub.dart';
import '../../Core/SourceAlerts/SourceSubscriptions.dart';
import 'Components/NotificationTile.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import 'NotificationSettingsScreen.dart';
import 'NotificationsState.dart';

class NotificationsScreen extends StatefulWidget {
  final MediaService service;
  const NotificationsScreen({super.key, required this.service});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends BaseScreen<NotificationsScreen>
    with
        SingleTickerProviderStateMixin,
        ScreenStateHost<NotificationsScreen, NotificationsState> {
  @override
  NotificationsState buildState() => NotificationsState(widget.service);

  @override
  DiscordPresence? get presence => state.presence;

  @override
  Widget buildContent(BuildContext context) {
    final section = state.section.value;
    final hasTabs = section == 0 && state.feeds.isNotEmpty;
    final content = Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: getString.notifications,
        actions: [
          Clickable(
            press: false,
            onLongPress: () => unawaited(state.sendTest()),
            child: IconButton(
              tooltip:
                  '${getString.notificationsSettings}\n${getString.notificationsTestHint}',
              icon: const Icon(Icons.tune_rounded),
              onPressed: () =>
                  navigateToPage(context, const NotificationSettingsScreen()),
            ),
          ),
        ],
        bottom: hasTabs
            ? AppTabs(
                controller: state.tabs,
                items: [
                  for (final f in state.feeds) AppTabItem(f.service.name),
                ],
              )
            : null,
      ),
      body: RefreshIndicator(
        onRefresh: state.refresh,
        child: AppSwitcher(
          child: KeyedSubtree(
            key: ValueKey(section),
            child: switch (section) {
              1 => _notices(context),
              2 => _sources(context),
              _ => _service(context),
            },
          ),
        ),
      ),
    );

    final nav = Watch(
      () => FloatingBottomNavBar(
        standalone: true,
        laneKey: state.navLane,
        selectedIndex: state.section.value,
        onTabSelected: state.selectSection,
        items: [
          NavItem(
            index: 0,
            icon: Icons.notifications_rounded,
            label: (state.feed?.service.name ?? getString.notifications)
                .toUpperCase(),
          ),
          NavItem(
            index: 1,
            icon: Icons.chat_bubble_rounded,
            label: getString.navComments,
          ),
          NavItem(
            index: 2,
            icon: Icons.bookmark_added_rounded,
            label: getString.navSources,
          ),
        ],
      ),
    );

    return FloatingNavLayout(nav: nav, content: content);
  }

  EdgeInsets get _padding => EdgeInsets.fromLTRB(
    Dimens.gap,
    Dimens.gapXs,
    Dimens.gap,
    context.isPhone ? 120.bottomBar() : Dimens.gapXl,
  );

  Widget _service(BuildContext context) => Watch(() {
    final feed = state.feed;
    if (feed == null) {
      return EmptyState(
        icon: Icons.notifications_off_rounded,
        title: getString.notificationsNoServices,
        message: getString.notificationsNoServicesMessage,
      );
    }
    return _feed(context, feed);
  });

  Widget _feed(BuildContext context, NotificationFeed feed) {
    final kind = feed.kind.value;
    final loading = feed.loading.value;
    final items = feed.visible;
    final kinds = feed.view.kinds;
    final header = kinds.isEmpty
        ? null
        : Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.gap,
              Dimens.gapXs,
              Dimens.gap,
              Dimens.gapSm,
            ),
            child: AppChoiceChips<NotificationKind?>(
              scrollable: true,
              value: kind,
              onChanged: feed.pick,
              options: [
                for (final k in [null, ...kinds])
                  AppSegment<NotificationKind?>(
                    k,
                    label: k.label,
                    icon: k.icon,
                  ),
              ],
            ),
          );
    Widget body;
    if (loading && feed.items.isEmpty) {
      body = _skeleton(feed);
    } else if (items.isEmpty) {
      body = ScrollConfig(
        context,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 320,
              child: feed.loadingMore.value
                  ? const Center(child: CircularProgressIndicator())
                  : feed.failed.value
                  ? EmptyState(
                      icon: Icons.cloud_off_rounded,
                      title: getString.couldNotLoadResults,
                      failed: true,
                      onAction: () => unawaited(feed.load()),
                    )
                  : EmptyState(
                      icon: Icons.notifications_off_rounded,
                      title: kind == null
                          ? getString.nothingNew
                          : getString.notificationsEmptyKind,
                    ),
            ),
          ],
        ),
      );
    } else {
      final grouped = state.grouped(items);
      var shown = 0;
      final rows = <Widget Function()>[
        for (final group in grouped) ...[
          () => Padding(
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
          for (final n in group.$2) _tileAt(feed, n, shown++),
        ],
        if (feed.loadingMore.value)
          () => Padding(
            padding: EdgeInsets.all(Dimens.gapLg),
            child: const Center(child: CircularProgressIndicator()),
          ),
      ];
      body = NotificationListener<ScrollNotification>(
        onNotification: state.onScroll,
        child: ScrollConfig(
          context,
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: _padding,
            itemCount: rows.length,
            itemBuilder: (_, i) => rows[i](),
          ),
        ),
      );
    }
    return Column(
      children: [
        ?header,
        Expanded(
          child: AppSwitcher(
            child: KeyedSubtree(
              key: ValueKey(
                '${feed.service.id}/${kind?.name}/${loading && feed.items.isEmpty
                    ? 's'
                    : items.isEmpty
                    ? 'e'
                    : 'l'}',
              ),
              child: body,
            ),
          ),
        ),
      ],
    );
  }

  Widget Function() _tileAt(
    NotificationFeed feed,
    ServiceNotification n,
    int index,
  ) =>
      () => _tile(feed, n, index);

  Widget _tile(NotificationFeed feed, ServiceNotification n, int index) {
    final tile = NotificationTile(
      key: ValueKey('${feed.service.id}/${n.kind.name}/${n.id}'),
      item: n,
      icon: n.kind.icon,
      onTap: state.canOpen(n) ? () => state.open(feed, n) : null,
      onImageTap: n.userId == null
          ? null
          : () => openProfile(context, feed.service, id: n.userId),
    );
    return index < 12 ? tile.animateStagger(index) : tile;
  }

  Widget _skeleton(NotificationFeed feed) => Skeletonizer(
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: _padding,
      itemCount: 8,
      itemBuilder: (_, i) => NotificationTile(
        item: ServiceNotification(
          id: '$i',
          text: 'A new episode of something has just aired somewhere',
          createdAt: DateTime.now(),
        ),
        icon: Icons.notifications_rounded,
        onTap: () {},
      ),
    ),
  );

  Widget _sources(BuildContext context) => Watch(() {
    final store = find<SourceSubscriptions>();
    final notices = store.notices.toList();
    if (notices.isEmpty) {
      return ScrollConfig(
        context,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 320,
              child: EmptyState(
                icon: Icons.notifications_none_rounded,
                title: getString.sourceNoticesEmpty,
                message: getString.sourceNoticesEmptyMessage,
              ),
            ),
          ],
        ),
      );
    }
    return ScrollConfig(
      context,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: _padding,
        itemCount: notices.length,
        itemBuilder: (_, i) => _sourceNotice(store, notices[i], i),
      ),
    );
  });

  Widget _sourceNotice(SourceSubscriptions store, SourceNotice n, int index) {
    final sub = store.byKey(n.subKey);
    final tile = NotificationTile(
      key: ValueKey('source${n.id}'),
      item: ServiceNotification(
        id: n.id,
        text: '${n.title}\n${n.body}',
        imageUrl: n.cover,
        createdAt: DateTime.fromMillisecondsSinceEpoch(n.at),
      ),
      icon: Icons.notifications_active_rounded,
      onTap: sub == null ? null : () => find<SourceAlerts>().openSub(sub),
    );
    return index < 12 ? tile.animateStagger(index) : tile;
  }

  Widget _notices(BuildContext context) => Watch(() {
    final phase = state.noticePhase.value;
    final items = state.notices.toList();
    switch (phase) {
      case CommentNoticePhase.loading:
        return Skeletonizer(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: _padding,
            itemCount: 6,
            itemBuilder: (_, i) => NotificationTile(
              item: ServiceNotification(
                id: '$i',
                text: 'Someone replied to your comment on a title',
                createdAt: DateTime.now(),
              ),
              icon: Icons.reply_rounded,
              onTap: () {},
            ),
          ),
        );
      case CommentNoticePhase.signedOut:
        return EmptyState(
          icon: Icons.lock_outline_rounded,
          title: getString.commentsSignIn,
          message: getString.commentsSignInMessage,
        );
      case CommentNoticePhase.disabled:
        return EmptyState(
          icon: Icons.comments_disabled_rounded,
          title: getString.commentsDisabled,
          message: getString.commentsDisabledMessage,
        );
      case CommentNoticePhase.failed:
        return EmptyState(
          icon: Icons.cloud_off_rounded,
          failed: true,
          title: getString.commentsOffline,
          message: state.noticeFailure.value,
          actionLabel: getString.retry,
          onAction: state.loadNotices,
        );
      case CommentNoticePhase.ready:
        if (items.isEmpty) {
          return EmptyState(
            icon: Icons.chat_bubble_outline_rounded,
            title: getString.notificationsCommentsEmpty,
            message: getString.notificationsCommentsEmptyMessage,
          );
        }
        return ScrollConfig(
          context,
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: _padding,
            itemCount: items.length,
            itemBuilder: (_, i) => _notice(items[i], i),
          ),
        );
    }
  });

  Widget _notice(CommentNotice n, int index) {
    final media = n.mediaTitle;
    final (text, icon) = n.isWarning
        ? (n.content ?? getString.commentsNoticeWarning, Icons.warning_rounded)
        : n.isAnnouncement
        ? (n.content ?? '', Icons.campaign_rounded)
        : (
            media == null || media.isEmpty
                ? getString.commentsNoticeReply(n.username)
                : getString.commentsNoticeReplyIn(n.username, media),
            Icons.reply_rounded,
          );
    final tile = NotificationTile(
      key: ValueKey('notice${n.key}'),
      item: ServiceNotification(
        id: n.key,
        text: text,
        imageUrl: n.cover,
        createdAt: DateTime.fromMillisecondsSinceEpoch(n.receivedAt),
      ),
      icon: icon,
      showTime: n.receivedAt > 0,
      onTap: n.isReply || n.isWarning ? () => state.openNotice(n) : null,
    );
    return index < 12 ? tile.animateStagger(index) : tile;
  }
}
