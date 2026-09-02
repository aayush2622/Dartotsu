import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Model/SearchResults.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Extensions/StringExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../Detail/DetailScreen.dart';
import 'Components/SearchFilterSheet.dart';

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
  final _results = <Media>[].obs;
  final _loading = false.obs;
  late final _type = widget.type.obs;

  /// The live query — search term plus every applied filter.
  late final _query = SearchResults(
    type: widget.type.searchType,
    perPage: 30,
  ).obs;

  Timer? _debounce;
  bool _hasMore = true;

  SearchFilterSpec get _spec => widget.view.filters(_type.value);

  bool get _hasCriteria =>
      (_query.value.search?.isNotEmpty ?? false) ||
      _query.value.toChipList().isNotEmpty;

  @override
  void initState() {
    super.initState();
    if (widget.query != null && widget.query!.isNotEmpty) {
      _controller.text = widget.query!;
      _query.value.search = widget.query;
      _restart();
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
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
    _results.clear();
    _query.refresh();
    if (_hasCriteria) _search();
  }

  Future<void> _search() async {
    if (_loading.value || !_hasMore || !_hasCriteria) return;
    _loading.value = true;
    try {
      final res = await widget.view.search(_query.value);
      _query.value.page = (_query.value.page ?? 1) + 1;
      _hasMore = res?.hasNextPage ?? false;
      _results.addAll(res?.results ?? const []);
    } catch (_) {
      _hasMore = false;
    } finally {
      _loading.value = false;
    }
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
          onChanged: _onTermChanged,
        ),
        actions: [
          if (widget.view.types.length > 1)
            Obx(
              () => Padding(
                padding: const EdgeInsets.only(right: 4),
                child: AppSegmented<MediaType>(
                  expand: false,
                  value: _type.value,
                  onChanged: (t) {
                    _type.value = t;
                    _query.value.type = t.searchType;
                    _restart();
                  },
                  segments: [
                    for (final t in widget.view.types)
                      AppSegment(t, label: t.label),
                  ],
                ),
              ),
            ),
          if (!_spec.isEmpty)
            Obx(() {
              final n = _query.value.toChipList().length;
              return IconButton(
                onPressed: _openFilters,
                icon: Badge(
                  isLabelVisible: n > 0,
                  label: Text('$n'),
                  child: const Icon(Icons.tune_rounded),
                ),
              );
            }),
          const SizedBox(width: 4),
        ],
      ),
      body: Column(
        children: [
          Obx(() {
            final chips = _query.value.toChipList();
            if (chips.isEmpty) return const SizedBox.shrink();
            return SizedBox(
              height: 44,
              child: ScrollConfig(
                context,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: Dimens.gap),
                  itemCount: chips.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 6),
                  itemBuilder: (_, i) => Center(
                    child: InputChip(
                      label: Text(chips[i].text),
                      onDeleted: () => _removeChip(chips[i]),
                      visualDensity: VisualDensity.compact,
                    ),
                  ),
                ),
              ),
            );
          }),
          Expanded(
            child: Obx(() {
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
                child: _grid([for (final m in _results) _card(m)]),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _card(Media m, {bool skeleton = false}) {
    final year = m.startDate?.year;
    final tag = skeleton ? null : 'search:${m.id}';
    return PosterCard(
      heroTag: tag,
      imageUrl: m.cover,
      title: m.mainName,
      subtitle: [
        if (m.format != null) m.format!.titleCase,
        if (year != null) '$year',
      ].join(' · '),
      score: (m.meanScore ?? 0) > 0 ? m.meanScore! / 10 : null,
      onTap: () {
        final service = find<MediaServiceController>().currentService.value;
        final view = service.detailView;
        if (view == null) return;
        navigateToPage(
          context,
          DetailScreen(
            media: m,
            view: view,
            mutations: service.getMutations,
            heroTag: tag,
          ),
        );
      },
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
    final searched = _hasCriteria && !_loading.value;
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
            searched ? 'Nothing matched' : 'Search or set a filter',
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
