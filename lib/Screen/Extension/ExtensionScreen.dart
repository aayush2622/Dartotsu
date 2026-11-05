
import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/LoadSvg.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import 'ExtensionList.dart';
import 'ExtensionTestScreen.dart';
import '../../Core/Downloads/DownloadPrefs.dart';
import 'Widgets/ExtensionManagerSheet.dart';
import 'Widgets/ExtensionReposSheet.dart';
import '../../Widgets/Components/AppTabs.dart';
import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/State/State.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'ExtensionBrowserState.dart';

class ExtensionScreen extends StatefulWidget {
  const ExtensionScreen({super.key});

  @override
  State<ExtensionScreen> createState() => ExtensionScreenState();
}

class ExtensionScreenState extends BaseScreen<ExtensionScreen>
    with
        TickerProviderStateMixin,
        ScreenStateHost<ExtensionScreen, ExtensionBrowserState> {
  @override
  ExtensionBrowserState buildState() => ExtensionBrowserState();

  ExtensionManager get manager => state.manager;

  @override
  DiscordPresence? get presence => state.presence;

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: DpadLane(
          laneKey: state.appBarLaneKey,
          verticalEdge: DpadEdgeBehavior.stop,
          onEdge: state.onAppBarEdge,
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
            laneKey: state.tabsLaneKey,
            verticalEdge: DpadEdgeBehavior.stop,
            onEdge: state.onTabsEdge,
            child: Watch(
              () => AppTabBar(
                controller: state.tabs,
                onFocusChange: state.onTabFocus,
                tabs: _buildTabs(context),
              ),
            ),
          ),
          const SizedBox(height: 8),
          DpadLane(
            laneKey: state.searchLaneKey,
            verticalEdge: DpadEdgeBehavior.stop,
            onEdge: state.onSearchEdge,
            child: _searchBar(),
          ),
          Watch(
            () => Expanded(
              child: TabBarView(
                controller: state.tabs,
                children: _buildTabViews(state.searchQuery.value),
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
        tooltip: getString.extensionTest,
        icon: Icon(Icons.fact_check_rounded, color: theme.primary),
        onPressed: () => navigateToPage(context, const ExtensionTestScreen()),
      ),
      IconButton(
        icon: Icon(Icons.language_rounded, color: theme.primary),
        onPressed: state.chooseLanguages,
      ),
    ];
  }

  Widget _buildServiceManager() {
    return AnimatedBuilder(
      animation: state.tabs,
      builder: (_, _) {
        final type = state.currentType;

        return Watch(() {
          final currentManager = manager[type];

          return IconButton(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: assetIcon(currentManager.icon, size: 24),
            ),
            onPressed: () => showExtensionManagerSheet(context, type),
            onLongPress: () {
              repoToolsUnlockedPref.rx.value = true;
              showExtensionManagerSheet(context, type);
            },
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
      onPressed: () =>
          showExtensionReposSheet(context, state, state.currentType),
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
          controller: state.textController,
          style: context.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            hintText: getString.searchExtensions,
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
          onChanged: state.onSearchChanged,
        ),
      ),
    );
  }

  List<Widget> _buildTabs(BuildContext context) {
    final tabs = <Widget>[];
    var index = 0;
    for (final type in ExtensionBrowserState.tabOrder) {
      final installedIndex = index++;
      tabs.add(
        Watch(() {
          final count = state.count(type, installed: true);
          final focused = kFocused(
            state.focusedTabIndex.value == installedIndex,
          );
          return Watch(() {
            final amount = tabAmount(
              state.tabs,
              installedIndex,
              state.tabPosition.value,
            );
            return AppTab(
              label: getString.installedType(type.name),
              count: count,
              selected: amount >= 0.5,
              amount: amount,
              focused: focused,
            );
          });
        }),
      );
      final availableIndex = index++;
      tabs.add(
        Watch(() {
          final count = state.count(type, installed: false);
          final focused = kFocused(
            state.focusedTabIndex.value == availableIndex,
          );
          return Watch(() {
            final amount = tabAmount(
              state.tabs,
              availableIndex,
              state.tabPosition.value,
            );
            return AppTab(
              label: getString.availableType(type.name),
              count: count,
              selected: amount >= 0.5,
              amount: amount,
              focused: focused,
            );
          });
        }),
      );
    }
    return tabs;
  }

  List<Widget> _buildTabViews(String query) {
    final views = <Widget>[];

    for (final type in ExtensionBrowserState.tabOrder) {
      final manager = this.manager[type].state(type);

      final installed = manager.installed.value;
      final available = manager.available.value;

      views.add(
        installed.isEmpty
            ? _emptyMessage(getString.noInstalledExtensions(type.name))
            : ExtensionList(
                itemType: type,
                isInstalled: true,
                searchQuery: query,
                onFirstRowUp: state.focusSearch,
                firstRowKey: state.firstRowKeys[views.length],
              ),
      );

      views.add(
        manager.loadingAvailable.value
            ? ExtensionList(
                itemType: type,
                isInstalled: false,
                searchQuery: '',
                skeleton: true,
              )
            : available.isEmpty
            ? _emptyMessage(getString.noAvailableExtensions(type.name))
            : ExtensionList(
                itemType: type,
                isInstalled: false,
                searchQuery: query,
                onFirstRowUp: state.focusSearch,
                firstRowKey: state.firstRowKeys[views.length],
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
    ..setTitle(getString.deletePluginTitle(name))
    ..setMessage(getString.deletePluginMessage)
    ..setPositiveButton(getString.yes, () async {
      await plugin.delete();
      snackString(getString.pluginDeleted(name));
    })
    ..setNegativeButton(getString.no, () {})
    ..show();
}
