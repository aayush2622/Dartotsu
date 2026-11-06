import 'dart:math';

import '../../Logger.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import 'package:flutter/material.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/Services/MediaService.dart';
import '../../Core/Preferences/Pref.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/ScreenState.dart';

enum ListSort { listOrder, score, title, updated, progress, released, average }

final _animeSortPref = enumPref(
  'listSortAnime',
  ListSort.listOrder,
  ListSort.values,
  PrefLocation.COMMON,
);
final _mangaSortPref = enumPref(
  'listSortManga',
  ListSort.listOrder,
  ListSort.values,
  PrefLocation.COMMON,
);
final _animeReversePref = const Pref<bool>(
  'listReverseAnime',
  false,
  PrefLocation.COMMON,
);
final _mangaReversePref = const Pref<bool>(
  'listReverseManga',
  false,
  PrefLocation.COMMON,
);

class MediaListState extends ScreenState {
  final MediaService service;
  final bool anime;
  final String? userId;
  final String? userName;

  MediaListState({
    required this.service,
    required this.anime,
    this.userId,
    this.userName,
  });

  static const loadingKey = 'Loading';

  static final _skeletonLists = <String, List<Media>>{
    for (var i = 0; i < 4; i++)
      '$loadingKey $i': [for (var j = 0; j < 12; j++) Media.skeleton()],
  };

  final lists = Live<Map<String, List<Media>>?>(null);
  final failed = false.live;
  TabController? _tabs;

  final query = ''.live;
  final searching = false.live;
  late final sort = (anime ? _animeSortPref : _mangaSortPref).rx;
  late final reversed = (anime ? _animeReversePref : _mangaReversePref).rx;
  final formats = <String>{}.live;
  final statuses = <String>{}.live;
  final genres = <String>{}.live;

  late final searchController = TextEditingController();

  bool get loading => lists.value == null && !failed.value;

  bool get filtered =>
      formats.value.isNotEmpty ||
      statuses.value.isNotEmpty ||
      genres.value.isNotEmpty;

  Iterable<Media> get _all => (lists.value ?? const {}).values.expand((e) => e);

  List<String> get formatOptions => _distinct(_all.map((m) => m.format));

  List<String> get statusOptions => _distinct(_all.map((m) => m.status));

  List<String> get genreOptions =>
      _distinct(_all.expand((m) => m.genres)).toList();

  static List<String> _distinct(Iterable<String?> values) => ({
    for (final v in values)
      if (v != null && v.isNotEmpty) v,
  }.toList()..sort());

  Map<String, List<Media>> get shown {
    if (failed.value) return <String, List<Media>>{};
    final source = lists.value;
    if (source == null) return _skeletonLists;
    final text = query.value.trim().toLowerCase();
    final f = formats.value;
    final st = statuses.value;
    final g = genres.value;
    final order = sort.value;
    final flip = reversed.value;
    return {
      for (final entry in source.entries)
        entry.key: _arrange(
          [
            for (final m in entry.value)
              if ((text.isEmpty || _matches(m, text)) &&
                  (f.isEmpty || f.contains(m.format)) &&
                  (st.isEmpty || st.contains(m.status)) &&
                  (g.isEmpty || g.every(m.genres.contains)))
                m,
          ],
          order,
          flip,
        ),
    };
  }

  static bool _matches(Media m, String text) =>
      m.mainName.toLowerCase().contains(text) ||
      (m.name ?? '').toLowerCase().contains(text) ||
      (m.nameRomaji ?? '').toLowerCase().contains(text) ||
      m.synonyms.any((s) => s.toLowerCase().contains(text));

  static int _date(Media m) {
    final d = m.startDate;
    if (d == null || d.year == null) return 0;
    return d.year! * 10000 + (d.month ?? 0) * 100 + (d.day ?? 0);
  }

  static List<Media> _arrange(List<Media> items, ListSort order, bool flip) {
    if (order == ListSort.listOrder) {
      return flip ? items.reversed.toList() : items;
    }
    int by(Media a, Media b) => switch (order) {
      ListSort.score => (b.userScore ?? 0).compareTo(a.userScore ?? 0),
      ListSort.title => a.mainName.toLowerCase().compareTo(
        b.mainName.toLowerCase(),
      ),
      ListSort.updated => (b.userUpdatedAt ?? 0).compareTo(
        a.userUpdatedAt ?? 0,
      ),
      ListSort.progress => (b.userProgress ?? 0).compareTo(a.userProgress ?? 0),
      ListSort.released => _date(b).compareTo(_date(a)),
      ListSort.average => (b.meanScore ?? 0).compareTo(a.meanScore ?? 0),
      ListSort.listOrder => 0,
    };
    final sorted = [...items]..sort(by);
    return flip ? sorted.reversed.toList() : sorted;
  }

  void toggleSearch() {
    searching.value = !searching.value;
    if (!searching.value) {
      searchController.clear();
      query.value = '';
    }
  }

  void toggle(Live<Set<String>> target, String value) {
    final next = {...target.value};
    if (!next.remove(value)) next.add(value);
    target.value = next;
  }

  void clearFilters() {
    formats.value = {};
    statuses.value = {};
    genres.value = {};
  }

  Media? randomPick(List<String> keys) {
    final lists = shown;
    if (keys.isEmpty) return null;
    final index = (_tabs?.index ?? 0).clamp(0, keys.length - 1);
    final pool = lists[keys[index]] ?? const <Media>[];
    if (pool.isEmpty) return null;
    return pool[Random().nextInt(pool.length)];
  }

  String get title {
    final owner = userName ?? service.auth?.user.value?.name;
    if (owner == null) {
      return anime ? getString.animeList : getString.mangaList;
    }
    return anime
        ? getString.ownerAnimeList(owner)
        : getString.ownerMangaList(owner);
  }

  DiscordPresence get presence =>
      DiscordPresence.browsing('Browsing a ${anime ? 'anime' : 'manga'} list');

  @override
  void onInit() => load();

  Future<void> load() async {
    final user = service.auth?.user.value;
    final queries = service.getQueries;
    if (queries == null) {
      if (mounted) failed.value = true;
      return;
    }
    try {
      final result = await queries.getMediaLists(
        anime: anime,
        userId: userId == null ? user?.id : int.tryParse(userId!),
      );
      if (!mounted) return;
      lists.value = result;
      failed.value = false;
    } catch (e, st) {
      logError('MediaListState', e, st);
      if (mounted) failed.value = true;
    }
  }

  TabController controllerFor(int length) {
    final current = _tabs;
    if (current != null && current.length == length) return current;
    final index = current == null ? 0 : current.index.clamp(0, length - 1);
    current?.dispose();
    return _tabs = TabController(
      length: length,
      vsync: vsync,
      animationDuration: animDuration(300),
      initialIndex: index,
    );
  }

  @override
  void onClose() {
    _tabs?.dispose();
    searchController.dispose();
  }
}
