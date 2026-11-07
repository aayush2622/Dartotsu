import '../../../../Utils/Animation/WidgetAnimations.dart';
import '../../../../Utils/Extensions/Responsive.dart';

import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Widgets/Components/Clickable.dart';
import '../../../../Widgets/Components/UserAvatar.dart';
import '../CommentColors.dart';
import '../CommentNode.dart';
import '../CommentsState.dart';
import 'CommentComposer.dart';
import 'CommentText.dart';
import '../../../../Widgets/Components/AppSpinner.dart';

class CommentTile extends StatelessWidget {
  final CommentsState state;
  final CommentNode node;

  const CommentTile({super.key, required this.state, required this.node});

  static const _avatar = 32.0;
  static const _gutter = 42.0;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    node.changed.track();
    final scheme = context.colorScheme;
    final comment = node.comment;
    final collapsed = node.collapsed.value;
    final open = node.open.value;
    final lineColors = [
      scheme.primary,
      scheme.tertiary,
      scheme.secondary,
      scheme.outline,
    ];
    final line = lineColors[node.depth % lineColors.length].withValues(
      alpha: 0.5,
    );
    final hasChildren = open && !node.flat && node.replies.isNotEmpty;
    final canCollapse = hasChildren || collapsed;

    return Padding(
      padding: EdgeInsets.only(top: Dimens.gap),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            if (canCollapse && !collapsed)
              PositionedDirectional(
                start: 0,
                top: _avatar + 6,
                bottom: 0,
                width: _avatar,
                child: Clickable(
                  press: false,
                  onTap: () => node.collapsed.value = true,
                  child: Center(
                    child: Container(
                      width: 2.5,
                      decoration: BoxDecoration(
                        color: line,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
              ),
            PositionedDirectional(
              start: 0,
              top: 0,
              child: Clickable(
                onTap: canCollapse
                    ? () => node.collapsed.value = !collapsed
                    : () => state.openUser(comment),
                child: UserAvatar(
                  url: comment.avatar,
                  name: comment.username,
                  size: _avatar,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: _gutter),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _header(context),
                  if (!collapsed) ...[
                    const SizedBox(height: 2),
                    _body(context),
                    _actions(context),
                    if (node.replying.value) ...[
                      SizedBox(height: Dimens.gapSm),
                      CommentComposer(
                        hint: getString.commentsReplyingTo(comment.username),
                        compact: true,
                        autofocus: true,
                        onSend: (text, _) => state.postReply(node, text),
                        onCancel: () => node.replying.value = false,
                      ),
                    ],
                    AppSize(
                      child: hasChildren ? _replies() : const SizedBox.shrink(),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _replies() => Watch(
    () => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final child in node.replies)
          CommentTile(
            key: ValueKey('c${child.comment.id}'),
            state: state,
            node: child,
          ).animateFadeUp(begin: 0.06, duration: 320),
      ],
    ),
  );

  Widget _header(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final comment = node.comment;
    final level = commentLevel(comment.totalVotes);
    final color = commentLevelColor(comment.totalVotes, scheme.surface);
    final collapsed = node.collapsed.value;
    return SizedBox(
      height: _avatar,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Flexible(
                  child: Clickable(
                    onTap: () => state.openUser(comment),
                    child: Text(
                      comment.username,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: text.labelLarge?.copyWith(
                        color: scheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: Dimens.gapSm),
                Text(
                  '[$level]',
                  style: text.labelSmall?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (comment.isAdmin) ...[
                  SizedBox(width: Dimens.gapXs),
                  Icon(
                    Icons.workspace_premium_rounded,
                    size: 15,
                    color: scheme.tertiary,
                  ),
                ],
                if (comment.isMod) ...[
                  SizedBox(width: Dimens.gapXs),
                  Icon(Icons.shield_rounded, size: 14, color: scheme.primary),
                ],
                SizedBox(width: Dimens.gapSm),
                Text(
                  commentAge(comment.time),
                  style: text.labelSmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
                if (comment.tag != null) ...[
                  SizedBox(width: Dimens.gapSm),
                  Clickable(
                    onTap: () => state.setFilter(comment.tag),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimens.gapSm,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: scheme.primaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.label_rounded,
                            size: 12,
                            color: scheme.onPrimaryContainer,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            '${comment.tag}',
                            style: text.labelSmall?.copyWith(
                              color: scheme.onPrimaryContainer,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (collapsed)
            Clickable(
              onTap: () => node.collapsed.value = false,
              child: Padding(
                padding: EdgeInsets.all(Dimens.gapSm),
                child: Icon(
                  Icons.unfold_more_rounded,
                  size: 18,
                  color: scheme.onSurfaceVariant,
                ),
              ),
            )
          else
            _menu(context),
        ],
      ),
    );
  }

  Widget _menu(BuildContext context) {
    final scheme = context.colorScheme;
    final mine = state.isMine(node.comment);
    return PopupMenuButton<String>(
      tooltip: '',
      padding: EdgeInsets.zero,
      iconSize: 18,
      icon: Icon(Icons.more_vert_rounded, color: scheme.onSurfaceVariant),
      onSelected: (v) => switch (v) {
        'copy' => state.copy(node),
        'report' => state.report(node),
        'delete' => state.delete(node),
        'ban' => state.ban(node),
        _ => null,
      },
      itemBuilder: (_) => [
        _item('copy', Icons.copy_rounded, getString.commentsCopy),
        if (!mine)
          _item('report', Icons.flag_rounded, getString.commentsReport),
        if (mine || state.canModerate)
          _item(
            'delete',
            Icons.delete_outline_rounded,
            getString.commentsDelete,
          ),
        if (state.canModerate && !mine)
          _item('ban', Icons.gavel_rounded, getString.commentsBan),
      ],
    );
  }

  PopupMenuItem<String> _item(String value, IconData icon, String label) =>
      PopupMenuItem(
        value: value,
        child: Row(
          children: [
            Icon(icon, size: 20),
            SizedBox(width: Dimens.gap),
            Text(label),
          ],
        ),
      );

  Widget _body(BuildContext context) {
    final scheme = context.colorScheme;
    final comment = node.comment;
    if (node.editing.value) {
      return Padding(
        padding: EdgeInsets.only(top: Dimens.gapXs),
        child: CommentComposer(
          hint: getString.commentsPlaceholder,
          initial: comment.content,
          compact: true,
          autofocus: true,
          onSend: (text, _) => state.saveEdit(node, text),
          onCancel: () => node.editing.value = false,
        ),
      );
    }
    if (comment.deleted) {
      return Text(
        getString.commentsDeletedPlaceholder,
        style: context.textTheme.bodyMedium?.copyWith(
          color: scheme.onSurfaceVariant,
          fontStyle: FontStyle.italic,
        ),
      );
    }
    return CommentText(
      text: comment.content,
      onLongPress: () => state.copy(node),
    );
  }

  Widget _actions(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final comment = node.comment;
    final up = comment.vote == 1;
    final down = comment.vote == -1;
    final count = comment.replyCount;
    final open = node.open.value;
    final replying = node.replying.value;
    final editing = node.editing.value;
    final scoreColor = up
        ? scheme.primary
        : down
        ? scheme.error
        : scheme.onSurfaceVariant;
    return Padding(
      padding: EdgeInsets.only(top: Dimens.gapSm),
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _icon(
                  up
                      ? Icons.thumb_up_alt_rounded
                      : Icons.thumb_up_off_alt_rounded,
                  up ? scheme.primary : scheme.onSurfaceVariant,
                  () => state.vote(node, 1),
                ),
                AppSwitcher(
                  duration: 200,
                  slide: const Offset(0, 0.4),
                  alignment: Alignment.center,
                  child: Text(
                    '${comment.score}',
                    key: ValueKey(comment.score),
                    style: text.labelMedium?.copyWith(
                      color: scoreColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                _icon(
                  down
                      ? Icons.thumb_down_alt_rounded
                      : Icons.thumb_down_off_alt_rounded,
                  down ? scheme.error : scheme.onSurfaceVariant,
                  () => state.vote(node, -1),
                ),
              ],
            ),
          ),
          _pill(
            context,
            replying ? Icons.close_rounded : Icons.reply_rounded,
            replying ? getString.cancel : getString.reply,
            () {
              node.editing.value = false;
              node.replying.value = !replying;
            },
          ),
          if (state.isMine(comment) && !comment.deleted)
            _pill(
              context,
              editing ? Icons.close_rounded : Icons.edit_rounded,
              editing ? getString.cancel : getString.edit,
              () {
                node.replying.value = false;
                node.editing.value = !editing;
              },
            ),
          if (count > 0)
            _pill(
              context,
              open
                  ? Icons.expand_less_rounded
                  : Icons.subdirectory_arrow_right_rounded,
              open
                  ? getString.commentsHideReplies
                  : count == 1
                  ? getString.commentsViewReply
                  : getString.commentsViewReplies(count),
              () => state.toggleReplies(node),
              color: scheme.primary,
              busy: node.loading.value,
            ),
        ],
      ),
    );
  }

  Widget _icon(IconData icon, Color color, VoidCallback onTap) => Clickable(
    onTap: onTap,
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap,
        vertical: Dimens.gapSm,
      ),
      child: Icon(icon, size: 18, color: color),
    ),
  );

  Widget _pill(
    BuildContext context,
    IconData icon,
    String label,
    VoidCallback onTap, {
    Color? color,
    bool busy = false,
  }) {
    final scheme = context.colorScheme;
    final tint = color ?? scheme.onSurfaceVariant;
    return Clickable(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.gapSm,
          vertical: Dimens.gapSm,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (busy)
              const AppSpinner(size: 16)
            else
              Icon(icon, size: 18, color: tint),
            SizedBox(width: Dimens.gapSm),
            Text(
              label,
              style: context.textTheme.labelMedium?.copyWith(
                color: tint,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
