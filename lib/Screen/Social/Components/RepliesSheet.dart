import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/TimeAgo.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/AniHtml.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/MarkupText.dart';
import '../SocialNavigation.dart';
import 'AniMediaCard.dart';
import '../../../Widgets/Components/UserAvatar.dart';
import 'UserListSheet.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'RepliesState.dart';
import '../../../Utils/Extensions/Responsive.dart';

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

class _RepliesSheetState extends State<RepliesSheet>
    with ScreenStateHost<RepliesSheet, RepliesState> {
  @override
  RepliesState buildState() =>
      RepliesState(service: widget.service, activity: widget.activity);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    state.version.track();
    final loading = state.replies.value == null && !state.failed.value;
    final replies =
        state.replies.value ?? List.generate(3, (_) => _placeholder);
    return AppSheet(
      title: getString.replies,
      heightFactor: 0.8,
      trailing: state.view.canInteract && !widget.activity.isLocked
          ? FilledButton.tonalIcon(
              onPressed: () => state.compose(),
              icon: const Icon(Icons.reply_rounded, size: 18),
              label: Text(getString.reply),
            )
          : null,
      child: state.failed.value
          ? EmptyState(
              icon: Icons.cloud_off_rounded,
              failed: true,
              title: getString.loadFailedReplies,
              onAction: state.load,
            )
          : !loading && replies.isEmpty
          ? EmptyState(
              icon: Icons.forum_outlined,
              title: getString.noRepliesYet,
            )
          : Skeletonizer(
              enabled: loading,
              child: NotificationListener<ScrollNotification>(
                onNotification: state.onScroll,
                child: ListView.separated(
                  padding: Dimens.sheetInsets,
                  itemCount: replies.length + (state.loadingMore.value ? 1 : 0),
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
    final mine = reply.user.id == state.view.currentUserId;
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
              onTap: skeleton || !state.view.canInteract
                  ? null
                  : () => state.like(reply),
              onLongPress: skeleton
                  ? null
                  : () => showUserListSheet(
                      context,
                      widget.service,
                      getString.likedBy,
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
            if (state.view.canInteract && !widget.activity.isLocked)
              TextButton(
                onPressed: skeleton
                    ? null
                    : () => state.compose(replyTo: reply),
                child: Text(getString.reply),
              ),
            const Spacer(),
            if (mine && !skeleton) ...[
              IconButton(
                tooltip: getString.edit,
                visualDensity: VisualDensity.compact,
                icon: const Icon(Icons.edit_outlined, size: 18),
                onPressed: () => state.compose(edit: reply),
              ),
              IconButton(
                tooltip: getString.delete,
                visualDensity: VisualDensity.compact,
                icon: const Icon(Icons.delete_outline_rounded, size: 18),
                onPressed: () => state.delete(reply),
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
