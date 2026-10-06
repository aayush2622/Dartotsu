import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:skeletonizer/skeletonizer.dart';

import '../../Api/Services/Extension/Widgets/SourceBadge.dart';
import '../../Api/Services/Extension/Services.dart';
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
import '../../Widgets/Components/CachedNetworkImage.dart';
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
  late final _feed = _defaultFeed().obs;
  final _error = RxnString();
  final _searching = false.obs;

  Timer? _debounce;
  int _page = 1;
  bool _hasMore = true;

  bool get _anime => widget.type == ItemType.anime;

  static SourceFeed _defaultFeed() =>
      extensionDefaultFeedPref.rx.value == 'latest'
      ? SourceFeed.latest
      : SourceFeed.popular;

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
    _error.value = null;
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
    } catch (e) {
      _hasMore = false;
      if (_items.isEmpty) _error.value = e.toString();
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
    final scheme = context.colorScheme;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        titleSpacing: 0,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 34,
                height: 34,
                child: cachedNetworkImage(
                  imageUrl: widget.source.iconUrl ?? '',
                  fit: BoxFit.cover,
                  errorWidget: (_, _, _) => ColoredBox(
                    color: scheme.secondaryContainer,
                    child: Icon(
                      Icons.extension_rounded,
                      size: 20,
                      color: scheme.onSecondaryContainer,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: Dimens.gap),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.source.name ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    _anime ? 'Anime source' : 'Manga source',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              Dimens.gapXs,
              Dimens.pagePad,
              Dimens.gap,
            ),
            child: Obx(
              () => SearchBar(
                controller: _controller,
                hintText: 'Search ${widget.source.name}',
                elevation: const WidgetStatePropertyAll(0),
                backgroundColor: WidgetStatePropertyAll(
                  scheme.surfaceContainerHigh,
                ),
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 16),
                ),
                leading: const Icon(Icons.search_rounded),
                trailing: [
                  if (_searching.value)
                    IconButton(
                      icon: const Icon(Icons.close_rounded),
                      onPressed: () {
                        _controller.clear();
                        _searching.value = false;
                        _reload();
                      },
                    ),
                ],
                onChanged: _onQueryChanged,
                textInputAction: TextInputAction.search,
              ),
            ),
          ),
          Obx(
            () => _searching.value
                ? const SizedBox.shrink()
                : Padding(
                    padding: EdgeInsets.fromLTRB(
                      Dimens.pagePad,
                      0,
                      Dimens.pagePad,
                      Dimens.gapSm,
                    ),
                    child: AppSegmented<SourceFeed>(
                      value: _feed.value,
                      onChanged: (v) {
                        _feed.value = v;
                        _reload();
                      },
                      segments: const [
                        AppSegment(
                          SourceFeed.popular,
                          label: 'Popular',
                          icon: Icons.local_fire_department_rounded,
                        ),
                        AppSegment(
                          SourceFeed.latest,
                          label: 'Latest',
                          icon: Icons.update_rounded,
                        ),
                        AppSegment(
                          SourceFeed.saved,
                          label: 'Saved',
                          icon: Icons.bookmark_rounded,
                        ),
                      ],
                    ),
                  ),
          ),
          Obx(
            () => _loading.value && _items.isNotEmpty
                ? const LinearProgressIndicator(minHeight: 2)
                : const SizedBox(height: 2),
          ),
          Expanded(
            child: Obx(() {
              if (_loading.value && _items.isEmpty) {
                return _grid(_skeletons(), skeleton: true);
              }
              if (_items.isEmpty) return _empty();
              return RefreshIndicator(
                onRefresh: () async => _reload(),
                child: NotificationListener<ScrollNotification>(
                  onNotification: (n) {
                    if (_hasMore &&
                        n.metrics.pixels > n.metrics.maxScrollExtent - 600) {
                      _fetch();
                    }
                    return false;
                  },
                  child: _grid([for (final m in _items) _card(m)]),
                ),
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
      physics: const AlwaysScrollableScrollPhysics(),
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
    final failed = _error.value != null;
    return Center(
      child: Padding(
        padding: EdgeInsets.all(Dimens.gapXl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: failed
                    ? scheme.errorContainer
                    : scheme.secondaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                failed ? Icons.cloud_off_rounded : Icons.inbox_rounded,
                size: 32,
                color: failed
                    ? scheme.onErrorContainer
                    : scheme.onSecondaryContainer,
              ),
            ),
            SizedBox(height: Dimens.gap),
            Text(
              failed
                  ? "Couldn't load this source"
                  : _searching.value
                  ? 'Nothing matched'
                  : _feed.value == SourceFeed.saved
                  ? 'Nothing saved from this source yet'
                  : 'This source returned nothing',
              textAlign: TextAlign.center,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: Dimens.gapSm),
            Text(
              failed
                  ? 'Check your connection or try another source.'
                  : _searching.value
                  ? 'Try a different search term.'
                  : _feed.value == SourceFeed.saved
                  ? 'Titles you add to your list appear here.'
                  : 'Try the other feed or search instead.',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            if (failed) ...[
              SizedBox(height: Dimens.gap),
              FilledButton.tonalIcon(
                onPressed: _reload,
                icon: const Icon(Icons.refresh_rounded, size: 18),
                label: const Text('Retry'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
