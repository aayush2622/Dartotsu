import '../../Utils/Animation/WidgetAnimations.dart';
import 'dart:async';

import 'package:flutter/material.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../Detail/Comments/Data/CommentAlerts.dart';
import '../../Core/Services/ActivityAlerts.dart';
import '../../Core/SourceAlerts/SourceSubscriptions.dart';
import '../../Logger.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Detail/Comments/Data/CommentModels.dart';
import '../Detail/Comments/Data/CommentsApi.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'NotificationOpen.dart';

class NotificationFeed {
  final MediaService service;
  final NotificationScreenView view;

  NotificationFeed(this.service, this.view);

  final items = <ServiceNotification>[].liveList;
  final loading = true.live;
  final loadingMore = false.live;
  final failed = false.live;
  final kind = Live<NotificationKind?>(null);
  var started = false;
  var _page = 1;
  var _hasMore = true;

  bool get hasMore => _hasMore;

  List<ServiceNotification> get visible {
    final picked = kind.value;
    if (picked == null) return items.toList();
    return [
      for (final n in items)
        if (n.kind == picked) n,
    ];
  }

  Future<void> load() async {
    started = true;
    loading.value = true;
    failed.value = false;
    _page = 1;
    _hasMore = true;
    try {
      items.value = await view.notifications();
      final auth = service.auth;
      if (auth != null) unawaited(auth.refreshUser());
    } catch (e) {
      logger(
        '${service.name} list failed: $e',
        logLevel: LogLevel.error,
        tag: 'NOTIFICATION',
      );
      failed.value = true;
    } finally {
      loading.value = false;
    }
  }

  Future<void> more() async {
    if (loadingMore.value || loading.value || !_hasMore) return;
    loadingMore.value = true;
    try {
      final next = await view.notifications(page: _page + 1);
      final known = {for (final n in items) n.id};
      final fresh = next.where((n) => !known.contains(n.id)).toList();
      if (fresh.isEmpty) {
        _hasMore = false;
      } else {
        items.addAll(fresh);
        _page++;
      }
    } catch (e, st) {
      logError('NotificationsState', e, st);
      _hasMore = false;
    } finally {
      loadingMore.value = false;
    }
  }

  void pick(NotificationKind? next) {
    kind.value = next;
    if (next != null && visible.isEmpty && _hasMore) unawaited(more());
  }
}

enum CommentNoticePhase { loading, ready, signedOut, disabled, failed }

class NotificationsState extends ScreenState {
  final MediaService initial;

  NotificationsState(this.initial);

  final section = 0.live;
  final serviceIndex = 0.live;
  final navLane = GlobalKey<DpadRegionState>();

  late final List<NotificationFeed> feeds = [
    for (final s in find<MediaServiceController>().services)
      if (s.notificationView != null && s.isLoggedIn)
        NotificationFeed(s, s.notificationView!),
  ];

  late final TabController tabs = TabController(
    length: feeds.isEmpty ? 1 : feeds.length,
    vsync: vsync,
    animationDuration: animDuration(300),
    initialIndex: _initialIndex,
  );

  int get _initialIndex {
    final i = feeds.indexWhere((f) => f.service.id == initial.id);
    return i < 0 ? 0 : i;
  }

  NotificationFeed? get feed =>
      feeds.isEmpty ? null : feeds[serviceIndex.value];

  final notices = <CommentNotice>[].liveList;
  final noticePhase = CommentNoticePhase.loading.live;
  final noticeFailure = Live<String?>(null);
  var _noticesLoaded = false;

  DiscordPresence get presence =>
      DiscordPresence.browsing('Checking notifications');

  @override
  void onInit() {
    serviceIndex.value = tabs.index;
    tabs.addListener(_tabChanged);
    final current = feed;
    if (current != null) unawaited(current.load());
  }

  @override
  void onClose() {
    tabs.removeListener(_tabChanged);
    tabs.dispose();
  }

  void _tabChanged() {
    if (tabs.indexIsChanging || serviceIndex.value == tabs.index) return;
    serviceIndex.value = tabs.index;
    final current = feed;
    if (current != null && !current.started) unawaited(current.load());
  }

  void selectSection(int index) {
    section.value = index;
    if (index == 1 && !_noticesLoaded) unawaited(loadNotices());
    if (index == 2) find<SourceSubscriptions>().markRead();
  }

  Future<void> refresh() async {
    if (section.value == 1) return loadNotices();
    if (section.value == 2) return;
    await feed?.load();
  }

  Future<void> loadNotices() async {
    _noticesLoaded = true;
    final api = find<CommentsApi>();
    if (!api.enabled) {
      noticePhase.value = CommentNoticePhase.disabled;
      return;
    }
    if (!api.hasToken) {
      noticePhase.value = CommentNoticePhase.signedOut;
      return;
    }
    noticePhase.value = CommentNoticePhase.loading;
    try {
      if (await api.ensureSession() == null) {
        noticePhase.value = CommentNoticePhase.signedOut;
        return;
      }
      notices.value = await find<CommentAlerts>().sync(notify: false);
      noticePhase.value = CommentNoticePhase.ready;
    } catch (e) {
      noticeFailure.value = '$e';
      noticePhase.value = CommentNoticePhase.failed;
    }
  }

  void openNotice(CommentNotice n) {
    if (!n.isReply && !n.isWarning) return;
    unawaited(find<CommentAlerts>().open('${n.mediaId}', n.commentId));
  }

  Future<void> sendTest() async {
    final from = feed;
    final service = from?.service ?? initial;
    final pool = from?.items.toList() ?? const <ServiceNotification>[];
    final sample = pool.firstWhere(
      (n) => n.imageUrl != null,
      orElse: () => pool.isEmpty ? _none : pool.first,
    );
    final sent = await find<ActivityAlerts>().sendTest(
      service,
      identical(sample, _none) ? null : sample,
    );
    snackString(
      sent
          ? getString.notificationsTestSent
          : getString.notificationsTestDenied,
    );
  }

  static final _none = ServiceNotification(
    id: '',
    text: '',
    createdAt: DateTime.fromMillisecondsSinceEpoch(0),
  );

  bool onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical && n.metrics.extentAfter < 500) {
      unawaited(feed?.more());
    }
    return false;
  }

  bool canOpen(ServiceNotification n) => canOpenNotification(n);

  void open(NotificationFeed from, ServiceNotification n) {
    final current = find<MediaServiceController>().currentService.value;
    if (from.service.id != current.id) {
      snackString(getString.notificationsOtherService(from.service.name));
      return;
    }
    openNotification(context, from.service, n);
  }

  List<(String, List<ServiceNotification>)> grouped(
    List<ServiceNotification> items,
  ) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final todayLabel = getString.calendarToday;
    final weekLabel = getString.thisWeek;
    final earlierLabel = getString.earlier;
    final buckets = <String, List<ServiceNotification>>{
      todayLabel: [],
      weekLabel: [],
      earlierLabel: [],
    };
    for (final n in items) {
      final d = today
          .difference(
            DateTime(n.createdAt.year, n.createdAt.month, n.createdAt.day),
          )
          .inDays;
      if (d <= 0) {
        buckets[todayLabel]!.add(n);
      } else if (d <= 7) {
        buckets[weekLabel]!.add(n);
      } else {
        buckets[earlierLabel]!.add(n);
      }
    }
    return [
      for (final e in buckets.entries)
        if (e.value.isNotEmpty) (e.key, e.value),
    ];
  }

  static String ago(DateTime time) {
    final d = DateTime.now().difference(time);
    if (d.inMinutes < 1) return getString.justNow.toLowerCase();
    if (d.inMinutes < 60) return getString.minutesAgoShort(d.inMinutes);
    if (d.inHours < 24) return getString.hoursAgoShort(d.inHours);
    if (d.inDays < 7) return getString.daysAgoShort(d.inDays);
    return getString.weeksAgoShort((d.inDays / 7).floor());
  }
}
