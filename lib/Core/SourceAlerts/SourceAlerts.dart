import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/foundation.dart';

import '../../Api/Services/Extension/Services.dart';
import '../../Logger.dart';
import '../../Screen/Detail/Watch/Data/Media/MediaRecord.dart';
import '../../Screen/Detail/Watch/Data/SourceMatcher.dart';
import '../../Screen/Feed/FeedNavigation.dart';
import '../../Screen/Player/PlayerState.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Downloads/DownloadEngine.dart';
import '../Downloads/DownloadTask.dart';
import '../NotificationManager/NotificationManager.dart';
import '../Offline/NetStatus.dart';
import '../Offline/OfflineMode.dart';
import '../Services/MediaServiceController.dart';
import '../State/State.dart';
import '../ThemeManager/LanguageSwitcher.dart';
import 'SourcePrefs.dart';
import 'SourceSchedule.dart';
import 'SourceSub.dart';
import 'SourceSubscriptions.dart';

class SourceAlerts extends AppController {
  static const _payload = 'sub:';
  static const _parallel = 2;
  static const _perLaunch = 6;
  static const _summaryAfter = 4;

  Timer? _timer;
  Disposer? _tapSub;
  bool _running = false;
  bool _closed = false;
  final checking = false.live;
  final _gates = <String, Future<void>>{};
  final _lastCall = <String, DateTime>{};

  void start() {
    _tapSub ??= onChange(find<NotificationManager>().tapped, _tapped);
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 60), () => unawaited(_auto()));
  }

  Future<void> _auto() async {
    while (!_closed && _busy()) {
      await Future<void>.delayed(const Duration(minutes: 5));
    }
    if (!_closed) await run();
  }

  bool _busy() =>
      PlayerState.openCount > 0 ||
      find<DownloadEngine>().tasks.any(
        (t) => t.state.value == DownloadState.downloading,
      );

  Future<int> run({bool force = false}) async {
    if (_running) return 0;
    final store = find<SourceSubscriptions>();
    if (store.subs.isEmpty) return 0;
    if (!force) {
      if (!sourceAlertsPref.value) return 0;
      if (find<OfflineMode>().isOffline.value) return 0;
      if (!find<NetStatus>().online.value) return 0;
    }
    _running = true;
    checking.value = true;
    try {
      if (force) return await _run(store, force);
      return await CloudflareSolver.quietly(() => _run(store, force));
    } catch (e, st) {
      logError('SourceAlerts', e, st);
      return 0;
    } finally {
      _running = false;
      checking.value = false;
    }
  }

  Future<int> _run(SourceSubscriptions store, bool force) async {
    final manager = tryFind<ExtensionManager>();
    if (manager == null) return 0;
    final now = DateTime.now().millisecondsSinceEpoch;
    final rules = SkipRules(
      unstarted: sourceSkipUnstartedPref.value,
      unseen: sourceSkipUnseenPref.value,
    );
    final due = <SourceSub>[];
    for (final s in store.subs.toList()) {
      if (s.health == SubHealth.finished || s.muted) continue;
      if (_extensionOf(manager, s) == null) continue;
      if (!force && skipReason(s, now, rules) != null) continue;
      due.add(s);
    }
    if (due.isEmpty) return 0;
    due.sort((a, b) => a.nextCheckAt.compareTo(b.nextCheckAt));
    final picked = force ? due : due.take(_perLaunch).toList();
    logger(
      'Source check: ${picked.length} of ${store.subs.length} subscriptions',
      tag: 'SOURCE',
    );
    final backends = <(Extension, ItemType)>{
      for (final s in picked)
        (_extensionOf(manager, s)!, ItemType.values.byName(s.type)),
    };
    await Future.wait([for (final (e, t) in backends) _ready(e, t)]);
    final groups = <String, List<SourceSub>>{};
    for (final s in picked) {
      groups.putIfAbsent(s.dedupe, () => []).add(s);
    }
    final queue = groups.values.toList();
    final found = <(SourceSub, List<double>)>[];
    Future<void> worker() async {
      while (queue.isNotEmpty) {
        final result = await _checkGroup(queue.removeAt(0), manager);
        if (result != null) found.add(result);
        await Future<void>.delayed(const Duration(milliseconds: 200));
      }
    }

    await Future.wait([for (var i = 0; i < _parallel; i++) worker()]);
    store.changed();
    await _announce(found);
    return found.length;
  }

  Extension? _extensionOf(ExtensionManager manager, SourceSub sub) {
    final type = ItemType.values.asNameMap()[sub.type];
    if (type == null) return null;
    for (final e in manager.managers) {
      if (e.id == sub.managerId && e.supports(type)) return e;
    }
    return null;
  }

  Future<void> _ready(Extension extension, ItemType type) async {
    await extension.initializeInstalled(type);
    final state = extension.state(type);
    for (var i = 0; i < 40; i++) {
      if (!state.loadingInstalled.value && state.installed.value.isNotEmpty) {
        return;
      }
      await Future<void>.delayed(const Duration(milliseconds: 500));
    }
  }

  Future<T> _serial<T>(String key, Future<T> Function() task) async {
    final previous = _gates[key] ?? Future<void>.value();
    final done = Completer<void>();
    _gates[key] = done.future;
    try {
      await previous;
      final last = _lastCall[key];
      if (last != null) {
        final wait =
            const Duration(seconds: 2) - DateTime.now().difference(last);
        if (wait > Duration.zero) await Future<void>.delayed(wait);
      }
      return await task();
    } finally {
      _lastCall[key] = DateTime.now();
      done.complete();
    }
  }

  Future<(SourceSub, List<double>)?> _checkGroup(
    List<SourceSub> group,
    ExtensionManager manager,
  ) async {
    final lead = group.first;
    final type = ItemType.values.byName(lead.type);
    final extension = _extensionOf(manager, lead);
    if (extension == null) return null;
    final now = DateTime.now().millisecondsSinceEpoch;
    final source = extension
        .state(type)
        .installed
        .value
        .where((s) => s.id == lead.sourceId)
        .firstOrNull;
    if (source == null) {
      if (extension.isReady && !extension.state(type).loadingInstalled.value) {
        for (final s in group) {
          s
            ..health = SubHealth.missing
            ..lastChecked = now;
        }
      }
      return null;
    }
    try {
      final detail = await _serial(
        '${lead.managerId}|${lead.sourceId}',
        () => source.methods
            .getDetail(
              DMedia(
                title: lead.targetTitle,
                url: lead.targetUrl,
                cover: lead.targetCover,
              ),
            )
            .timeout(const Duration(seconds: 45)),
      );
      final raw = detail.episodes ?? const <DEpisode>[];
      if (raw.isEmpty) throw StateError('the source returned no episodes');
      final latest = await compute(
        checkEpisodes,
        CheckInput(
          raw: raw,
          anime: lead.anime,
          title: lead.title,
          season: lead.season,
        ),
      );
      if (latest == null) throw StateError('no numbered episodes');
      final current = find<MediaServiceController>().currentService.value.id;
      (SourceSub, List<double>)? out;
      for (final s in group) {
        final announce = _apply(s, latest, detail);
        if (announce.isEmpty) continue;
        if (out == null || s.serviceId == current) out = (s, announce);
      }
      return out;
    } catch (e) {
      _fail(group, e, source);
      return null;
    }
  }

  List<double> _apply(SourceSub sub, Latest latest, DMedia detail) {
    final now = DateTime.now().millisecondsSinceEpoch;
    final fresh = [
      for (final v in latest.values)
        if (v > sub.lastValue) v,
    ];
    sub
      ..lastChecked = now
      ..failures = 0
      ..health = SubHealth.ok
      ..targetTitle = detail.title ?? sub.targetTitle
      ..targetCover = detail.cover ?? sub.targetCover
      ..releases = mergeReleases(sub.releases, latest.stamps, now);
    if (latest.max > sub.lastValue) sub.lastValue = latest.max;
    if (fresh.isNotEmpty) {
      final newest = sub.releases.isEmpty ? 0 : sub.releases.last;
      sub.lastReleaseAt = newest > sub.lastReleaseAt && newest <= now
          ? newest
          : now;
    }
    sub.nextCheckAt = computeNextCheck(sub, now);
    if (reachedTotal(sub.lastValue, sub.total)) sub.health = SubHealth.finished;
    final seen = sub.seen;
    return [
      for (final v in fresh)
        if (seen == null || v > seen) v,
    ];
  }

  void _fail(List<SourceSub> group, Object error, Source source) {
    final now = DateTime.now().millisecondsSinceEpoch;
    final lead = group.first;
    logger(
      'Source check failed (${lead.sourceName}, ${lead.title}): $error',
      logLevel: LogLevel.error,
      tag: 'SOURCE',
    );
    for (final s in group) {
      s
        ..failures += 1
        ..lastChecked = now
        ..nextCheckAt = now + failureBackoff(s.failures);
      if (s.failures >= 5) s.health = SubHealth.unreachable;
    }
    if (lead.failures == 3) unawaited(_heal(group, source));
  }

  Future<void> _heal(List<SourceSub> group, Source source) async {
    try {
      final lead = group.first;
      final names = [lead.title, ?lead.targetTitle];
      final found = await SourceMatcher.search(source, lead.title, names);
      final best = found.firstOrNull;
      final url = best?.media.url;
      if (best == null || url == null || best.score < 90) return;
      if (url == lead.targetUrl) return;
      for (final s in group) {
        s
          ..targetUrl = url
          ..targetTitle = best.media.title ?? s.targetTitle
          ..targetCover = best.media.cover ?? s.targetCover
          ..failures = 0
          ..nextCheckAt = 0;
        final service = find<MediaServiceController>().services
            .where((m) => m.id == s.serviceId)
            .firstOrNull;
        if (service != null && !s.fixed) {
          SourceMatcher.save(service, source, s.buildMedia(), best.media);
        }
      }
      find<SourceSubscriptions>().changed();
    } catch (e, st) {
      logError('SourceAlerts', e, st);
    }
  }

  String _range(SourceSub s, List<double> values) {
    final last = unitLabel(values.last);
    if (values.length == 1) {
      return s.anime
          ? getString.sourceFoundEpisode(last, s.sourceName)
          : getString.sourceFoundChapter(last, s.sourceName);
    }
    final first = unitLabel(values.first);
    return s.anime
        ? getString.sourceFoundEpisodes(first, last, s.sourceName)
        : getString.sourceFoundChapters(first, last, s.sourceName);
  }

  Future<void> _announce(List<(SourceSub, List<double>)> found) async {
    if (found.isEmpty) return;
    final store = find<SourceSubscriptions>();
    final notifications = find<NotificationManager>();
    final now = DateTime.now().millisecondsSinceEpoch;
    var index = 0;
    for (final (sub, values) in found) {
      final body = _range(sub, values);
      store.addNotice(
        SourceNotice(
          id: '$now-${index++}',
          subKey: sub.key,
          title: sub.title,
          body: body,
          cover: sub.cover ?? sub.targetCover,
          at: now,
        ),
      );
    }
    try {
      if (found.length > _summaryAfter) {
        await notifications.show(
          title: getString.sourceFoundSummary(found.length),
          subtitle: getString.navSources,
          body: [
            for (final (s, v) in found.take(_summaryAfter))
              '• ${s.title}: ${_range(s, v)}',
          ].join('\n'),
          imageUrl: found.first.$1.cover,
        );
        return;
      }
      for (final (sub, values) in found) {
        await notifications.show(
          title: sub.title,
          subtitle: sub.sourceName,
          body: _range(sub, values),
          imageUrl: sub.cover ?? sub.targetCover,
          payload: '$_payload${sub.key}',
        );
      }
    } catch (e, st) {
      logError('SourceAlerts', e, st);
    }
  }

  void _tapped(String? payload) {
    if (payload == null || !payload.startsWith(_payload)) return;
    final sub = find<SourceSubscriptions>().byKey(
      payload.substring(_payload.length),
    );
    if (sub != null) openSub(sub);
  }

  void openSub(SourceSub sub) {
    final context = appContext;
    if (context == null || !context.mounted) return;
    final service = find<MediaServiceController>().services
        .where((s) => s.id == sub.serviceId)
        .firstOrNull;
    if (service == null) return;
    final media = sub.buildMedia();
    final type = ItemType.values.byName(sub.type);
    if (sub.fixed) media.sourceData = installedSourceById(sub.sourceId);
    final record = MediaRecords.of(service, media);
    record.watch
      ..sourceId = sub.sourceId
      ..sourceName = sub.sourceName;
    record.matches[sub.sourceId] = SourceMatchRecord(
      title: sub.targetTitle,
      url: sub.targetUrl,
      cover: sub.targetCover,
    );
    record.tab = 1;
    MediaRecords.save(service, media);
    final active = tryFind<ExtensionManager>()?.current[type];
    if (active?.id != sub.managerId) {
      snackString(getString.sourceInactiveOpen(sub.managerName));
    }
    find<SourceSubscriptions>().markRead(subKey: sub.key);
    openDetail(context, service, media);
  }

  @override
  void onClose() {
    _closed = true;
    _timer?.cancel();
    _tapSub?.dispose();
    super.onClose();
  }
}
