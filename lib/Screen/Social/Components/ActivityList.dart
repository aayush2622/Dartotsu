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
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'ActivityListState.dart';

class ActivityList extends StatefulWidget {
  final MediaService service;
  final ActivityScope scope;
  final String? userId;
  final String? activityId;
  final ComposerKind? composer;
  final String? groupId;
  final bool filterable;
  final PageStorageKey<String>? storageKey;

  const ActivityList({
    super.key,
    required this.service,
    required this.scope,
    this.userId,
    this.activityId,
    this.composer,
    this.groupId,
    this.filterable = false,
    this.storageKey,
  });

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList>
    with
        AutomaticKeepAliveClientMixin,
        ScreenStateHost<ActivityList, ActivityListState> {
  @override
  ActivityListState buildState() => ActivityListState(
    service: widget.service,
    scope: widget.scope,
    userId: widget.userId,
    activityId: widget.activityId,
    composer: widget.composer,
    groupId: widget.groupId,
  );

  @override
  bool get wantKeepAlive => true;

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
    final visible = state.visible;
    final skeleton = state.first.value && state.loading.value;
    return RefreshIndicator(
      onRefresh: () => state.load(reset: true),
      child: NotificationListener<ScrollNotification>(
        onNotification: state.onScroll,
        child: ScrollConfig(
          context,
          child: ListView(
            key: widget.storageKey,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: Dimens.gapSm, bottom: 120),
            children: [
              if (widget.composer != null && state.view.canInteract)
                _composerBar(),
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
              else if (state.failed.value && state.items.isEmpty)
                SizedBox(
                  height: 340,
                  child: EmptyState(
                    icon: Icons.cloud_off_rounded,
                    failed: true,
                    title: getString.loadFailedActivity,
                    onAction: () => state.load(reset: true),
                  ),
                )
              else if (visible.isEmpty && !state.loading.value)
                SizedBox(
                  height: 340,
                  child: EmptyState(
                    icon: Icons.forum_outlined,
                    title: switch (state.filter.value) {
                      ActivityFilter.all => getString.nothingHere,
                      ActivityFilter.animeProgress => getString.noAnimeProgress,
                      ActivityFilter.mangaProgress => getString.noMangaProgress,
                      ActivityFilter.messages => getString.noMessages,
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
                          onDeleted: () => state.items.remove(a),
                          onEdited: () => state.load(reset: true),
                        ).animateFadeUp(
                          begin: 0.06,
                          delay: Duration(
                            milliseconds: 40 * visible.indexOf(a).clamp(0, 5),
                          ),
                          duration: 320,
                        ),
                  ),
              if (state.loading.value && !skeleton)
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(child: CircularProgressIndicator()),
                ),
              if (state.failed.value && state.items.isNotEmpty)
                TextButton(
                  onPressed: () => state.load(),
                  child: Text(getString.retry),
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
        onTap: state.post,
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
                  message
                      ? getString.writeMessageHint
                      : widget.groupId != null
                      ? getString.groupsPostHint
                      : getString.shareSomethingHint,
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
      scrollable: true,
      value: state.filter.value,
      onChanged: (f) {
        state.filter.value = f;
        if (state.visible.isEmpty && state.hasNext.value) {
          unawaited(state.load());
        }
      },
      options: [
        AppSegment(ActivityFilter.all, label: getString.all),
        AppSegment(ActivityFilter.animeProgress, label: getString.anime),
        AppSegment(ActivityFilter.mangaProgress, label: getString.manga),
        AppSegment(ActivityFilter.messages, label: getString.messages),
      ],
    ),
  );
}
