import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Api/Services/MangaBaka/Data/Community.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/CopyToClip.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/Clickable.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../Feed/FeedNavigation.dart';
import 'Components/StackCard.dart';
import 'StackState.dart';
import 'StacksScreen.dart';

class StackScreen extends StatefulWidget {
  final MangaBakaStack stack;

  const StackScreen({super.key, required this.stack});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends BaseScreen<StackScreen>
    with ScreenStateHost<StackScreen, StackState> {
  @override
  StackState buildState() => StackState(widget.stack);

  @override
  Widget buildContent(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppScreenBar(
      title: widget.stack.title,
      actions: [
        PopupMenuButton<String>(
          onSelected: (v) {
            final url = state.stack.value.url;
            switch (v) {
              case 'save':
                state.setSaved(true);
              case 'unsave':
                state.setSaved(false);
              case 'open':
                openLinkInBrowser(url);
              case 'copy':
                copyToClipboard(url);
            }
          },
          itemBuilder: (_) => [
            PopupMenuItem(value: 'save', child: Text(getString.stackSave)),
            PopupMenuItem(value: 'unsave', child: Text(getString.stackUnsave)),
            if (widget.stack.url.isNotEmpty) ...[
              PopupMenuItem(
                value: 'open',
                child: Text(getString.openInBrowser),
              ),
              PopupMenuItem(value: 'copy', child: Text(getString.copyLink)),
            ],
          ],
        ),
      ],
    ),
    body: Watch(() => _body(context)),
  );

  Widget _header(BuildContext context, MangaBakaStack stack) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final description = stack.description?.trim() ?? '';
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        Dimens.gapSm,
        Dimens.pagePad,
        Dimens.gap,
      ),
      child: SectionCard(
        padding: EdgeInsets.all(Dimens.cardPad),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StackCovers(covers: stack.covers, height: 96),
                SizedBox(width: Dimens.gap),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stack.title,
                        style: text.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (stack.owner.username.isNotEmpty) ...[
                        SizedBox(height: Dimens.gapXs),
                        Clickable(
                          onTap: () => openStacksBy(context, stack.owner),
                          child: Text(
                            getString.stackBy(stack.owner.label),
                            style: text.bodyMedium?.copyWith(
                              color: scheme.primary,
                            ),
                          ),
                        ),
                      ],
                      SizedBox(height: Dimens.gapXs),
                      Text(
                        [
                          getString.stackSeriesCount(stack.entryCount),
                          getString.stackSavesCount(stack.saveCount),
                        ].join(' · '),
                        style: text.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (description.isNotEmpty) ...[
              SizedBox(height: Dimens.gap),
              Text(description, style: text.bodyMedium),
            ],
          ],
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    final stack = state.stack.value;
    final loading = state.loading.value;
    final entries = stack.entries;
    final style = tryFind<CardStyleController>()?.current ?? CardStyle.cozy;
    final empty = !loading && entries.isEmpty;
    return ScrollConfig(
      context,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _header(context, stack)),
          if (state.failed.value && entries.isEmpty)
            SliverFillRemaining(
              hasScrollBody: false,
              child: EmptyState(
                icon: Icons.cloud_off_rounded,
                failed: true,
                title: getString.stacksCouldntLoad,
                actionLabel: getString.retry,
                onAction: state.load,
              ),
            )
          else if (empty)
            SliverFillRemaining(
              hasScrollBody: false,
              child: EmptyState(
                icon: Icons.collections_bookmark_rounded,
                title: getString.stackEmptyEntries,
              ),
            )
          else
            SliverPadding(
              padding: EdgeInsets.fromLTRB(
                Dimens.pagePad,
                0,
                Dimens.pagePad,
                Dimens.gapXl * 3,
              ),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: style.itemWidth + Dimens.cardGap + 6,
                  mainAxisExtent: style.itemHeightFor(context),
                  crossAxisSpacing: Dimens.cardGap,
                  mainAxisSpacing: Dimens.gap,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: loading && entries.isEmpty ? 9 : entries.length,
                  (context, i) {
                    if (loading && entries.isEmpty) {
                      return const Skeletonizer(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: PosterCard(title: 'Loading title'),
                        ),
                      );
                    }
                    final entry = entries[i];
                    return Align(
                      key: ValueKey('stack:${entry.media.id}'),
                      alignment: Alignment.topCenter,
                      child: PosterCard(
                        imageUrl: entry.media.cover,
                        title: entry.media.mainName,
                        subtitle: entry.note?.isNotEmpty == true
                            ? entry.note
                            : '#${entry.rank}',
                        onTap: () =>
                            openDetail(context, state.service, entry.media),
                      ),
                    );
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
