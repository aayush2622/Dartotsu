import 'dart:async';

import '../../Api/Services/Anilist/AnilistService.dart';
import '../../Api/Services/Anilist/Data/Media.dart';
import '../../Core/Services/Api/Chiaki.dart';
import '../../Core/Services/Api/IdMapper.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Logger.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../Feed/FeedNavigation.dart';
import '../Settings/Sync/Data/SyncModels.dart';

const _quietTypes = {6, 7, 8};

class WatchOrderState extends ScreenState {
  final MediaService service;
  final Media media;

  WatchOrderState({required this.service, required this.media});

  final order = Live<ChiakiOrder?>(null);
  final failed = false.live;
  final missing = false.live;
  final hiddenTypes = {..._quietTypes}.live;
  final opening = Live<int?>(null);
  final resolved = <int, ResolvedEntry>{}.liveMap;
  final _queued = <ChiakiEntry>[];
  final _seen = <int>{};
  var _active = 0;
  int? malId;

  bool get loading => order.value == null && !failed.value && !missing.value;

  List<ChiakiEntry> get visible => [
    for (final e in order.value?.entries ?? const <ChiakiEntry>[])
      if (e.malId == malId || !hiddenTypes.value.contains(e.type)) e,
  ];

  List<int> get types {
    final present = {for (final e in order.value?.entries ?? const []) e.type};
    return [
      for (final t in const [1, 3, 2, 4, 6, 7, 8])
        if (present.contains(t)) t,
    ];
  }

  static const _inverse = {
    'Sequel': 'Prequel',
    'Prequel': 'Sequel',
    'Parent Story': 'Side Story',
    'Side Story': 'Parent Story',
    'Summary': 'Full Story',
    'Full Story': 'Summary',
  };

  ChiakiEntry? get current =>
      order.value?.entries.where((e) => e.malId == malId).firstOrNull;

  String relationOf(ChiakiEntry entry) {
    if (entry.malId == malId) return '';
    final direct = current?.related[entry.malId];
    if (direct != null) return direct;
    final back = entry.related[malId];
    return back == null ? '' : _inverse[back] ?? back;
  }

  @override
  void onInit() => unawaited(load());

  Future<void> load() async {
    failed.value = false;
    missing.value = false;
    order.value = null;
    try {
      malId = await _malId();
      if (malId == null) {
        if (mounted) missing.value = true;
        return;
      }
      final result = await Chiaki.watchOrder(malId!);
      if (!mounted) return;
      if (result == null || result.entries.isEmpty) {
        missing.value = true;
        return;
      }
      order.value = result;
    } catch (e, st) {
      logError('WatchOrder', e, st);
      if (mounted) failed.value = true;
    }
  }

  Future<int?> _malId() async {
    final ids = service.syncAdapter?.idsOf(media) ?? const <String, int>{};
    final known = ids[SyncKey.mal];
    if (known != null) return known;
    final expanded = await IdMapper.expand(
      ids,
      anime: true,
      prefer: SyncKey.mal,
    );
    final mapped = expanded[SyncKey.mal];
    if (mapped != null || service.id != anilistServiceId) return mapped;
    final fresh = await service.getQueries?.getMedia(media.id);
    return fresh is AnilistMedia ? fresh.idMal : fresh?.malId;
  }

  void toggleType(int type) {
    final next = {...hiddenTypes.value};
    if (!next.remove(type)) next.add(type);
    hiddenTypes.value = next;
  }

  String? heroTagOf(ChiakiEntry entry) =>
      entry.malId > 0 ? 'watchorder:${entry.malId}' : null;

  void ensure(ChiakiEntry entry) {
    if (entry.malId <= 0 || !_seen.add(entry.malId)) return;
    _queued.add(entry);
    _pump();
  }

  void _pump() {
    while (_active < 3 && _queued.isNotEmpty) {
      final entry = _queued.removeAt(0);
      _active++;
      unawaited(
        _resolve(entry)
            .then((found) {
              if (mounted && found != null) resolved[entry.malId] = found;
            })
            .catchError((Object e, StackTrace st) {
              logError('WatchOrder', e, st);
            })
            .whenComplete(() {
              _active--;
              if (mounted) _pump();
            }),
      );
    }
  }

  Future<ResolvedEntry?> _resolve(ChiakiEntry entry) async {
    var target = service;
    String? id;
    if (service.id == anilistServiceId && entry.anilistId != null) {
      id = '${entry.anilistId}';
    }
    final adapter = service.syncAdapter;
    if (id == null && adapter != null) {
      final ids = await IdMapper.expand(
        {
          SyncKey.mal: entry.malId,
          if (entry.anilistId != null) SyncKey.anilist: entry.anilistId!,
        },
        anime: true,
        prefer: SyncKey.mal,
      );
      final native = ids[adapter.key];
      if (native != null) id = adapter.targetId(native, anime: true);
    }
    if (id == null && entry.anilistId != null) {
      target = find<MediaServiceController>().services.firstWhere(
        (s) => s.id == anilistServiceId,
      );
      id = '${entry.anilistId}';
    }
    if (id == null) return null;
    final found = await target.getQueries?.getMedia(id);
    return found == null ? null : ResolvedEntry(target, found);
  }

  Future<void> open(ChiakiEntry entry) async {
    if (entry.malId == malId || opening.value != null) return;
    opening.value = entry.malId;
    try {
      final found = resolved[entry.malId] ?? await _resolve(entry);
      if (!mounted || !context.mounted) return;
      if (found == null) return snackString(getString.watchOrderOpenFailed);
      openDetail(
        context,
        found.service,
        found.media,
        heroTag: heroTagOf(entry),
      );
    } catch (e, st) {
      logError('WatchOrder', e, st);
      if (mounted) snackString(getString.watchOrderOpenFailed);
    } finally {
      if (mounted) opening.value = null;
    }
  }

  String listLabel(Media media) {
    final status = switch (media.userStatus) {
      'CURRENT' => getString.watching,
      'REPEATING' => getString.rewatching,
      'COMPLETED' => getString.completed,
      'PAUSED' => getString.paused,
      'DROPPED' => getString.dropped,
      'PLANNING' => getString.planned,
      _ => '',
    };
    if (status.isEmpty) return '';
    final done = media.userProgress ?? 0;
    final total = media.totalUnits;
    final progress = media.userStatus == 'PLANNING' || done <= 0
        ? ''
        : total == null || total <= 0
        ? ' · $done'
        : ' · $done/$total';
    final score = (media.userScore ?? 0) > 0
        ? ' · ★${((media.userScore ?? 0) / 10).toStringAsFixed((media.userScore ?? 0) % 10 == 0 ? 0 : 1)}'
        : '';
    return '$status$progress$score';
  }
}

class ResolvedEntry {
  final MediaService service;
  final Media media;

  const ResolvedEntry(this.service, this.media);
}
