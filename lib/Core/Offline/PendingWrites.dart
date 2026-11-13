import 'dart:async';
import 'dart:convert';

import '../../Logger.dart';
import '../../Utils/Functions/RefreshController.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Preferences/PrefManager.dart';
import '../Services/MediaServiceController.dart';
import '../Services/Model/Media.dart';
import '../State/State.dart';
import '../ThemeManager/LanguageSwitcher.dart';
import 'NetStatus.dart';

enum PendingKind { edit, progress, delete }

class PendingWrite {
  final String serviceId;
  final String mediaId;
  PendingKind kind;
  Map<String, Object?> media;
  int? progress;
  List<String>? customList;
  int at;
  String? error;

  PendingWrite({
    required this.serviceId,
    required this.mediaId,
    required this.kind,
    required this.media,
    this.progress,
    this.customList,
    required this.at,
    this.error,
  });

  String get slot => '$serviceId/$mediaId';

  String get title =>
      (media['userPreferredName'] ??
              media['name'] ??
              media['nameRomaji'] ??
              mediaId)
          as String;

  Map<String, Object?> toJson() => {
    'service': serviceId,
    'id': mediaId,
    'kind': kind.name,
    'media': media,
    'progress': progress,
    'custom': customList,
    'at': at,
    'error': error,
  };

  static PendingWrite? fromJson(Object? json) {
    if (json is! Map) return null;
    final media = json['media'];
    if (media is! Map || json['service'] is! String || json['id'] is! String) {
      return null;
    }
    return PendingWrite(
      serviceId: json['service'] as String,
      mediaId: json['id'] as String,
      kind: PendingKind.values.firstWhere(
        (e) => e.name == json['kind'],
        orElse: () => PendingKind.edit,
      ),
      media: Map<String, Object?>.from(media),
      progress: (json['progress'] as num?)?.toInt(),
      customList: (json['custom'] as List?)?.cast<String>(),
      at: (json['at'] as num?)?.toInt() ?? 0,
      error: json['error'] as String?,
    );
  }
}

class PendingWrites extends AppController {
  static const _key = 'pendingWrites';

  final entries = <PendingWrite>[].liveList;
  final busy = false.live;

  @override
  void onInit() => reload();

  void reload() {
    final raw = PrefManager.getCustomVal<Map>(_key);
    final list = raw?['items'];
    entries.value = list is List
        ? [for (final item in list) ?PendingWrite.fromJson(item)]
        : [];
  }

  void _persist() => PrefManager.setCustomVal<Map>(_key, {
    'items': [for (final e in entries) e.toJson()],
  });

  Map<String, Object?> _snapshot(Media media) =>
      Map<String, Object?>.from(jsonDecode(jsonEncode(media.toJson())) as Map);

  void record(
    MediaService service,
    Media media,
    PendingKind kind, {
    int? progress,
    List<String>? customList,
  }) {
    final slot = '${service.id}/${media.id}';
    final existing = entries.where((e) => e.slot == slot).firstOrNull;
    final now = DateTime.now().millisecondsSinceEpoch;
    if (existing != null &&
        existing.kind == PendingKind.edit &&
        kind == PendingKind.progress) {
      existing.media = _snapshot(media);
      existing.progress = progress;
      existing.at = now;
      existing.error = null;
    } else {
      entries.removeWhere((e) => e.slot == slot);
      entries.add(
        PendingWrite(
          serviceId: service.id,
          mediaId: media.id,
          kind: kind,
          media: _snapshot(media),
          progress: progress,
          customList: customList,
          at: now,
        ),
      );
    }
    entries.refresh();
    _persist();
    findBuilt<RefreshController>()?.all();
  }

  PendingWrite? of(String serviceId, String mediaId) =>
      entries.where((e) => e.slot == '$serviceId/$mediaId').firstOrNull;

  void overlay(String serviceId, Media media) {
    final w = of(serviceId, media.id);
    if (w == null) return;
    switch (w.kind) {
      case PendingKind.delete:
        media
          ..userStatus = null
          ..userProgress = null
          ..userScore = 0;
      case PendingKind.progress:
        media.userProgress = w.progress;
        media.userStatus = w.media['userStatus'] as String? ?? media.userStatus;
      case PendingKind.edit:
        media
          ..userStatus = w.media['userStatus'] as String?
          ..userProgress = (w.media['userProgress'] as num?)?.toInt()
          ..userScore = (w.media['userScore'] as num?)?.toInt() ?? 0
          ..userRepeat = (w.media['userRepeat'] as num?)?.toInt() ?? 0
          ..notes = w.media['notes'] as String?;
    }
  }

  void discardAll() {
    entries.clear();
    entries.refresh();
    _persist();
  }

  Future<void> replay() async {
    if (busy.value || entries.isEmpty) return;
    busy.value = true;
    var sent = 0;
    try {
      final services = find<MediaServiceController>().services;
      final stopped = <String>{};
      for (final write in [...entries]) {
        if (stopped.contains(write.serviceId)) continue;
        final service = services
            .where((s) => s.id == write.serviceId)
            .firstOrNull;
        final api = service?.apiMutations;
        if (service == null || api == null || !service.isLoggedIn) {
          stopped.add(write.serviceId);
          continue;
        }
        try {
          if (await _send(service, api, write)) sent++;
          entries.remove(write);
        } catch (e, st) {
          logError('PendingWrites', e, st);
          if (!await find<NetStatus>().check()) break;
          final text = '$e'.toLowerCase();
          if (text.contains('401') || text.contains('unauthor')) {
            stopped.add(write.serviceId);
          }
          write.error = '$e';
        }
      }
    } finally {
      entries.refresh();
      _persist();
      busy.value = false;
    }
    if (sent > 0) {
      snackString(getString.offlineSynced(sent));
      findBuilt<RefreshController>()?.all();
    }
  }

  Future<bool> _send(
    MediaService service,
    Mutations api,
    PendingWrite write,
  ) async {
    final media = Media.fromJson(Map<String, dynamic>.from(write.media));
    switch (write.kind) {
      case PendingKind.delete:
        await api.deleteFromList(media);
      case PendingKind.edit:
        final custom = write.customList;
        if (custom == null) {
          await api.saveEntry(media);
        } else {
          await api.editList(media, customList: custom);
        }
      case PendingKind.progress:
        final remote = await service.getQueries?.getMedia(media.id);
        final target = write.progress ?? 0;
        if ((remote?.userProgress ?? 0) >= target) return false;
        final base = remote ?? (media..userProgress = null);
        await api.setProgress(base, target);
    }
    return true;
  }

  @override
  void onClose() {
    busy.close();
  }
}
