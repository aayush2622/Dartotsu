import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/MediaService.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/ProfileCard.dart';
import 'Components/UserCard.dart';

class FollowScreen extends StatefulWidget {
  final MediaService service;
  final String userId;
  final bool followers;
  final String? userName;

  const FollowScreen({
    super.key,
    required this.service,
    required this.userId,
    required this.followers,
    this.userName,
  });

  @override
  State<FollowScreen> createState() => _FollowScreenState();
}

class _FollowScreenState extends BaseScreen<FollowScreen> {
  List<UserBrief>? _users;
  bool _failed = false;
  String _query = '';
  bool _wide = PrefManager.getCustomVal<bool>('followWide') ?? false;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  int _page = 1;
  bool _hasNext = true;
  bool _loadingMore = false;

  Future<void> _load() async {
    setState(() {
      _failed = false;
      _page = 1;
      _hasNext = true;
    });
    try {
      final result = await widget.service.socialView!.follows(
        widget.userId,
        followers: widget.followers,
      );
      if (!mounted) return;
      setState(() {
        _users = [...result.items];
        _hasNext = result.hasNext;
        _page = 2;
      });
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  Future<void> _more() async {
    if (_loadingMore || !_hasNext || _users == null) return;
    setState(() => _loadingMore = true);
    try {
      final result = await widget.service.socialView!.follows(
        widget.userId,
        followers: widget.followers,
        page: _page,
      );
      if (!mounted) return;
      final known = {for (final u in _users!) u.id};
      setState(() {
        _users!.addAll(result.items.where((u) => !known.contains(u.id)));
        _hasNext = result.hasNext;
        _page++;
      });
    } catch (_) {
      if (mounted) setState(() => _hasNext = false);
    } finally {
      if (mounted) setState(() => _loadingMore = false);
    }
    if (mounted && _query.trim().isNotEmpty && _hasNext) unawaited(_more());
  }

  bool _onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical && n.metrics.extentAfter < 500) {
      unawaited(_more());
    }
    return false;
  }

  Widget _card(UserBrief user, int i, bool loading, {bool wide = false}) {
    final card = UserCard(
      key: ValueKey('user-${user.id}-$i'),
      service: widget.service,
      user: user,
      skeleton: loading,
      wide: wide,
    );
    return loading
        ? card
        : card.animateFadeUp(
            begin: 0.12,
            delay: Duration(milliseconds: 30 * math.min(i, 12)),
            duration: 340,
          );
  }

  static final _placeholder = UserBrief(id: '0', name: 'Loading user name');

  @override
  Widget buildContent(BuildContext context) {
    final title = widget.followers ? 'Followers' : 'Following';
    final loading = _users == null && !_failed;
    final all = _users ?? List.generate(8, (_) => _placeholder);
    final q = _query.trim().toLowerCase();
    final users = q.isEmpty
        ? all
        : [
            for (final u in all)
              if (u.name.toLowerCase().contains(q)) u,
          ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: widget.userName == null ? title : '${widget.userName} · $title',
        actions: [
          IconButton(
            tooltip: _wide ? 'Grid view' : 'Full width',
            icon: Icon(
              _wide ? Icons.grid_view_rounded : Icons.view_agenda_rounded,
            ),
            onPressed: () {
              setState(() => _wide = !_wide);
              PrefManager.setCustomVal<bool>('followWide', _wide);
            },
          ),
        ],
      ),
      body: _failed
          ? EmptyState(
              icon: Icons.cloud_off_rounded,
              failed: true,
              title: "Couldn't load $title",
              onAction: _load,
            )
          : Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    Dimens.pagePad,
                    Dimens.gapSm,
                    Dimens.pagePad,
                    Dimens.gapSm,
                  ),
                  child: TextField(
                    onChanged: (v) {
                      setState(() => _query = v);
                      if (v.trim().isNotEmpty) unawaited(_more());
                    },
                    decoration: InputDecoration(
                      hintText: 'Search ${title.toLowerCase()}',
                      prefixIcon: const Icon(Icons.search_rounded),
                    ),
                  ),
                ),
                Expanded(
                  child: !loading && users.isEmpty
                      ? EmptyState(
                          icon: Icons.group_outlined,
                          title: q.isEmpty ? 'Nobody here yet' : 'No matches',
                        )
                      : NotificationListener<ScrollNotification>(
                          onNotification: _onScroll,
                          child: ScrollConfig(
                            context,
                            child: Skeletonizer(
                              enabled: loading,
                              child: _wide
                                  ? ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        Dimens.pagePad,
                                        Dimens.gapSm,
                                        Dimens.pagePad,
                                        Dimens.gapXl,
                                      ),
                                      itemCount: users.length,
                                      separatorBuilder: (_, _) =>
                                          SizedBox(height: Dimens.gapSm),
                                      itemBuilder: (_, i) => _card(
                                        users[i],
                                        i,
                                        loading,
                                        wide: true,
                                      ),
                                    )
                                  : GridView.builder(
                                      padding: EdgeInsets.fromLTRB(
                                        Dimens.pagePad,
                                        Dimens.gapSm,
                                        Dimens.pagePad,
                                        Dimens.gapXl,
                                      ),
                                      gridDelegate: ProfileCard.gridDelegate(),
                                      itemCount: users.length,
                                      itemBuilder: (_, i) =>
                                          _card(users[i], i, loading),
                                    ),
                            ),
                          ),
                        ),
                ),
                if (_loadingMore) const LinearProgressIndicator(minHeight: 3),
              ],
            ),
    );
  }
}
