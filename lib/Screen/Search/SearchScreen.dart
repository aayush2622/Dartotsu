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
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../Detail/DetailScreen.dart';

class SearchScreen extends StatefulWidget {
  final bool anime;
  final SearchScreenView view;
  final String? query;

  const SearchScreen({
    super.key,
    required this.view,
    this.anime = true,
    this.query,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends BaseScreen<SearchScreen> {
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
      final res = await widget.view.search(
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
              child: AppSegmented<bool>(
                expand: false,
                value: _anime.value,
                onChanged: (v) {
                  _anime.value = v;
                  _onChanged(_controller.text);
                },
                segments: const [
                  AppSegment(true, label: 'Anime'),
                  AppSegment(false, label: 'Manga'),
                ],
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
          child: _grid([for (final m in _results) _card(m)]),
        );
      }),
    );
  }

  Widget _card(Media m) {
    final year = m.startDate?.year;
    return PosterCard(
      imageUrl: m.cover,
      title: m.mainName,
      subtitle: [
        if (m.format != null) _pretty(m.format!),
        if (year != null) '$year',
      ].join(' · '),
      score: (m.meanScore ?? 0) > 0 ? m.meanScore! / 10 : null,
      onTap: () {
        final service = find<MediaServiceController>().currentService.value;
        final view = service.detailView;
        if (view == null) return;
        navigateToPage(
          context,
          DetailScreen(media: m, view: view, mutations: service.getMutations),
        );
      },
    );
  }

  static String _pretty(String raw) {
    final words = raw.toLowerCase().replaceAll('_', ' ').split(' ');
    return words
        .map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}')
        .join(' ');
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
    return skeleton ? Skeletonizer(child: grid) : grid;
  }

  List<Widget> _skeletons() => [
    for (var i = 0; i < 12; i++) _card(Media.skeleton()),
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
