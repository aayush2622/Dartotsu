import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../Core/Preferences/Pref.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

enum LayoutSurface { player, reader, novel }

class LayoutZone {
  final String id;
  final String Function() label;

  const LayoutZone(this.id, this.label);
}

class LayoutAction {
  final String id;
  final IconData icon;
  final String Function() label;
  final String zone;

  const LayoutAction(this.id, this.icon, this.label, this.zone);
}

const hiddenZone = 'hidden';
const topStartZone = 'topStart';
const topEndZone = 'topEnd';
const bottomStartZone = 'bottomStart';
const bottomEndZone = 'bottomEnd';

extension LayoutSurfaceInfo on LayoutSurface {
  Pref<String> get pref => switch (this) {
    LayoutSurface.player => layoutPlayerPref,
    LayoutSurface.reader => layoutReaderPref,
    LayoutSurface.novel => layoutNovelPref,
  };

  String get title => switch (this) {
    LayoutSurface.player => getString.anime,
    LayoutSurface.reader => getString.manga,
    LayoutSurface.novel => getString.novel,
  };

  List<LayoutZone> get zones => [
    LayoutZone(topStartZone, () => getString.layoutZoneTopStart),
    LayoutZone(topEndZone, () => getString.layoutZoneTopEnd),
    if (this == LayoutSurface.player) ...[
      LayoutZone(bottomStartZone, () => getString.layoutZoneBottomStart),
      LayoutZone(bottomEndZone, () => getString.layoutZoneBottomEnd),
    ],
    LayoutZone(
      hiddenZone,
      () => this == LayoutSurface.player
          ? getString.layoutZoneSecondRow
          : getString.layoutZoneOverflow,
    ),
  ];

  List<LayoutAction> get actions => switch (this) {
    LayoutSurface.player => playerLayoutActions,
    LayoutSurface.reader => readerLayoutActions,
    LayoutSurface.novel => novelLayoutActions,
  };

  LayoutAction? action(String id) =>
      actions.where((a) => a.id == id).firstOrNull;

  BarLayout get layout => BarLayout.parse(this, pref.rx.value);
}

const layoutPlayerPref = Pref('layoutPlayer', '', PrefLocation.PLAYER);
const layoutReaderPref = Pref('layoutReader', '', PrefLocation.READER);
const layoutNovelPref = Pref('layoutNovel', '', PrefLocation.READER);

class BarLayout {
  final LayoutSurface surface;
  final Map<String, List<String>> zones;

  BarLayout(this.surface, Map<String, List<String>> zones)
    : zones = {
        for (final z in surface.zones) z.id: [...?zones[z.id]],
      };

  factory BarLayout.defaults(LayoutSurface surface) {
    final zones = <String, List<String>>{};
    for (final a in surface.actions) {
      zones.putIfAbsent(a.zone, () => []).add(a.id);
    }
    return BarLayout(surface, zones);
  }

  factory BarLayout.parse(LayoutSurface surface, String raw) {
    final defaults = BarLayout.defaults(surface);
    if (raw.isEmpty) return defaults;
    Map<String, List<String>> stored;
    try {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      stored = {
        for (final e in json.entries)
          e.key: [for (final id in e.value as List) id as String],
      };
    } catch (_) {
      return defaults;
    }
    final known = {for (final a in surface.actions) a.id};
    final seen = <String>{};
    final zones = <String, List<String>>{};
    for (final z in surface.zones) {
      zones[z.id] = [
        for (final id in stored[z.id] ?? const <String>[])
          if (known.contains(id) && seen.add(id)) id,
      ];
    }
    for (final a in surface.actions) {
      if (!seen.contains(a.id)) zones[a.zone]!.add(a.id);
    }
    return BarLayout(surface, zones);
  }

  List<String> zone(String id) => zones[id] ?? const [];

  List<String> get hidden => zone(hiddenZone);

  String? zoneOf(String id) {
    for (final e in zones.entries) {
      if (e.value.contains(id)) return e.key;
    }
    return null;
  }

  BarLayout moved(String id, String zone, [int? index]) {
    final next = {
      for (final e in zones.entries)
        e.key: [
          for (final x in e.value)
            if (x != id) x,
        ],
    };
    final list = next[zone]!;
    list.insert((index ?? list.length).clamp(0, list.length), id);
    return BarLayout(surface, next);
  }

  BarLayout hiding(String id) => moved(id, hiddenZone);

  void save() => surface.pref.value = jsonEncode(zones);

  static void reset(LayoutSurface surface) => surface.pref.value = '';
}

List<LayoutAction> get playerLayoutActions => [
  LayoutAction(
    'quality',
    Icons.hd_rounded,
    () => getString.playerQuality,
    topEndZone,
  ),
  LayoutAction(
    'episodes',
    Icons.video_collection_rounded,
    () => getString.playerEpisodes,
    topEndZone,
  ),
  LayoutAction(
    'speed',
    Icons.slow_motion_video_rounded,
    () => getString.playerSpeed,
    topEndZone,
  ),
  LayoutAction(
    'lock',
    Icons.lock_open_rounded,
    () => getString.playerLock,
    topEndZone,
  ),
  LayoutAction(
    'options',
    Icons.video_settings_rounded,
    () => getString.playerSettingsChip,
    bottomStartZone,
  ),
  LayoutAction(
    'streams',
    Icons.source_rounded,
    () => getString.playerStreams,
    bottomStartZone,
  ),
  LayoutAction(
    'subtitles',
    Icons.subtitles_rounded,
    () => getString.playerSubtitles,
    bottomStartZone,
  ),
  LayoutAction(
    'audio',
    Icons.audiotrack_rounded,
    () => getString.playerAudio,
    bottomStartZone,
  ),
  LayoutAction(
    'chapters',
    Icons.list_alt_rounded,
    () => getString.playerChapters,
    bottomStartZone,
  ),
  LayoutAction(
    'pip',
    Icons.picture_in_picture_alt_rounded,
    () => getString.playerPip,
    bottomEndZone,
  ),
  LayoutAction(
    'fit',
    Icons.fit_screen_rounded,
    () => getString.playerResize,
    bottomEndZone,
  ),
  LayoutAction(
    'fullscreen',
    Icons.fullscreen_exit_rounded,
    () => getString.playerFullscreen,
    bottomEndZone,
  ),
  LayoutAction(
    'picture',
    Icons.photo_filter_rounded,
    () => getString.playerPicture,
    hiddenZone,
  ),
  LayoutAction(
    'skipSubmit',
    Icons.cloud_upload_rounded,
    () => getString.playerSkipSubmit,
    hiddenZone,
  ),
  LayoutAction(
    'together',
    Icons.groups_rounded,
    () => getString.togetherChip,
    hiddenZone,
  ),
  LayoutAction(
    'cast',
    Icons.cast_rounded,
    () => getString.castTitle,
    hiddenZone,
  ),
];

List<LayoutAction> get readerLayoutActions => [
  LayoutAction(
    'autoScroll',
    Icons.play_circle_outline_rounded,
    () => getString.readerAutoScroll,
    topEndZone,
  ),
  LayoutAction(
    'bookmark',
    Icons.bookmark_border_rounded,
    () => getString.readerBookmarkAdd,
    topEndZone,
  ),
  LayoutAction(
    'bookmarks',
    Icons.bookmarks_outlined,
    () => getString.readerBookmarks,
    topEndZone,
  ),
  LayoutAction(
    'chapters',
    Icons.format_list_numbered_rounded,
    () => getString.readerChapters,
    topEndZone,
  ),
  LayoutAction(
    'settings',
    Icons.settings_rounded,
    () => getString.readerSettingsTitle,
    topEndZone,
  ),
];

List<LayoutAction> get novelLayoutActions => [
  LayoutAction(
    'speak',
    Icons.record_voice_over_rounded,
    () => getString.novelSpeak,
    topEndZone,
  ),
  LayoutAction(
    'translate',
    Icons.g_translate_rounded,
    () => getString.novelTranslate,
    topEndZone,
  ),
  LayoutAction(
    'autoScroll',
    Icons.play_circle_outline_rounded,
    () => getString.readerAutoScroll,
    topEndZone,
  ),
  LayoutAction(
    'bookmark',
    Icons.bookmark_border_rounded,
    () => getString.readerBookmarkAdd,
    topEndZone,
  ),
  LayoutAction(
    'tools',
    Icons.manage_search_rounded,
    () => getString.novelTools,
    topEndZone,
  ),
  LayoutAction(
    'chapters',
    Icons.format_list_numbered_rounded,
    () => getString.readerChapters,
    topEndZone,
  ),
  LayoutAction(
    'settings',
    Icons.settings_rounded,
    () => getString.readerSettingsTitle,
    topEndZone,
  ),
];
