import 'dart:async';

import 'package:flutter/material.dart';

import '../../Utils/Extensions/ClickCursor.dart';

import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Author.dart';
import '../../Core/Services/Model/Character.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Model/Studio.dart';
import '../../Core/Services/Model/User.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Model/SearchResults.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/MediaRows.dart';
import '../../Widgets/Shelf/MediaSection.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../Social/Components/UserCard.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../Detail/ListEditorSheet.dart';
import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Nav/DpadLayers.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'SearchState.dart';

class SearchScreen extends StatefulWidget {
  final MediaType type;
  final SearchScreenView view;
  final String? query;
  final String? genre;
  final String? tag;

  const SearchScreen({
    super.key,
    required this.view,
    required this.type,
    this.query,
    this.genre,
    this.tag,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends BaseScreen<SearchScreen>
    with ScreenStateHost<SearchScreen, SearchState> {
  @override
  SearchState buildState() => SearchState(
    initialType: widget.type,
    view: widget.view,
    initialQuery: widget.query,
    initialGenre: widget.genre,
    initialTag: widget.tag,
  );

  // --- header -------------------------------------------------------------

  Widget _searchBar() {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
        Dimens.gap,
        Dimens.gapSm,
        Dimens.pagePad,
        Dimens.gapXs,
      ),
      child: Row(
        children: [
          const AppBackButton(),
          Expanded(
            child: Watch(() {
              final hint = SearchState.label(state.type.value);
              return TextField(
                controller: state.controller,
                autofocus: true,
                textInputAction: TextInputAction.search,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  filled: true,
                  fillColor: scheme.onSurface.withValues(alpha: 0.08),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  suffixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (state.canSearchBarcode)
                          IconButton(
                            tooltip: getString.barcodeTooltip,
                            icon: Icon(
                              Icons.qr_code_scanner_rounded,
                              color: scheme.onSurface,
                            ),
                            onPressed: () => unawaited(state.searchByBarcode()),
                          ),
                        if (state.canSearchImage)
                          IconButton(
                            tooltip:
                                state.type.value == SearchType.MANGA ||
                                    state.type.value == SearchType.NOVEL
                                ? getString.sauceTooltip
                                : getString.imageSearchTooltip,
                            icon: Icon(
                              Icons.image_search_rounded,
                              color: scheme.onSurface,
                            ),
                            onPressed: () => unawaited(state.searchByImage()),
                          ),
                        Icon(Icons.search_rounded, color: scheme.onSurface),
                      ],
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(
                      color: scheme.primaryContainer,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(
                      color: scheme.primaryContainer,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: scheme.primary, width: 2),
                  ),
                ),
                onChanged: state.onTermChanged,
                onSubmitted: (v) {
                  state.remember(v);
                  state.useTerm(v.trim());
                },
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _typeChips() {
    final types = widget.view.searchTypes;
    if (types.length < 2) return const SizedBox.shrink();
    return SizedBox(
      height: 48,
      child: ScrollConfig(
        context,
        child: Watch(() {
          final selected = state.type.value;
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: Dimens.gap, vertical: 6),
            itemCount: types.length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (_, i) => ChoiceChip(
              mouseCursor: kClickCursor,
              label: Text(SearchState.label(types[i])),
              selected: selected == types[i],
              showCheckmark: false,
              onSelected: (_) => state.setType(types[i]),
            ),
          );
        }),
      ),
    );
  }

  Widget _checkbox(String label, bool value, ValueChanged<bool> onChanged) =>
      InkWell(
        mouseCursor: kClickCursor,
        borderRadius: BorderRadius.circular(12),
        onTap: () => onChanged(!value),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(end: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                value: value,
                visualDensity: VisualDensity.compact,
                onChanged: (v) => onChanged(v ?? false),
              ),
              Text(label, style: context.textTheme.bodyMedium),
            ],
          ),
        ),
      );

  static const _chipFade = 28.0;

  Widget _fadeEnd(Widget child) => ShaderMask(
    blendMode: BlendMode.dstIn,
    shaderCallback: (rect) => LinearGradient(
      begin: AlignmentDirectional.centerStart,
      end: AlignmentDirectional.centerEnd,
      colors: const [Colors.white, Colors.white, Colors.transparent],
      stops: [0, 1 - _chipFade / rect.width, 1],
    ).createShader(rect, textDirection: Directionality.of(context)),
    child: child,
  );

  Widget _mediaHeader() => Watch(() {
    if (!state.isMedia) return const SizedBox.shrink();
    final spec = state.spec;
    final q = state.query.value;
    final chips = q.toChipList();
    return Column(
      children: [
        if (spec.onList || spec.notOnList || spec.adult)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.gapSm),
            child: Row(
              children: [
                if (spec.onList)
                  _checkbox(getString.listOnly, q.onList == true, (v) {
                    q.onList = v ? true : null;
                    state.restart();
                  }),
                if (spec.notOnList)
                  _checkbox(getString.notInList, q.onList == false, (v) {
                    q.onList = v ? false : null;
                    state.restart();
                  }),
                const Spacer(),
                if (spec.adult)
                  _checkbox('Adult', q.isAdult ?? false, (v) {
                    q.isAdult = v ? true : null;
                    state.restart();
                  }),
              ],
            ),
          ),
        Row(
          children: [
            Expanded(
              child: chips.isEmpty
                  ? const SizedBox(height: 48)
                  : SizedBox(
                      height: 48,
                      child: _fadeEnd(
                        ScrollConfig(
                          context,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsetsDirectional.only(
                              start: Dimens.gap,
                              end: _chipFade,
                              top: 6,
                              bottom: 6,
                            ),
                            itemCount: chips.length,
                            separatorBuilder: (_, _) =>
                                const SizedBox(width: 6),
                            itemBuilder: (_, i) => InputChip(
                              mouseCursor: kClickCursor,
                              label: Text(chips[i].text.replaceAll('_', ' ')),
                              onDeleted: () => state.removeChip(chips[i]),
                              visualDensity: VisualDensity.compact,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
            if (!spec.isEmpty)
              Padding(
                padding: EdgeInsetsDirectional.only(end: Dimens.pagePad),
                child: FilledButton.tonalIcon(
                  onPressed: state.openFilters,
                  icon: const Icon(Icons.filter_alt_rounded),
                  label: Text(getString.filter),
                ),
              ),
          ],
        ),
      ],
    );
  });

  Widget _resultsHeader() => Watch(() {
    if (!state.hasCriteria) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
        Dimens.pagePad,
        Dimens.gapXs,
        Dimens.gapSm,
        0,
      ),
      child: Row(
        children: [
          Text(
            getString.searchResults,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const Spacer(),
          if (state.isMedia)
            for (final (mode, icon) in const [
              (ResultView.grid, Icons.grid_view_rounded),
              (ResultView.list, Icons.view_list_rounded),
              (ResultView.banner, Icons.view_agenda_rounded),
            ])
              IconButton(
                onPressed: () {
                  state.mode.value = mode;
                  viewPref.rx.value = mode.name;
                },
                icon: Icon(icon),
                color: state.mode.value == mode
                    ? scheme.onSurface
                    : scheme.onSurface.withValues(alpha: 0.33),
              ),
        ],
      ),
    );
  });

  // --- body ---------------------------------------------------------------

  Widget _historyView() => Watch(() {
    state.historyTick.value;
    final items = state.history;
    if (items.isEmpty) return _empty();
    final scheme = context.colorScheme;
    return ScrollConfig(
      context,
      child: ListView(
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          Dimens.gapSm,
          Dimens.pagePad,
          Dimens.gapXl,
        ),
        children: [
          Row(
            children: [
              Text(
                getString.recentSearches,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  saveCustomData<List<String>>(
                    state.historyKey,
                    <String>[],
                    location: PrefLocation.CACHE,
                  );
                  state.historyTick.value++;
                },
                child: Text(getString.clear),
              ),
            ],
          ),
          for (final term in items)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Material(
                color: scheme.surfaceContainerLow.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(14),
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                  contentPadding: const EdgeInsetsDirectional.only(
                    start: 18,
                    end: 4,
                  ),
                  title: Text(
                    term,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.close_rounded, size: 18),
                    onPressed: () => state.forget(term),
                  ),
                  onTap: () => state.useTerm(term),
                ),
              ),
            ),
        ],
      ),
    );
  });

  Widget _body() => Watch(() {
    if (!state.hasCriteria) return _historyView();
    if (state.loading.value && state.items.isEmpty) {
      return _grid(_skeletons(), skeleton: true);
    }
    if (state.items.isEmpty) return _empty();
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.depth == 0) {
          if (state.hasMore &&
              n.metrics.pixels > n.metrics.maxScrollExtent - 600) {
            unawaited(state.search());
          }
        }
        return false;
      },
      child: state.isMedia && state.mode.value != ResultView.grid
          ? _rows(banner: state.mode.value == ResultView.banner)
          : _grid([for (final item in state.items) _card(item)]),
    );
  });

  Widget _rows({required bool banner}) {
    final items = state.items.whereType<Media>().toList();
    return ScrollConfig(
      context,
      child: ListView.separated(
        controller: state.scroll,
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          Dimens.gapSm,
          Dimens.pagePad,
          Dimens.gapXl,
        ),
        itemCount: items.length,
        separatorBuilder: (_, _) => SizedBox(height: Dimens.gapSm),
        itemBuilder: (_, i) {
          final m = items[i];
          final tag = 'search:${m.id}';
          return banner
              ? MediaBannerTile(
                  media: m,
                  tag: tag,
                  onTap: () => state.open(m, tag),
                )
              : MediaListTile(
                  media: m,
                  tag: tag,
                  onTap: () => state.open(m, tag),
                );
        },
      ),
    );
  }

  static const _shelf = MediaSection(data: MediaSectionData(type: 0));

  Widget _card(Object item, {bool skeleton = false}) {
    if (item is Media) {
      final shelf = _shelf.toItem(context, 0, item);
      final tag = skeleton ? null : 'search:${item.id}';
      return PosterCard.item(
        shelf,
        heroTag: tag,
        overlay: widget.view.overlay(item),
        skeleton: skeleton,
        onTap: () => state.open(item, tag!),
        onLongPress: () => showQuickListEditor(
          context,
          find<MediaServiceController>().currentService.value,
          item,
        ),
      );
    }
    return switch (item) {
      Character c => PosterCard(
        imageUrl: c.image,
        title: c.name ?? '',
        subtitle: c.gender,
        onTap: () => state.open(c, ''),
      ),
      Author a => PosterCard(
        imageUrl: a.image,
        title: a.name ?? '',
        onTap: () => state.open(a, ''),
      ),
      Studio s => _entityTile(
        icon: Icons.business_rounded,
        title: s.name,
        subtitle: s.favourites == null ? null : '${s.favourites} favourites',
        onTap: () => state.open(s, ''),
      ),
      User u =>
        find<MediaServiceController>().currentService.value.socialView != null
            ? UserCard(
                wide: true,
                service: find<MediaServiceController>().currentService.value,
                user: UserBrief(
                  id: '${u.id}',
                  name: u.name,
                  avatar: u.pfp,
                  banner: u.banner,
                ),
              )
            : _userTile(u),
      _ => const SizedBox.shrink(),
    };
  }

  Widget _entityTile({
    required IconData icon,
    required String title,
    String? subtitle,
    required VoidCallback onTap,
  }) {
    final scheme = context.colorScheme;
    return DpadTap(
      onTap: onTap,
      borderRadius: BorderRadius.circular(Dimens.radius),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerLow.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(Dimens.radius),
        ),
        child: Row(
          children: [
            Icon(icon, color: scheme.primary),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _userTile(User u) {
    final scheme = context.colorScheme;
    return DpadTap(
      onTap: () => state.open(u, ''),
      borderRadius: BorderRadius.circular(Dimens.radius),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerLow.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(Dimens.radius),
        ),
        child: Row(
          children: [
            ClipOval(
              child: SizedBox(
                width: 48,
                height: 48,
                child: cachedNetworkImage(
                  imageUrl: u.pfp,
                  fit: BoxFit.cover,
                  placeholder: (_, _) =>
                      ColoredBox(color: scheme.surfaceContainerHighest),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                u.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool get _tileResults =>
      state.type.value == SearchType.STUDIO ||
      state.type.value == SearchType.USER;

  Widget _grid(List<Widget> children, {bool skeleton = false}) {
    final style = tryFind<CardStyleController>()?.current ?? CardStyle.cozy;
    final padding = EdgeInsets.fromLTRB(
      Dimens.pagePad,
      Dimens.gapSm,
      Dimens.pagePad,
      Dimens.gapXl,
    );
    final grid = _tileResults && !skeleton
        ? DpadColumn(
            child: GridView.builder(
              controller: state.scroll,
              padding: padding,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 360,
                mainAxisExtent: state.type.value == SearchType.USER ? 92 : 72,
                crossAxisSpacing: Dimens.gap,
                mainAxisSpacing: Dimens.gapSm,
              ),
              itemCount: children.length,
              itemBuilder: (_, i) => children[i],
            ),
          )
        : DpadColumn(
            child: GridView.builder(
              controller: state.scroll,
              padding: padding,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: style.itemWidth + Dimens.cardGap + 6,
                mainAxisExtent: style.itemHeightFor(context),
                crossAxisSpacing: Dimens.cardGap,
                mainAxisSpacing: Dimens.gap,
              ),
              itemCount: children.length,
              itemBuilder: (_, i) =>
                  Align(alignment: Alignment.topCenter, child: children[i]),
            ),
          );
    final scrolling = ScrollConfig(context, child: grid);
    return skeleton ? Skeletonizer(child: scrolling) : scrolling;
  }

  List<Widget> _skeletons() => [
    for (var i = 0; i < 12; i++) _card(Media.skeleton(), skeleton: true),
  ];

  Widget _empty() {
    if (state.failed.value) {
      return EmptyState(
        icon: Icons.cloud_off_rounded,
        title: getString.couldNotLoadResults,
        failed: true,
        onAction: () {
          state.hasMore = true;
          state.restart();
        },
      );
    }
    final searched = state.hasCriteria && !state.loading.value;
    return EmptyState(
      icon: searched ? Icons.search_off_rounded : Icons.search_rounded,
      title: searched ? getString.nothingMatched : getString.searchOrSetFilter,
    );
  }

  @override
  DiscordPresence? get presence => DiscordPresence.browsing('Searching');

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          _searchBar(),
          _typeChips(),
          _mediaHeader(),
          _resultsHeader(),
          Expanded(child: _body()),
        ],
      ),
    );
  }
}
