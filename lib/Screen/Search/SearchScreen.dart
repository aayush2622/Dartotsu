import 'dart:async';

import 'package:flutter/material.dart';

import '../../Utils/Extensions/ClickCursor.dart';
import 'package:get/get.dart' hide ContextExtensionss;
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
import '../../Utils/Extensions/StringExtensions.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/MediaRows.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../Detail/DetailScreen.dart';
import '../Feed/FeedNavigation.dart';
import '../Social/Components/UserCard.dart';
import '../Social/SocialNavigation.dart';
import 'Components/SearchFilterSheet.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../Detail/ListEditorSheet.dart';

enum _ResultView { grid, list, banner }

const _viewPref = Pref('searchResultView', 'grid', PrefLocation.OTHER);

class SearchScreen extends StatefulWidget {
  final MediaType type;
  final SearchScreenView view;
  final String? query;

  const SearchScreen({
    super.key,
    required this.view,
    required this.type,
    this.query,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends BaseScreen<SearchScreen> {
  final _controller = TextEditingController();
  final _scroll = ScrollController();
  final _items = <Object>[].obs;
  final _loading = false.obs;
  final _showTop = false.obs;
  final _historyTick = 0.obs;
  late final _type = widget.type.searchType.obs;
  late final _mode = _ResultView.values
      .firstWhere(
        (v) => v.name == _viewPref.rx.value,
        orElse: () => _ResultView.grid,
      )
      .obs;

  late final _query = SearchResults(
    type: widget.type.searchType,
    perPage: 30,
  ).obs;

  Timer? _debounce;
  bool _hasMore = true;

  bool get _isMedia => switch (_type.value) {
    SearchType.CHARACTER ||
    SearchType.STAFF ||
    SearchType.STUDIO ||
    SearchType.USER => false,
    _ => true,
  };

  MediaType get _mediaType =>
      _type.value == SearchType.ANIME ? MediaType.anime : MediaType.manga;

  SearchFilterSpec get _spec =>
      _isMedia ? widget.view.filters(_mediaType) : SearchFilterSpec.none;

  bool get _hasCriteria =>
      (_query.value.search?.isNotEmpty ?? false) ||
      (_isMedia && _query.value.toChipList().isNotEmpty);

  @override
  void initState() {
    super.initState();
    unawaited(widget.view.prepare());
    if (widget.query != null && widget.query!.isNotEmpty) {
      _controller.text = widget.query!;
      _query.value.search = widget.query;
      _restart();
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _scroll.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onTermChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      _query.value.search = value.trim();
      _restart();
    });
  }

  void _restart() {
    _query.value.page = 1;
    _hasMore = true;
    _items.clear();
    _query.refresh();
    if (_hasCriteria) unawaited(_search());
  }

  List<Object> _pick(SearchResults res) => switch (_type.value) {
    SearchType.CHARACTER => [...?res.characters],
    SearchType.STAFF => [...?res.staff],
    SearchType.STUDIO => [...?res.studios],
    SearchType.USER => [...?res.users],
    _ => [...?res.results],
  };

  Future<void> _search() async {
    if (_loading.value || !_hasMore || !_hasCriteria) return;
    _loading.value = true;
    try {
      final res = await widget.view.search(_query.value);
      _query.value.page = (_query.value.page ?? 1) + 1;
      _hasMore = res?.hasNextPage ?? false;
      if (res != null) _items.addAll(_pick(res));
    } catch (_) {
      _hasMore = false;
    } finally {
      _loading.value = false;
    }
  }

  void _setType(SearchType t) {
    if (t == _type.value) return;
    _type.value = t;
    _query.value
      ..type = t
      ..genres = null
      ..excludedGenres = null
      ..tags = null
      ..excludedTags = null;
    _restart();
  }

  void _openFilters() => showSearchFilterSheet(
    context,
    spec: _spec,
    current: _query.value,
    onApply: (_) => _restart(),
  );

  void _removeChip(SearchChip chip) {
    _query.value.removeChip(chip);
    _restart();
  }

  String get _historyKey =>
      'search_history/${find<MediaServiceController>().currentService.value.id}/${_type.value.name}';

  List<String> get _history =>
      loadCustomData<List<String>>(_historyKey, location: PrefLocation.CACHE) ??
      const <String>[];

  void _remember(String term) {
    final t = term.trim();
    if (t.length < 2) return;
    final next = [
      t,
      ..._history.where((e) => e.toLowerCase() != t.toLowerCase()),
    ];
    saveCustomData<List<String>>(
      _historyKey,
      next.take(20).toList(),
      location: PrefLocation.CACHE,
    );
    _historyTick.value++;
  }

  void _forget(String term) {
    saveCustomData<List<String>>(
      _historyKey,
      _history.where((e) => e != term).toList(),
      location: PrefLocation.CACHE,
    );
    _historyTick.value++;
  }

  void _useTerm(String term) {
    _controller.text = term;
    _controller.selection = TextSelection.collapsed(offset: term.length);
    _debounce?.cancel();
    _query.value.search = term;
    _restart();
  }

  void _open(Object item, String tag) {
    _remember(_controller.text);
    if (item is Media) {
      final service = find<MediaServiceController>().currentService.value;
      navigateToPage(
        context,
        DetailScreen(
          media: item,
          view: service.detailView,
          mutations: service.getMutations,
          heroTag: tag,
        ),
        hero: true,
      );
      return;
    }
    final service = find<MediaServiceController>().currentService.value;
    if (service.entityView != null && item is Studio) {
      openEntity(context, service, EntityKind.studio, item.id, name: item.name);
      return;
    }
    if (service.entityView != null && (item is Character || item is Author)) {
      final character = item is Character ? item : null;
      final staff = item is Author ? item : null;
      openEntity(
        context,
        service,
        character != null ? EntityKind.character : EntityKind.staff,
        (character?.id ?? staff!.id),
        name: character?.name ?? staff?.name,
        image: character?.image ?? staff?.image,
      );
      return;
    }
    if (service.socialView != null && item is User) {
      openProfile(
        context,
        service,
        id: '${item.id}',
        user: UserBrief(id: '${item.id}', name: item.name, avatar: item.pfp),
      );
      return;
    }
    final url = widget.view.entityUrl(_type.value, item);
    if (url != null) unawaited(openLinkInBrowser(url));
  }

  static String _label(SearchType t) => switch (t) {
    SearchType.ANIME => 'Anime',
    SearchType.MANGA => 'Manga',
    SearchType.NOVEL => 'Novel',
    SearchType.MOVIES => 'Movies',
    SearchType.SERIES => 'Series',
    SearchType.CHARACTER => 'Characters',
    SearchType.STAFF => 'Staff',
    SearchType.STUDIO => 'Studios',
    SearchType.USER => 'Users',
  };

  // --- header -------------------------------------------------------------

  Widget _searchBar() {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Dimens.gap,
        Dimens.gapSm,
        Dimens.pagePad,
        Dimens.gapXs,
      ),
      child: Row(
        children: [
          const AppBackButton(),
          Expanded(
            child: Obx(() {
              final hint = _label(_type.value);
              return TextField(
                controller: _controller,
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
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(Icons.search_rounded, color: scheme.onSurface),
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
                onChanged: _onTermChanged,
                onSubmitted: (v) {
                  _remember(v);
                  _useTerm(v.trim());
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
        child: Obx(() {
          final selected = _type.value;
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: Dimens.gap, vertical: 6),
            itemCount: types.length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (_, i) => ChoiceChip(
              mouseCursor: kClickCursor,
              label: Text(_label(types[i])),
              selected: selected == types[i],
              showCheckmark: false,
              onSelected: (_) => _setType(types[i]),
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
          padding: const EdgeInsets.only(right: 12),
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

  Widget _mediaHeader() => Obx(() {
    if (!_isMedia) return const SizedBox.shrink();
    final spec = _spec;
    final q = _query.value;
    final chips = q.toChipList();
    return Column(
      children: [
        if (spec.onList || spec.adult)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.gapSm),
            child: Row(
              children: [
                if (spec.onList)
                  _checkbox('List Only', q.onList ?? false, (v) {
                    q.onList = v ? true : null;
                    _restart();
                  }),
                const Spacer(),
                if (spec.adult)
                  _checkbox('Adult', q.isAdult ?? false, (v) {
                    q.isAdult = v ? true : null;
                    _restart();
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
                      child: ScrollConfig(
                        context,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimens.gap,
                            vertical: 6,
                          ),
                          itemCount: chips.length,
                          separatorBuilder: (_, _) => const SizedBox(width: 6),
                          itemBuilder: (_, i) => InputChip(
                            mouseCursor: kClickCursor,
                            label: Text(chips[i].text.replaceAll('_', ' ')),
                            onDeleted: () => _removeChip(chips[i]),
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                      ),
                    ),
            ),
            if (!spec.isEmpty)
              Padding(
                padding: EdgeInsets.only(right: Dimens.pagePad),
                child: FilledButton.tonalIcon(
                  onPressed: _openFilters,
                  icon: const Icon(Icons.filter_alt_rounded),
                  label: const Text('Filter'),
                ),
              ),
          ],
        ),
      ],
    );
  });

  Widget _resultsHeader() => Obx(() {
    if (!_hasCriteria) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        Dimens.gapXs,
        Dimens.gapSm,
        0,
      ),
      child: Row(
        children: [
          Text(
            'Search Results',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const Spacer(),
          if (_isMedia)
            for (final (mode, icon) in const [
              (_ResultView.grid, Icons.grid_view_rounded),
              (_ResultView.list, Icons.view_list_rounded),
              (_ResultView.banner, Icons.view_agenda_rounded),
            ])
              IconButton(
                onPressed: () {
                  _mode.value = mode;
                  _viewPref.rx.value = mode.name;
                },
                icon: Icon(icon),
                color: _mode.value == mode
                    ? scheme.onSurface
                    : scheme.onSurface.withValues(alpha: 0.33),
              ),
        ],
      ),
    );
  });

  // --- body ---------------------------------------------------------------

  Widget _historyView() => Obx(() {
    _historyTick.value;
    final items = _history;
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
                'Recent searches',
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  saveCustomData<List<String>>(
                    _historyKey,
                    <String>[],
                    location: PrefLocation.CACHE,
                  );
                  _historyTick.value++;
                },
                child: const Text('Clear'),
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
                  leading: Icon(
                    Icons.history_rounded,
                    color: scheme.onSurfaceVariant,
                  ),
                  title: Text(
                    term,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.close_rounded, size: 18),
                    onPressed: () => _forget(term),
                  ),
                  onTap: () => _useTerm(term),
                ),
              ),
            ),
        ],
      ),
    );
  });

  Widget _body() => Obx(() {
    if (!_hasCriteria) return _historyView();
    if (_loading.value && _items.isEmpty) {
      return _grid(_skeletons(), skeleton: true);
    }
    if (_items.isEmpty) return _empty();
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.depth == 0) {
          _showTop.value = n.metrics.pixels > 700;
          if (_hasMore && n.metrics.pixels > n.metrics.maxScrollExtent - 600) {
            unawaited(_search());
          }
        }
        return false;
      },
      child: _isMedia && _mode.value != _ResultView.grid
          ? _rows(banner: _mode.value == _ResultView.banner)
          : _grid([for (final item in _items) _card(item)]),
    );
  });

  Widget _rows({required bool banner}) {
    final items = _items.whereType<Media>().toList();
    return ScrollConfig(
      context,
      child: ListView.separated(
        controller: _scroll,
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
              ? MediaBannerTile(media: m, tag: tag, onTap: () => _open(m, tag))
              : MediaListTile(media: m, tag: tag, onTap: () => _open(m, tag));
        },
      ),
    );
  }

  Widget _card(Object item, {bool skeleton = false}) {
    if (item is Media) {
      final year = item.startDate?.year;
      final tag = skeleton ? null : 'search:${item.id}';
      return PosterCard(
        heroTag: tag,
        imageUrl: item.cover,
        overlay: skeleton ? null : widget.view.overlay(item),
        title: item.mainName,
        subtitle: [
          if (item.format != null) item.format!.titleCase,
          if (year != null) '$year',
        ].join(' · '),
        score: (item.meanScore ?? 0) > 0 ? item.meanScore! / 10 : null,
        onTap: skeleton ? null : () => _open(item, tag!),
        onLongPress: skeleton
            ? null
            : () => showQuickListEditor(
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
        onTap: () => _open(c, ''),
      ),
      Author a => PosterCard(
        imageUrl: a.image,
        title: a.name ?? '',
        onTap: () => _open(a, ''),
      ),
      Studio s => _entityTile(
        icon: Icons.business_rounded,
        title: s.name,
        subtitle: s.favourites == null ? null : '${s.favourites} favourites',
        onTap: () => _open(s, ''),
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
      onTap: () => _open(u, ''),
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
      _type.value == SearchType.STUDIO || _type.value == SearchType.USER;

  Widget _grid(List<Widget> children, {bool skeleton = false}) {
    final style = tryFind<CardStyleController>()?.current ?? const CardStyle();
    final padding = EdgeInsets.fromLTRB(
      Dimens.pagePad,
      Dimens.gapSm,
      Dimens.pagePad,
      Dimens.gapXl,
    );
    final grid = _tileResults && !skeleton
        ? GridView.builder(
            controller: _scroll,
            padding: padding,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 360,
              mainAxisExtent: _type.value == SearchType.USER ? 92 : 72,
              crossAxisSpacing: Dimens.gap,
              mainAxisSpacing: Dimens.gapSm,
            ),
            itemCount: children.length,
            itemBuilder: (_, i) => children[i],
          )
        : GridView.builder(
            controller: _scroll,
            padding: padding,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: style.itemWidth + Dimens.cardGap + 6,
              childAspectRatio: style.itemWidth / style.itemHeight,
              crossAxisSpacing: Dimens.cardGap,
              mainAxisSpacing: Dimens.gap,
            ),
            itemCount: children.length,
            itemBuilder: (_, i) =>
                Align(alignment: Alignment.topCenter, child: children[i]),
          );
    final scrolling = ScrollConfig(context, child: grid);
    return skeleton ? Skeletonizer(child: scrolling) : scrolling;
  }

  List<Widget> _skeletons() => [
    for (var i = 0; i < 12; i++) _card(Media.skeleton(), skeleton: true),
  ];

  Widget _empty() {
    final searched = _hasCriteria && !_loading.value;
    return EmptyState(
      icon: searched ? Icons.search_off_rounded : Icons.search_rounded,
      title: searched ? 'Nothing matched' : 'Search or set a filter',
    );
  }

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: Obx(
        () => _showTop.value
            ? FloatingActionButton.small(
                onPressed: () => _scroll.animateTo(
                  0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOut,
                ),
                child: const Icon(Icons.arrow_upward_rounded),
              )
            : const SizedBox.shrink(),
      ),
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
