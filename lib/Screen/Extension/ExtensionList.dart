import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/ThemeManager/ThemeController.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/language.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/AppShortcuts.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import 'SourcePreferenceScreen.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Core/State/State.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'ExtensionListState.dart';

class ExtensionList extends StatefulWidget {
  final ItemType itemType;
  final bool isInstalled;
  final String searchQuery;
  final bool skeleton;
  final VoidCallback? onFirstRowUp;
  final GlobalKey<DpadRegionState>? firstRowKey;

  const ExtensionList({
    super.key,
    required this.itemType,
    required this.isInstalled,
    required this.searchQuery,
    this.skeleton = false,
    this.onFirstRowUp,
    this.firstRowKey,
  });

  @override
  State<ExtensionList> createState() => _ExtensionListState();
}

class _ExtensionListState extends State<ExtensionList>
    with ScreenStateHost<ExtensionList, ExtensionListState> {
  @override
  ExtensionListState buildState() => ExtensionListState(
    itemType: widget.itemType,
    isInstalled: widget.isInstalled,
    onFirstRowUp: widget.onFirstRowUp,
    firstRowKey: widget.firstRowKey,
  );

  ExtensionManager get manager => state.manager;

  @override
  Widget build(BuildContext context) {
    state.searchQuery = widget.searchQuery;
    if (widget.skeleton) return _buildSkeleton();
    final theme = Theme.of(context).colorScheme;
    return Watch(
      () => RefreshIndicator(
        backgroundColor: theme.primary,
        color: theme.onPrimary,
        onRefresh: state.refreshData,
        child: widget.isInstalled
            ? _buildInstalledList()
            : _buildAvailableList(),
      ),
    );
  }

  Widget _buildSkeleton() => Skeletonizer(
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      itemCount: 9,
      itemBuilder: (context, index) => _buildSourceCard(
        Source(
          name: 'Extension name here',
          lang: 'en',
          version: '1.0.0',
          itemType: widget.itemType,
        ),
        index,
        isFirst: index == 0,
        isLast: index == 8,
        isVeryFirst: false,
        isVerySecond: false,
      ),
    ),
  );

  Widget _updatesSection(List<Source> updates) {
    final updating = state.updatingAll.value;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SectionCard(
        title: getString.extensionUpdates(updates.length),
        trailing: FilledButton.tonalIcon(
          onPressed: updating ? null : () => unawaited(state.updateAll()),
          icon: updating
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(Icons.system_update_alt_rounded),
          label: Text(getString.updateAll),
        ),
        child: Column(
          children: [for (final source in updates) _updateRow(source)],
        ),
      ),
    );
  }

  Widget _updateRow(Source source) {
    final latest = source.versionLast;
    final changed = (latest ?? '').isNotEmpty && latest != source.version;

    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(64),
        child: SizedBox(width: 36, height: 36, child: _buildIcon(source)),
      ),
      title: Text(
        source.name ?? getString.unknownSource,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        changed ? 'v${source.version} → v$latest' : 'v${source.version}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Watch(() {
        final progress = source.id == null
            ? null
            : state.bridgeState.installProgress[source.id];
        if (progress != null) return _installProgressIndicator(progress);
        return IconButton(
          icon: const Icon(Icons.update_rounded),
          tooltip: getString.update,
          onPressed: () => state.runProgressOp(
            () => manager[source.itemType ?? widget.itemType].updateSource(
              source,
            ),
            getString.updateFailed,
          ),
        );
      }),
    );
  }

  Widget _buildInstalledList() {
    final installed = state.filteredInstalled();
    final updates = state.updatable();

    return ReorderableListView.builder(
      scrollController: state.controller,
      padding: const EdgeInsets.all(8),
      header: updates.isEmpty ? null : _updatesSection(updates),
      itemCount: installed.length,
      buildDefaultDragHandles: false,
      onReorder: (oldIndex, newIndex) =>
          state.reorder(installed, oldIndex, newIndex),
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
    final items = state.filteredAvailable();
    final sourceIndices = [
      for (var i = 0; i < items.length; i++)
        if (!items[i].isHeader) i,
    ];
    final firstSourceIndex = sourceIndices.isEmpty ? -1 : sourceIndices[0];
    final secondSourceIndex = sourceIndices.length > 1 ? sourceIndices[1] : -1;

    return CustomScrollView(
      controller: state.controller,
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
      onEdgeUp: isVeryFirst ? state.onFirstRowUp : null,
      onEdgeDown: isVeryFirst
          ? () => DpadLane.focusFirst(state.secondRowKey)
          : null,
      regionKey: isVeryFirst
          ? state.firstRowKey
          : (isVerySecond ? state.secondRowKey : null),
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
            trailing: Watch(() => _buildTrailing(source, index)),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(Source source) {
    final iconUrl = source.iconUrl;

    if (iconUrl == null || iconUrl.isEmpty || !state.showIcons) {
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

          if ((source.version ?? '').isNotEmpty)
            chip(
              source.isPlaceholder ? source.version! : 'v${source.version}',
              background: source.isPlaceholder
                  ? theme.primaryContainer.withValues(alpha: .5)
                  : null,
              foreground: source.isPlaceholder ? theme.primary : null,
            ),

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

  Widget _buildTrailing(Source source, int index) {
    final repo = manager[source.itemType!];
    final installProgress = source.id == null
        ? null
        : state.bridgeState.installProgress[source.id];
    final isInstalling = installProgress != null;

    if (!widget.isInstalled) {
      return AnimatedSwitcher(
        duration: animDuration(180),
        child: isInstalling
            ? _installProgressIndicator(installProgress)
            : IconButton(
                key: const ValueKey('install'),
                icon: const Icon(Icons.download_rounded),
                tooltip: getString.install,
                onPressed: () => state.runProgressOp(
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
            duration: animDuration(180),
            child: isInstalling
                ? _installProgressIndicator(installProgress)
                : IconButton(
                    key: const ValueKey('update'),
                    icon: const Icon(Icons.update_rounded),
                    tooltip: getString.update,
                    onPressed: () => state.runProgressOp(
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
          onPressed: source.isPlaceholder
              ? null
              : () => navigateToPage(
                  context,
                  SourcePreferenceScreen(source: source),
                ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8),
          child: source.isPlaceholder
              ? Icon(
                  Icons.drag_indicator_rounded,
                  color: Theme.of(context).disabledColor,
                )
              : MouseRegion(
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
  final _focused = false.live;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final highlighted = _focused.value && usingKeyboard;

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
          if (mounted) _focused.value = focused;
        },
        child: Watch(
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
