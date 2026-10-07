import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';
import 'package:flutter/services.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Utils/Functions/TimeAgo.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/AniHtml.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/MarkupText.dart';
import '../../../Widgets/Components/SectionCard.dart';
import '../../Feed/FeedNavigation.dart';
import '../SocialNavigation.dart';
import 'ActivityComposer.dart';
import 'AniMediaCard.dart';
import 'RepliesSheet.dart';
import '../../../Widgets/Components/UserAvatar.dart';
import 'UserListSheet.dart';

class ActivityCard extends StatefulWidget {
  final MediaService service;
  final Activity activity;
  final VoidCallback? onDeleted;
  final VoidCallback? onEdited;

  const ActivityCard({
    super.key,
    required this.service,
    required this.activity,
    this.onDeleted,
    this.onEdited,
  });

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  SocialScreenView get _view => widget.service.socialView!;
  Activity get _a => widget.activity;

  bool get _mine => _a.user?.id == _view.currentUserId;

  Future<void> _like() async {
    if (!_view.canInteract) return snackString('Log in to like');
    final was = _a.isLiked;
    setState(() {
      _a.isLiked = !was;
      _a.likeCount += was ? -1 : 1;
    });
    unawaited(HapticFeedback.selectionClick());
    final ok = await _view.toggleLike(_a.id);
    if (!ok && mounted) {
      setState(() {
        _a.isLiked = was;
        _a.likeCount += was ? 1 : -1;
      });
      snackString('Failed to like activity');
    }
  }

  Future<void> _delete() async {
    final confirmed = Completer<bool>();
    unawaited(
      (AlertDialogBuilder(context)
            ..setTitle('Delete activity?')
            ..setMessage("This can't be undone.")
            ..setNegativeButton('Cancel', () => confirmed.complete(false))
            ..setPositiveButton('Delete', () => confirmed.complete(true))
            ..setOnDismissListener(() {
              if (!confirmed.isCompleted) confirmed.complete(false);
            }))
          .show(),
    );
    if (!await confirmed.future) return;
    final ok = await _view.deleteActivity(_a.id);
    if (!mounted) return;
    if (ok) {
      snackString('Deleted activity');
      widget.onDeleted?.call();
    } else {
      snackString('Failed to delete activity');
    }
  }

  Future<void> _edit() async {
    final done = await showActivityComposer(
      context,
      _view,
      kind: _a.isMessage ? ComposerKind.message : ComposerKind.activity,
      userId: _a.recipient?.id,
      editId: _a.id,
      initial: _a.text ?? '',
      isPrivate: _a.isPrivate,
    );
    if (done) widget.onEdited?.call();
  }

  Future<void> _subscribe() async {
    final next = !_a.isSubscribed;
    final ok = await _view.toggleSubscription(_a.id, next);
    if (!mounted) return;
    if (ok) {
      setState(() => _a.isSubscribed = next);
      snackString(next ? 'Subscribed' : 'Unsubscribed');
    } else {
      snackString('Failed to update subscription');
    }
  }

  void _menu(String value) {
    switch (value) {
      case 'edit':
        unawaited(_edit());
      case 'delete':
        unawaited(_delete());
      case 'subscribe':
        unawaited(_subscribe());
      case 'browser':
        if (_a.siteUrl != null) unawaited(openLinkInBrowser(_a.siteUrl!));
      case 'copy':
        if (_a.siteUrl != null) {
          copyToClipboard(_a.siteUrl!, message: 'Link copied');
        }
      case 'share':
        if (_a.siteUrl != null) shareLink(_a.siteUrl!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final author = _a.user;
    final canEdit = _mine && _a.kind != ActivityKind.list;
    final canDelete = _mine || _a.recipient?.id == _view.currentUserId;
    return SectionCard(
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.pagePad,
        vertical: Dimens.gapSm / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Clickable(
                onTap: author == null
                    ? null
                    : () => openProfile(
                        context,
                        widget.service,
                        id: author.id,
                        user: author,
                      ),
                child: UserAvatar(
                  url: author?.avatar,
                  name: author?.name ?? '',
                  size: 40,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Clickable(
                      onTap: author == null
                          ? null
                          : () => openProfile(
                              context,
                              widget.service,
                              id: author.id,
                              user: author,
                            ),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: author?.name ?? '',
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            if (_a.isMessage && _a.recipient != null)
                              TextSpan(
                                text: '  ›  ${_a.recipient!.name}',
                                style: TextStyle(
                                  color: scheme.onSurfaceVariant,
                                ),
                              ),
                          ],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          timeAgo(_a.createdAt),
                          style: context.textTheme.labelSmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                        if (_a.isPrivate) ...[
                          const SizedBox(width: 6),
                          Icon(
                            Icons.lock_rounded,
                            size: 12,
                            color: scheme.onSurfaceVariant,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              PopupMenuButton<String>(
                icon: const Icon(Icons.more_vert_rounded, size: 20),
                onSelected: _menu,
                itemBuilder: (_) => [
                  if (canEdit)
                    const PopupMenuItem(value: 'edit', child: Text('Edit')),
                  if (canDelete)
                    const PopupMenuItem(value: 'delete', child: Text('Delete')),
                  if (_view.canInteract && !_mine)
                    PopupMenuItem(
                      value: 'subscribe',
                      child: Text(
                        _a.isSubscribed ? 'Unsubscribe' : 'Subscribe',
                      ),
                    ),
                  if (_a.siteUrl != null) ...const [
                    PopupMenuItem(value: 'share', child: Text('Share')),
                    PopupMenuItem(
                      value: 'browser',
                      child: Text('Open in browser'),
                    ),
                    PopupMenuItem(value: 'copy', child: Text('Copy link')),
                  ],
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          if (_a.kind == ActivityKind.list)
            _listBody(context)
          else
            _body(context),
          const SizedBox(height: 6),
          Row(
            children: [
              _action(
                icon: _a.isLiked
                    ? Icons.favorite_rounded
                    : Icons.favorite_border_rounded,
                color: _a.isLiked ? scheme.error : null,
                label: '${_a.likeCount}',
                onTap: _like,
                onLongPress: () => showUserListSheet(
                  context,
                  widget.service,
                  'Liked by',
                  _a.likes,
                ),
              ),
              const SizedBox(width: 4),
              _action(
                icon: Icons.chat_bubble_outline_rounded,
                label: '${_a.replyCount}',
                onTap: () async {
                  await showRepliesSheet(context, widget.service, _a);
                  if (mounted) setState(() {});
                },
              ),
              if (_a.isLocked) ...[
                const SizedBox(width: 8),
                Icon(
                  Icons.lock_outline_rounded,
                  size: 16,
                  color: scheme.onSurfaceVariant,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    final html = _a.html;
    if (html == null || html.trim().isEmpty) {
      return MarkupText(
        text: _a.text ?? '',
        collapseAbove: 600,
        collapsedLines: 10,
        onLink: (url) => openAppLink(context, widget.service, url),
      );
    }
    return AniHtml(
      html: html,
      collapsedHeight: 280,
      onLink: (url) => openAppLink(context, widget.service, url),
      linkCard: aniLinkCards(widget.service),
    );
  }

  Widget _action({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    VoidCallback? onLongPress,
    Color? color,
  }) {
    return InkWell(
      mouseCursor: kClickCursor,
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      onLongPress: onLongPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 19, color: color),
            const SizedBox(width: 6),
            Text(label),
          ],
        ),
      ),
    );
  }

  String get _listLine {
    final status = (_a.status ?? '').titleCase;
    final progress = _a.progress;
    final bare =
        status.toLowerCase().contains('completed') ||
        status.toLowerCase().contains('plans') ||
        status.toLowerCase().contains('repeating') ||
        status.toLowerCase().contains('paused') ||
        status.toLowerCase().contains('dropped');
    return [status, ?progress, if (!bare && progress != null) 'of'].join(' ');
  }

  Widget _listBody(BuildContext context) {
    final scheme = context.colorScheme;
    final media = _a.media;
    if (media == null) return Text(_listLine);
    final tag = 'activity:${_a.id}';
    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(14),
      ),
      child: InkWell(
        mouseCursor: kClickCursor,
        borderRadius: BorderRadius.circular(14),
        onTap: () => openDetail(context, widget.service, media, heroTag: tag),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 54,
                  height: 78,
                  child: cachedNetworkImage(
                    imageUrl: media.cover,
                    fit: BoxFit.cover,
                    width: 54,
                    height: 78,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _listLine,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      media.mainName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
