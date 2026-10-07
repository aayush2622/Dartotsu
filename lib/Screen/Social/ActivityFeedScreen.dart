import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppTabs.dart';
import '../../Widgets/Components/BaseScreen.dart';
import 'Components/ActivityComposer.dart';
import 'Components/ActivityList.dart';
import 'SocialNavigation.dart';
import '../../Api/Discord/DiscordPresence.dart';

class ActivityFeedScreen extends StatefulWidget {
  final MediaService service;
  final String? activityId;

  const ActivityFeedScreen({super.key, required this.service, this.activityId});

  @override
  State<ActivityFeedScreen> createState() => _ActivityFeedScreenState();
}

class _ActivityFeedScreenState extends BaseScreen<ActivityFeedScreen>
    with SingleTickerProviderStateMixin {
  late final bool _global = widget.service.socialView!.hasGlobalFeed;
  late final TabController _tabs = TabController(
    length: _global ? 2 : 1,
    vsync: this,
  );

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  DiscordPresence? get presence =>
      DiscordPresence.browsing('Reading the activity feed');

  @override
  Widget buildContent(BuildContext context) {
    final service = widget.service;
    if (widget.activityId != null) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const AppScreenBar(title: 'Activity'),
        body: ActivityList(
          service: service,
          scope: ActivityScope.single,
          activityId: widget.activityId,
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: 'Activity',
        actions: [
          if (service.socialView!.currentUserId != null)
            IconButton(
              tooltip: 'Messages',
              icon: const Icon(Icons.mail_outline_rounded),
              onPressed: () => openInbox(context, service),
            ),
        ],
        bottom: _global
            ? AppTabs(
                controller: _tabs,
                items: const [AppTabItem('Following'), AppTabItem('Global')],
              )
            : null,
      ),
      body: TabBarView(
        controller: _tabs,
        children: [
          ActivityList(
            service: service,
            scope: ActivityScope.following,
            composer: ComposerKind.activity,
            filterable: true,
          ),
          if (_global)
            ActivityList(service: service, scope: ActivityScope.global),
        ],
      ),
    );
  }
}
