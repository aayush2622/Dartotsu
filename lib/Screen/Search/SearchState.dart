import 'Components/BarcodeSheet.dart';
import 'Components/SauceSheet.dart';
import '../../Logger.dart';

import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Author.dart';
import '../../Core/Services/Model/Character.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Model/Studio.dart';
import '../../Core/Services/Model/User.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Model/SearchResults.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../Detail/DetailScreen.dart';
import '../Feed/FeedNavigation.dart';
import '../Social/SocialNavigation.dart';
import '../../Core/Services/Api/IdMapper.dart';
import '../Settings/Sync/Data/SyncModels.dart';
import '../../Api/Services/Anilist/AnilistService.dart';
import '../../Utils/Functions/SnackBar.dart';
import 'Components/ImageSearchSheet.dart';
import 'Components/SearchFilterSheet.dart';

enum ResultView { grid, list, banner }

const viewPref = Pref('searchResultView', 'grid', PrefLocation.OTHER);

class SearchState extends ScreenState {
  final MediaType initialType;
  final SearchScreenView view;
  final String? initialQuery;
  final String? initialGenre;
  final String? initialTag;

  SearchState({
    required this.initialType,
    required this.view,
    this.initialQuery,
    this.initialGenre,
    this.initialTag,
  });

  final controller = TextEditingController();
  final scroll = ScrollController();
  final items = <Object>[].liveList;
  final loading = false.live;
  final failed = false.live;
  final historyTick = 0.live;
  late final type = initialType.searchType.live;
  late final mode = ResultView.values
      .firstWhere(
        (v) => v.name == viewPref.rx.value,
        orElse: () => ResultView.grid,
      )
      .live;

  late final query = SearchResults(
    type: initialType.searchType,
    perPage: 30,
  ).live;

  Timer? debounce;
  bool hasMore = true;

  bool get _imageIsManga =>
      type.value == SearchType.MANGA || type.value == SearchType.NOVEL;

  bool get canSearchBarcode => switch (type.value) {
    SearchType.MANGA || SearchType.NOVEL => true,
    _ => false,
  };

  Future<void> searchByBarcode() async {
    final title = await showBarcodeSearch(context);
    if (title == null || !context.mounted) return;
    useTerm(title);
  }

  Future<void> searchByImage() async {
    if (_imageIsManga) {
      final sauce = await showSauceSearch(context);
      if (sauce == null || !context.mounted) return;
      useTerm(sauce.title);
      return;
    }
    final hit = await showImageSearch(context);
    if (hit == null || !context.mounted) return;
    final current = find<MediaServiceController>().currentService.value;
    final anilist = find<MediaServiceController>().services.firstWhere(
      (s) => s.id == anilistServiceId,
    );
    var service = current;
    String? id = current.id == anilistServiceId ? '${hit.anilistId}' : null;
    final adapter = current.syncAdapter;
    if (id == null && adapter != null) {
      var ids = {
        SyncKey.anilist: hit.anilistId,
        if (hit.malId != null) SyncKey.mal: hit.malId!,
      };
      ids = await IdMapper.expand(ids, anime: true, prefer: SyncKey.anilist);
      final native = ids[adapter.key];
      if (native != null) id = adapter.targetId(native, anime: true);
    }
    if (id == null) {
      service = anilist;
      id = '${hit.anilistId}';
    }
    final media = await service.getQueries?.getMedia(id);
    if (!context.mounted) return;
    if (media == null) return snackString(getString.imageSearchOpenFailed);
    openDetail(context, service, media);
  }

  bool get isMedia => switch (type.value) {
    SearchType.CHARACTER ||
    SearchType.STAFF ||
    SearchType.STUDIO ||
    SearchType.USER => false,
    _ => true,
  };

  MediaType get mediaType => switch (type.value) {
    SearchType.ANIME => MediaType.anime,
    SearchType.MOVIES => MediaType.movie,
    SearchType.SERIES => MediaType.series,
    _ => MediaType.manga,
  };

  SearchFilterSpec get spec =>
      isMedia ? view.filters(mediaType) : SearchFilterSpec.none;

  bool get hasCriteria =>
      (query.value.search?.isNotEmpty ?? false) ||
      (isMedia && query.value.toChipList().isNotEmpty);

  late final Future<void> prepared = view.prepare();

  @override
  void onInit() {
    unawaited(prepared);
    if (initialQuery != null && initialQuery!.isNotEmpty) {
      controller.text = initialQuery!;
      query.value.search = initialQuery;
      restart();
    } else if (initialGenre != null || initialTag != null) {
      if (initialGenre != null) query.value.genres = [initialGenre!];
      if (initialTag != null) query.value.tags = [initialTag!];
      if (spec.sorts.containsKey('TRENDING_DESC')) {
        query.value.sort = 'TRENDING_DESC';
      }
      restart();
    }
  }

  @override
  void onClose() {
    debounce?.cancel();
    scroll.dispose();
    controller.dispose();
  }

  void onTermChanged(String value) {
    debounce?.cancel();
    debounce = Timer(const Duration(milliseconds: 400), () {
      query.value.search = value.trim();
      restart();
    });
  }

  int _generation = 0;

  void restart() {
    _generation++;
    loading.value = false;
    query.value.page = 1;
    hasMore = true;
    failed.value = false;
    items.clear();
    query.refresh();
    if (hasCriteria) unawaited(search());
  }

  List<Object> pick(SearchResults res) => switch (type.value) {
    SearchType.CHARACTER => [...?res.characters],
    SearchType.STAFF => [...?res.staff],
    SearchType.STUDIO => [...?res.studios],
    SearchType.USER => [...?res.users],
    _ => [...?res.results],
  };

  Future<void> search() async {
    if (loading.value || !hasMore || !hasCriteria) return;
    loading.value = true;
    failed.value = false;
    final generation = _generation;
    try {
      final res = await view.search(query.value);
      if (generation != _generation) return;
      query.value.page = (query.value.page ?? 1) + 1;
      hasMore = res?.hasNextPage ?? false;
      if (res != null) items.addAll(pick(res));
    } catch (e, st) {
      if (generation != _generation) return;
      logError('SearchState', e, st);
      hasMore = false;
      failed.value = true;
    } finally {
      if (generation == _generation) loading.value = false;
    }
  }

  void setType(SearchType t) {
    if (t == type.value) return;
    type.value = t;
    query.value
      ..type = t
      ..genres = null
      ..excludedGenres = null
      ..tags = null
      ..excludedTags = null;
    restart();
  }

  Future<void> openFilters() async {
    await prepared;
    if (!context.mounted) return;
    showSearchFilterSheet(
      context,
      spec: spec,
      current: query.value,
      onApply: (_) => restart(),
    );
  }

  void removeChip(SearchChip chip) {
    query.value.removeChip(chip);
    restart();
  }

  String get historyKey =>
      'search_history/${find<MediaServiceController>().currentService.value.id}/${type.value.name}';

  List<String> get history =>
      loadCustomData<List<String>>(historyKey, location: PrefLocation.CACHE) ??
      const <String>[];

  void remember(String term) {
    final t = term.trim();
    if (t.length < 2) return;
    final next = [
      t,
      ...history.where((e) => e.toLowerCase() != t.toLowerCase()),
    ];
    saveCustomData<List<String>>(
      historyKey,
      next.take(20).toList(),
      location: PrefLocation.CACHE,
    );
    historyTick.value++;
  }

  void forget(String term) {
    saveCustomData<List<String>>(
      historyKey,
      history.where((e) => e != term).toList(),
      location: PrefLocation.CACHE,
    );
    historyTick.value++;
  }

  void useTerm(String term) {
    controller.text = term;
    controller.selection = TextSelection.collapsed(offset: term.length);
    debounce?.cancel();
    query.value.search = term;
    restart();
  }

  void open(Object item, String tag) {
    remember(controller.text);
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
    final url = view.entityUrl(type.value, item);
    if (url != null) unawaited(openLinkInBrowser(url));
  }

  static String label(SearchType t) => switch (t) {
    SearchType.ANIME => getString.anime,
    SearchType.MANGA => getString.manga,
    SearchType.NOVEL => getString.novel,
    SearchType.MOVIES => getString.movies,
    SearchType.SERIES => getString.series,
    SearchType.CHARACTER => getString.characters,
    SearchType.STAFF => getString.staff,
    SearchType.STUDIO => getString.studios,
    SearchType.USER => getString.users,
  };
}
