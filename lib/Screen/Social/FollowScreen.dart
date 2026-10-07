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
import '../../Core/State/State.dart';

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
  final _users = Live<List<UserBrief>?>(null);
  final _failed = false.live;
  final _query = ''.live;
  late final _wide =
      (PrefManager.getCustomVal<bool>('followWide') ?? false).live;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  int _page = 1;
  final _hasNext = true.live;
  final _loadingMore = false.live;

  Future<void> _load() async {
    _failed.value = false;
    _page = 1;
    _hasNext.value = true;
    try {
      final result = await widget.service.socialView!.follows(
        widget.userId,
        followers: widget.followers,
      );
      if (!mounted) return;
      _users.value = [...result.items];
      _hasNext.value = result.hasNext;
      _page = 2;
    } catch (_) {
      if (mounted) _failed.value = true;
    }
  }

  Future<void> _more() async {
    if (_loadingMore.value || !_hasNext.value || _users.value == null) return;
    _loadingMore.value = true;
    try {
      final result = await widget.service.socialView!.follows(
        widget.userId,
        followers: widget.followers,
        page: _page,
      );
      if (!mounted) return;
      final known = {for (final u in _users.value!) u.id};
      _users.value!.addAll(result.items.where((u) => !known.contains(u.id)));
      _users.refresh();
      _hasNext.value = result.hasNext;
      _page++;
    } catch (_) {
      if (mounted) _hasNext.value = false;
    } finally {
      if (mounted) _loadingMore.value = false;
    }
    if (mounted && _query.value.trim().isNotEmpty && _hasNext.value) {
      unawaited(_more());
    }
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
    final loading = _users.value == null && !_failed.value;
    final all = _users.value ?? List.generate(8, (_) => _placeholder);
    final q = _query.value.trim().toLowerCase();
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
            tooltip: _wide.value ? 'Grid view' : 'Full width',
            icon: Icon(
              _wide.value ? Icons.grid_view_rounded : Icons.view_agenda_rounded,
            ),
            onPressed: () {
              _wide.value = !_wide.value;
              PrefManager.setCustomVal<bool>('followWide', _wide.value);
            },
          ),
        ],
      ),
      body: _failed.value
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
                      _query.value = v;
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
                              child: _wide.value
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
                if (_loadingMore.value)
                  const LinearProgressIndicator(minHeight: 3),
              ],
            ),
    );
  }
}
