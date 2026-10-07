import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../../../Widgets/Components/SectionCard.dart';
import 'ActivityCard.dart';
import 'ActivityComposer.dart';
import '../../../Core/State/State.dart';

class ActivityList extends StatefulWidget {
  final MediaService service;
  final ActivityScope scope;
  final String? userId;
  final String? activityId;
  final ComposerKind? composer;
  final bool filterable;
  final PageStorageKey<String>? storageKey;

  const ActivityList({
    super.key,
    required this.service,
    required this.scope,
    this.userId,
    this.activityId,
    this.composer,
    this.filterable = false,
    this.storageKey,
  });

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList>
    with AutomaticKeepAliveClientMixin {
  SocialScreenView get _view => widget.service.socialView!;
  final _items = <Activity>[].liveList;
  var _page = 1;
  final _hasNext = true.live;
  final _loading = false.live;
  final _failed = false.live;
  final _first = true.live;
  final _filter = ActivityFilter.all.live;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  bool _matches(Activity a) => switch (_filter.value) {
    ActivityFilter.all => true,
    ActivityFilter.animeProgress =>
      a.kind == ActivityKind.list && a.mediaType == 'ANIME',
    ActivityFilter.mangaProgress =>
      a.kind == ActivityKind.list && a.mediaType == 'MANGA',
    ActivityFilter.messages => a.isMessage,
  };

  List<Activity> get _visible => [
    for (final a in _items)
      if (_matches(a)) a,
  ];

  Future<void> _load({bool reset = false}) async {
    if (_loading.value) return;
    if (reset) {
      _items.clear();
      _page = 1;
      _hasNext.value = true;
      _failed.value = false;
    }
    if (!_hasNext.value) return;
    _loading.value = true;
    try {
      var pages = 0;
      final before = _visible.length;
      do {
        final result = await _view.activities(
          widget.scope,
          userId: widget.userId,
          activityId: widget.activityId,
          page: _page,
        );
        final known = {for (final a in _items) a.id};
        _items.addAll(result.items.where((a) => !known.contains(a.id)));
        _hasNext.value = result.hasNext;
        if (_hasNext.value) _page++;
        pages++;
      } while (_filter.value != ActivityFilter.all &&
          _hasNext.value &&
          pages < 10 &&
          _visible.length == before);
      _failed.value = false;
    } catch (_) {
      _failed.value = true;
    }
    if (mounted) {
      _loading.value = false;
      _first.value = false;
    }
  }

  bool _onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical &&
        n.metrics.extentAfter < 700 &&
        _hasNext.value &&
        !_loading.value &&
        !_failed.value) {
      unawaited(_load());
    }
    return false;
  }

  Future<void> _post() async {
    final kind = widget.composer;
    if (kind == null) return;
    final done = await showActivityComposer(
      context,
      _view,
      kind: kind,
      userId: widget.userId,
    );
    if (done) await _load(reset: true);
  }

  static final _skeleton = Activity(
    id: '0',
    kind: ActivityKind.text,
    user: UserBrief(id: '0', name: 'Loading user'),
    text: 'Loading text for this activity so that the skeleton has some body.',
    createdAt: 1,
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Watch(() => _build(context));
  }

  Widget _build(BuildContext context) {
    final visible = _visible;
    final skeleton = _first.value && _loading.value;
    return RefreshIndicator(
      onRefresh: () => _load(reset: true),
      child: NotificationListener<ScrollNotification>(
        onNotification: _onScroll,
        child: ScrollConfig(
          context,
          child: ListView(
            key: widget.storageKey,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: Dimens.gapSm, bottom: 120),
            children: [
              if (widget.composer != null && _view.canInteract) _composerBar(),
              if (widget.filterable) _filters(),
              if (skeleton)
                Skeletonizer(
                  child: Column(
                    children: [
                      for (var i = 0; i < 3; i++)
                        ActivityCard(
                          service: widget.service,
                          activity: _skeleton,
                        ),
                    ],
                  ),
                )
              else if (_failed.value && _items.isEmpty)
                SizedBox(
                  height: 340,
                  child: EmptyState(
                    icon: Icons.cloud_off_rounded,
                    failed: true,
                    title: "Couldn't load activity",
                    onAction: () => _load(reset: true),
                  ),
                )
              else if (visible.isEmpty && !_loading.value)
                SizedBox(
                  height: 340,
                  child: EmptyState(
                    icon: Icons.forum_outlined,
                    title: switch (_filter.value) {
                      ActivityFilter.all => 'Nothing here',
                      ActivityFilter.animeProgress => 'No anime progress',
                      ActivityFilter.mangaProgress => 'No manga progress',
                      ActivityFilter.messages => 'No messages',
                    },
                  ),
                )
              else
                for (final a in visible)
                  KeyedSubtree(
                    key: ValueKey('activity-${a.id}'),
                    child:
                        ActivityCard(
                          service: widget.service,
                          activity: a,
                          onDeleted: () => _items.remove(a),
                          onEdited: () => _load(reset: true),
                        ).animateFadeUp(
                          begin: 0.06,
                          delay: Duration(
                            milliseconds: 40 * visible.indexOf(a).clamp(0, 5),
                          ),
                          duration: 320,
                        ),
                  ),
              if (_loading.value && !skeleton)
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(child: CircularProgressIndicator()),
                ),
              if (_failed.value && _items.isNotEmpty)
                TextButton(
                  onPressed: () => _load(),
                  child: const Text('Retry'),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _composerBar() {
    final scheme = context.colorScheme;
    final message = widget.composer == ComposerKind.message;
    return SectionCard(
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.pagePad,
        vertical: Dimens.gapSm / 2,
      ),
      child: InkWell(
        mouseCursor: kClickCursor,
        borderRadius: BorderRadius.circular(12),
        onTap: _post,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            children: [
              Icon(
                message ? Icons.mail_outline_rounded : Icons.edit_note_rounded,
                color: scheme.primary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message ? 'Write a message…' : 'Share something…',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ),
              Icon(Icons.send_rounded, size: 18, color: scheme.primary),
            ],
          ),
        ),
      ),
    );
  }

  Widget _filters() => Padding(
    padding: EdgeInsets.fromLTRB(Dimens.pagePad, 4, Dimens.pagePad, 8),
    child: AppChoiceChips<ActivityFilter>(
      value: _filter.value,
      onChanged: (f) {
        _filter.value = f;
        if (_visible.isEmpty && _hasNext.value) unawaited(_load());
      },
      options: const [
        AppSegment(ActivityFilter.all, label: 'All'),
        AppSegment(ActivityFilter.animeProgress, label: 'Anime'),
        AppSegment(ActivityFilter.mangaProgress, label: 'Manga'),
        AppSegment(ActivityFilter.messages, label: 'Messages'),
      ],
    ),
  );
}
