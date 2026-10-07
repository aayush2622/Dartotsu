import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';
import 'package:flutter/services.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Utils/Functions/TimeAgo.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/AniHtml.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/MarkupText.dart';
import '../SocialNavigation.dart';
import 'ActivityComposer.dart';
import 'AniMediaCard.dart';
import '../../../Widgets/Components/UserAvatar.dart';
import 'UserListSheet.dart';
import '../../../Core/State/State.dart';

class RepliesSheet extends StatefulWidget {
  final MediaService service;
  final Activity activity;

  const RepliesSheet({
    super.key,
    required this.service,
    required this.activity,
  });

  @override
  State<RepliesSheet> createState() => _RepliesSheetState();
}

class _RepliesSheetState extends State<RepliesSheet> {
  SocialScreenView get _view => widget.service.socialView!;
  final _replies = Live<List<ActivityReply>?>(null);
  final _failed = false.live;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  final _version = Trigger();
  int _page = 1;
  final _hasNext = false.live;
  final _loadingMore = false.live;

  Future<void> _load() async {
    try {
      final result = await _view.replies(widget.activity.id);
      if (!mounted) return;
      _replies.value = [...result.items];
      _hasNext.value = result.hasNext;
      _page = 2;
      _failed.value = false;
      widget.activity.replyCount = _replies.value!.length;
    } catch (_) {
      if (mounted) _failed.value = true;
    }
  }

  Future<void> _more() async {
    if (_loadingMore.value || !_hasNext.value || _replies.value == null) return;
    _loadingMore.value = true;
    try {
      final result = await _view.replies(widget.activity.id, page: _page);
      if (!mounted) return;
      final known = {for (final r in _replies.value!) r.id};
      _replies.value!.addAll(result.items.where((r) => !known.contains(r.id)));
      _replies.refresh();
      _hasNext.value = result.hasNext;
      _page++;
      widget.activity.replyCount = _replies.value!.length;
    } catch (_) {
      if (mounted) _hasNext.value = false;
    } finally {
      if (mounted) _loadingMore.value = false;
    }
  }

  bool _onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical && n.metrics.extentAfter < 400) {
      unawaited(_more());
    }
    return false;
  }

  Future<void> _compose({ActivityReply? replyTo, ActivityReply? edit}) async {
    final done = await showActivityComposer(
      context,
      _view,
      kind: ComposerKind.reply,
      activityId: widget.activity.id,
      editId: edit?.id,
      initial: edit?.text ?? (replyTo == null ? '' : '@${replyTo.user.name} '),
    );
    if (done) await _load();
  }

  Future<void> _delete(ActivityReply reply) async {
    final ok = await _view.deleteReply(reply.id);
    if (!mounted) return;
    if (!ok) return snackString('Failed to delete');
    _replies.value?.remove(reply);
    _replies.refresh();
    widget.activity.replyCount = _replies.value?.length ?? 0;
  }

  Future<void> _like(ActivityReply reply) async {
    final was = reply.isLiked;
    reply.isLiked = !was;
    reply.likeCount += was ? -1 : 1;
    _version.fire();
    unawaited(HapticFeedback.selectionClick());
    final ok = await _view.toggleLike(reply.id, reply: true);
    if (!ok && mounted) {
      reply.isLiked = was;
      reply.likeCount += was ? 1 : -1;
      _version.fire();
      snackString('Failed to like');
    }
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    _version.track();
    final loading = _replies.value == null && !_failed.value;
    final replies = _replies.value ?? List.generate(3, (_) => _placeholder);
    return AppSheet(
      title: 'Replies',
      heightFactor: 0.8,
      trailing: _view.canInteract && !widget.activity.isLocked
          ? FilledButton.tonalIcon(
              onPressed: () => _compose(),
              icon: const Icon(Icons.reply_rounded, size: 18),
              label: const Text('Reply'),
            )
          : null,
      child: _failed.value
          ? EmptyState(
              icon: Icons.cloud_off_rounded,
              failed: true,
              title: "Couldn't load replies",
              onAction: _load,
            )
          : !loading && replies.isEmpty
          ? const EmptyState(
              icon: Icons.forum_outlined,
              title: 'No replies yet',
            )
          : Skeletonizer(
              enabled: loading,
              child: NotificationListener<ScrollNotification>(
                onNotification: _onScroll,
                child: ListView.separated(
                  padding: const EdgeInsets.fromLTRB(20, 4, 20, 24),
                  itemCount: replies.length + (_loadingMore.value ? 1 : 0),
                  separatorBuilder: (_, _) => const Divider(height: 24),
                  itemBuilder: (_, i) => i >= replies.length
                      ? const Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      : _tile(replies[i], loading),
                ),
              ),
            ),
    );
  }

  static final _placeholder = ActivityReply(
    id: '0',
    activityId: '0',
    user: UserBrief(id: '0', name: 'Loading user'),
    text: 'Loading reply text that spans a little',
    createdAt: 1,
  );

  Widget _tile(ActivityReply reply, bool skeleton) {
    final scheme = context.colorScheme;
    final mine = reply.user.id == _view.currentUserId;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Clickable(
              onTap: skeleton
                  ? null
                  : () => openProfile(
                      context,
                      widget.service,
                      id: reply.user.id,
                      user: reply.user,
                    ),
              child: UserAvatar(
                url: reply.user.avatar,
                name: reply.user.name,
                size: 34,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reply.user.name,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    timeAgo(reply.createdAt),
                    style: context.textTheme.labelSmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        reply.html == null || reply.html!.trim().isEmpty
            ? MarkupText(text: reply.text, collapsible: false)
            : AniHtml(
                html: reply.html!,
                collapsedHeight: 220,
                onLink: (url) => openAppLink(context, widget.service, url),
                linkCard: aniLinkCards(widget.service),
              ),
        const SizedBox(height: 4),
        Row(
          children: [
            InkWell(
              mouseCursor: kClickCursor,
              borderRadius: BorderRadius.circular(20),
              onTap: skeleton || !_view.canInteract ? null : () => _like(reply),
              onLongPress: skeleton
                  ? null
                  : () => showUserListSheet(
                      context,
                      widget.service,
                      'Liked by',
                      reply.likes,
                    ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      reply.isLiked
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      size: 18,
                      color: reply.isLiked ? scheme.error : null,
                    ),
                    const SizedBox(width: 6),
                    Text('${reply.likeCount}'),
                  ],
                ),
              ),
            ),
            if (_view.canInteract && !widget.activity.isLocked)
              TextButton(
                onPressed: skeleton ? null : () => _compose(replyTo: reply),
                child: const Text('Reply'),
              ),
            const Spacer(),
            if (mine && !skeleton) ...[
              IconButton(
                tooltip: 'Edit',
                visualDensity: VisualDensity.compact,
                icon: const Icon(Icons.edit_outlined, size: 18),
                onPressed: () => _compose(edit: reply),
              ),
              IconButton(
                tooltip: 'Delete',
                visualDensity: VisualDensity.compact,
                icon: const Icon(Icons.delete_outline_rounded, size: 18),
                onPressed: () => _delete(reply),
              ),
            ],
          ],
        ),
      ],
    );
  }
}

Future<void> showRepliesSheet(
  BuildContext context,
  MediaService service,
  Activity activity,
) => showCustomBottomDialog<void>(
  context,
  RepliesSheet(service: service, activity: activity),
);
