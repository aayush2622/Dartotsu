import 'dart:io';

import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Theme/ThemeManager.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Functions/Function.dart';
import '../../Widgets/CachedNetworkImage.dart';
import '../Settings/language.dart';
import 'ExtensionSettings/SourcePreferenceScreen.dart';

class ExtensionList extends StatefulWidget {
  final ItemType itemType;
  final bool isInstalled;
  final String searchQuery;
  final String selectedLanguage;

  const ExtensionList({
    super.key,
    required this.itemType,
    required this.isInstalled,
    required this.searchQuery,
    required this.selectedLanguage,
  });

  @override
  State<ExtensionList> createState() => _ExtensionListState();
}

class _ExtensionListState extends State<ExtensionList> {
  final ScrollController controller = ScrollController();

  final ExtensionManager manager = Get.find();

  Extension get extension => manager[widget.itemType];

  ExtensionState get state => extension.state(widget.itemType);

  String get _search => widget.searchQuery.trim().toLowerCase();

  bool get _showAllLanguages =>
      widget.selectedLanguage == 'All' || widget.selectedLanguage == 'all';

  String get _orderKey => '${extension.name}_${widget.itemType.name}_order';

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> _refreshData() async {
    if (widget.isInstalled) {
      await extension.initializeInstalled(widget.itemType);

      switch (widget.itemType) {
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
      await extension.initializeAvailable(widget.itemType);

      switch (widget.itemType) {
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

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RefreshIndicator(
        onRefresh: _refreshData,
        child: widget.isInstalled
            ? _buildInstalledList()
            : _buildAvailableList(),
      ),
    );
  }

  Widget _buildInstalledList() {
    final installed = _filteredInstalled();

    return ReorderableListView.builder(
      scrollController: controller,
      padding: const EdgeInsets.all(8),
      itemCount: installed.length,
      buildDefaultDragHandles: false,
      onReorder: (oldIndex, newIndex) {
        if (newIndex > oldIndex) newIndex--;

        final item = installed.removeAt(oldIndex);
        installed.insert(newIndex, item);

        state.installed.value = List<Source>.from(installed);
        _saveOrder(installed);
      },
      itemBuilder: (context, index) {
        final source = installed[index];

        return KeyedSubtree(
          key: ValueKey(source.id),
          child: _buildSourceCard(source, index),
        );
      },
    );
  }

  Widget _buildAvailableList() {
    final items = _filteredAvailable();

    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = items[index];

              if (item.isHeader) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    completeLanguageName(item.language!),
                    style: _headerStyle,
                  ),
                );
              }

              return _buildSourceCard(item.source!, 0);
            }, childCount: items.length),
          ),
        ),
      ],
    );
  }

  Widget _buildSourceCard(Source source, int index) {
    return ThemedContainer(
      padding: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(24),
      margin: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: widget.isInstalled ? 0 : 8,
      ),
      context: context,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(64),
          child: SizedBox(width: 42, height: 42, child: _buildIcon(source)),
        ),
        title: Text(
          source.name ?? 'Unknown Source',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: _titleStyle,
        ),
        subtitle: _buildSubtitle(source),
        trailing: _buildTrailing(source, index),
      ),
    );
  }

  List<Source> _filteredInstalled() {
    final installed = _applySavedOrder(
      List<Source>.from(state.installed.value),
    );

    if (_search.isEmpty) return installed;

    return installed.where((source) {
      return source.name?.toLowerCase().contains(_search) ?? false;
    }).toList();
  }

  List<_ListItem> _filteredAvailable() {
    final grouped = <String, List<Source>>{};

    for (final source in state.available.value) {
      final lang = source.lang ?? 'Unknown';

      if (!_showAllLanguages && lang != widget.selectedLanguage) {
        continue;
      }

      if (_search.isNotEmpty &&
          !(source.name?.toLowerCase().contains(_search) ?? false)) {
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
        _ListItem.header(entry.key),
        ...entry.value.map(_ListItem.source),
      ],
    ];
  }

  void _saveOrder(List<Source> list) {
    saveCustomData<List<String>>(
      _orderKey,
      list.map((e) => e.id).whereType<String>().toList(),
    );
  }

  List<Source> _applySavedOrder(List<Source> list) {
    final saved = loadCustomData<List<String>>(
      _orderKey,
      defaultValue: const [],
    );

    if (saved == null || saved.isEmpty) {
      return list;
    }

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

  static const _titleStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  static const _headerStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  Widget _buildIcon(Source source) {
    final iconUrl = source.iconUrl;

    if (iconUrl == null ||
        iconUrl.isEmpty ||
        !(loadCustomData<bool?>('loadExtensionIcon') ?? true)) {
      return const ColoredBox(
        color: Colors.transparent,
        child: Icon(Icons.extension_rounded),
      );
    }

    final file = File(iconUrl);

    if (file.isAbsolute) {
      return Image.file(
        file,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => const Icon(Icons.extension_rounded),
      );
    }

    return cachedNetworkImage(
      imageUrl: iconUrl,
      fit: BoxFit.cover,
      placeholder: (_, _) => const Icon(Icons.extension_rounded),
      errorWidget: (_, _, _) => const Icon(Icons.extension_rounded),
    );
  }

  Widget _buildSubtitle(Source source) {
    final theme = Theme.of(context).colorScheme;

    Widget chip(String text, {Color? background, Color? foreground}) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: background ?? theme.surfaceContainerHighest.withOpacity(.4),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: theme.outline.withOpacity(.15)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: foreground ?? theme.onSurfaceVariant,
          ),
        ),
      );
    }

    return Column(
      children: [
        const SizedBox(height: 12),
        Row(
          children: [
            chip(completeLanguageName(source.lang?.toLowerCase() ?? 'unknown')),

            if ((source.version ?? '').isNotEmpty) ...[
              const SizedBox(width: 6),
              chip('v${source.version}'),
            ],

            if (source.isNsfw ?? false) ...[
              const SizedBox(width: 6),
              chip(
                '18+',
                background: theme.errorContainer.withOpacity(.35),
                foreground: theme.error,
              ),
            ],
          ],
        ),
      ],
    );
  }

  Widget _buildTrailing(Source source, int index) {
    final repo = manager[source.itemType!];

    if (!widget.isInstalled) {
      return IconButton(
        icon: const Icon(Icons.download_rounded),
        tooltip: 'Install',
        onPressed: () => repo.installSource(source),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (source.hasUpdate ?? false)
          IconButton(
            icon: const Icon(Icons.update_rounded),
            tooltip: 'Update',
            onPressed: () => repo.updateSource(source),
          ),
        IconButton(
          icon: const Icon(Icons.delete_rounded),
          tooltip: 'Uninstall',
          onPressed: () => repo.uninstallSource(source),
        ),
        IconButton(
          icon: const Icon(Icons.settings_rounded),
          tooltip: 'Settings',
          onPressed: () async {
            final preference = await source.methods.getPreference();

            if (preference.isEmpty) {
              snackString("Source doesn't have any settings");
              return;
            }

            if (!mounted) return;

            navigateToPage(
              context,
              SourcePreferenceScreen(source: source, preference: preference),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: ReorderableDragStartListener(
            index: index,
            child: const Icon(Icons.drag_indicator_rounded),
          ),
        ),
      ],
    );
  }
}

class _ListItem {
  final bool isHeader;
  final String? language;
  final Source? source;

  const _ListItem._({required this.isHeader, this.language, this.source});

  const _ListItem.header(String language)
    : this._(isHeader: true, language: language);

  const _ListItem.source(Source source)
    : this._(isHeader: false, source: source);
}
