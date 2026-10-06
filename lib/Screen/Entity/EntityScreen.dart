import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaService.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/MarkupText.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/MediaSection.dart';
import '../Feed/FeedNavigation.dart';
import '../Widgets/Components/DataSection.dart';
import '../Widgets/ScreenWidgetView.dart';
import 'Components/EntityHeader.dart';

class EntityScreen extends StatefulWidget {
  final EntityScreenView view;
  final EntityKind kind;
  final String id;
  final String? name;
  final String? image;

  const EntityScreen({
    super.key,
    required this.view,
    required this.kind,
    required this.id,
    this.name,
    this.image,
  });

  @override
  State<EntityScreen> createState() => _EntityScreenState();
}

class _EntityScreenState extends BaseScreen<EntityScreen> {
  late final EntityHost _host;
  final _widgets = <ScreenWidget>[].obs;
  final _ready = false.obs;
  final _error = RxnString();
  final _toggling = false.obs;
  final _spoilerNames = false.obs;

  MediaService get _service => widget.view.service;

  @override
  String? get glassBackgroundUrl =>
      _host.profile.value.image ?? super.glassBackgroundUrl;

  @override
  void initState() {
    super.initState();
    _host = EntityHost(
      kind: widget.kind,
      profile: EntityProfile(
        id: widget.id,
        name: widget.name ?? '',
        image: widget.image,
      ),
      loading: true.obs,
      openMedia: (m) => openDetail(context, _service, m),
      openCharacter: (id, {name, image}) => openEntity(
        context,
        _service,
        EntityKind.character,
        id,
        name: name,
        image: image,
      ),
      openStaff: (id, {name, image}) => openEntity(
        context,
        _service,
        EntityKind.staff,
        id,
        name: name,
        image: image,
      ),
      search: (q) => openSearch(context, _service, query: q),
    );
    final theme = find<ThemeController>();
    theme.cover.set(this, _host.profile.value.image);
    unawaited(_load());
  }

  @override
  void dispose() {
    find<ThemeController>().cover.clear(this);
    super.dispose();
  }

  Future<void> _load() async {
    _host.loading.value = true;
    _error.value = null;
    try {
      await for (final list in widget.view.screenStream(_host)) {
        _widgets.value = list;
        final image = _host.profile.value.image;
        if (image != null) find<ThemeController>().cover.set(this, image);
      }
    } catch (e) {
      _error.value = e.toString();
    } finally {
      _host.loading.value = false;
      _ready.value = true;
    }
  }

  Future<void> _toggleFavourite() async {
    _toggling.value = true;
    try {
      final next = await widget.view.toggleFavourite(
        widget.kind,
        widget.id,
        _host.profile.value.isFavourite,
      );
      if (next == null) {
        snackString('Log in to add favourites');
        return;
      }
      final profile = _host.profile.value;
      final count = profile.favourites;
      _host.update(
        profile.copyWith(
          isFavourite: next,
          favourites: count == null ? null : count + (next ? 1 : -1),
        ),
      );
    } catch (e) {
      snackString('$e');
    } finally {
      _toggling.value = false;
    }
  }

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: RefreshIndicator(
        onRefresh: _load,
        child: ScrollConfig(
          context,
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: EntityHeader(
                  host: _host,
                  canFavourite: widget.view.canFavourite(widget.kind),
                  togglingFavourite: _toggling,
                  onToggleFavourite: _toggleFavourite,
                ),
              ),
              SliverToBoxAdapter(child: Obx(() => _body(context))),
              const SliverToBoxAdapter(child: SizedBox(height: 48)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    final profile = _host.profile.value;
    final widgets = _widgets.toList();
    final loadingFirst = !_ready.value && widgets.isEmpty;
    final failed = _error.value != null && widgets.isEmpty && !loadingFirst;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Dimens.gapLg),
        if (profile.tags.isNotEmpty)
          _section(DataSection(data: ScreenData(chips: profile.tags))),
        if (profile.facts.isNotEmpty)
          _section(
            DataSection(
              title: 'Details',
              data: ScreenData(rows: profile.facts),
            ),
          ),
        if (profile.alternatives.isNotEmpty ||
            profile.spoilerAlternatives.isNotEmpty)
          _section(_names(context, profile)),
        if (profile.description?.trim().isNotEmpty ?? false)
          _section(_about(context, profile.description!)),
        if (loadingFirst)
          for (var i = 0; i < 2; i++)
            const MediaSection(data: MediaSectionData.loading()),
        for (final item in widgets) ..._item(item),
        if (failed)
          SizedBox(
            height: 340,
            child: EmptyState(
              icon: Icons.cloud_off_rounded,
              failed: true,
              title: "Couldn't load this page",
              message: _error.value,
              onAction: _load,
            ),
          ),
      ],
    );
  }

  List<Widget> _item(ScreenWidget item) => [
    SizedBox(height: Dimens.gapLg),
    ScreenWidgetView(
      item,
      heroPrefix: 'entity:${widget.id}',
      onMediaTap: (media, _) => _host.openMedia(media),
      onCharacterTap: (c) =>
          _host.openCharacter(c.id, name: c.name, image: c.image),
      onStaffTap: (s) => _host.openStaff(s.id, name: s.name, image: s.image),
    ),
  ];

  Widget _section(Widget child) => Padding(
    padding: EdgeInsets.only(bottom: Dimens.gapLg),
    child: child,
  );

  Widget _about(BuildContext context, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: Dimens.gapSm),
          MarkupText(text: description),
        ],
      ),
    );
  }

  Widget _names(BuildContext context, EntityProfile profile) {
    final scheme = context.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (profile.alternatives.isNotEmpty)
          DataSection(
            title: 'Also known as',
            data: ScreenData(chips: profile.alternatives),
          ),
        if (profile.spoilerAlternatives.isNotEmpty)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      visualDensity: VisualDensity.compact,
                      padding: EdgeInsets.zero,
                      foregroundColor: scheme.onSurfaceVariant,
                    ),
                    onPressed: () => _spoilerNames.value = !_spoilerNames.value,
                    icon: Icon(
                      _spoilerNames.value
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      size: 18,
                    ),
                    label: Text(
                      _spoilerNames.value
                          ? 'Hide spoiler names'
                          : 'Show spoiler names',
                    ),
                  ),
                  if (_spoilerNames.value)
                    DataSection(
                      data: ScreenData(chips: profile.spoilerAlternatives),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
