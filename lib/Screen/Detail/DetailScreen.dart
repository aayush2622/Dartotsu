import 'dart:async';
import 'package:flutter/material.dart';
import '../../Widgets/Components/ThemedContainer.dart';

import '../../Core/Offline/OfflineMode.dart';
import '../../Core/State/State.dart';

import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../Navbar.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../Widgets/ScreenWidgetView.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../Widgets/Components/DataSection.dart';
import '../Share/ShareCardSheet.dart';
import 'Comments/CommentsSection.dart';
import 'Components/MangaUpdatesSection.dart';
import 'Components/ThemesSection.dart';
import 'Watch/WatchSection.dart';
import 'Components/DetailHeader.dart';
import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'DetailState.dart';

class DetailScreen extends StatefulWidget {
  final Media media;
  final DetailScreenView view;
  final Mutations? mutations;
  final String? heroTag;
  final int? commentId;

  const DetailScreen({
    super.key,
    required this.media,
    required this.view,
    this.mutations,
    this.heroTag,
    this.commentId,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends BaseScreen<DetailScreen>
    with ScreenStateHost<DetailScreen, DetailState> {
  @override
  bool get safeArea => false;

  @override
  DetailState buildState() => DetailState(
    media: widget.media,
    view: widget.view,
    mutations: widget.mutations,
    heroTag: widget.heroTag,
    commentId: widget.commentId,
  );

  @override
  String? get glassBackgroundUrl =>
      state.glassImage ?? super.glassBackgroundUrl;

  @override
  DiscordPresence? get presence => state.presence;

  @override
  Widget buildContent(BuildContext context) {
    final content = RefreshIndicator(
      onRefresh: () => state.load(force: true),
      child: Watch(
        () => CustomScrollConfig(
          context,
          physics: const AlwaysScrollableScrollPhysics(),
          controller: state.scroll,
          children: [
            SliverPersistentHeader(
              pinned: true,
              delegate: DetailHeaderDelegate(
                host: state.host,
                top: MediaQuery.paddingOf(context).top,
                glass: find<ThemeController>().useGlassMode.value,
                listLabel: state.listLabel,
                sourceName: state.view.sourceName,
                onEditList: state.mutations == null ? null : state.editList,
                onShareCard: () => unawaited(
                  showShareCard(
                    context,
                    state.view.service,
                    state.host.media.value,
                  ),
                ),
                actionFocus: state.actionFocus,
                toolbarLane: state.lane(0),
                actionsLane: state.lane(1),
                onLaneEdge: state.laneEdge,
                horizontalEdge: state.horizontalEdge,
              ),
            ),
            _sheet(context),
          ],
        ),
      ),
    );

    final nav = Watch(
      () => FloatingBottomNavBar(
        standalone: true,
        laneKey: state.navLane,
        selectedIndex: state.tab.value,
        onTabSelected: state.selectTab,
        items: [
          NavItem(index: 0, icon: Icons.info_rounded, label: getString.navInfo),
          NavItem(
            index: 1,
            icon: state.isAnime
                ? Icons.movie_filter_rounded
                : Icons.import_contacts_rounded,
            label: (state.isAnime ? getString.watch : getString.read)
                .toUpperCase(),
          ),
          if (!find<OfflineMode>().isOffline.value)
            NavItem(
              index: 2,
              icon: Icons.chat_bubble_rounded,
              label: getString.navComments,
            ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: context.isPhone
          ? Stack(
              children: [
                Positioned.fill(child: content),
                nav,
              ],
            )
          : Row(
              children: [
                SizedBox(width: 100, child: nav),
                Expanded(child: content),
              ],
            ),
    );
  }

  Widget _sheet(BuildContext context) {
    final scheme = context.colorScheme;
    final glass = find<ThemeController>().useGlassMode.value;
    final current = state.tab.value;
    final visited = state.visited.toList();
    Widget keep(int index, Widget sliver) => SliverVisibility(
      visible: current == index,
      maintainState: true,
      sliver: sliver,
    );
    return DecoratedSliver(
      decoration: BoxDecoration(
        color: glass ? scheme.surface.withValues(alpha: 0.5) : scheme.surface,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Dimens.radius),
        ),
      ),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: Dimens.gapLg)),
          keep(0, _infoSliver()),
          if (visited.contains(1))
            keep(
              1,
              WatchSection(
                key: ValueKey('watch-${state.host.media.value.id}'),
                service: state.view.service,
                media: state.host.media,
                mutations: state.mutations,
              ),
            ),
          if (visited.contains(2))
            keep(
              2,
              SliverToBoxAdapter(
                child: CommentsSection(
                  key: ValueKey('comments-${state.host.media.value.id}'),
                  service: state.view.service,
                  media: state.host.media,
                  scroll: state.scroll,
                  focusId: state.commentId,
                ),
              ),
            ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: context.isPhone ? 120.bottomBar() : Dimens.gapXl * 2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoSliver() {
    if (!state.ready.value) return SliverToBoxAdapter(child: _skeleton());
    final tagsAt = state.widgets.lastIndexWhere(_isTags);
    final hasTags = tagsAt >= 0;
    final items = <Widget>[
      if (state.error.value != null) _errorCard(),
      for (final (i, item) in state.widgets.indexed) ...[
        KeyedSubtree(
          key: ValueKey('detail-$i-${item.title ?? item.type}'),
          child: DpadLane(
            laneKey: state.lane(i + 2),
            memoryKey: 'detail-${state.host.media.value.id}-$i',
            verticalEdge: DpadEdgeBehavior.stop,
            horizontalEdge: state.horizontalEdge,
            onEdge: (d) => state.laneEdge(i + 2, d),
            child:
                ScreenWidgetView(
                  item,
                  heroPrefix: 'detail:${state.host.media.value.id}',
                  onMediaTap: state.open,
                  onCharacterTap: state.openCharacter,
                  onStaffTap: state.openStaff,
                ).animateFadeUp(
                  begin: 0.06,
                  delay: Duration(milliseconds: 40 * (i % 6)),
                  duration: 350,
                ),
          ),
        ),
        if (i == tagsAt) _extra(),
      ],
      if (!hasTags) _extra(),
    ];
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i) => Padding(
          padding: EdgeInsets.only(top: i == 0 ? 0 : Dimens.gapLg),
          child: items[i],
        ),
        childCount: items.length,
      ),
    );
  }

  bool _isTags(ScreenWidget item) {
    if (item.type != ScreenWidgetType.data) return false;
    final title = (item.title ?? '').toLowerCase();
    return const {'genres', 'tags'}.contains(title) ||
        title == getString.genres.toLowerCase() ||
        title == getString.tags.toLowerCase();
  }

  Widget _extra() {
    if (find<OfflineMode>().isOffline.value) return const SizedBox.shrink();
    final media = state.host.media.value;
    return state.isAnime
        ? ThemesSection(
            key: ValueKey('themes-${media.id}'),
            service: state.view.service,
            media: media,
          )
        : MangaUpdatesSection(
            key: ValueKey('mu-${media.id}'),
            service: state.view.service,
            media: media,
          );
  }

  Widget _errorCard() => Padding(
    padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
    child: Material(
      color: context.colorScheme.errorContainer,
      borderRadius: Dimens.borderSm,
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        leading: Icon(
          Icons.cloud_off_rounded,
          color: context.colorScheme.onErrorContainer,
        ),
        title: Text(
          getString.couldntLoadAllDetails,
          style: context.textTheme.bodyLarge?.copyWith(
            color: context.colorScheme.onErrorContainer,
          ),
        ),
        trailing: FilledButton.tonal(
          onPressed: () => state.load(force: true),
          child: Text(getString.retry),
        ),
      ),
    ),
  );

  Widget _skeleton() => Skeletonizer(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
          child: ThemedContainer(
            blur: false,
            color: context.colorScheme.surfaceContainerLow,
            borderRadius: Dimens.borderSm,
            padding: EdgeInsets.symmetric(vertical: Dimens.gapLg - 2),
            child: Row(
              children: [
                for (final label in const [
                  'Score',
                  'Popularity',
                  'Favorites',
                  'Duration',
                ])
                  Expanded(
                    child: Column(
                      children: [
                        Text('8.8', style: context.textTheme.titleLarge),
                        Text(label, style: context.textTheme.labelMedium),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
        SizedBox(height: Dimens.gapLg),
        DataSection(
          title: getString.synopsis,
          data: const ScreenData(
            text:
                'Loading the details for this title, this should only take a '
                'moment. Loading the details for this title, this should only '
                'take a moment.',
          ),
        ),
        SizedBox(height: Dimens.gapLg),
        DataSection(
          title: getString.details,
          data: const ScreenData(
            rows: [
              ('Episodes', '12'),
              ('Format', 'TV'),
              ('Source', 'Manga'),
              ('Studio', 'Studio Name'),
              ('Season', 'Summer 2016'),
              ('Aired', 'Jan 1, 2016'),
            ],
          ),
        ),
      ],
    ),
  );
}
