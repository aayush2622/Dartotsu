import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/language.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/LoadSvg.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import 'ExtensionList.dart';

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
    final theme = Theme.of(context).colorScheme;

    // BaseScreen already supplies the SafeArea + Scaffold + glass backdrop;
    // this inner (transparent) Scaffold only exists to host the AppBar.
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          getString.extension(2),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: theme.primary,
          ),
        ),
        iconTheme: IconThemeData(color: theme.primary),
        actions: [
          Row(children: [..._buildActions(), const SizedBox(width: 8)]),
        ],
      ),
      body: Column(
        children: [
          Obx(
            () => TabBar(
              controller: _tabBarController,
              isScrollable: true,
              dividerColor: Colors.transparent,
              tabAlignment: TabAlignment.start,
              indicator: const BoxDecoration(),
              indicatorPadding: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.primary,
              unselectedLabelColor: theme.onSurfaceVariant,
              splashFactory: NoSplash.splashFactory,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              tabs: _buildTabs(context),
            ),
          ),
          const SizedBox(height: 8),
          _searchBar(),
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
              "Reset",
              () => extension.saveSelectedLanguages(type, {}),
            )
            ..show();
        },
      ),
    ];
  }

  Widget _buildServiceManager() {
    final theme = Theme.of(context).colorScheme;

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
            onPressed: () {
              showCustomBottomDialog(
                context,
                CustomBottomDialog(
                  title: "${type.name.capitalizeFirst} Manager",
                  positiveText: getString.ok,
                  positiveCallback: () => Navigator.pop(context),
                  negativeText: "Add Repository",
                  negativeCallback: () => _showAddRepositoryDialog(),
                  viewList: [
                    Obx(() {
                      final current = manager[type];
                      final managers = manager.managers
                          .where((e) => e.supports(type))
                          .toList();

                      return Column(
                        children: managers
                            .map(
                              (m) => _buildServiceTile(theme, type, current, m),
                            )
                            .toList(),
                      );
                    }),
                  ],
                ),
              );
            },
          );
        });
      },
    );
  }

  Widget _buildServiceTile(
    ColorScheme theme,
    ItemType type,
    dynamic current,
    dynamic m,
  ) {
    final selected = current.id == m.id;
    final installed = m.plugin == null || m.plugin!.installed.value;
    final availableInRepo = m.plugin == null || m.plugin!.availableInRepo.value;
    final enabled = installed;
    final opacity = installed || availableInRepo ? 1.0 : 0.5;

    return Opacity(
      opacity: opacity,
      child: ThemedContainer(
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
        color: selected ? theme.surfaceContainerHigh : null,
        child: ListTile(
          enabled: enabled,
          hoverColor: Colors.transparent,
          onTap: (!enabled || selected)
              ? null
              : () => manager.switchManager(type, m.id),
          leading: ClipOval(
            child: Image.asset(
              m.icon,
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            m.name,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: _buildServiceTrailing(m, installed, availableInRepo),
        ),
      ),
    );
  }

  Widget? _buildServiceTrailing(
    dynamic m,
    bool installed,
    bool availableInRepo,
  ) {
    if (m.plugin == null) return null;

    if (installed) {
      return IconButton(
        icon: const Icon(Icons.delete, size: 18),
        onPressed: () => showDeleteDialog(context, m.plugin!, m.name),
      );
    }

    if (availableInRepo) {
      return IconButton(
        icon: const Icon(Icons.download, size: 18),
        onPressed: () => showInstallDialog(context, m.plugin!, m.name),
      );
    }

    return null;
  }

  void _showAddRepositoryDialog() {
    final controller = TextEditingController(text: DownloadablePlugin.indexUrl);
    final refreshing = false.obs;

    AlertDialogBuilder(context)
      ..setTitle("Add Plugin Repository")
      ..setCustomView(
        StatefulBuilder(
          builder: (dialogContext, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: "Plugin index URL",
                  ),
                ),
                Obx(
                  () => refreshing.value
                      ? const Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            );
          },
        ),
      )
      ..setPositiveButton(getString.ok, () async {
        final url = controller.text.trim();
        if (url.isEmpty || refreshing.value) return;

        DownloadablePlugin.setIndexUrl(url);

        refreshing.value = true;
        try {
          await Future.wait([
            for (final m in manager.managers)
              if (m.plugin != null) m.plugin!.checkAvailability(),
          ]);
          snackString("Plugin repository updated");
        } catch (e) {
          snackString("Failed to refresh plugin repository");
        } finally {
          refreshing.value = false;
        }
      })
      ..show();
  }

  Widget _buildRepoManager() {
    var theme = Theme.of(context).colorScheme;
    return IconButton(
      icon: loadSvg("assets/svg/github.svg", color: theme.primary),
      onPressed: () {
        final type = _currentType;
        showCustomBottomDialog(
          context,
          CustomBottomDialog(
            title: "${type.name.capitalizeFirst} Repositories",
            positiveText: getString.ok,
            positiveCallback: () => Navigator.pop(context),
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
                    await manager[type].addRepo(controller.text, type);
                  } catch (_) {}
                })
                ..show();
            },
            viewList: [
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
                                style: const TextStyle(
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
                              style: TextStyle(color: theme.primary),
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
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 15,
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

  Widget tabWidget(
    BuildContext context,
    String label,
    int count,
    bool selected,
  ) {
    final theme = Theme.of(context).colorScheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      child: ThemedContainer(
        color: selected ? theme.surfaceContainerHigh : null,
        borderRadius: BorderRadius.circular(16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: ContextExtensions(context).textTheme.titleMedium?.copyWith(
                fontSize: 14,
                color: selected ? theme.primary : theme.onSurfaceVariant,
              ),
            ),
            const SizedBox(width: 8),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: selected
                    ? theme.primary.withValues(alpha: 0.15)
                    : theme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                "$count",
                style: ContextExtensions(context).textTheme.labelMedium
                    ?.copyWith(
                      color: selected ? theme.primary : theme.onSurfaceVariant,
                    ),
              ),
            ),
          ],
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

          return tabWidget(
            context,
            'Installed ${type.name}',
            count,
            _currentIndex.value == installedIndex,
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

          return tabWidget(
            context,
            'Available ${type.name}',
            count,
            _currentIndex.value == availableIndex,
          );
        }),
      );
    }

    if (tabs.isNotEmpty) {
      tabs[0] = Padding(
        padding: const EdgeInsets.only(left: 16),
        child: tabs[0],
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
              ),
      );
    }

    return views;
  }

  Widget _emptyMessage(String message) {
    final theme = Theme.of(context).colorScheme;
    return Center(
      child: Text(message, style: TextStyle(color: theme.onSurface)),
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
              border: Border.all(color: scheme.outline.withValues(alpha: 0.2)),
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
        Navigator.pop(context);
      },
      positiveCallback: () async {
        if (plugin.installed.value && !hasUpdate) {
          return;
        }

        if (plugin.downloading.value) return;

        await plugin.download();
        if (!context.mounted) return;
        if (plugin.installed.value) {
          Navigator.pop(context);
        }
      },
    ),
  );
}
