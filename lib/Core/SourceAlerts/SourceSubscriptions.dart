import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../Api/Services/Extension/Services.dart';
import '../../Screen/Detail/Watch/Data/Media/ResumeStore.dart';
import '../Preferences/PrefManager.dart';
import '../Services/MediaService.dart';
import '../Services/Model/Media.dart';
import '../State/State.dart';
import 'SourceSchedule.dart';
import 'SourceSub.dart';

enum SubscribeResult { added, complete, noTarget }

class SourceSubscriptions extends AppController {
  static const _key = 'sourceSubs';
  static const _noticeLimit = 100;

  final subs = <SourceSub>[].liveList;
  final notices = <SourceNotice>[].liveList;
  Timer? _saveTimer;

  @override
  void onInit() => reload();

  void reload() {
    final raw = PrefManager.getCustomVal<Map>(_key);
    if (raw == null) return;
    subs.value = [
      for (final item in raw['subs'] is List ? raw['subs'] as List : [])
        ?SourceSub.fromJson(item),
    ];
    notices.value = [
      for (final item in raw['notices'] is List ? raw['notices'] as List : [])
        ?SourceNotice.fromJson(item),
    ];
  }

  @override
  void onClose() {
    _saveTimer?.cancel();
    _write();
    super.onClose();
  }

  SourceSub? byKey(String key) {
    for (final s in subs) {
      if (s.key == key) return s;
    }
    return null;
  }

  SourceSub? of(MediaService service, Media media) =>
      byKey('${service.id}/${media.id}');

  int get unread {
    var count = 0;
    for (final n in notices) {
      if (!n.read) count++;
    }
    return count;
  }

  void changed() {
    subs.refresh();
    _scheduleSave();
  }

  void _scheduleSave() {
    _saveTimer?.cancel();
    _saveTimer = Timer(const Duration(milliseconds: 500), _write);
  }

  void _write() {
    PrefManager.setCustomVal<Map>(_key, {
      'subs': [for (final s in subs) s.toJson()],
      'notices': [for (final n in notices) n.toJson()],
    });
  }

  int _now() => DateTime.now().millisecondsSinceEpoch;

  int? _airingMs(Media media) {
    final value = media.anime?.nextAiringEpisodeTime;
    return value != null && value > 1000000000 ? value * 1000 : null;
  }

  int? _progressOf(MediaService service, Media media) =>
      media.userProgress ??
      (service.id != extensionServiceId && service.isLoggedIn ? 0 : null);

  SubscribeResult subscribe({
    required MediaService service,
    required Media media,
    required Source source,
    required Extension manager,
    required ItemType type,
    required DMedia target,
    required Latest latest,
    required int localProgress,
    String? season,
  }) {
    final url = target.url;
    final id = source.id;
    if (url == null || url.isEmpty || id == null) {
      return SubscribeResult.noTarget;
    }
    if (reachedTotal(latest.max, finalTotal(media))) {
      return SubscribeResult.complete;
    }
    final now = _now();
    final sub = SourceSub(
      serviceId: service.id,
      mediaId: media.id,
      serviceName: service.name,
      anime: media.isAnime,
      type: type.name,
      media: ResumeStore.slim(media),
      title: media.mainName,
      cover: media.cover,
      banner: media.banner,
      managerId: manager.id,
      managerName: manager.name,
      sourceId: id,
      sourceName: source.name ?? id,
      sourceLang: source.lang,
      sourceIcon: source.iconUrl,
      fixed: media.sourceData != null,
      targetUrl: url,
      targetTitle: target.title,
      targetCover: target.cover,
      season: season,
      progress: _progressOf(service, media),
      localProgress: localProgress,
      listStatus: media.userStatus,
      total: finalTotal(media),
      airingAt: _airingMs(media),
      lastValue: latest.max,
      lastChecked: now,
    );
    sub.releases = mergeReleases(const [], latest.stamps, now);
    sub.lastReleaseAt = sub.releases.isEmpty ? 0 : sub.releases.last;
    sub.nextCheckAt = computeNextCheck(sub, now);
    subs.removeWhere((s) => s.key == sub.key);
    subs.add(sub);
    _scheduleSave();
    return SubscribeResult.added;
  }

  void remove(SourceSub sub) {
    subs.removeWhere((s) => s.key == sub.key);
    notices.removeWhere((n) => n.subKey == sub.key);
    _scheduleSave();
  }

  void noteMedia(MediaService service, Media media) {
    final sub = of(service, media);
    if (sub == null || media.minimal) return;
    sub.serviceName = service.name;
    final name = media.mainName;
    if (name.isNotEmpty) sub.title = name;
    sub.cover = media.cover ?? sub.cover;
    sub.banner = media.banner ?? sub.banner;
    sub.media = ResumeStore.slim(media);
    if (media.status != null) {
      sub.total = finalTotal(media);
      if (sub.total == null && sub.health == SubHealth.finished) {
        sub.health = SubHealth.ok;
      }
    }
    final airing = _airingMs(media);
    if (media.status != null) {
      final moved = airing != sub.airingAt;
      sub.airingAt = airing;
      final due = airingDue(sub, _now());
      if (moved && due != null) sub.nextCheckAt = due;
    }
    final progress = _progressOf(service, media);
    if (progress != null || service.isLoggedIn) {
      sub.progress = progress;
      sub.listStatus = media.userStatus;
    }
    changed();
  }

  void noteProgress(MediaService service, Media media, int? progress) {
    final sub = of(service, media);
    if (sub == null || progress == null) return;
    if (sub.progress == progress) return;
    sub.progress = progress;
    changed();
  }

  void noteLocal(MediaService service, Media media, int local) {
    final sub = of(service, media);
    if (sub == null || sub.localProgress == local) return;
    sub.localProgress = local;
    changed();
  }

  bool noteEpisodes({
    required MediaService service,
    required Media media,
    required Source source,
    required Extension manager,
    required DMedia target,
    required Latest latest,
    required int localProgress,
    bool explicit = false,
  }) {
    final sub = of(service, media);
    final url = target.url;
    final id = source.id;
    if (sub == null || url == null || url.isEmpty || id == null) return false;
    final now = _now();
    final sameSource = sub.sourceId == id && sub.managerId == manager.id;
    if (!sameSource && !explicit) return false;
    final previous = sub.lastValue;
    final rebase = !sameSource || sub.targetUrl != url;
    if (!sameSource) {
      sub
        ..managerId = manager.id
        ..managerName = manager.name
        ..sourceId = id
        ..sourceName = source.name ?? id
        ..sourceLang = source.lang
        ..sourceIcon = source.iconUrl;
    }
    sub
      ..targetUrl = url
      ..targetTitle = target.title ?? sub.targetTitle
      ..targetCover = target.cover ?? sub.targetCover
      ..localProgress = localProgress
      ..lastChecked = now
      ..failures = 0
      ..health = SubHealth.ok;
    if (rebase) {
      sub
        ..lastValue = latest.max
        ..releases = mergeReleases(const [], latest.stamps, now);
    } else {
      sub
        ..lastValue = latest.max > sub.lastValue ? latest.max : sub.lastValue
        ..releases = mergeReleases(sub.releases, latest.stamps, now);
    }
    final newest = sub.releases.isEmpty ? 0 : sub.releases.last;
    if (rebase || sub.lastValue > previous) {
      sub.lastReleaseAt = newest > 0 ? newest : (rebase ? 0 : now);
      sub.nextCheckAt = computeNextCheck(sub, now);
    } else if (newest > sub.lastReleaseAt) {
      sub.lastReleaseAt = newest;
    }
    if (reachedTotal(sub.lastValue, sub.total)) sub.health = SubHealth.finished;
    changed();
    return true;
  }

  void addNotice(SourceNotice notice) {
    notices.insert(0, notice);
    if (notices.length > _noticeLimit) {
      notices.removeRange(_noticeLimit, notices.length);
    }
    _scheduleSave();
  }

  void markRead({String? subKey}) {
    var any = false;
    for (final n in notices) {
      if (!n.read && (subKey == null || n.subKey == subKey)) {
        n.read = true;
        any = true;
      }
    }
    if (!any) return;
    notices.refresh();
    _scheduleSave();
  }
}
