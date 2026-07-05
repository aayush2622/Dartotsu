import 'package:dartotsu/Theme/ThemeManager.dart';
import 'package:dartotsu/Widgets/AlertDialogBuilder.dart';
import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

import '../../Functions/Extensions/ContextExtensions.dart';
import '../../Functions/Function.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Widgets/CustomBottomDialog.dart';
import '../../Widgets/LoadSvg.dart';
import '../../Widgets/ScrollConfig.dart';
import '../Settings/language.dart';
import 'ExtensionList.dart';

class ExtensionScreen extends StatefulWidget {
  const ExtensionScreen({super.key});

  @override
  State<ExtensionScreen> createState() => ExtensionScreenState();
}

class ExtensionScreenState extends State<ExtensionScreen>
    with TickerProviderStateMixin {
  late TabController _tabBarController;

  final manager = Get.find<ExtensionManager>();

  final _selectedLanguage = 'All'.obs;
  final _searchQuery = ''.obs;

  final _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    manager.initializeAvailable();
    _tabBarController = TabController(
      length: ItemType.values.length * 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    _textEditingController.dispose();
    _selectedLanguage.close();
    _searchQuery.close();
    super.dispose();
  }

  ItemType get _currentType => switch (_tabBarController.index ~/ 2) {
    0 => ItemType.anime,
    1 => ItemType.manga,
    _ => ItemType.novel,
  };
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return ScrollConfig(
      context,
      child: Scaffold(
        appBar: AppBar(
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
                indicator: BoxDecoration(
                  color: theme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(16),
                ),
                indicatorPadding: const EdgeInsets.symmetric(
                  horizontal: 1,
                  vertical: 6,
                ),
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
            Obx(() {
              return Expanded(
                child: TabBarView(
                  controller: _tabBarController,
                  children: _buildTabViews(
                    _searchQuery.value,
                    _selectedLanguage.value,
                  ),
                ),
              );
            }),
          ],
        ),
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
          var language = completeLanguageName(_selectedLanguage.value);

          AlertDialogBuilder(context)
            ..setTitle(getString.language)
            ..singleChoiceItems(
              sortedLanguagesMap.keys.toList(),
              sortedLanguagesMap.keys.toList().indexOf(language),
              (index) {
                _selectedLanguage.value = completeLanguageCode(
                  sortedLanguagesMap.keys.elementAt(index),
                );
              },
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

        return IconButton(
          icon: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              manager[type].icon,
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
                viewList: [
                  Obx(() {
                    final current = manager[type];
                    final managers = manager.managers
                        .where((e) => e.supports(type))
                        .toList();

                    return Column(
                      children: managers.map((m) {
                        final selected = current.id == m.id;
                        final enabled =
                            m.plugin == null || m.plugin!.installed.value;

                        return Opacity(
                          opacity: enabled ? 1 : 0.5,
                          child: ThemedContainer(
                            context: context,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(24),
                            ),
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
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              trailing: m.plugin == null
                                  ? null
                                  : IconButton(
                                      icon: Icon(
                                        enabled ? Icons.delete : Icons.download,
                                        size: 18,
                                      ),
                                      onPressed: () async {
                                        if (enabled) {
                                          showDeleteDialog(
                                            context,
                                            m.plugin!,
                                            m.name,
                                          );
                                        } else {
                                          await showInstallDialog(
                                            context,
                                            m.plugin!,
                                            m.name,
                                          );
                                        }
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
      },
    );
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
                      context: context,
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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: _textEditingController,
        style: const TextStyle(
          fontFamily: "Poppins",
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: "Search extensions...",
          prefixIcon: const Icon(Icons.search_rounded),
          filled: true,
          fillColor: theme.surfaceContainerHigh,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: theme.primary.withOpacity(.5),
              width: 1.5,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
        ),
        onChanged: (v) => _searchQuery.value = v,
      ),
    );
  }

  Widget tabWidget(BuildContext context, String label, int count) {
    final theme = Theme.of(context).colorScheme;

    return Tab(
      height: 46,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: theme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                "$count",
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
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

    for (final type in _tabOrder) {
      final manager = this.manager[type].state(type);

      tabs.add(
        tabWidget(
          context,
          'Installed ${type.name}',
          manager.installed.value.length,
        ),
      );

      tabs.add(
        tabWidget(
          context,
          'Available ${type.name}',
          manager.available.value.length,
        ),
      );
    }

    return tabs;
  }

  static const _tabOrder = [ItemType.anime, ItemType.manga, ItemType.novel];
  List<Widget> _buildTabViews(String query, String lang) {
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
                selectedLanguage: lang,
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
                selectedLanguage: lang,
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
  Map<String, dynamic> remote;

  try {
    snackString("Fetching plugin info...");
    remote = await plugin.fetchRemote();
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
              color: scheme.primary.withOpacity(0.12),
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
              border: Border.all(color: scheme.outline.withOpacity(0.2)),
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
                      color: scheme.surface.withOpacity(0.3),
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
      positiveText: plugin.installed.value
          ? "Installed"
          : plugin.hasUpdate
          ? "Update"
          : "Install",
      negativeCallback: () {
        Navigator.pop(context);
      },
      positiveCallback: () async {
        if (plugin.installed.value && !plugin.hasUpdate) {
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
