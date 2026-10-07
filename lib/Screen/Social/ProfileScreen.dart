import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaService.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppTabs.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../MediaList/MediaListScreen.dart';
import 'Components/ActivityComposer.dart';
import 'Components/ActivityList.dart';
import 'Components/ProfileHeader.dart';
import 'Components/ProfileInfoTab.dart';
import 'Components/ProfileStatsTab.dart';
import 'SocialNavigation.dart';
import '../../Api/Discord/DiscordPresence.dart';

class ProfileScreen extends StatefulWidget {
  final MediaService service;
  final String? id;
  final String? name;
  final UserBrief? seed;
  final int initialTab;
  final Object? heroTag;

  const ProfileScreen({
    super.key,
    required this.service,
    this.id,
    this.name,
    this.seed,
    this.initialTab = 0,
    this.heroTag,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends BaseScreen<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs = TabController(
    length: 3,
    vsync: this,
    initialIndex: widget.initialTab,
  );
  final _user = Rxn<SocialUser>();
  final _followBusy = false.obs;
  bool _failed = false;
  final _scroll = ScrollController();
  Timer? _snapTimer;

  SocialScreenView get _view => widget.service.socialView!;

  late final UserBrief _seed =
      widget.seed ?? UserBrief(id: widget.id ?? '', name: widget.name ?? '');

  @override
  String? get glassBackgroundUrl =>
      _user.value?.banner ??
      _seed.banner ??
      _user.value?.avatar ??
      _seed.avatar;

  @override
  void initState() {
    super.initState();
    _scroll.addListener(_scheduleSnap);
    _userSub = _user.stream.listen((_) => refreshPresence());
    final id = widget.id ?? (_seed.id.isEmpty ? null : _seed.id);
    final cached = id == null ? null : _view.cachedProfile(id);
    if (cached != null) {
      _user.value = cached.user;
      _cachedBundle = Future.value(cached);
    }
    unawaited(_load());
  }

  void _scheduleSnap() {
    _snapTimer?.cancel();
    _snapTimer = Timer(const Duration(milliseconds: 140), _snapHeader);
  }

  void _snapHeader() {
    if (!mounted || !_scroll.hasClients) return;
    final position = _scroll.position;
    if (position.isScrollingNotifier.value) return _scheduleSnap();
    const range = ProfileHeaderDelegate.collapseRange;
    final pixels = position.pixels;
    if (pixels <= 0 || pixels >= range) return;
    unawaited(
      _scroll.animateTo(
        pixels < range / 2 ? 0 : range,
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
      ),
    );
  }

  @override
  void dispose() {
    _snapTimer?.cancel();
    _userSub?.cancel();
    _scroll.dispose();
    _tabs.dispose();
    super.dispose();
  }

  StreamSubscription<SocialUser?>? _userSub;
  Future<SocialProfile?> _bundle = Future.value();
  Future<SocialProfile?>? _cachedBundle;

  Future<void> _load() async {
    setState(() => _failed = false);
    try {
      final pending = _view.profileBundle(
        id: widget.id ?? (_seed.id.isEmpty ? null : _seed.id),
        name: widget.id == null && _seed.id.isEmpty ? widget.name : null,
      );
      final network = pending.catchError((_) => null);
      _bundle = _cachedBundle ?? network;
      _cachedBundle = null;
      final bundle = await pending;
      if (!mounted) return;
      if (bundle == null) {
        setState(() => _failed = true);
        snackString('User not found');
        return;
      }
      _user.value = bundle.user;
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  bool get _isSelf {
    final id = _user.value?.id ?? widget.id ?? _seed.id;
    return id.isNotEmpty && id == _view.currentUserId;
  }

  Future<void> _toggleFollow() async {
    final user = _user.value;
    if (user == null) return;
    _followBusy.value = true;
    final next = await _view.toggleFollow(user.id);
    _followBusy.value = false;
    if (next == null) return snackString('Could not update follow');
    user.isFollowing = next;
    _user.refresh();
    snackString(next ? 'Followed ${user.name}' : 'Unfollowed ${user.name}');
  }

  void _openList(bool anime) {
    final user = _user.value;
    if (user == null) return;
    navigateToList(
      context,
      MediaListScreen(
        service: widget.service,
        anime: anime,
        userId: user.id,
        userName: user.name,
      ),
    );
  }

  @override
  DiscordPresence? get presence => DiscordPresence.browsing(
    'Viewing a profile',
    state: _user.value?.name ?? widget.name,
  );

  @override
  Widget buildContent(BuildContext context) {
    if (_failed && _user.value == null) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const AppScreenBar(),
        body: EmptyState(
          icon: Icons.person_off_rounded,
          failed: true,
          title: "Couldn't load this profile",
          onAction: _load,
        ),
      );
    }
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Obx(() {
        final glass = find<ThemeController>().useGlassMode.value;
        final userId = _user.value?.id ?? widget.id ?? _seed.id;
        return ScrollConfig(
          context,
          child: NestedScrollView(
            controller: _scroll,
            headerSliverBuilder: (context, _) => [
              SliverPersistentHeader(
                pinned: true,
                delegate: ProfileHeaderDelegate(
                  service: widget.service,
                  heroTag: widget.heroTag,
                  seed: _seed,
                  user: _user,
                  top: top,
                  glass: glass,
                  isSelf: _isSelf,
                  canFollow: _view.canInteract,
                  followBusy: _followBusy,
                  onFollow: _toggleFollow,
                  onFollowers: () => openFollows(
                    context,
                    widget.service,
                    userId,
                    followers: true,
                    title: _user.value?.name,
                  ),
                  onFollowing: () => openFollows(
                    context,
                    widget.service,
                    userId,
                    followers: false,
                    title: _user.value?.name,
                  ),
                  onAnime: () => _openList(true),
                  onManga: () => _openList(false),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _TabsDelegate(
                  controller: _tabs,
                  items: const [
                    AppTabItem('Profile'),
                    AppTabItem('Feed'),
                    AppTabItem('Stats'),
                  ],
                  glass: glass,
                ),
              ),
            ],
            body: userId.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : TabBarView(
                    controller: _tabs,
                    children: [
                      ProfileInfoTab(
                        service: widget.service,
                        user: _user.value,
                        userId: userId,
                        bundle: _bundle,
                      ),
                      ActivityList(
                        service: widget.service,
                        scope: ActivityScope.user,
                        userId: userId,
                        filterable: true,
                        composer: _isSelf
                            ? ComposerKind.activity
                            : ComposerKind.message,
                      ),
                      ProfileStatsTab(
                        service: widget.service,
                        userId: userId,
                        bundle: _bundle,
                      ),
                    ],
                  ),
          ),
        );
      }),
    );
  }
}

class _TabsDelegate extends SliverPersistentHeaderDelegate {
  final TabController controller;
  final List<AppTabItem> items;
  final bool glass;

  _TabsDelegate({
    required this.controller,
    required this.items,
    required this.glass,
  });

  @override
  double get maxExtent => 56;

  @override
  double get minExtent => 56;

  @override
  bool shouldRebuild(_TabsDelegate old) =>
      old.glass != glass || old.controller != controller;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlaps) {
    return ColoredBox(
      color: context.colorScheme.surface.withValues(alpha: glass ? 0.4 : 1),
      child: Align(
        alignment: Alignment.centerLeft,
        child: AppTabs(controller: controller, items: items),
      ),
    );
  }
}
