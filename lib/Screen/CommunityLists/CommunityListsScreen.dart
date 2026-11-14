import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/CommunityList.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppTabs.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import 'Components/CommunityListCard.dart';
import 'CommunityListsState.dart';

class CommunityListsScreen extends StatefulWidget {
  final CommunityListsView view;

  const CommunityListsScreen({super.key, required this.view});

  @override
  State<CommunityListsScreen> createState() => _CommunityListsScreenState();
}

class _CommunityListsScreenState extends BaseScreen<CommunityListsScreen>
    with
        SingleTickerProviderStateMixin,
        ScreenStateHost<CommunityListsScreen, CommunityListsState> {
  @override
  CommunityListsState buildState() => CommunityListsState(widget.view);

  @override
  Widget buildContent(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppScreenBar(
      title: getString.customLists,
      actions: [if (widget.view.sorts.length > 1) Watch(_sortMenu)],
      bottom: AppTabs(
        controller: state.tabs,
        items: [for (final (_, label) in widget.view.kinds) AppTabItem(label)],
      ),
    ),
    body: Watch(() => _body(context)),
  );

  Widget _sortMenu() {
    final sort = state.sort.value;
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert_rounded),
      onSelected: state.pickSort,
      itemBuilder: (_) => [
        for (final (id, label) in widget.view.sorts)
          CheckedPopupMenuItem(
            value: id,
            checked: id == sort,
            child: Text(label),
          ),
      ],
    );
  }

  Widget _body(BuildContext context) {
    final skeleton = state.first.value && state.loading.value;
    final items = state.items.toList();
    final Widget content;
    if (state.failed.value && items.isEmpty) {
      content = EmptyState(
        icon: Icons.cloud_off_rounded,
        failed: true,
        title: getString.newsCouldntLoad,
        actionLabel: getString.retry,
        onAction: () => state.load(reset: true),
      );
    } else if (!skeleton && items.isEmpty && !state.loading.value) {
      content = EmptyState(
        icon: Icons.format_list_bulleted_rounded,
        title: getString.noMatches,
      );
    } else {
      content = RefreshIndicator(
        onRefresh: () => state.load(reset: true),
        child: NotificationListener<ScrollNotification>(
          onNotification: (n) {
            if (n.metrics.extentAfter < 600) state.load();
            return false;
          },
          child: ScrollConfig(
            context,
            child: Skeletonizer(
              enabled: skeleton,
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.fromLTRB(
                  Dimens.pagePad,
                  Dimens.gapSm,
                  Dimens.pagePad,
                  120,
                ),
                itemCount: skeleton ? 8 : items.length,
                separatorBuilder: (_, _) => SizedBox(height: Dimens.gapSm),
                itemBuilder: (context, i) {
                  if (skeleton) {
                    return _tile(
                      context,
                      const CommunityList(
                        id: '',
                        title: 'List title placeholder',
                        author: 'author',
                        count: '10 anime',
                      ),
                    );
                  }
                  final tile = _tile(
                    context,
                    items[i],
                    onTap: () => widget.view.open(context, items[i]),
                  );
                  return i < 10 ? tile.animateStagger(i) : tile;
                },
              ),
            ),
          ),
        ),
      );
    }
    return content;
  }

  Widget _tile(
    BuildContext context,
    CommunityList list, {
    VoidCallback? onTap,
  }) => CommunityListCard(
    title: list.title,
    covers: list.covers.isNotEmpty
        ? list.covers
        : [if (list.cover != null) list.cover!],
    author: list.author,
    meta: [
      if (list.count.isNotEmpty) list.count,
      if (list.likes > 0) '♥ ${list.likes}',
    ].join(' · '),
    description: list.description,
    onTap: onTap,
  );
}
