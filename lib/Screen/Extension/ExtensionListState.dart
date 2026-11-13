import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Logger.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/State/State.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/ScreenState.dart';

class ExtensionListItem {
  final bool isHeader;
  final String? language;
  final Source? source;

  const ExtensionListItem._({
    required this.isHeader,
    this.language,
    this.source,
  });

  const ExtensionListItem.header(String language)
    : this._(isHeader: true, language: language);

  const ExtensionListItem.source(Source source)
    : this._(isHeader: false, source: source);
}

bool matchesSourceFilter(Source source, String term, Set<String> languages) =>
    (source.name?.toLowerCase().contains(term) ?? false) &&
    (languages.isEmpty || languages.contains(source.lang?.toLowerCase()));

class ExtensionListState extends ScreenState {
  final ItemType itemType;
  final bool isInstalled;
  final VoidCallback? onFirstRowUp;
  final GlobalKey<DpadRegionState>? firstRowKey;

  ExtensionListState({
    required this.itemType,
    required this.isInstalled,
    this.onFirstRowUp,
    this.firstRowKey,
  });

  String searchQuery = '';

  final ScrollController controller = ScrollController();
  final ExtensionManager manager = find();
  final secondRowKey = GlobalKey<DpadRegionState>();
  final bool showIcons = PrefName.loadExtensionIcon.value;

  Extension get extension => manager[itemType];

  ExtensionState get bridgeState => extension.state(itemType);

  Set<String> get selectedLanguages => bridgeState.selectedLanguages;

  String get searchTerm => searchQuery.trim().toLowerCase();

  Pref<List<String>> get orderPref =>
      PrefName.extensionOrder(extension.name, itemType.name);

  @override
  void onClose() => controller.dispose();

  final updatingAll = false.live;

  void reorder(List<Source> rows, int oldIndex, int newIndex) {
    if (newIndex > oldIndex) newIndex--;
    final item = rows.removeAt(oldIndex);
    rows.insert(newIndex, item);
    final shown = {for (final s in rows) s.id};
    final all = applySavedOrder(dedupeById(bridgeState.installed.value));
    var next = 0;
    final merged = [
      for (final s in all) shown.contains(s.id) ? rows[next++] : s,
    ];
    bridgeState.installed.value = merged;
    saveOrder(merged);
  }

  Future<void> refreshData() async {
    if (isInstalled) {
      await extension.initializeInstalled(itemType);

      switch (itemType) {
        case ItemType.anime:
          await extension.fetchInstalledAnimeExtensions();
          break;
        case ItemType.manga:
          await extension.fetchInstalledMangaExtensions();
          break;
        case ItemType.novel:
          await extension.fetchInstalledNovelExtensions();
          break;
      }
    } else {
      await extension.initializeAvailable(itemType);

      switch (itemType) {
        case ItemType.anime:
          await extension.fetchAnimeExtensions();
          break;
        case ItemType.manga:
          await extension.fetchMangaExtensions();
          break;
        case ItemType.novel:
          await extension.fetchNovelExtensions();
          break;
      }
    }
  }

  static bool hasUpdate(Source source) => source.hasUpdate ?? false;

  List<Source> updatable() => [
    for (final s in applySavedOrder(dedupeById(bridgeState.installed.value)))
      if (hasUpdate(s) &&
          (selectedLanguages.isEmpty ||
              selectedLanguages.contains(s.lang?.toLowerCase())))
        s,
  ];

  Future<void> updateAll() async {
    if (updatingAll.value) return;
    final todo = updatable();
    if (todo.isEmpty) return;
    updatingAll.value = true;
    var done = 0;
    final conflicts = <Source>[];
    try {
      for (final source in todo) {
        try {
          await manager[source.itemType ?? itemType]
              .updateSource(source)
              .drain<void>();
          done++;
        } on ExtensionUpdateConflict {
          conflicts.add(source);
        } catch (e) {
          logger('Update of ${source.name} failed: $e', tag: 'EXTENSIONS');
        }
      }
    } finally {
      updatingAll.value = false;
    }
    snackString(getString.extensionsUpdated(done, todo.length));
    if (conflicts.isNotEmpty && mounted) offerReinstall(conflicts);
  }

  void offerReinstall(List<Source> sources) {
    final names = sources.map((s) => s.name ?? s.id ?? '').join(', ');
    unawaited(
      AlertDialogBuilder(context)
          .setTitle(getString.updateConflictTitle)
          .setMessage(getString.updateConflictBody(names))
          .setPositiveButton(
            getString.updateConflictAction,
            () => unawaited(_reinstall(sources)),
          )
          .setNegativeButton(getString.cancel, null)
          .show<void>(),
    );
  }

  Future<void> _reinstall(List<Source> sources) async {
    for (final source in sources) {
      try {
        await manager[source.itemType ?? itemType]
            .reinstallSource(source)
            .drain<void>();
      } catch (e) {
        snackString('${getString.installFailed}: $e');
      }
    }
  }

  List<Source> filteredInstalled() {
    final installed = applySavedOrder(dedupeById(bridgeState.installed.value));

    return installed
        .where((s) => matchesSourceFilter(s, searchTerm, selectedLanguages))
        .toList();
  }

  List<ExtensionListItem> filteredAvailable() {
    final grouped = <String, List<Source>>{};
    final installedIds = {for (final s in bridgeState.installed.value) ?s.id};

    for (final source in bridgeState.available.value) {
      if (installedIds.contains(source.id)) continue;
      final lang = source.lang?.toLowerCase() ?? 'Unknown';

      if (selectedLanguages.isNotEmpty && !selectedLanguages.contains(lang)) {
        continue;
      }

      if (searchTerm.isNotEmpty &&
          !(source.name?.toLowerCase().contains(searchTerm) ?? false)) {
        continue;
      }

      grouped.putIfAbsent(lang, () => []).add(source);
    }

    final entries = grouped.entries.toList()
      ..sort((a, b) {
        const priority = {'all': 0, 'en': 1};

        final pa = priority[a.key] ?? 999;
        final pb = priority[b.key] ?? 999;

        if (pa != pb) {
          return pa.compareTo(pb);
        }

        return a.key.compareTo(b.key);
      });

    return [
      for (final entry in entries) ...[
        ExtensionListItem.header(entry.key),
        ...entry.value.map(ExtensionListItem.source),
      ],
    ];
  }

  List<Source> dedupeById(List<Source> list) {
    final seen = <String?>{};
    return list.where((s) => seen.add(s.id)).toList();
  }

  void saveOrder(List<Source> list) {
    orderPref.value = list.map((e) => e.id).whereType<String>().toList();
  }

  List<Source> applySavedOrder(List<Source> list) {
    final saved = orderPref.value;
    if (saved.isEmpty) return list;

    final order = <String, int>{
      for (var i = 0; i < saved.length; i++) saved[i]: i,
    };

    list.sort((a, b) {
      final ai = order[a.id] ?? 1 << 30;
      final bi = order[b.id] ?? 1 << 30;
      return ai.compareTo(bi);
    });

    return list;
  }

  void runProgressOp(Stream<double> Function() op, String failureLabel) {
    op().drain<void>().catchError((Object e) {
      if (e is ExtensionUpdateConflict) {
        offerReinstall([e.source]);
        return;
      }
      snackString('$failureLabel: $e');
    });
  }
}
