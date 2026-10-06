import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/language.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/AppShortcuts.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import 'SourcePreferenceScreen.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';

class ExtensionList extends StatefulWidget {
  final ItemType itemType;
  final bool isInstalled;
  final String searchQuery;
  final VoidCallback? onFirstRowUp;
  final GlobalKey<DpadRegionState>? firstRowKey;

  const ExtensionList({
    super.key,
    required this.itemType,
    required this.isInstalled,
    required this.searchQuery,
    this.onFirstRowUp,
    this.firstRowKey,
  });

  @override
  State<ExtensionList> createState() => _ExtensionListState();
}

class _ExtensionListState extends State<ExtensionList> {
  final ScrollController controller = ScrollController();

  final ExtensionManager manager = find();

  Extension get extension => manager[widget.itemType];

  Set<String> get selectedLanguages => state.selectedLanguages;

  ExtensionState get state => extension.state(widget.itemType);

  String get _search => widget.searchQuery.trim().toLowerCase();

  Pref<List<String>> get _orderPref =>
      PrefName.extensionOrder(extension.name, widget.itemType.name);

  final bool _showIcons = PrefName.loadExtensionIcon.value;

  final _secondRowKey = GlobalKey<DpadRegionState>();

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
    final theme = Theme.of(context).colorScheme;
    return Obx(
      () => RefreshIndicator(
        backgroundColor: theme.primary,
        color: theme.onPrimary,
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
          child: _buildSourceCard(
            source,
            index,
            isFirst: index == 0,
            isLast: index == installed.length - 1,
            isVeryFirst: index == 0,
            isVerySecond: index == 1,
          ).animateDropIn(),
        );
      },
    );
  }

  Widget _buildAvailableList() {
    final items = _filteredAvailable();
    final sourceIndices = [
      for (var i = 0; i < items.length; i++)
        if (!items[i].isHeader) i,
    ];
    final firstSourceIndex = sourceIndices.isEmpty ? -1 : sourceIndices[0];
    final secondSourceIndex = sourceIndices.length > 1 ? sourceIndices[1] : -1;

    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = items[index];
                if (item.isHeader) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      completeLanguageName(item.language!),
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }

                final previous = index > 0 ? items[index - 1] : null;
                final next = index < items.length - 1 ? items[index + 1] : null;

                return _buildSourceCard(
                  item.source!,
                  index,
                  isFirst: previous == null || previous.isHeader,
                  isLast: next == null || next.isHeader,
                  isVeryFirst: index == firstSourceIndex,
                  isVerySecond: index == secondSourceIndex,
                ).animateDropIn();
              },
              childCount: items.length,
              addAutomaticKeepAlives: false,
              addRepaintBoundaries: true,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSourceCard(
    Source source,
    int index, {
    required bool isFirst,
    required bool isLast,
    required bool isVeryFirst,
    required bool isVerySecond,
  }) {
    final scheme = Theme.of(context).colorScheme;

    return _SourceCardShell(
      isFirst: isFirst,
      isLast: isLast,
      onEdgeUp: isVeryFirst ? widget.onFirstRowUp : null,
      onEdgeDown: isVeryFirst ? () => DpadLane.focusFirst(_secondRowKey) : null,
      regionKey: isVeryFirst
          ? widget.firstRowKey
          : (isVerySecond ? _secondRowKey : null),
      child: Column(
        children: [
          if (!isFirst)
            Divider(
              height: 1,
              indent: 64,
              color: scheme.outlineVariant.withValues(alpha: 0.5),
            ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 6,
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(64),
              child: SizedBox(width: 42, height: 42, child: _buildIcon(source)),
            ),
            title: Text(
              source.name ?? getString.unknownSource,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: _buildSubtitle(source),
            // `installProgress` is read deep inside _buildTrailing, which is
            // invoked lazily by the list/sliver machinery in its own build
            // pass - separate from, and later than, the synchronous callback
            // of the single Obx wrapping the whole list in build() above. That
            // outer Obx never sees this read, so it never reacts to progress
            // updates. Wrapping just the trailing widget lets it track
            // installProgress (and hasUpdate) on its own.
            trailing: Obx(() => _buildTrailing(source, index)),
          ),
        ],
      ),
    );
  }

  List<Source> _filteredInstalled() {
    final installed = _applySavedOrder(_dedupeById(state.installed.value));

    return installed.where((source) {
      final matchesSearch =
          source.name?.toLowerCase().contains(_search) ?? false;

      final matchesLanguage =
          selectedLanguages.isEmpty || selectedLanguages.contains(source.lang);

      return matchesSearch && matchesLanguage;
    }).toList();
  }

  List<_ListItem> _filteredAvailable() {
    final grouped = <String, List<Source>>{};

    for (final source in state.available.value) {
      final lang = source.lang?.toLowerCase() ?? 'Unknown';

      if (selectedLanguages.isNotEmpty && !selectedLanguages.contains(lang)) {
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

  // Backend bugs can surface two installed Sources sharing an id (e.g. a
  // stale leftover file from an update that failed to clean up). Each item
  // is keyed by ValueKey(source.id) in the ReorderableListView below, so a
  // duplicate id crashes with "Multiple widgets used the same GlobalKey"
  // instead of just showing a stale entry - dedupe defensively here.
  List<Source> _dedupeById(List<Source> list) {
    final seen = <String?>{};
    return list.where((s) => seen.add(s.id)).toList();
  }

  void _saveOrder(List<Source> list) {
    _orderPref.value = list.map((e) => e.id).whereType<String>().toList();
  }

  List<Source> _applySavedOrder(List<Source> list) {
    final saved = _orderPref.value;
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

  Widget _buildIcon(Source source) {
    final iconUrl = source.iconUrl;

    if (iconUrl == null || iconUrl.isEmpty || !_showIcons) {
      return const ColoredBox(
        color: Colors.transparent,
        child: Icon(Icons.extension_rounded),
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
          color:
              background ?? theme.surfaceContainerHighest.withValues(alpha: .4),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: theme.outline.withValues(alpha: .15)),
        ),
        child: Text(
          text,
          style: context.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: foreground ?? theme.onSurfaceVariant,
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: [
          chip(completeLanguageName(source.lang?.toLowerCase() ?? 'unknown')),

          if ((source.version ?? '').isNotEmpty) chip('v${source.version}'),

          if (source.isNsfw ?? false)
            chip(
              '18+',
              background: theme.errorContainer.withValues(alpha: .35),
              foreground: theme.error,
            ),
        ],
      ),
    );
  }

  /// A small ring standing in for an install/update button while it's in
  /// flight, sized/positioned to match an IconButton's 48x48 tap-target
  /// footprint so it doesn't shift surrounding layout when swapped in.
  /// `progress` null or 0 renders indeterminate (byte progress isn't known
  /// yet - either the download just started or this backend doesn't report
  /// content-length); once it's > 0 the ring fills in and a live percentage
  /// fades in above it.
  Widget _installProgressIndicator(double? progress) {
    final theme = Theme.of(context).colorScheme;
    final known = progress != null && progress > 0;

    return SizedBox(
      key: const ValueKey('progress'),
      width: 48,
      height: 48,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (known)
            Positioned(
              top: 2,
              child: Text(
                "${(progress.clamp(0.0, 1.0) * 100).toStringAsFixed(0)}%",
                style: context.textTheme.labelSmall?.copyWith(
                  fontSize: 8,
                  fontWeight: FontWeight.w700,
                  color: theme.primary,
                ),
              ),
            ).animateFadeScale(),
          SizedBox(
            width: 22,
            height: 22,
            child: CircularProgressIndicator(
              strokeWidth: 2.4,
              color: theme.primary,
              backgroundColor: theme.primary.withValues(alpha: 0.15),
              value: known ? progress.clamp(0.0, 1.0) : null,
            ),
          ),
        ],
      ),
    ).animatePopIn();
  }

  /// installSource/updateSource return a broadcast `Stream<double>` that
  /// starts eagerly on its own regardless of whether anything listens (see
  /// progressStream() in the bridge). An unlistened stream's addError is a
  /// silent no-op though, so a plain `repo.installSource(source)` fire-and-
  /// forget - as before this screen tracked progress - would swallow
  /// install/update failures entirely. Drain it here so errors surface.
  void _runProgressOp(Stream<double> Function() op, String failureLabel) {
    op().drain<void>().catchError((e) {
      snackString('$failureLabel: $e');
    });
  }

  Widget _buildTrailing(Source source, int index) {
    final repo = manager[source.itemType!];
    final installProgress = source.id == null
        ? null
        : state.installProgress[source.id];
    final isInstalling = installProgress != null;

    if (!widget.isInstalled) {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 180),
        child: isInstalling
            ? _installProgressIndicator(installProgress)
            : IconButton(
                key: const ValueKey('install'),
                icon: const Icon(Icons.download_rounded),
                tooltip: getString.install,
                onPressed: () => _runProgressOp(
                  () => repo.installSource(source),
                  getString.installFailed,
                ),
              ),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if ((source.hasUpdate ?? false) || isInstalling)
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 180),
            child: isInstalling
                ? _installProgressIndicator(installProgress)
                : IconButton(
                    key: const ValueKey('update'),
                    icon: const Icon(Icons.update_rounded),
                    tooltip: getString.update,
                    onPressed: () => _runProgressOp(
                      () => repo.updateSource(source),
                      getString.updateFailed,
                    ),
                  ),
          ),
        IconButton(
          icon: const Icon(Icons.delete_rounded),
          tooltip: getString.uninstall,
          onPressed: isInstalling ? null : () => repo.uninstallSource(source),
        ),
        IconButton(
          icon: const Icon(Icons.settings_rounded),
          tooltip: getString.settings,
          onPressed: () =>
              navigateToPage(context, SourcePreferenceScreen(source: source)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: MouseRegion(
            cursor: SystemMouseCursors.grab,
            child: ReorderableDragStartListener(
              index: index,
              child: const Icon(Icons.drag_indicator_rounded),
            ),
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

class _SourceCardShell extends StatefulWidget {
  final bool isFirst;
  final bool isLast;
  final VoidCallback? onEdgeUp;
  final VoidCallback? onEdgeDown;
  final GlobalKey<DpadRegionState>? regionKey;
  final Widget child;

  const _SourceCardShell({
    required this.isFirst,
    required this.isLast,
    this.onEdgeUp,
    this.onEdgeDown,
    this.regionKey,
    required this.child,
  });

  @override
  State<_SourceCardShell> createState() => _SourceCardShellState();
}

class _SourceCardShellState extends State<_SourceCardShell> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final highlighted = _focused && usingKeyboard;

    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(widget.isFirst ? Dimens.radius : 0),
        bottom: Radius.circular(widget.isLast ? Dimens.radius : 0),
      ),
      child: DpadRegion(
        key: widget.regionKey,
        horizontalEdge: DpadEdgeBehavior.stop,
        verticalEdge: (widget.onEdgeUp == null && widget.onEdgeDown == null)
            ? DpadEdgeBehavior.leave
            : DpadEdgeBehavior.stop,
        onEdge: (widget.onEdgeUp == null && widget.onEdgeDown == null)
            ? null
            : (direction) {
                if (direction == TraversalDirection.up) {
                  widget.onEdgeUp?.call();
                } else if (direction == TraversalDirection.down) {
                  widget.onEdgeDown?.call();
                }
              },
        onFocusChange: (focused) {
          if (mounted) setState(() => _focused = focused);
        },
        child: Obx(
          () => Container(
            color: highlighted
                ? scheme.secondaryContainer
                : find<ThemeController>().useGlassMode.value
                ? scheme.surface.withValues(alpha: 0.28)
                : scheme.surfaceContainerLow,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
