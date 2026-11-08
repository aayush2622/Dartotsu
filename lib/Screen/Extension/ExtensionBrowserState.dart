import '../../Utils/Animation/WidgetAnimations.dart';

import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/language.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/ScreenState.dart';

class ExtensionBrowserState extends ScreenState {
  static const tabOrder = [ItemType.anime, ItemType.manga, ItemType.novel];

  final manager = find<ExtensionManager>();

  late final TabController tabs = TabController(
    length: ItemType.values.length * 2,
    vsync: vsync,
    animationDuration: animDuration(300),
  );

  final searchQuery = ''.live;
  final textController = TextEditingController();
  final currentIndex = 0.live;
  final tabPosition = 0.0.live;
  final focusedTabIndex = Live<int?>(null);
  final appBarLaneKey = GlobalKey<DpadRegionState>();
  final tabsLaneKey = GlobalKey<DpadRegionState>();
  final searchLaneKey = GlobalKey<DpadRegionState>();
  final Map<int, GlobalKey<DpadRegionState>> firstRowKeys = {
    for (var i = 0; i < ItemType.values.length * 2; i++)
      i: GlobalKey<DpadRegionState>(),
  };

  ItemType get currentType => tabOrder[currentIndex.value ~/ 2];

  DiscordPresence get presence =>
      DiscordPresence.browsing('Browsing extensions');

  @override
  void onInit() {
    manager.initializeAvailable();
    tabs.addListener(() => currentIndex.value = tabs.index);
    tabs.animation?.addListener(
      () => tabPosition.value = tabs.animation!.value,
    );
  }

  @override
  void onClose() {
    tabs.dispose();
    textController.dispose();
    searchQuery.close();
  }

  void onSearchChanged(String value) => searchQuery.value = value;

  void onTabFocus(bool focused, int index) {
    focusedTabIndex.value = focused
        ? index
        : (focusedTabIndex.value == index ? null : focusedTabIndex.value);
  }

  void onAppBarEdge(TraversalDirection direction) {
    if (direction == TraversalDirection.down) {
      DpadLane.focusFirst(tabsLaneKey);
    }
  }

  void onTabsEdge(TraversalDirection direction) {
    if (direction == TraversalDirection.up) {
      DpadLane.focusFirst(appBarLaneKey);
    } else if (direction == TraversalDirection.down) {
      DpadLane.focusFirst(searchLaneKey);
    }
  }

  void onSearchEdge(TraversalDirection direction) {
    if (direction == TraversalDirection.up) {
      DpadLane.focusFirst(tabsLaneKey);
    } else if (direction == TraversalDirection.down) {
      final key = firstRowKeys[currentIndex.value];
      if (key != null) DpadLane.focusFirst(key);
    }
  }

  void focusSearch() => DpadLane.focusFirst(searchLaneKey);

  int count(ItemType type, {required bool installed}) {
    final state = manager[type].state(type);
    final list = installed ? state.installed.value : state.available.value;
    final query = searchQuery.value;
    return list.where((source) {
      final matchesSearch = source.name?.toLowerCase().contains(query) ?? false;
      final matchesLanguage =
          state.selectedLanguages.isEmpty ||
          state.selectedLanguages.contains(source.lang);
      return matchesSearch && matchesLanguage;
    }).length;
  }

  void chooseLanguages() {
    final type = currentType;
    final extension = manager[type];
    final languages = extension.getLanguages(type);
    final state = extension.state(type);
    AlertDialogBuilder(context)
      ..setTitle(getString.language)
      ..multiChoiceItems(
        languages.map(completeLanguageName).toList(),
        languages.map(state.selectedLanguages.contains).toList(),
        (checked) {
          final selected = <String>{
            for (var i = 0; i < languages.length; i++)
              if (checked[i]) languages[i],
          };
          extension.saveSelectedLanguages(type, selected);
        },
      )
      ..setNegativeButton(
        getString.reset,
        () => extension.saveSelectedLanguages(type, {}),
      )
      ..show();
  }

  void addRepository(ItemType type) {
    final controller = TextEditingController();
    AlertDialogBuilder(context)
      ..setTitle(getString.addRepository)
      ..setCustomView(
        TextField(
          controller: controller,
          decoration: InputDecoration(hintText: getString.repositoryUrl),
        ),
      )
      ..setPositiveButton(getString.ok, () async {
        try {
          await manager[type].addRepo(controller.text, type).drain<void>();
        } catch (e) {
          snackString(getString.failedToAddRepository(e.toString()));
        }
      })
      ..show();
  }

  Future<void> importRepositoryFile(ItemType type) async {
    final extension = manager[type];
    final picked = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: extension.importExtensions,
    );
    final path = picked?.path;
    if (path == null) return;
    try {
      await extension.importFile(path, type).drain<void>();
    } catch (e) {
      snackString(getString.failedToAddRepository(e.toString()));
    }
  }

  Future<void> selectRepo(ItemType type, Repo repo) =>
      manager[type].selectRepo(repo, type);

  Future<void> removeRepo(ItemType type, String url) =>
      manager[type].removeRepo(url, type);
}
