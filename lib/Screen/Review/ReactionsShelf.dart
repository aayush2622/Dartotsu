import '../../Utils/Animation/WidgetAnimations.dart';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Model/User.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/Clickable.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Components/UserAvatar.dart';
import '../../Widgets/Shelf/ShelfFrame.dart';
import 'Components/ReactionComposer.dart';
import 'ReactionsState.dart';

class ReactionsShelf extends StatefulWidget {
  final Media media;
  final DetailScreenView view;

  const ReactionsShelf({super.key, required this.media, required this.view});

  @override
  State<ReactionsShelf> createState() => _ReactionsShelfState();
}

class _ReactionsShelfState extends State<ReactionsShelf>
    with ScreenStateHost<ReactionsShelf, ReactionsState> {
  static final _placeholder = MediaReaction(
    id: '0',
    text: 'A short reaction written by a reader about this title.',
    votes: 12,
    user: User(id: 0, name: 'Reader name'),
  );

  @override
  ReactionsState buildState() =>
      ReactionsState(media: widget.media, view: widget.view);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final loading = state.loading.value;
    final items = state.items.toList();
    final canPost = state.canReact && !state.hasMine;
    if (!loading && items.isEmpty && !canPost) return const SizedBox.shrink();
    final shown = loading ? [_placeholder, _placeholder] : items.take(5);
    return ShelfFrame(
      title: getString.reactionsTitle,
      trailing: canPost
          ? IconButton(
              tooltip: getString.reactionsAdd,
              icon: const Icon(Icons.add_comment_rounded),
              onPressed: _compose,
            )
          : null,
      child: Skeletonizer(
        enabled: loading,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
          child: Column(
            children: [
              for (final (i, r) in shown.indexed)
                Padding(
                  padding: EdgeInsets.only(bottom: Dimens.gapSm),
                  child: loading
                      ? _tile(context, r)
                      : _tile(context, r).animateStagger(i),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _compose() async {
    final text = await showReactionComposer(context, widget.view.reactionLimit);
    if (text == null || text.isEmpty) return;
    await state.post(text);
  }

  Widget _tile(BuildContext context, MediaReaction r) {
    final scheme = context.colorScheme;
    return SectionCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAvatar(url: r.user?.pfp, name: r.user?.name ?? '?', size: 34),
          SizedBox(width: Dimens.gapSm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  r.user?.name ?? '',
                  style: context.textTheme.titleSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: Dimens.gapXs),
                Text(r.text, style: context.textTheme.bodyMedium),
              ],
            ),
          ),
          SizedBox(width: Dimens.gapSm),
          Clickable(
            onTap: state.canReact && !r.mine ? () => state.vote(r) : null,
            child: Padding(
              padding: EdgeInsets.all(Dimens.gapXs),
              child: Column(
                children: [
                  Icon(
                    r.voted
                        ? Icons.thumb_up_alt_rounded
                        : Icons.thumb_up_off_alt_rounded,
                    size: 18,
                    color: r.voted ? scheme.primary : scheme.onSurfaceVariant,
                  ),
                  SizedBox(height: Dimens.gapXs),
                  Text(
                    '${r.votes}',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: r.voted ? scheme.primary : scheme.onSurfaceVariant,
                      fontWeight: r.voted ? FontWeight.w600 : null,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
