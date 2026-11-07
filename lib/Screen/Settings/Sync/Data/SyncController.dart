import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;

import '../../../../Utils/Functions/RefreshController.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Core/Preferences/Incognito.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/Preferences/StorageManager.dart';
import '../../../../Logger.dart';
import '../../../../Core/Services/MediaServiceController.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Core/Offline/OfflineMutations.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../Components/SyncPrivateDialog.dart';
import 'SyncAdapter.dart';
import 'SyncAhead.dart';
import 'SyncCompute.dart';
import 'SyncBudget.dart';
import '../../../../Core/Services/Api/IdMapper.dart';
import 'SyncMemory.dart';
import 'SyncModels.dart';
import 'SyncPlanner.dart';

enum SyncPhase { idle, fetching, syncing }

class SyncPreview {
  final MediaService service;
  final int updates;
  final int adds;
  final int lookups;
  final int requests;

  const SyncPreview(
    this.service,
    this.updates,
    this.adds,
    this.lookups,
    this.requests,
  );

  int get total => updates + adds;
}

class SyncController extends AppController {
  static const _planKey = 'syncPlan';
  static const _stampKey = 'syncStamps';
  static const _memoryKey = 'syncMemory';
  static const _fullEvery = Duration(hours: 6);

  final phase = SyncPhase.idle.live;
  final anime = true.live;
  final plan = Live<SyncPlan?>(null);
  final fetchDone = 0.live;
  final fetchTotal = 0.live;
  final fetchLabel = ''.live;
  final error = Live<String?>(null);
  final resumeAt = <String, DateTime>{}.liveMap;
  final targetError = <String, String>{}.liveMap;
  final clock = 0.live;
  final changes = Trigger();
  int version = 0;

  final _budget = SyncBudget();
  SyncMemory _memory = SyncMemory();
  bool _stop = false;
  Timer? _saver;
  Timer? _auto;
  bool _autoBusy = false;

  List<MediaService> get _services => find<MediaServiceController>().services;

  MediaService? get mainService =>
      _services.firstWhereOrNull((s) => s.id == mainId);

  bool get isAhead => mainId == syncAheadId;

  String get mainId {
    final saved = PrefName.syncMain.rx.value;
    if (saved == syncAheadId && _candidates.length > 1) return saved;
    if (_candidates.any((s) => s.id == saved)) return saved;
    return _candidates.firstOrNull?.id ?? '';
  }

  List<MediaService> get _candidates => [
    for (final s in _services)
      if (s.syncAdapter != null && s.isLoggedIn) s,
  ];

  List<MediaService> get candidates => _candidates;

  List<MediaService> targetsFor(String main, bool isAnime) => [
    for (final s in _candidates)
      if (s.id != main && s.syncAdapter!.supports(anime: isAnime)) s,
  ];

  List<MediaService> get aheadFor => targetsFor(syncAheadId, anime.value);

  void _notify() {
    version++;
    changes.fire();
  }

  static const _autoMaxWait = Duration(minutes: 2);

  bool get busy => phase.value != SyncPhase.idle;

  @override
  void onInit() {
    super.onInit();
    removeCustomData(_planKey, location: PrefLocation.CACHE);
    unawaited(_restore());
    final stamps = loadCustomData<Map>(_stampKey, location: PrefLocation.CACHE);
    if (stamps != null) {
      for (final e in stamps.entries) {
        _budget.stamps['${e.key}'] = [
          for (final v in e.value as List) (v as num).toInt(),
        ];
      }
    }
    final memory = loadCustomData<Map>(
      _memoryKey,
      location: PrefLocation.CACHE,
    );
    if (memory != null) {
      try {
        _memory = SyncMemory.fromJson(memory);
      } catch (e, st) {
        logError('SyncController', e, st);
        removeCustomData(_memoryKey, location: PrefLocation.CACHE);
      }
    }
  }

  @override
  void onClose() {
    _saver?.cancel();
    _auto?.cancel();
    super.onClose();
  }

  Future<File> _planFile() async {
    final dir = await StorageManager.getDirectory(subPath: 'sync');
    return File(p.join(dir!.path, 'plan.json'));
  }

  Future<void> _restore() async {
    try {
      final file = await _planFile();
      if (!await file.exists()) return;
      final restored = await compute(_readPlan, file.path);
      if (restored != null && plan.value == null && !busy) {
        plan.value = restored;
        anime.value = restored.anime;
        _notify();
      }
    } catch (e) {
      logger('Sync plan restore failed: $e', logLevel: LogLevel.error);
    }
  }

  bool _writing = false;
  bool _dirty = false;

  Future<void> _writePlan() async {
    if (_writing) {
      _dirty = true;
      return;
    }
    _writing = true;
    try {
      do {
        _dirty = false;
        final current = plan.value;
        if (current == null) break;
        await compute(_writePlanFile, ((await _planFile()).path, current));
      } while (_dirty);
    } catch (e) {
      logger('Sync plan save failed: $e', logLevel: LogLevel.error);
    } finally {
      _writing = false;
    }
  }

  void startAuto() {
    OfflineMutations.onProgressSaved = (service, media) {
      if (instant && canPush(service, media.isAnime)) {
        unawaited(pushEdit(service, media));
        return;
      }
      logger(
        'Instant sync not used for ${media.id}: instant=$instant, '
        'main=$mainId, from=${service.id}',
        tag: 'SYNC',
      );
    };
    _auto?.cancel();
    _auto = Timer.periodic(const Duration(minutes: 30), (_) => _autoRun());
    Timer(const Duration(seconds: 45), _autoRun);
  }

  Future<void> _autoRun() async {
    if (!PrefName.syncAuto.value || busy || _autoBusy) return;
    if (incognitoBlocksEdits || mainId.isEmpty) return;
    _autoBusy = true;
    try {
      for (final isAnime in [true, false]) {
        if (targetsFor(mainId, isAnime).isEmpty) continue;
        if (!isAhead && !mainService!.syncAdapter!.supports(anime: isAnime)) {
          continue;
        }
        try {
          await fetch(anime: isAnime, auto: true);
          if (plan.value?.hasPending == true) await start(auto: true);
        } catch (e, st) {
          logError('SyncController', e, st);
        }
      }
    } finally {
      _autoBusy = false;
    }
  }

  Future<void> fetch({bool? anime, bool auto = false}) async {
    if (busy) return;
    final isAnime = anime ?? this.anime.value;
    this.anime.value = isAnime;
    final ahead = isAhead;
    final main = ahead ? null : mainService;
    final adapter = main?.syncAdapter;
    if (!ahead &&
        (main == null ||
            adapter == null ||
            !adapter.supports(anime: isAnime))) {
      error.value = getString.syncNothingToSync;
      return;
    }
    final targets = targetsFor(ahead ? syncAheadId : main!.id, isAnime);
    if (targets.length < (ahead ? 2 : 1)) {
      error.value = getString.syncNoTargets;
      return;
    }
    phase.value = SyncPhase.fetching;
    error.value = null;
    targetError.clear();
    fetchDone.value = 0;
    fetchTotal.value = targets.length + (ahead ? 0 : 1) + 1;
    try {
      fetchLabel.value = getString.syncLoadingMap;
      List<int>? flat;
      try {
        flat = (await IdMapper.index(anime: isAnime)).flat;
      } catch (e, st) {
        if (isAnime) rethrow;
        logError('SyncController', e, st);
      }
      fetchDone.value++;
      final mainId = ahead ? syncAheadId : main!.id;
      final typeKey = SyncMemory.typeKey(mainId, isAnime);
      SyncPrepared? prepared;
      if (!ahead) {
        fetchLabel.value = main!.name;
        final mainItems = await adapter!.library(anime: isAnime);
        IdMapper.learnItems(mainItems, anime: isAnime);
        prepared = await syncPrepareMain(
          mainItems,
          flat,
          adapter.key,
          anime: isAnime,
        );
        fetchDone.value++;
        final lastFull = DateTime.fromMillisecondsSinceEpoch(
          _memory.fullAt[typeKey] ?? 0,
        );
        final current = plan.value;
        if (auto &&
            current != null &&
            current.main == mainId &&
            current.anime == isAnime &&
            !current.hasPending &&
            _memory.fingerprints[typeKey] == prepared.fingerprint &&
            DateTime.now().difference(lastFull) < _fullEvery) {
          return;
        }
      }
      final loaded = await Future.wait([
        for (final t in targets) _loadTarget(t, isAnime),
      ]);
      final libraries = <String, SyncLibrary>{};
      final failed = <String>{};
      final errors = <String, String?>{};
      for (var i = 0; i < targets.length; i++) {
        final t = targets[i];
        final items = loaded[i].$1;
        if (items == null) {
          failed.add(t.id);
          errors[t.id] = loaded[i].$2;
        } else {
          libraries[t.id] = (
            SyncTarget.of(t.syncAdapter!, anime: isAnime),
            items,
          );
        }
      }
      fetchLabel.value = getString.syncComparing;
      final planned = ahead
          ? await syncPlanAhead(
              libraries: libraries,
              flat: flat,
              failed: failed,
              anime: isAnime,
            )
          : await syncPlanFromMain(
              main: prepared!.items,
              targets: libraries,
              flat: flat,
              mainDates: adapter!.syncsDates,
              mainRepeat: adapter.syncsRepeat,
              onlyForward: PrefName.syncOnlyForward.value,
              failed: failed,
              anime: isAnime,
            );
      final result = <String, SyncTargetPlan>{
        for (final t in targets)
          t.id: failed.contains(t.id)
              ? SyncTargetPlan(const [], error: errors[t.id])
              : planned.plans[t.id]!,
      };
      for (final e in result.entries) {
        final targetAdapter = _services
            .firstWhereOrNull((s) => s.id == e.key)
            ?.syncAdapter;
        for (final p in e.value.pairs) {
          _recall(e.key, targetAdapter, p, isAnime);
        }
      }
      if (prepared != null) {
        _memory.fingerprints[typeKey] = prepared.fingerprint;
      }
      _memory.fullAt[typeKey] = DateTime.now().millisecondsSinceEpoch;
      plan.value = SyncPlan(
        main: mainId,
        anime: isAnime,
        targets: result,
        mainCount: planned.mainCount,
      );
      _saveNow();
    } on SyncFatal catch (e) {
      error.value = e.message;
    } catch (e) {
      error.value = '$e';
    } finally {
      phase.value = SyncPhase.idle;
      _notify();
    }
  }

  Future<(List<SyncItem>?, String?)> _loadTarget(
    MediaService service,
    bool isAnime,
  ) async {
    try {
      final items = await service.syncAdapter!.library(anime: isAnime);
      IdMapper.learnItems(items, anime: isAnime);
      return (items, null);
    } catch (e) {
      return (null, '$e');
    } finally {
      fetchDone.value++;
      fetchLabel.value = service.name;
    }
  }

  bool? _includePrivate;

  void choosePrivate(bool? value) {
    if (!busy) _includePrivate = value;
  }

  bool _blocksPrivate(SyncPair p) =>
      p.main.isPrivate &&
      (_includePrivate == false ||
          _includePrivate == null && PrefName.syncPrivate.value == 'skip');

  int privateCount({String? only}) {
    final current = plan.value;
    if (current == null) return 0;
    return [
      for (final e in current.targets.entries)
        if (only == null || only == e.key)
          for (final p in e.value.pairs)
            if (p.main.isPrivate && p.pending) p,
    ].length;
  }

  Future<void> start({
    String? only,
    bool auto = false,
    bool? includePrivate,
  }) async {
    final current = plan.value;
    if (busy || current == null) return;
    _includePrivate =
        includePrivate ??
        (auto ? PrefName.syncPrivate.value == 'sync' : _includePrivate);
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    phase.value = SyncPhase.syncing;
    _stop = false;
    for (final t in current.targets.values) {
      for (final p in t.pairs) {
        if (p.op == SyncOpState.failed) p.op = SyncOpState.idle;
      }
    }
    targetError.clear();
    try {
      await Future.wait([
        for (final id in current.targets.keys)
          if (only == null || only == id) _work(id, current, auto),
      ]);
    } finally {
      _includePrivate = null;
      for (final id in current.targets.keys) {
        await _services
            .firstWhereOrNull((s) => s.id == id)
            ?.syncAdapter
            ?.finish();
      }
      phase.value = SyncPhase.idle;
      resumeAt.clear();
      _saveNow();
      _notify();
      tryFind<RefreshController>()?.all();
    }
  }

  void stop() => _stop = true;

  bool get instant => PrefName.syncAuto.value || PrefName.syncOnEdit.value;

  bool canPush(MediaService service, bool anime) =>
      (service.id == mainId || isAhead) &&
      service.syncAdapter != null &&
      targetsFor(service.id, anime).isNotEmpty;

  Future<void> pushEdit(MediaService service, Media media) async {
    final adapter = service.syncAdapter;
    if (adapter == null || incognitoBlocksEdits) return;
    final isAnime = media.isAnime;
    final targets = targetsFor(service.id, isAnime);
    if (targets.isNotEmpty && media.isListPrivate) {
      final mode = PrefName.syncPrivate.value;
      final context = appContext;
      final allowed = mode == 'sync'
          ? true
          : mode == 'ask' && context != null && context.mounted
          ? await askSyncPrivate(context, 1)
          : false;
      if (allowed != true) {
        logger(
          'Instant sync: ${media.id} is private and was not synced',
          tag: 'SYNC',
        );
        return;
      }
    }
    if (targets.isEmpty) {
      logger(
        'Instant sync: ${service.name} has no other service to write to',
        tag: 'SYNC',
      );
      return;
    }
    var ids = await IdMapper.expand(
      adapter.idsOf(media),
      anime: isAnime,
      prefer: adapter.key,
    );
    try {
      final resolved = await IdMapper.resolve(
        service,
        media,
        need: {for (final t in targets) t.syncAdapter!.key},
      );
      ids = {...resolved.syncIds(), ...ids};
    } catch (e, st) {
      logError('SyncController', e, st);
    }
    IdMapper.learn(ids, anime: isAnime);
    final want = SyncItem.fromMedia(media, ids);
    final done = <String>[];
    for (final target in targets) {
      final other = target.syncAdapter!;
      try {
        var targetId = switch (ids[other.key]) {
          final native? => other.targetId(native, anime: isAnime),
          _ => null,
        };
        for (final from in other.resolveKeys) {
          final ref = ids[from];
          if (targetId != null || ref == null) continue;
          var native = _memory.native(target.id, isAnime, ref, from);
          if (native == null && other.canResolve) {
            final (found, used) = await other.resolveBy(from, [
              ref,
            ], anime: isAnime);
            _budget.stamp(target.id, used);
            native = found[ref];
            if (native != null) {
              _memory.remember(target.id, isAnime, ref, native, from);
            }
          }
          if (native != null) targetId = other.targetId(native, anime: isAnime);
        }
        if (targetId == null) {
          logger(
            'Instant sync: no ${target.name} id for ${media.id} ($ids)',
            tag: 'SYNC',
          );
          continue;
        }
        final wait = _waitFor(target.id, other);
        if (wait > const Duration(seconds: 20)) {
          logger(
            'Instant sync: ${target.name} skipped for ${media.id}, '
            'its request budget needs ${wait.inSeconds}s',
            tag: 'SYNC',
          );
          snackString(
            getString.syncPushFailed(target.name, getString.syncRateLimited),
          );
          continue;
        }
        if (wait > Duration.zero) await Future<void>.delayed(wait);
        final used = await other.write([
          SyncOp(want, null, targetId, unknown: true),
        ], anime: isAnime);
        _budget.stamp(target.id, used);
        await other.finish();
        done.add(target.name);
      } on SyncRateLimited catch (e) {
        _budget.hold(target.id, e.retryAfter);
        logger(
          'Instant sync: ${target.name} rate limited for ${media.id}: $e',
          logLevel: LogLevel.error,
          tag: 'SYNC',
        );
        snackString(getString.syncPushFailed(target.name, '$e'));
      } catch (e, st) {
        logger(
          'Instant sync: ${target.name} failed for ${media.id}: $e\n$st',
          logLevel: LogLevel.error,
          tag: 'SYNC',
        );
        snackString(getString.syncPushFailed(target.name, '$e'));
      }
    }
    if (done.isNotEmpty) {
      logger(
        'Instant sync: ${media.id} written to ${done.join(', ')}',
        tag: 'SYNC',
      );
      snackString(getString.syncPushed(done.join(', ')));
      _saveSoon();
    }
  }

  void _recall(String service, SyncAdapter? adapter, SyncPair p, bool isAnime) {
    if (p.state == SyncStatus.unmapped) return;
    if (_memory.isIgnored(service, isAnime, p.main.id)) {
      p.op = SyncOpState.skipped;
      return;
    }
    if (p.targetId != null || adapter == null) return;
    for (final from in adapter.resolveKeys) {
      final ref = p.main.ids[from];
      if (ref == null) continue;
      final native = _memory.native(service, isAnime, ref, from);
      if (native != null) {
        p.targetId = adapter.targetId(native, anime: isAnime);
        return;
      }
    }
  }

  void setSkipped(String service, SyncPair pair, bool skip) {
    final isAnime = plan.value?.anime ?? anime.value;
    _memory.setIgnored(service, isAnime, pair.main.id, skip);
    pair
      ..op = skip ? SyncOpState.skipped : SyncOpState.idle
      ..error = skip ? null : pair.error;
    _notify();
    _saveSoon();
  }

  void retry(SyncPair pair) {
    if (pair.op != SyncOpState.failed) return;
    pair
      ..op = SyncOpState.idle
      ..error = null;
    _notify();
    _saveSoon();
  }

  List<SyncPreview> preview({String? only}) {
    final current = plan.value;
    if (current == null) return const [];
    return [
      for (final e in current.targets.entries)
        if (only == null || only == e.key)
          if (_services.firstWhereOrNull((s) => s.id == e.key)
              case final service?)
            if (service.syncAdapter case final adapter?)
              _previewOf(service, adapter, e.value),
    ];
  }

  SyncPreview _previewOf(
    MediaService service,
    SyncAdapter adapter,
    SyncTargetPlan target,
  ) {
    final wanted = target.pairs.where(isWanted).toList();
    final adds = wanted.where((p) => p.state == SyncStatus.missing).length;
    final lookups = adapter.canResolve
        ? wanted.where((p) => p.targetId == null).length
        : 0;
    final writes =
        (wanted.length / adapter.batchSize).ceil() * adapter.requestsPerBatch;
    final reads = (lookups / adapter.resolveBatch).ceil();
    return SyncPreview(
      service,
      wanted.length - adds,
      adds,
      lookups,
      writes + reads,
    );
  }

  bool isWanted(SyncPair p) =>
      p.pending &&
      !_blocksPrivate(p) &&
      (p.state == SyncStatus.outdated ||
          PrefName.syncAddMissing.rx.value && p.state == SyncStatus.missing);

  Future<void> _work(String id, SyncPlan current, bool auto) async {
    final service = _services.firstWhereOrNull((s) => s.id == id);
    final adapter = service?.syncAdapter;
    if (service == null || adapter == null) return;
    final pairs = current.targets[id]!.pairs.where(isWanted).toList();
    await _resolve(id, service, adapter, pairs, current.anime, auto);
    while (!_stop) {
      final todo = pairs
          .where((p) => isWanted(p) && p.op != SyncOpState.failed)
          .take(adapter.batchSize)
          .toList();
      if (todo.isEmpty) break;
      final wait = _waitFor(id, adapter);
      if (auto && wait > _autoMaxWait) break;
      if (wait > Duration.zero) {
        await _sleep(id, wait);
        continue;
      }
      resumeAt.remove(id);
      try {
        await _send(id, adapter, todo, current.anime);
      } on SyncRateLimited catch (e) {
        _budget.hold(id, e.retryAfter);
      } on SyncFatal catch (e) {
        targetError[id] = e.message;
        break;
      }
      _notify();
      _saveSoon();
    }
  }

  Future<void> _resolve(
    String id,
    MediaService service,
    SyncAdapter adapter,
    List<SyncPair> pairs,
    bool isAnime,
    bool auto,
  ) async {
    if (!adapter.canResolve) return;
    for (final from in adapter.resolveKeys) {
      if (_stop) return;
      final open = [
        for (final p in pairs)
          if (p.targetId == null && p.main.ids[from] != null) p,
      ];
      for (final p in open) {
        if (p.op == SyncOpState.failed) {
          p
            ..op = SyncOpState.idle
            ..error = null;
        }
      }
      var at = 0;
      while (at < open.length && !_stop) {
        final wait = _waitFor(id, adapter);
        if (auto && wait > _autoMaxWait) break;
        if (wait > Duration.zero) {
          await _sleep(id, wait);
          continue;
        }
        final chunk = open.sublist(
          at,
          (at + adapter.resolveBatch).clamp(0, open.length),
        );
        try {
          final (found, used) = await adapter.resolveBy(from, [
            for (final p in chunk) p.main.ids[from]!,
          ], anime: isAnime);
          _budget.stamp(id, used);
          for (final p in chunk) {
            final ref = p.main.ids[from]!;
            final native = found[ref];
            final target = native == null
                ? null
                : adapter.targetId(native, anime: isAnime);
            if (target != null) {
              p.targetId = target;
              _memory.remember(id, isAnime, ref, native!, from);
            } else {
              p
                ..op = SyncOpState.failed
                ..error = getString.syncNotFound(service.name);
            }
          }
          at += chunk.length;
        } on SyncRateLimited catch (e) {
          _budget.stamp(id, 1);
          _budget.hold(id, e.retryAfter);
        } on SyncFatal catch (e) {
          targetError[id] = e.message;
          return;
        } catch (e) {
          _budget.stamp(id, 1);
          for (final p in chunk) {
            p
              ..op = SyncOpState.failed
              ..error = '$e';
          }
          at += chunk.length;
        }
        _notify();
        _saveSoon();
      }
    }
  }

  Future<void> _send(
    String id,
    SyncAdapter adapter,
    List<SyncPair> batch,
    bool isAnime,
  ) async {
    SyncOp op(SyncPair p) => SyncOp(p.want, p.target, p.targetId!);
    try {
      final used = await adapter.write([
        for (final p in batch) op(p),
      ], anime: isAnime);
      _budget.stamp(id, used);
      _budget.succeeded(id);
      for (final p in batch) {
        _done(p);
      }
    } on SyncRateLimited {
      _budget.stamp(id, adapter.requestsPerBatch);
      rethrow;
    } on SyncFatal {
      rethrow;
    } catch (e) {
      _budget.stamp(id, 1);
      if (batch.length == 1) {
        batch.first
          ..op = SyncOpState.failed
          ..error = '$e';
        return;
      }
      for (final p in batch) {
        if (_stop) return;
        await _send(id, adapter, [p], isAnime);
      }
    }
  }

  void _done(SyncPair p) {
    p
      ..target = p.want.asTarget(p.targetId!, previous: p.target)
      ..state = SyncStatus.synced
      ..op = SyncOpState.done
      ..error = null;
  }

  Duration _waitFor(String id, SyncAdapter adapter) =>
      _budget.waitFor(id, adapter.limits, adapter.requestsPerBatch);

  Future<void> _sleep(String id, Duration wait) async {
    final until = DateTime.now().add(wait);
    resumeAt[id] = until;
    while (!_stop) {
      final left = until.difference(DateTime.now());
      if (left <= Duration.zero) break;
      await Future<void>.delayed(
        left < const Duration(seconds: 1) ? left : const Duration(seconds: 1),
      );
      clock.value++;
    }
  }

  int usedIn(String id, SyncLimit limit) => _budget.usedIn(id, limit);

  void clear() {
    if (busy) return;
    plan.value = null;
    unawaited(
      _planFile().then((f) async {
        if (await f.exists()) await f.delete();
      }),
    );
  }

  void _saveSoon() {
    _saver ??= Timer(const Duration(seconds: 3), _saveNow);
  }

  void _saveNow() {
    _saver?.cancel();
    _saver = null;
    if (plan.value != null) unawaited(_writePlan());
    saveCustomData<Map<String, dynamic>>(
      _stampKey,
      _budget.stamps,
      location: PrefLocation.CACHE,
    );
    saveCustomData<Map<String, dynamic>>(
      _memoryKey,
      _memory.toJson(),
      location: PrefLocation.CACHE,
    );
  }
}

SyncPlan? _readPlan(String path) {
  try {
    return SyncPlan.fromJson(
      Map<String, dynamic>.from(
        jsonDecode(File(path).readAsStringSync()) as Map,
      ),
    );
  } catch (e, st) {
    logError('SyncController', e, st);
    return null;
  }
}

void _writePlanFile((String, SyncPlan) job) =>
    File(job.$1).writeAsStringSync(jsonEncode(job.$2.toJson()));
