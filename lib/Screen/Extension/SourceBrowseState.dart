import 'dart:async';
import 'dart:convert';

import 'package:dartotsu_extension_bridge/Models/SourceFilter.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Api/Services/Extension/Services.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../Feed/FeedNavigation.dart';
import 'Data/SourceSearchFilters.dart';
import 'SourceFilterSheet.dart';

enum SourceFeed { saved, popular, latest }

class SourceBrowseState extends ScreenState {
  final Source source;
  final ItemType type;

  SourceBrowseState({required this.source, required this.type});

  final controller = TextEditingController();
  final items = <Media>[].liveList;
  final loading = false.live;
  late final feed = _defaultFeed().live;
  final error = Live<String?>(null);
  final searching = false.live;
  final filters = Live<List<SourceFilter>>(const []);
  final filtering = false.live;
  List<SourceFilter> _applied = const [];
  String _pristine = '[]';

  Timer? _debounce;
  int _page = 1;
  bool _hasMore = true;

  bool get anime => type == ItemType.anime;

  MediaService get service =>
      find<MediaServiceController>().currentService.value;

  static SourceFeed _defaultFeed() =>
      extensionDefaultFeedPref.rx.value == 'latest'
      ? SourceFeed.latest
      : SourceFeed.popular;

  @override
  void onInit() {
    CloudflareSolver.focus(source.baseUrl);
    unawaited(_loadFilters());
    reload();
  }

  Future<void> _loadFilters() async {
    try {
      final list = await source.methods.getFilterList();
      _pristine = jsonEncode([for (final f in list) f.toJson()]);
      final saved = SourceSearchFilters.saved(source);
      _applied = saved == null ? copyFilters(list) : copyFilters(saved);
      filtering.value =
          jsonEncode([for (final f in _applied) f.toJson()]) != _pristine;
      filters.value = list;
      if (filtering.value) reload();
    } catch (_) {}
  }

  List<SourceFilter> get workingFilters => _applied;

  void applyFilters(List<SourceFilter> next) {
    _applied = next;
    filtering.value =
        jsonEncode([for (final f in next) f.toJson()]) != _pristine;
    if (filtering.value) {
      SourceSearchFilters.save(source, next);
    } else {
      SourceSearchFilters.clear(source);
    }
    reload();
  }

  void resetFilters() {
    _applied = copyFilters(filters.value);
    filtering.value = false;
    SourceSearchFilters.clear(source);
    reload();
  }

  @override
  void onClose() {
    _debounce?.cancel();
    controller.dispose();
  }

  int _generation = 0;

  void reload() {
    _generation++;
    loading.value = false;
    _page = 1;
    _hasMore = true;
    error.value = null;
    items.clear();
    unawaited(fetch());
  }

  Future<void> fetch() async {
    if (loading.value || !_hasMore) return;
    loading.value = true;
    final generation = _generation;
    try {
      if (!searching.value &&
          !filtering.value &&
          feed.value == SourceFeed.saved) {
        items.value = extensionStore(type)
            .read()
            .where(_fromThisSource)
            .toList();
        _hasMore = false;
        return;
      }

      final methods = source.methods;
      final query = controller.text.trim();
      final pages = searching.value || filtering.value
          ? await methods.search(query, _page, [
              if (filtering.value)
                for (final f in _applied) f.toJson(),
            ])
          : feed.value == SourceFeed.latest
          ? await methods.getLatestUpdates(_page)
          : await methods.getPopular(_page);

      if (generation != _generation) return;
      items.addAll(pages.toMedia(isAnime: anime, source: source));
      _hasMore = pages.hasNextPage;
      _page++;
    } catch (e) {
      if (generation != _generation) return;
      _hasMore = false;
      if (items.isEmpty) error.value = e.toString();
    } finally {
      if (generation == _generation) loading.value = false;
    }
  }

  bool _fromThisSource(Media media) =>
      media.sourceData?.id == source.id || media.relation == source.name;

  void onQueryChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 450), () {
      searching.value = value.trim().isNotEmpty;
      reload();
    });
  }

  void clearSearch() {
    controller.clear();
    searching.value = false;
    reload();
  }

  void selectFeed(SourceFeed next) {
    feed.value = next;
    reload();
  }

  bool onScroll(ScrollNotification n) {
    if (_hasMore && n.metrics.pixels > n.metrics.maxScrollExtent - 600) {
      unawaited(fetch());
    }
    return false;
  }

  void open(Media media) => openDetail(context, service, media);

  bool get failed => error.value != null;

  String get emptyTitle => failed
      ? getString.couldntLoadSource
      : searching.value || filtering.value
      ? getString.nothingMatched
      : feed.value == SourceFeed.saved
      ? getString.nothingSavedFromSource
      : getString.sourceReturnedNothing;

  String get emptyMessage => failed
      ? getString.checkConnectionOrSource
      : searching.value || filtering.value
      ? getString.tryDifferentSearch
      : feed.value == SourceFeed.saved
      ? getString.savedTitlesAppearHere
      : getString.tryOtherFeed;
}
