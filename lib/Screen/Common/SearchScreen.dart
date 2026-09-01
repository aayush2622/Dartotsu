import 'dart:async';

import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Model/SearchResults.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import 'DetailScreen.dart';

class SearchScreen extends StatefulWidget {
  final bool anime;
  final Queries queries;
  final String? query;

  const SearchScreen({
    super.key,
    required this.queries,
    this.anime = true,
    this.query,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends BaseScreen<SearchScreen> {
  Queries get _queries => widget.queries;
  final _controller = TextEditingController();

  final _results = <Media>[].obs;
  final _loading = false.obs;
  late final _anime = widget.anime.obs;

  Timer? _debounce;
  String _term = '';
  int _page = 1;
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    if (widget.query != null && widget.query!.isNotEmpty) {
      _controller.text = widget.query!;
      _onChanged(widget.query!);
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      _term = value.trim();
      _page = 1;
      _hasMore = true;
      _results.clear();
      if (_term.isNotEmpty) _search();
    });
  }

  Future<void> _search() async {
    if (_loading.value || _term.isEmpty || !_hasMore) return;
    _loading.value = true;
    try {
      final res = await _queries.search(
        SearchResults(
          type: _anime.value ? SearchType.ANIME : SearchType.MANGA,
          search: _term,
          page: _page,
          perPage: 30,
        ),
      );
      final next = res?.results ?? const [];
      _hasMore = res?.hasNextPage ?? false;
      _results.addAll(next);
      _page++;
    } catch (_) {
      _hasMore = false;
    } finally {
      _loading.value = false;
    }
  }

  @override
  Widget buildContent(BuildContext context) {
    final serviceName =
        find<MediaServiceController>().currentService.value.name;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        title: TextField(
          controller: _controller,
          autofocus: true,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: 'Search $serviceName',
            border: InputBorder.none,
          ),
          onChanged: _onChanged,
        ),
        actions: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: SegmentedButton<bool>(
                showSelectedIcon: false,
                style: const ButtonStyle(
                  visualDensity: VisualDensity.compact,
                ),
                segments: const [
                  ButtonSegment(value: true, label: Text('Anime')),
                  ButtonSegment(value: false, label: Text('Manga')),
                ],
                selected: {_anime.value},
                onSelectionChanged: (s) {
                  _anime.value = s.first;
                  _onChanged(_controller.text);
                },
              ),
            ),
          ),
        ],
      ),
      body: Obx(() {
        final busyFirstPage = _loading.value && _results.isEmpty;
        if (busyFirstPage) return _grid(_skeletons(), skeleton: true);
        if (_results.isEmpty) return _empty();
        return NotificationListener<ScrollNotification>(
          onNotification: (n) {
            if (_hasMore &&
                n.metrics.pixels > n.metrics.maxScrollExtent - 600) {
              _search();
            }
            return false;
          },
          child: _grid([
            for (final m in _results)
              _ResultCard(
                media: m,
                onTap: () => navigateToPage(
                  context,
                  DetailScreen(
                    media: m,
                    queries: widget.queries,
                    mutations: find<MediaServiceController>()
                        .currentService
                        .value
                        .getMutations,
                  ),
                ),
              ),
          ]),
        );
      }),
    );
  }

  Widget _grid(List<Widget> children, {bool skeleton = false}) {
    final extent = responsive<double>(
      mobile: 118,
      tablet: 138,
      desktop: 132,
    );
    final grid = GridView.builder(
      padding: const EdgeInsets.fromLTRB(14, 6, 14, 24),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: extent,
        childAspectRatio: 0.54,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,
      ),
      itemCount: children.length,
      itemBuilder: (_, i) => children[i],
    );
    return skeleton ? Skeletonizer(child: grid) : grid;
  }

  List<Widget> _skeletons() => [
    for (var i = 0; i < 12; i++)
      _ResultCard(media: Media.skeleton(), onTap: () {}),
  ];

  Widget _empty() {
    final scheme = context.colorScheme;
    final searched = _term.isNotEmpty && !_loading.value;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            searched ? Icons.search_off_rounded : Icons.search_rounded,
            size: 44,
            color: scheme.onSurfaceVariant,
          ),
          const SizedBox(height: 12),
          Text(
            searched ? 'No results for "$_term"' : 'Type to search',
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _ResultCard extends StatelessWidget {
  final Media media;
  final VoidCallback onTap;
  const _ResultCard({required this.media, required this.onTap});

  double? get _score {
    final raw = (media.meanScore ?? 0);
    return raw > 0 ? raw / 10 : null;
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return DpadFocusable(
      onSelect: onTap,
      effects: const [DpadScaleEffect(scale: 1.05)],
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    cachedNetworkImage(
                      imageUrl: media.cover,
                      fit: BoxFit.cover,
                      placeholder: (_, _) =>
                          ColoredBox(color: scheme.surfaceContainerHighest),
                      errorWidget: (_, _, _) => Icon(
                        Icons.broken_image_rounded,
                        color: scheme.error,
                        size: 28,
                      ),
                    ),
                    if (_score case final s?)
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: scheme.primary,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                s.toStringAsFixed(1),
                                style: context.textTheme.labelSmall?.copyWith(
                                  color: scheme.onPrimary,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Icon(
                                Icons.star_rounded,
                                size: 11,
                                color: scheme.onPrimary,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              media.mainName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
