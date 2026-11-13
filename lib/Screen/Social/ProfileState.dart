import '../../Logger.dart';
import '../../Utils/Animation/WidgetAnimations.dart';

import 'dart:async';

import 'package:flutter/material.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/Services/MediaService.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../MediaList/MediaListScreen.dart';
import 'Components/ProfileHeader.dart';
import 'SocialNavigation.dart';

class ProfileState extends ScreenState {
  final MediaService service;
  final String? id;
  final String? name;
  final UserBrief? seedArg;
  final int initialTab;
  final VoidCallback? onPresenceChanged;

  ProfileState({
    required this.service,
    this.id,
    this.name,
    this.seedArg,
    this.initialTab = 0,
    this.onPresenceChanged,
  });

  late final bool hasActivity = service.socialView!.hasActivity;
  late final tab = (hasActivity ? initialTab : (initialTab > 1 ? 1 : 0)).live;
  final navLane = GlobalKey<DpadRegionState>();
  final user = Live<SocialUser?>(null);
  final followBusy = false.live;
  final failed = false.live;
  final scroll = ScrollController();
  Timer? _snapTimer;
  StreamSubscription<SocialUser?>? _userSub;
  Future<SocialProfile?> bundle = Future.value();
  Future<SocialProfile?>? _cachedBundle;
  final bundleVersion = 0.live;

  SocialScreenView get view => service.socialView!;

  late final UserBrief seed =
      seedArg ?? UserBrief(id: id ?? '', name: name ?? '');

  String? get requestedId => id ?? (seed.id.isEmpty ? null : seed.id);

  String get userId => user.value?.id ?? id ?? seed.id;

  String? get glassBackgroundUrl =>
      user.value?.banner ?? seed.banner ?? user.value?.avatar ?? seed.avatar;

  bool get isSelf {
    final current = userId;
    return current.isNotEmpty && current == view.currentUserId;
  }

  DiscordPresence get presence => DiscordPresence.browsing(
    'Viewing a profile',
    state: user.value?.name ?? name,
  );

  @override
  void onInit() {
    scroll.addListener(_scheduleSnap);
    _userSub = user.stream.listen((_) => onPresenceChanged?.call());
    final key = requestedId;
    final cached = key == null ? null : view.cachedProfile(key);
    if (cached != null) {
      user.value = cached.user;
      _cachedBundle = Future.value(cached);
    }
    unawaited(load());
  }

  @override
  void onClose() {
    _snapTimer?.cancel();
    unawaited(_userSub?.cancel());
    scroll.dispose();
  }

  void _scheduleSnap() {
    _snapTimer?.cancel();
    _snapTimer = Timer(const Duration(milliseconds: 140), _snapHeader);
  }

  void _snapHeader() {
    if (!mounted || !scroll.hasClients) return;
    final position = scroll.position;
    if (position.isScrollingNotifier.value) return _scheduleSnap();
    const range = ProfileHeaderDelegate.collapseRange;
    final pixels = position.pixels;
    if (pixels <= 0 || pixels >= range) return;
    unawaited(
      scroll.animateTo(
        pixels < range / 2 ? 0 : range,
        duration: animDuration(180),
        curve: Curves.easeOut,
      ),
    );
  }

  Future<void> load() async {
    failed.value = false;
    try {
      final pending = view.profileBundle(
        id: requestedId,
        name: id == null && seed.id.isEmpty ? name : null,
      );
      final network = pending.catchError((_) => null);
      final fromCache = _cachedBundle != null;
      bundle = _cachedBundle ?? network;
      _cachedBundle = null;
      final result = await pending;
      if (!mounted) return;
      if (fromCache && result != null) {
        bundle = Future.value(result);
        bundleVersion.value++;
      }
      if (result == null) {
        failed.value = true;
        snackString(getString.userNotFound);
        return;
      }
      user.value = result.user;
    } catch (e, st) {
      logError('ProfileState', e, st);
      if (mounted) failed.value = true;
    }
  }

  Future<void> toggleFollow() async {
    final current = user.value;
    if (current == null) return;
    followBusy.value = true;
    final next = await view.toggleFollow(current.id);
    followBusy.value = false;
    if (next == null) return snackString(getString.couldNotUpdateFollow);
    current.isFollowing = next;
    user.refresh();
    snackString(
      next
          ? getString.followedUser(current.name)
          : getString.unfollowedUser(current.name),
    );
  }

  void openList(bool anime) {
    final current = user.value;
    if (current == null) return;
    navigateToList(
      context,
      MediaListScreen(
        service: service,
        anime: anime,
        userId: current.id,
        userName: current.name,
      ),
    );
  }

  void openFollowers() => openFollows(
    context,
    service,
    userId,
    followers: true,
    title: user.value?.name,
  );

  void openFollowing() => openFollows(
    context,
    service,
    userId,
    followers: false,
    title: user.value?.name,
  );
}
