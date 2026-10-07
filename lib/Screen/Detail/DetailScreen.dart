import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Screens/DetailCache.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/AppShortcuts.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../Navbar.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../Widgets/ScreenWidgetView.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Shelf/ShelfFrame.dart';
import '../Widgets/Components/DataSection.dart';
import 'Components/DetailHeader.dart';
import '../Feed/FeedNavigation.dart';
import 'ListEditorSheet.dart';
import '../../Api/Discord/DiscordPresence.dart';
import '../../Api/Discord/PresenceScope.dart';

class DetailScreen extends StatefulWidget {
  final Media media;
  final DetailScreenView view;
  final Mutations? mutations;
  final String? heroTag;

  const DetailScreen({
    super.key,
    required this.media,
    required this.view,
    this.mutations,
    this.heroTag,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends BaseScreen<DetailScreen> {
  late final DetailHost _host = DetailHost(
    media: widget.media,
    loading: true.obs,
    heroTag: widget.heroTag,
    open: _open,
    search: _search,
    refresh: () => _load(force: true),
  );
  Worker? _coverWorker;
  final _widgets = <ScreenWidget>[].obs;
  final _ready = false.obs;
  final _tab = 0.obs;
  final _error = RxnString();
  bool _focusedOnce = false;
  final _scroll = ScrollController();
  Timer? _snapTimer;
  final _actionFocus = FocusNode();
  final _lanes = <GlobalKey<DpadRegionState>>[];
  final _navLane = GlobalKey<DpadRegionState>();

  GlobalKey<DpadRegionState> _lane(int i) {
    while (_lanes.length <= i) {
      _lanes.add(GlobalKey<DpadRegionState>());
    }
    return _lanes[i];
  }

  DpadEdgeBehavior get _horizontalEdge =>
      context.isPhone ? DpadEdgeBehavior.stop : DpadEdgeBehavior.leave;

  void _laneEdge(int from, TraversalDirection direction) {
    final step = switch (direction) {
      TraversalDirection.up => -1,
      TraversalDirection.down => 1,
      _ => 0,
    };
    if (step == 0) return;
    for (var i = from + step; i >= 0 && i < _lanes.length; i += step) {
      final nodes = _lanes[i].currentState?.focusNodes;
      if (nodes != null && nodes.any((_) => true)) {
        DpadLane.focusFirst(_lanes[i]);
        return;
      }
    }
    if (direction == TraversalDirection.down && context.isPhone) {
      DpadLane.focusFirst(_navLane);
    }
  }

  String get _cacheKey => '${widget.view.service.id}/${widget.media.id}';

  bool get _isAnime => _host.media.value.anime != null;

  @override
  String? get glassBackgroundUrl =>
      _host.media.value.banner ??
      _host.media.value.cover ??
      super.glassBackgroundUrl;

  @override
  void initState() {
    super.initState();
    FocusManager.instance.addListener(_keepFocusVisible);
    _scroll.addListener(_scheduleSnap);
    final theme = find<ThemeController>();
    theme.cover.set(this, _host.media.value.cover);
    _coverWorker = ever(
      _host.media,
      (media) => theme.cover.set(this, media.cover),
    );
    unawaited(_load());
  }

  @override
  void dispose() {
    _coverWorker?.dispose();
    find<ThemeController>().cover.clear(this);
    FocusManager.instance.removeListener(_keepFocusVisible);
    _snapTimer?.cancel();
    _scroll.dispose();
    _actionFocus.dispose();
    super.dispose();
  }

  void _keepFocusVisible() {
    if (!mounted || !usingKeyboard || !_scroll.hasClients) return;
    final ctx = FocusManager.instance.primaryFocus?.context;
    if (ctx == null || !ctx.mounted) return;
    if (Scrollable.maybeOf(ctx)?.position != _scroll.position) return;
    if (DetailHeaderScope.contains(ctx)) return;
    final box = ctx.findRenderObject();
    if (box is! RenderBox || !box.attached || !box.hasSize) return;
    final rect = box.localToGlobal(Offset.zero) & box.size;
    final media = MediaQuery.of(context);
    final topInset = media.padding.top + 56 + 12;
    final bottomInset = context.isPhone ? 110.0 + media.padding.bottom : 24.0;
    final limit = media.size.height - bottomInset;
    var delta = 0.0;
    if (rect.top < topInset) {
      delta = rect.top - topInset;
    } else if (rect.bottom > limit) {
      delta = rect.bottom - limit;
    }
    if (delta == 0) return;
    final pos = _scroll.position;
    unawaited(
      _scroll.animateTo(
        (pos.pixels + delta).clamp(pos.minScrollExtent, pos.maxScrollExtent),
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
      ),
    );
  }

  Future<void> _load({bool force = false}) async {
    final cached = force ? null : DetailCache.get(_cacheKey);
    _host.cached = cached != null;
    if (cached != null) _host.update(cached);
    _host.loading.value = cached == null;
    if (cached == null && _widgets.isEmpty) _ready.value = false;
    var failed = false;
    _error.value = null;
    try {
      await for (final list in widget.view.screenStream(_host)) {
        _widgets.value = list;
      }
    } catch (e) {
      failed = true;
      _error.value = e.toString();
    } finally {
      if (!failed) DetailCache.put(_cacheKey, _host.media.value);
      _host.loading.value = false;
      _ready.value = true;
      if (usingKeyboard && !_focusedOnce) {
        _focusedOnce = true;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _actionFocus.canRequestFocus) {
            _actionFocus.requestFocus();
          }
        });
      }
    }
  }

  void _search(String query) => openSearch(
    context,
    widget.view.service,
    type: _isAnime ? MediaType.anime : MediaType.manga,
    query: query,
  );

  void _open(Media media, String? heroTag) => navigateToPage(
    context,
    DetailScreen(
      media: media,
      view: widget.view,
      mutations: widget.mutations,
      heroTag: heroTag,
    ),
    hero: true,
  );

  void _scheduleSnap() {
    _snapTimer?.cancel();
    _snapTimer = Timer(const Duration(milliseconds: 140), _snapHeader);
  }

  void _snapHeader() {
    if (!mounted || !_scroll.hasClients) return;
    final position = _scroll.position;
    if (position.isScrollingNotifier.value) return _scheduleSnap();
    final range = detailHeaderCollapseRange();
    final pixels = position.pixels;
    if (pixels <= 0 || pixels >= range) return;
    unawaited(
      _scroll.animateTo(
        pixels < range / 2 ? 0 : range,
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
      ),
    );
  }

  @override
  Widget buildContent(BuildContext context) => PresenceScope(
    presence: DiscordPresence.viewing(widget.media),
    child: _contentBody(context),
  );

  Widget _contentBody(BuildContext context) {
    final content = RefreshIndicator(
      onRefresh: () => _load(force: true),
      child: Obx(
        () => CustomScrollConfig(
          context,
          physics: const AlwaysScrollableScrollPhysics(),
          controller: _scroll,
          children: [
            SliverPersistentHeader(
              pinned: true,
              delegate: DetailHeaderDelegate(
                host: _host,
                top: MediaQuery.paddingOf(context).top,
                glass: find<ThemeController>().useGlassMode.value,
                listLabel: (m) => _statusLabel(m.userStatus),
                onEditList: widget.mutations == null ? null : _editList,
                actionFocus: _actionFocus,
                toolbarLane: _lane(0),
                actionsLane: _lane(1),
                onLaneEdge: _laneEdge,
                horizontalEdge: _horizontalEdge,
              ),
            ),
            SliverToBoxAdapter(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight:
                      MediaQuery.sizeOf(context).height -
                      MediaQuery.paddingOf(context).top -
                      56,
                ),
                child: _sheet(context),
              ),
            ),
          ],
        ),
      ),
    );

    final nav = Obx(
      () => FloatingBottomNavBar(
        standalone: true,
        laneKey: _navLane,
        selectedIndex: _tab.value,
        onTabSelected: (i) => _tab.value = i,
        items: [
          const NavItem(index: 0, icon: Icons.info_rounded, label: 'INFO'),
          NavItem(
            index: 1,
            icon: _isAnime
                ? Icons.movie_filter_rounded
                : Icons.import_contacts_rounded,
            label: _isAnime ? 'WATCH' : 'READ',
          ),
          const NavItem(
            index: 2,
            icon: Icons.chat_bubble_rounded,
            label: 'COMMENTS',
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
    return DecoratedBox(
      decoration: BoxDecoration(
        color: glass ? scheme.surface.withValues(alpha: 0.5) : scheme.surface,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Dimens.radius),
        ),
      ),
      child: ShelfFlat(
        child: Obx(
          () => Padding(
            padding: EdgeInsets.only(
              top: Dimens.gapLg,
              bottom: context.isPhone ? 120.bottomBar() : Dimens.gapXl * 2,
            ),
            child: _body(),
          ),
        ),
      ),
    );
  }

  Widget _body() {
    if (_tab.value != 0) {
      return NotImplemented(
        service: widget.view.service.name,
        area: _tab.value == 1 ? (_isAnime ? 'Watch' : 'Read') : 'Comments',
      );
    }
    if (!_ready.value) return _skeleton();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_error.value != null) ...[
          _errorCard(),
          SizedBox(height: Dimens.gapLg),
        ],
        for (final (i, item) in _widgets.indexed) ...[
          if (i > 0) SizedBox(height: Dimens.gapLg),
          KeyedSubtree(
            key: ValueKey('detail-$i-${item.title ?? item.type}'),
            child: DpadLane(
              laneKey: _lane(i + 2),
              memoryKey: 'detail-${_host.media.value.id}-$i',
              verticalEdge: DpadEdgeBehavior.stop,
              horizontalEdge: _horizontalEdge,
              onEdge: (d) => _laneEdge(i + 2, d),
              child:
                  ScreenWidgetView(
                    item,
                    heroPrefix: 'detail:${_host.media.value.id}',
                    onMediaTap: _open,
                    onCharacterTap: (c) => openEntity(
                      context,
                      widget.view.service,
                      EntityKind.character,
                      c.id,
                      name: c.name,
                      image: c.image,
                    ),
                    onStaffTap: (s) => openEntity(
                      context,
                      widget.view.service,
                      EntityKind.staff,
                      s.id,
                      name: s.name,
                      image: s.image,
                    ),
                  ).animateFadeUp(
                    begin: 0.06,
                    delay: Duration(milliseconds: 40 * i),
                    duration: 350,
                  ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _errorCard() => Padding(
    padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.errorContainer,
        borderRadius: Dimens.borderSm,
      ),
      child: ListTile(
        leading: Icon(
          Icons.cloud_off_rounded,
          color: context.colorScheme.onErrorContainer,
        ),
        title: Text(
          "Couldn't load all details",
          style: TextStyle(color: context.colorScheme.onErrorContainer),
        ),
        trailing: FilledButton.tonal(
          onPressed: () => _load(force: true),
          child: const Text('Retry'),
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
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainerLow,
              borderRadius: Dimens.borderSm,
            ),
            child: Padding(
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
        ),
        SizedBox(height: Dimens.gapLg),
        DataSection(
          title: 'Synopsis',
          data: const ScreenData(
            text:
                'Loading the details for this title, this should only take a '
                'moment. Loading the details for this title, this should only '
                'take a moment.',
          ),
        ),
        SizedBox(height: Dimens.gapLg),
        DataSection(
          title: 'Details',
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

  void _editList() {
    final mutations = widget.mutations;
    if (mutations == null) return;
    showListEditor(
      context,
      media: _host.media.value,
      view: widget.view.listEditor,
      mutations: mutations,
      onSaved: _load,
    );
  }

  String _statusLabel(String? status) => switch (status) {
    'CURRENT' => _isAnime ? 'Watching' : 'Reading',
    'PLANNING' => 'Planned',
    'COMPLETED' => 'Completed',
    'PAUSED' => 'Paused',
    'DROPPED' => 'Dropped',
    'REPEATING' => _isAnime ? 'Rewatching' : 'Rereading',
    _ => 'Add to List',
  };
}
