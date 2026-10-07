import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppTabs.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import 'Components/ActivityList.dart';
import '../../Api/Discord/DiscordPresence.dart';
import '../../Api/Discord/PresenceScope.dart';

class InboxScreen extends StatefulWidget {
  final MediaService service;

  const InboxScreen({super.key, required this.service});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends BaseScreen<InboxScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs = TabController(length: 2, vsync: this);

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  Widget buildContent(BuildContext context) => PresenceScope(
    presence: DiscordPresence.browsing('Reading messages'),
    child: _contentBody(context),
  );

  Widget _contentBody(BuildContext context) {
    final me = widget.service.socialView!.currentUserId;
    if (me == null) {
      return const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppScreenBar(title: 'Messages'),
        body: EmptyState(
          icon: Icons.mail_outline_rounded,
          title: 'Log in to see your messages',
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: 'Messages',
        bottom: AppTabs(
          controller: _tabs,
          items: const [AppTabItem('Received'), AppTabItem('Sent')],
        ),
      ),
      body: TabBarView(
        controller: _tabs,
        children: [
          ActivityList(
            service: widget.service,
            scope: ActivityScope.inbox,
            userId: me,
          ),
          ActivityList(
            service: widget.service,
            scope: ActivityScope.sent,
            userId: me,
          ),
        ],
      ),
    );
  }
}
