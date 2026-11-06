import '../../Core/Preferences/StorageManager.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path/path.dart' as p;

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Logger.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/ImageActions.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../Downloads/StorageFolderPrompt.dart';

class ShareCardState extends ScreenState {
  final MediaService service;
  final Media? media;
  final int? userId;
  final String? name;
  final String? picture;
  final SocialUser? user;
  final Widget? custom;
  final String? customName;
  final String? customLink;

  ShareCardState(
    this.service,
    this.media, {
    this.userId,
    this.name,
    this.picture,
    this.user,
    this.custom,
    this.customName,
    this.customLink,
  });

  final boundary = GlobalKey();
  final anime = true.live;
  final stats = false.live;
  final loading = false.live;
  final busy = false.live;
  final entries = Live<List<Media>?>(null);
  int _run = 0;

  bool get isCustom => custom != null;

  bool get isList => media == null && !isCustom;

  String get userName => name ?? service.auth?.user.value?.name ?? service.name;

  String? get profileLink => service.socialView?.profileUrl(userName);

  String? get avatar => picture ?? service.auth?.user.value?.avatar;

  @override
  void onInit() {
    if (isList) unawaited(loadList());
  }

  bool get isStats => isList && user != null && stats.value;

  int get mode => isStats ? 2 : (anime.value ? 0 : 1);

  void setMode(int value) {
    stats.value = value == 2;
    if (value == 2) return;
    final next = value == 0;
    if (anime.value == next && entries.value != null) return;
    anime.value = next;
    unawaited(loadList());
  }

  Future<void> loadList() async {
    final run = ++_run;
    final queries = service.getQueries;
    if (queries == null) return;
    loading.value = true;
    entries.value = null;
    try {
      final lists = await queries.getMediaLists(
        anime: anime.value,
        userId: userId,
      );
      if (run != _run) return;
      final seen = <String>{};
      entries.value = [
        for (final list in lists.values)
          for (final m in list)
            if (seen.add(m.id)) m,
      ];
    } catch (e, st) {
      logger(
        'Share list failed: $e\n$st',
        logLevel: LogLevel.warning,
        tag: 'SHARE',
      );
      if (run == _run) entries.value = const [];
    } finally {
      if (run == _run) loading.value = false;
    }
  }

  List<Media> get top {
    final list = [...?entries.value]
      ..sort((a, b) {
        final byMine = (b.userScore ?? 0).compareTo(a.userScore ?? 0);
        return byMine != 0
            ? byMine
            : (b.meanScore ?? 0).compareTo(a.meanScore ?? 0);
      });
    return list.take(9).toList();
  }

  int get count => entries.value?.length ?? 0;

  int get completed =>
      entries.value?.where((m) => m.userStatus == 'COMPLETED').length ?? 0;

  double? get mean {
    final scored = [
      for (final m in entries.value ?? const <Media>[])
        if ((m.userScore ?? 0) > 0) m.userScore!,
    ];
    if (scored.isEmpty) return null;
    return scored.reduce((a, b) => a + b) / scored.length / 10;
  }

  bool get ready =>
      !isList ||
      isStats ||
      (!loading.value && (entries.value?.isNotEmpty ?? false));

  String get fileName => imageFileName(
    isCustom
        ? customName ?? service.name
        : isStats
        ? '$userName profile'
        : isList
        ? '$userName top ${anime.value ? 'anime' : 'manga'}'
        : media!.mainName,
  );

  Future<Uint8List?> _capture() async {
    final render = boundary.currentContext?.findRenderObject();
    if (render is! RenderRepaintBoundary) return null;
    final image = await render.toImage(pixelRatio: 3);
    final data = await image.toByteData(format: ui.ImageByteFormat.png);
    return data?.buffer.asUint8List();
  }

  Future<void> share() async {
    if (busy.value) return;
    busy.value = true;
    try {
      final bytes = await _capture();
      if (bytes == null) throw StateError('capture failed');
      final dir = (await StorageManager.getTmpDirectory())!;
      final file = File(p.join(dir.path, '$fileName.png'));
      await file.writeAsBytes(bytes, flush: true);
      shareFile(
        file.path,
        isCustom
            ? customLink ?? ''
            : isList
            ? profileLink ?? userName
            : media!.shareLink,
      );
    } catch (e, st) {
      logError('ShareCard', e, st);
      snackString(getString.shareCardFailed);
    } finally {
      busy.value = false;
    }
  }

  Future<void> save() async {
    if (busy.value) return;
    busy.value = true;
    try {
      final bytes = await _capture();
      if (bytes == null) throw StateError('capture failed');
      final dir = await StorageManager.getDirectory(
        subPath: 'screenshots',
        useCustomPath: true,
        useSystemPath: false,
      );
      if (dir == null) throw StateError('no storage folder');
      var target = File(p.join(dir.path, '$fileName.png'));
      for (var n = 2; await target.exists(); n++) {
        target = File(p.join(dir.path, '$fileName ($n).png'));
      }
      await target.writeAsBytes(bytes);
      unawaited(saveToChosenFolder(target.path, base: p.dirname(dir.path)));
      snackString(getString.shareCardSaved);
    } catch (e, st) {
      logError('ShareCard', e, st);
      snackString(getString.shareCardFailed);
    } finally {
      busy.value = false;
    }
  }
}
