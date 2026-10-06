import 'dart:async';

import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/language.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/LoadSvg.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import 'ExtensionList.dart';
import 'Widgets/ExtensionManagerSheet.dart';
import '../../Widgets/Components/AppTabs.dart';

class ExtensionScreen extends StatefulWidget {
  const ExtensionScreen({super.key});

  @override
  State<ExtensionScreen> createState() => ExtensionScreenState();
}

class ExtensionScreenState extends BaseScreen<ExtensionScreen>
    with TickerProviderStateMixin {
  late TabController _tabBarController;

  final manager = find<ExtensionManager>();

  final _searchQuery = ''.obs;

  final _textEditingController = TextEditingController();
  final _currentIndex = 0.obs;
  final _focusedTabIndex = Rxn<int>();
  final _appBarLaneKey = GlobalKey<DpadRegionState>();
  final _tabsLaneKey = GlobalKey<DpadRegionState>();
  final _searchLaneKey = GlobalKey<DpadRegionState>();
  final Map<int, GlobalKey<DpadRegionState>> _firstRowKeys = {
    for (var i = 0; i < ItemType.values.length * 2; i++)
      i: GlobalKey<DpadRegionState>(),
  };

  @override
  void initState() {
    super.initState();
    manager.initializeAvailable();
    _tabBarController = TabController(
      length: ItemType.values.length * 2,
      vsync: this,
    );

    _tabBarController.addListener(() {
      _currentIndex.value = _tabBarController.index;
    });
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    _textEditingController.dispose();
    _searchQuery.close();
    super.dispose();
  }

  ItemType get _currentType => _tabOrder[_currentIndex.value ~/ 2];

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: DpadLane(
          laneKey: _appBarLaneKey,
          verticalEdge: DpadEdgeBehavior.stop,
          onEdge: (direction) {
            if (direction == TraversalDirection.down) {
              DpadLane.focusFirst(_tabsLaneKey);
            }
          },
          child: AppScreenBar(
            title: getString.extension(2),
            actions: [
              Row(children: [..._buildActions(), const SizedBox(width: 8)]),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          DpadLane(
            laneKey: _tabsLaneKey,
            verticalEdge: DpadEdgeBehavior.stop,
            onEdge: (direction) {
              if (direction == TraversalDirection.up) {
                DpadLane.focusFirst(_appBarLaneKey);
              } else if (direction == TraversalDirection.down) {
                DpadLane.focusFirst(_searchLaneKey);
              }
            },
            child: Obx(
              () => AppTabBar(
                controller: _tabBarController,
                onFocusChange: (focused, index) =>
                    _focusedTabIndex.value = focused
                    ? index
                    : (_focusedTabIndex.value == index
                          ? null
                          : _focusedTabIndex.value),
                tabs: _buildTabs(context),
              ),
            ),
          ),
          const SizedBox(height: 8),
          DpadLane(
            laneKey: _searchLaneKey,
            verticalEdge: DpadEdgeBehavior.stop,
            onEdge: (direction) {
              if (direction == TraversalDirection.up) {
                DpadLane.focusFirst(_tabsLaneKey);
              } else if (direction == TraversalDirection.down) {
                final key = _firstRowKeys[_currentIndex.value];
                if (key != null) DpadLane.focusFirst(key);
              }
            },
            child: _searchBar(),
          ),
          Obx(
            () => Expanded(
              child: TabBarView(
                controller: _tabBarController,
                children: _buildTabViews(_searchQuery.value),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildActions() {
    var theme = Theme.of(context).colorScheme;
    return [
      _buildServiceManager(),
      _buildRepoManager(),
      IconButton(
        icon: Icon(Icons.language_rounded, color: theme.primary),
        onPressed: () {
          final type = _currentType;
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
        },
      ),
    ];
  }

  Widget _buildServiceManager() {
    return AnimatedBuilder(
      animation: _tabBarController,
      builder: (_, _) {
        final type = _currentType;

        return Obx(() {
          final currentManager = manager[type];

          return IconButton(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                currentManager.icon,
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
            ),
            onPressed: () => showExtensionManagerSheet(context, type),
          );
        });
      },
    );
  }

  Widget _buildRepoManager() {
    var theme = Theme.of(context).colorScheme;
    return IconButton(
      icon: loadSvg(
        "assets/svg/github.svg",
        width: 24,
        height: 24,
        color: theme.primary,
      ),
      onPressed: () {
        final type = _currentType;
        showCustomBottomDialog(
          context,
          CustomBottomDialog(
            title: "${type.name.capitalizeFirst} Repositories",
            positiveText: getString.ok,
            positiveCallback: () => popPage(context),
            negativeText: "Add Repository",
            negativeCallback: () {
              final controller = TextEditingController();

              AlertDialogBuilder(context)
                ..setTitle("Add Repository")
                ..setCustomView(
                  TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: "Repository URL",
                    ),
                  ),
                )
                ..setPositiveButton(getString.ok, () async {
                  try {
                    // addRepo() now streams progress (see the loading
                    // banner in viewList below) - drain() subscribes,
                    // waits for completion, and still surfaces the same
                    // error a plain await would have.
                    await manager[type]
                        .addRepo(controller.text, type)
                        .drain<void>();
                  } catch (e) {
                    snackString('Failed to add repository: $e');
                  }
                })
                ..show();
            },
            viewList: [
              // Some repos (e.g. Kotatsu's shared parsers jar) are large
              // enough that a bare "Add Repository" tap with no feedback
              // looks hung - show real progress when the backend reports
              // it, an indeterminate bar otherwise. Styled to match the
              // plugin-install card in showInstallDialog below, so this
              // reads as the same "downloading" affordance everywhere in
              // the app rather than a one-off widget.
              Obx(() {
                final extension = manager[type];
                final loading = extension.state(type).loadingRepo.value;
                final progress = extension.state(type).repoLoadProgress.value;
                final scheme = Theme.of(context).colorScheme;
                final textStyle = Theme.of(context).textTheme.labelMedium;

                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 220),
                  transitionBuilder: (child, animation) => FadeTransition(
                    opacity: animation,
                    child: SizeTransition(
                      sizeFactor: animation,
                      axisAlignment: -1,
                      child: child,
                    ),
                  ),
                  child: !loading
                      ? const SizedBox.shrink(key: ValueKey('idle'))
                      : Padding(
                          key: const ValueKey('loading'),
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: context.cardColor,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: scheme.outline.withValues(alpha: 0.2),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.cloud_download_rounded,
                                  color: scheme.primary,
                                  size: 22,
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Downloading repository…",
                                        style: textStyle?.copyWith(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: LinearProgressIndicator(
                                          value: progress,
                                          minHeight: 6,
                                          backgroundColor: scheme.primary
                                              .withValues(alpha: 0.12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (progress != null) ...[
                                  const SizedBox(width: 12),
                                  Text(
                                    "${(progress * 100).toStringAsFixed(0)}%",
                                    style: textStyle?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: scheme.primary,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                );
              }),
              Obx(() {
                final extension = manager[type];
                final repos = extension.state(type).repos.value;
                final active = extension.state(type).activeRepo.value;

                if (repos.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.all(24),
                    child: Center(child: Text("No repositories added")),
                  );
                }

                return Column(
                  children: repos.map((repo) {
                    final selected = active?.url == repo.url;

                    return ThemedContainer(
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 8,
                      ),

                      color: selected ? theme.surfaceContainerHigh : null,
                      child: Material(
                        type: MaterialType.transparency,
                        child: ListTile(
                          hoverColor: Colors.transparent,

                          onTap: () async {
                            if (!selected) {
                              await extension.selectRepo(repo, type);
                            }
                          },
                          leading: repo.iconUrl != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    repo.iconUrl!,
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, _, _) =>
                                        const Icon(Icons.storage_rounded),
                                  ),
                                )
                              : loadSvg(
                                  "assets/svg/github.svg",
                                  color: theme.primary,
                                ),

                          title: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  repo.name ??
                                      Uri.tryParse(repo.url)?.host ??
                                      repo.url,
                                  style: context.textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                repo.url,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "${repo.extensions ?? "?"} extensions",
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: theme.primary,
                                ),
                              ),
                            ],
                          ),

                          trailing: IconButton(
                            icon: const Icon(Icons.delete_rounded),
                            onPressed: () async {
                              await extension.removeRepo(repo.url, type);
                            },
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              }),
            ],
          ),
        );
      },
    );
  }

  Widget _searchBar() {
    final theme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ThemedContainer(
        borderRadius: BorderRadius.circular(16),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: TextField(
          controller: _textEditingController,
          style: context.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            hintText: "Search extensions...",
            prefixIcon: Icon(
              Icons.search_rounded,
              color: theme.onSurfaceVariant,
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            fillColor: Colors.transparent,
            filled: false,
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
          ),
          onChanged: (v) => _searchQuery.value = v,
        ),
      ),
    );
  }

  List<Widget> _buildTabs(BuildContext context) {
    final tabs = <Widget>[];
    int index = 0;

    for (final type in _tabOrder) {
      final manager = this.manager[type].state(type);

      final installedIndex = index++;
      tabs.add(
        Obx(() {
          final count = manager.installed.value.where((source) {
            final matchesSearch =
                source.name?.toLowerCase().contains(_searchQuery.value) ??
                false;

            final matchesLanguage =
                manager.selectedLanguages.isEmpty ||
                manager.selectedLanguages.contains(source.lang);

            return matchesSearch && matchesLanguage;
          }).length;

          return AppTab(
            label: 'Installed ${type.name}',
            count: count,
            selected: _currentIndex.value == installedIndex,
            focused: kFocused(_focusedTabIndex.value == installedIndex),
          );
        }),
      );

      final availableIndex = index++;
      tabs.add(
        Obx(() {
          final count = manager.available.value.where((source) {
            final matchesSearch =
                source.name?.toLowerCase().contains(_searchQuery.value) ??
                false;

            final matchesLanguage =
                manager.selectedLanguages.isEmpty ||
                manager.selectedLanguages.contains(source.lang);

            return matchesSearch && matchesLanguage;
          }).length;

          return AppTab(
            label: 'Available ${type.name}',
            count: count,
            selected: _currentIndex.value == availableIndex,
            focused: kFocused(_focusedTabIndex.value == availableIndex),
          );
        }),
      );
    }

    return tabs;
  }

  static const _tabOrder = [ItemType.anime, ItemType.manga, ItemType.novel];

  List<Widget> _buildTabViews(String query) {
    final views = <Widget>[];

    for (final type in _tabOrder) {
      final manager = this.manager[type].state(type);

      final installed = manager.installed.value;
      final available = manager.available.value;

      views.add(
        installed.isEmpty
            ? _emptyMessage('No installed ${type.name} extensions')
            : ExtensionList(
                itemType: type,
                isInstalled: true,
                searchQuery: query,
                onFirstRowUp: () => DpadLane.focusFirst(_searchLaneKey),
                firstRowKey: _firstRowKeys[views.length],
              ),
      );

      views.add(
        manager.loadingAvailable.value
            ? const Center(
                child: SizedBox(
                  width: 36,
                  height: 36,
                  child: CircularProgressIndicator(),
                ),
              )
            : available.isEmpty
            ? _emptyMessage('No available ${type.name} extensions')
            : ExtensionList(
                itemType: type,
                isInstalled: false,
                searchQuery: query,
                onFirstRowUp: () => DpadLane.focusFirst(_searchLaneKey),
                firstRowKey: _firstRowKeys[views.length],
              ),
      );
    }

    return views;
  }

  Widget _emptyMessage(String message) {
    final theme = Theme.of(context).colorScheme;
    return Center(
      child: Text(
        message,
        style: context.textTheme.bodyMedium?.copyWith(color: theme.onSurface),
      ),
    );
  }
}

void showDeleteDialog(
  BuildContext context,
  DownloadablePlugin plugin,
  String name,
) {
  AlertDialogBuilder(context)
    ..setTitle("Delete $name?")
    ..setMessage("Are you sure you want to delete this plugin?")
    ..setPositiveButton(getString.yes, () async {
      await plugin.delete();
      snackString("$name deleted");
    })
    ..setNegativeButton(getString.no, () {})
    ..show();
}

Future<void> showInstallDialog(
  BuildContext context,
  DownloadablePlugin plugin,
  String name,
) async {
  Map<String, dynamic>? remote;

  var hasUpdate = false;
  try {
    remote = await plugin.fetchRemote();
    if (remote == null) {
      snackString("$name is not available in the configured repo");
      return;
    }
    if (plugin.installed.value) hasUpdate = await plugin.checkForUpdate();
  } catch (_) {
    snackString("Failed to fetch plugin info");
    return;
  }

  if (!context.mounted) return;
  final scheme = context.colorScheme;
  final textStyle = Theme.of(context).textTheme.labelMedium;

  final version = remote["versionName"] ?? "";
  final sizeBytes = remote["fileSize"] ?? 0;
  final sizeMB = plugin.formatSize(sizeBytes);
  final description = remote["description"] ?? "";
  final author = remote["author"] ?? "";

  unawaited(
    showCustomBottomDialog(
      context,
      CustomBottomDialog(
        title: "Install $name",
        viewList: [
          const SizedBox(height: 8),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: scheme.primary.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                version,
                style: textStyle?.copyWith(
                  color: scheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.cardColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: scheme.outline.withValues(alpha: 0.2),
                ),
              ),
              child: Obx(() {
                final downloading = plugin.downloading.value;
                final progress = plugin.progress.value;

                if (downloading) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LinearProgressIndicator(
                        value: progress,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${(progress * 100).toStringAsFixed(1)}%",
                        style: textStyle?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  );
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.storage_rounded,
                          size: 16,
                          color: scheme.primary,
                        ),
                        const SizedBox(width: 6),
                        Text("Size: $sizeMB", style: textStyle),
                        const SizedBox(width: 16),
                        if (author.isNotEmpty) ...[
                          Icon(
                            Icons.person_rounded,
                            size: 16,
                            color: scheme.primary,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              author,
                              style: textStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 14),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: scheme.surface.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        description,
                        style: textStyle?.copyWith(fontSize: 13, height: 1.4),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          const SizedBox(height: 20),
        ],
        negativeText: "Cancel",
        positiveText: !plugin.installed.value
            ? "Install"
            : hasUpdate
            ? "Update"
            : "Installed",
        negativeCallback: () {
          popPage(context);
        },
        positiveCallback: () async {
          if (plugin.installed.value && !hasUpdate) {
            return;
          }

          if (plugin.downloading.value) return;

          await plugin.download();
          if (!context.mounted) return;
          if (plugin.installed.value) {
            popPage(context);
          }
        },
      ),
    ),
  );
}
