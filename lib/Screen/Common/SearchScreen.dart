import 'dart:async';

import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Model/SearchResults.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
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
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        title: TextField(
          controller: _controller,
          autofocus: true,
          textInputAction: TextInputAction.search,
          decoration: const InputDecoration(
            hintText: 'Search AniList',
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
        if (_results.isEmpty) {
          return Center(
            child: Text(
              _loading.value ? 'Searching…' : 'Type to search',
              style: context.textTheme.bodyMedium,
            ),
          );
        }
        return NotificationListener<ScrollNotification>(
          onNotification: (n) {
            if (_hasMore &&
                n.metrics.pixels > n.metrics.maxScrollExtent - 600) {
              _search();
            }
            return false;
          },
          child: GridView.builder(
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120,
              childAspectRatio: 0.52,
              crossAxisSpacing: 10,
              mainAxisSpacing: 14,
            ),
            itemCount: _results.length,
            itemBuilder: (_, i) => _ResultCard(
              media: _results[i],
              onTap: () => navigateToPage(
                context,
                DetailScreen(
                  media: _results[i],
                  queries: widget.queries,
                  mutations: find<MediaServiceController>()
                      .currentService
                      .value
                      .getMutations,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _ResultCard extends StatelessWidget {
  final Media media;
  final VoidCallback onTap;
  const _ResultCard({required this.media, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return DpadFocusable(
      onSelect: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: cachedNetworkImage(
                imageUrl: media.cover,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            media.mainName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
