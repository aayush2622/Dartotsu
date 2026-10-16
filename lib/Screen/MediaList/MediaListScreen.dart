import '../../Utils/Extensions/StringExtensions.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/MediaRows.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../Feed/FeedNavigation.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../Detail/ListEditorSheet.dart';
import '../../Widgets/Components/AppTabs.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/AppSheet.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Nav/DpadLayers.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'MediaListState.dart';

class MediaListScreen extends StatefulWidget {
  final MediaService service;
  final bool anime;
  final String? userId;
  final String? userName;

  const MediaListScreen({
    super.key,
    required this.service,
    required this.anime,
    this.userId,
    this.userName,
  });

  @override
  State<MediaListScreen> createState() => _MediaListScreenState();
}

class _MediaListScreenState extends BaseScreen<MediaListScreen>
    with
        TickerProviderStateMixin,
        ScreenStateHost<MediaListScreen, MediaListState> {
  @override
  MediaListState buildState() => MediaListState(
    service: widget.service,
    anime: widget.anime,
    userId: widget.userId,
    userName: widget.userName,
  );

  @override
  DiscordPresence? get presence => state.presence;

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: state.searching.value ? null : state.title,
        titleWidget: state.searching.value ? _searchField(context) : null,
        actions: _actions(context),
      ),
      body: _body(context),
    );
  }

  Widget _searchField(BuildContext context) => TextField(
    controller: state.searchController,
    autofocus: true,
    onChanged: (v) => state.query.value = v,
    decoration: InputDecoration(
      hintText: getString.listSearchHint,
      border: InputBorder.none,
      filled: false,
    ),
  );

  List<Widget> _actions(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return [
      IconButton(
        tooltip: getString.listSearchHint,
        icon: Icon(
          state.searching.value ? Icons.close_rounded : Icons.search_rounded,
        ),
        onPressed: state.toggleSearch,
      ),
      IconButton(
        tooltip: getString.listRandom,
        icon: const Icon(Icons.casino_rounded),
        onPressed: state.loading ? null : () => _random(context),
      ),
      IconButton(
        tooltip: getString.listSort,
        icon: Icon(
          Icons.sort_rounded,
          color: state.sort.value == ListSort.listOrder && !state.reversed.value
              ? null
              : scheme.tertiary,
        ),
        onPressed: state.loading ? null : () => _sortSheet(context),
      ),
      IconButton(
        tooltip: getString.listFilter,
        icon: Icon(
          Icons.filter_list_rounded,
          color: state.filtered ? scheme.tertiary : null,
        ),
        onPressed: state.loading ? null : () => _filterSheet(context),
      ),
    ];
  }

  void _random(BuildContext context) {
    final media = state.randomPick(state.shown.keys.toList());
    if (media == null) return;
    openDetail(context, widget.service, media, heroTag: 'list:${media.id}');
  }

  String _sortLabel(ListSort s) => switch (s) {
    ListSort.listOrder => getString.listSortDefault,
    ListSort.score => getString.listSortScore,
    ListSort.title => getString.listSortTitle,
    ListSort.updated => getString.listSortUpdated,
    ListSort.progress => getString.listSortProgress,
    ListSort.released => getString.listSortReleased,
    ListSort.average => getString.listSortAverage,
  };

  void _sortSheet(BuildContext context) => showCustomBottomDialog(
    context,
    AppSheet(
      title: getString.listSort,
      child: Watch(
        () => ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(24, 4, 24, 24),
          children: [
            AppChoiceChips<ListSort>(
              value: state.sort.value,
              onChanged: (v) => state.sort.value = v,
              options: [
                for (final s in ListSort.values)
                  AppSegment(s, label: _sortLabel(s)),
              ],
            ),
            const SizedBox(height: 12),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(getString.listReverse),
              value: state.reversed.value,
              onChanged: (v) => state.reversed.value = v,
            ),
          ],
        ),
      ),
    ),
  );

  void _filterSheet(BuildContext context) => showCustomBottomDialog(
    context,
    AppSheet(
      title: getString.listFilter,
      trailing: Watch(
        () => TextButton(
          onPressed: state.filtered ? state.clearFilters : null,
          child: Text(getString.listFilterClear),
        ),
      ),
      child: Watch(() {
        Widget group(
          String label,
          List<String> options,
          Live<Set<String>> sel,
        ) {
          if (options.isEmpty) return const SizedBox.shrink();
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final o in options)
                      FilterChip(
                        label: Text(o.replaceAll('_', ' ').titleCase),
                        selected: sel.value.contains(o),
                        showCheckmark: false,
                        onSelected: (_) => state.toggle(sel, o),
                      ),
                  ],
                ),
              ],
            ),
          );
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 4, 24, 24),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                group(
                  getString.listFilterFormat,
                  state.formatOptions,
                  state.formats,
                ),
                group(
                  getString.listFilterStatus,
                  state.statusOptions,
                  state.statuses,
                ),
                group(
                  getString.listFilterGenres,
                  state.genreOptions,
                  state.genres,
                ),
              ],
            ),
          ),
        );
      }),
    ),
  );

  Widget _body(BuildContext context) {
    final loading = state.loading;
    final lists = state.shown;
    if (lists.isEmpty) return _empty(context);
    if (!loading &&
        lists.values.every((e) => e.isEmpty) &&
        (state.filtered || state.query.value.isNotEmpty)) {
      return EmptyState(
        icon: Icons.filter_alt_off_rounded,
        title: getString.listNoMatches,
        actionLabel: getString.listFilterClear,
        onAction: () {
          state.clearFilters();
          state.searchController.clear();
          state.query.value = '';
        },
      );
    }

    final keys = lists.keys.toList();
    final controller = state.controllerFor(keys.length);
    return Column(
      children: [
        ScrollConfig(
          context,
          child: Skeletonizer(
            enabled: loading,
            child: AppTabs(
              controller: controller,
              items: [
                for (final key in keys)
                  AppTabItem(
                    loading ? getString.loadingList : key,
                    count: loading ? 0 : lists[key]!.length,
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ScrollConfig(
            context,
            child: TabBarView(
              controller: controller,
              children: [
                for (final key in keys)
                  _grid(context, lists[key]!, skeleton: loading),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _empty(BuildContext context) {
    return RefreshIndicator(
      onRefresh: state.load,
      child: ListView(
        children: [
          SizedBox(
            height: 360,
            child: EmptyState(
              icon: state.failed.value
                  ? Icons.cloud_off_rounded
                  : Icons.inbox_rounded,
              failed: state.failed.value,
              title: state.failed.value
                  ? getString.couldNotLoadList
                  : getString.nothingHereYet,
            ),
          ),
        ],
      ),
    );
  }

  Widget _grid(
    BuildContext context,
    List<Media> media, {
    required bool skeleton,
  }) {
    final style = tryFind<CardStyleController>()?.current ?? CardStyle.cozy;
    final grid = DpadColumn(
      child: GridView.builder(
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          Dimens.gapSm,
          Dimens.pagePad,
          Dimens.gapXl,
        ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: style.itemWidth + Dimens.cardGap + 6,
          mainAxisExtent: style.itemHeightFor(context),
          crossAxisSpacing: Dimens.cardGap,
          mainAxisSpacing: Dimens.gap,
        ),
        itemCount: media.length,
        itemBuilder: (_, i) => Align(
          alignment: Alignment.topCenter,
          child: _card(media[i], i, skeleton: skeleton),
        ),
      ),
    );
    final scrolling = ScrollConfig(context, child: grid);
    return skeleton ? Skeletonizer(child: scrolling) : scrolling;
  }

  Widget _card(Media media, int index, {required bool skeleton}) {
    final facts = MediaRowFacts(media);
    final tag = skeleton ? null : 'list:${media.id}';
    return PosterCard(
      heroTag: tag,
      imageUrl: media.cover,
      title: media.mainName,
      subtitle: skeleton
          ? null
          : '${media.userProgress ?? '~'} | ${facts.total ?? '~'}',
      progress: skeleton ? null : facts.progress,
      progressText: skeleton
          ? null
          : '${media.userProgress ?? '~'} · ${facts.total ?? '~'}',
      score: skeleton
          ? null
          : (media.userScore ?? 0) > 0
          ? media.userScore! / 10
          : facts.score,
      scoreHighlight: (media.userScore ?? 0) > 0,
      airing: !skeleton && media.status == 'RELEASING',
      onTap: skeleton
          ? null
          : () => openDetail(context, widget.service, media, heroTag: tag),
      onLongPress: skeleton
          ? null
          : () => showQuickListEditor(context, widget.service, media),
    );
  }
}
