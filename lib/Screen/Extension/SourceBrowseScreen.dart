import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:skeletonizer/skeletonizer.dart';

import '../../Api/Services/Extension/Widgets/ExtensionSourceBadge.dart';
import '../../Api/Services/Extension/ExtensionServices.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../Feed/FeedNavigation.dart';

enum SourceFeed { saved, popular, latest }

class SourceBrowseScreen extends StatefulWidget {
  final Source source;
  final ItemType type;

  const SourceBrowseScreen({
    super.key,
    required this.source,
    required this.type,
  });

  @override
  State<SourceBrowseScreen> createState() => _SourceBrowseScreenState();
}

class _SourceBrowseScreenState extends BaseScreen<SourceBrowseScreen> {
  final _controller = TextEditingController();
  final _items = <Media>[].obs;
  final _loading = false.obs;
  final _feed = SourceFeed.popular.obs;
  final _searching = false.obs;

  Timer? _debounce;
  int _page = 1;
  bool _hasMore = true;

  bool get _anime => widget.type == ItemType.anime;

  @override
  void initState() {
    super.initState();
    _reload();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _reload() {
    _page = 1;
    _hasMore = true;
    _items.clear();
    _fetch();
  }

  Future<void> _fetch() async {
    if (_loading.value || !_hasMore) return;
    _loading.value = true;
    try {
      if (!_searching.value && _feed.value == SourceFeed.saved) {
        _items.value = extensionStore(
          widget.type,
        ).read().where(_fromThisSource).toList();
        _hasMore = false;
        return;
      }

      final methods = widget.source.methods;
      final query = _controller.text.trim();
      final pages = _searching.value
          ? await methods.search(query, _page, const [])
          : _feed.value == SourceFeed.latest
          ? await methods.getLatestUpdates(_page)
          : await methods.getPopular(_page);

      _items.addAll(pages.toMedia(isAnime: _anime, source: widget.source));
      _hasMore = pages.hasNextPage;
      _page++;
    } catch (_) {
      _hasMore = false;
    } finally {
      _loading.value = false;
    }
  }

  bool _fromThisSource(Media media) =>
      media.sourceData?.id == widget.source.id ||
      media.relation == widget.source.name;

  void _onQueryChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 450), () {
      _searching.value = value.trim().isNotEmpty;
      _reload();
    });
  }

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.source.name ?? ''),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              0,
              Dimens.pagePad,
              Dimens.gapSm,
            ),
            child: TextField(
              controller: _controller,
              onChanged: _onQueryChanged,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: 'Search ${widget.source.name}',
                prefixIcon: const Icon(Icons.search_rounded),
                suffixIcon: Obx(
                  () => _searching.value
                      ? IconButton(
                          icon: const Icon(Icons.close_rounded),
                          onPressed: () {
                            _controller.clear();
                            _searching.value = false;
                            _reload();
                          },
                        )
                      : const SizedBox.shrink(),
                ),
              ),
            ),
          ),
          Obx(
            () => _searching.value
                ? const SizedBox.shrink()
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
                    child: AppSegmented<SourceFeed>(
                      value: _feed.value,
                      onChanged: (v) {
                        _feed.value = v;
                        _reload();
                      },
                      segments: const [
                        AppSegment(SourceFeed.saved, label: 'Saved'),
                        AppSegment(SourceFeed.popular, label: 'Popular'),
                        AppSegment(SourceFeed.latest, label: 'Latest'),
                      ],
                    ),
                  ),
          ),
          Expanded(
            child: Obx(() {
              if (_loading.value && _items.isEmpty) {
                return _grid(_skeletons(), skeleton: true);
              }
              if (_items.isEmpty) return _empty();
              return NotificationListener<ScrollNotification>(
                onNotification: (n) {
                  if (_hasMore &&
                      n.metrics.pixels > n.metrics.maxScrollExtent - 600) {
                    _fetch();
                  }
                  return false;
                },
                child: _grid([for (final m in _items) _card(m)]),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _card(Media media, {bool skeleton = false}) {
    final service = find<MediaServiceController>().currentService.value;
    return PosterCard(
      imageUrl: media.cover,
      title: media.mainName,
      overlay: skeleton ? null : extensionSourceBadge(media),
      progressText: media.userProgress == null ? null : '${media.userProgress}',
      onTap: skeleton ? null : () => openDetail(context, service, media),
    );
  }

  Widget _grid(List<Widget> children, {bool skeleton = false}) {
    final style = tryFind<CardStyleController>()?.current ?? const CardStyle();
    final grid = GridView.builder(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        Dimens.gapSm,
        Dimens.pagePad,
        Dimens.gapXl,
      ),
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
    final scheme = context.colorScheme;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.inbox_rounded, size: 44, color: scheme.onSurfaceVariant),
          const SizedBox(height: 12),
          Text(
            _searching.value
                ? 'Nothing matched'
                : _feed.value == SourceFeed.saved
                ? 'Nothing saved from this source yet'
                : 'This source returned nothing',
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
