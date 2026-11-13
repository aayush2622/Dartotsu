import 'Components/ProfileSkeleton.dart';
import '../../Utils/Animation/WidgetAnimations.dart';

import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../Navbar.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../Settings/SubSettingsScreen.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import 'Components/ActivityComposer.dart';
import 'Components/ActivityList.dart';
import 'Components/ProfileHeader.dart';
import 'Components/ProfileInfoTab.dart';
import 'Components/ProfileStatsTab.dart';
import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'ProfileState.dart';

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
    with ScreenStateHost<ProfileScreen, ProfileState> {
  @override
  bool get safeArea => false;

  @override
  ProfileState buildState() => ProfileState(
    service: widget.service,
    id: widget.id,
    name: widget.name,
    seedArg: widget.seed,
    initialTab: widget.initialTab,
    onPresenceChanged: refreshPresence,
  );

  @override
  String? get glassBackgroundUrl => state.glassBackgroundUrl;

  @override
  DiscordPresence? get presence => state.presence;

  @override
  Widget buildContent(BuildContext context) {
    if (state.failed.value && state.user.value == null) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const AppScreenBar(),
        body: EmptyState(
          icon: Icons.person_off_rounded,
          failed: true,
          title: getString.couldntLoadProfile,
          onAction: state.load,
        ),
      );
    }
    final top = MediaQuery.paddingOf(context).top;
    final content = Scaffold(
      backgroundColor: Colors.transparent,
      body: Watch(() {
        final glass = find<ThemeController>().useGlassMode.value;
        final userId = state.userId;
        return ScrollConfig(
          context,
          child: NestedScrollView(
            controller: state.scroll,
            headerSliverBuilder: (context, _) => [
              SliverPersistentHeader(
                pinned: true,
                delegate: ProfileHeaderDelegate(
                  service: widget.service,
                  heroTag: widget.heroTag,
                  seed: state.seed,
                  user: state.user,
                  top: top,
                  glass: glass,
                  isSelf: state.isSelf,
                  canFollow: state.view.canInteract,
                  followBusy: state.followBusy,
                  onFollow: state.toggleFollow,
                  onFollowers: state.openFollowers,
                  onFollowing: state.openFollowing,
                  onAnime: () => state.openList(true),
                  onManga: () => state.openList(false),
                  onSettings: _accountOptions(context),
                ),
              ),
            ],
            body: userId.isEmpty
                ? const ProfileSkeleton()
                : AppSwitcher(
                    child: KeyedSubtree(
                      key: ValueKey(state.tab.value),
                      child: _page(userId),
                    ),
                  ),
          ),
        );
      }),
    );

    final nav = Watch(
      () => FloatingBottomNavBar(
        standalone: true,
        laneKey: state.navLane,
        selectedIndex: state.tab.value,
        onTabSelected: (i) => state.tab.value = i,
        items: [
          NavItem(
            index: 0,
            icon: Icons.person_rounded,
            label: getString.profile.toUpperCase(),
          ),
          if (state.hasActivity)
            NavItem(
              index: 1,
              icon: Icons.forum_rounded,
              label: getString.feed.toUpperCase(),
            ),
          NavItem(
            index: state.hasActivity ? 2 : 1,
            icon: Icons.bar_chart_rounded,
            label: getString.stats.toUpperCase(),
          ),
        ],
      ),
    );

    return FloatingNavLayout(nav: nav, content: content);
  }

  VoidCallback? _accountOptions(BuildContext context) {
    final options = state.view.accountOptions;
    if (options == null || !state.isSelf) return null;
    return () => navigateToPage(
      context,
      SubSettingsScreen(title: options.title, settings: options.build),
    );
  }

  Widget _page(String userId) {
    final index = state.tab.value;
    final stats = state.hasActivity ? 2 : 1;
    if (index == 0) {
      return ProfileInfoTab(
        key: ValueKey('profile-info-${state.bundleVersion.value}'),
        service: widget.service,
        user: state.user.value,
        userId: userId,
        bundle: state.bundle,
      );
    }
    if (state.hasActivity && index == 1) {
      return ActivityList(
        key: const ValueKey('profile-feed'),
        service: widget.service,
        scope: ActivityScope.user,
        userId: userId,
        filterable: true,
        composer: state.isSelf ? ComposerKind.activity : ComposerKind.message,
      );
    }
    return ProfileStatsTab(
      key: ValueKey('profile-stats$stats-${state.bundleVersion.value}'),
      service: widget.service,
      userId: userId,
      bundle: state.bundle,
    );
  }
}
