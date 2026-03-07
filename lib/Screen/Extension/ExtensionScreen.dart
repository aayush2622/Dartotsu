import 'dart:io';

import 'package:dartotsu_extension_bridge/Screen/ExtensionList.dart' as e;
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/language.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';

class ExtensionList extends StatefulWidget implements e.ExtensionConfig {
  @override
  final ItemType itemType;
  @override
  final bool isInstalled;
  @override
  final String searchQuery;
  @override
  final String selectedLanguage;
  const ExtensionList({
    required this.itemType,
    required this.isInstalled,
    required this.searchQuery,
    required this.selectedLanguage,
    super.key,
  });
  @override
  State<ExtensionList> createState() => _ExtensionListScreenState();
}

class _ExtensionListScreenState extends e.ExtensionList<ExtensionList> {
  Extension get extension => Get.find<ExtensionManager>().current.value;
  @override
  Widget extensionItem(bool isHeader, String lang, Source? source) {
    final theme = Theme.of(context).colorScheme;
    if (isHeader) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          completeLanguageName(lang),
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      );
    }
    source = source!;
    return Card(
      color: theme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        tileColor: theme.surface,
        leading: _buildIcon(source),
        title: Text(
          source.name ?? 'Unknown Source',
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        subtitle: _buildSubtitle(source, theme),
        trailing: _buildTrailing(source),
      ),
    );
  }

  Widget _buildIcon(Source source) {
    final iconUrl = source.iconUrl;
    if (iconUrl == null ||
        iconUrl.isEmpty ||
        !(loadCustomData<bool?>('loadExtensionIcon') ?? true)) {
      return const Icon(Icons.extension_rounded);
    }
    if (iconUrl.startsWith('/')) {
      final file = File(iconUrl);
      if (!file.existsSync()) {
        return const Icon(Icons.extension_rounded);
      }
      return Image.file(
        file,
        width: 37,
        height: 37,
        fit: BoxFit.contain,
        errorBuilder: (_, __, ___) => const Icon(Icons.extension_rounded),
      );
    }
    return cachedNetworkImage(
      imageUrl: iconUrl,
      width: 37,
      height: 37,
      fit: BoxFit.contain,
      placeholder: (_, __) => const Icon(Icons.extension_rounded),
      errorWidget: (_, __, ___) => const Icon(Icons.extension_rounded),
    );
  }

  Widget _buildSubtitle(Source source, ColorScheme theme) {
    final lang = completeLanguageName(source.lang?.toLowerCase() ?? "unknown");
    final items = [
      Text(lang, style: _subtitleTextStyle),
      if ((source.version ?? '').isNotEmpty)
        Text("${source.version}", style: _subtitleTextStyle),
      if (source.isNsfw ?? false)
        const Text(" (18+)", style: _subtitleTextStyle),
    ];
    return Wrap(
      spacing: 4,
      runSpacing: 2,
      children: items,
    );
  }

  Widget _buildTrailing(Source source) {
    if (widget.isInstalled) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (source.hasUpdate ?? false)
            IconButton(
              icon: const Icon(Icons.update_rounded),
              onPressed: () => extension.updateSource(source),
            ),
          IconButton(
            icon: const Icon(Icons.delete_rounded),
            onPressed: () => extension.uninstallSource(source),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TestSearchScreen(source: source),
                ),
              );
            },
            child: const Text("Test Search"),
          ),
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () async {
              var preference = await source.methods.getPreference();
              if (preference.isEmpty) {
                snackString("Source doesn't have any settings");
                return;
              }
              /*if (mounted) {
                navigateToPage(
                  context,
                  SourcePreferenceScreen(
                    source: source,
                    preference: preference,
                  ),
                );
              }*/
            },
          ),
        ],
      );
    }
    return IconButton(
      icon: const Icon(Icons.download_rounded),
      onPressed: () => extension.installSource(source),
    );
  }

  static const _subtitleTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 10,
  );
}

class ExtensionScreen extends StatefulWidget {
  const ExtensionScreen({super.key});
  @override
  State<ExtensionScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends ExtensionManagerScreen<ExtensionScreen> {
  @override
  Extension get manager => Get.find<ExtensionManager>().current.value;
  @override
  Text get title => Text(
        getString.extension(2),
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Theme.of(context).colorScheme.primary,
        ),
      );
  @override
  List<Widget> extensionActions(
    BuildContext context,
    TabController tabController,
    String currentLanguage,
    void Function(String currentLanguage) onLanguageChanged,
  ) {
    var theme = Theme.of(context).colorScheme;
    return [
      IconButton(
        icon: const Icon(Bootstrap.github),
        onPressed: () {
          var tabIndex = tabController.index;
          var type = tabIndex <= 1
              ? ItemType.anime
              : tabIndex <= 3
                  ? ItemType.manga
                  : ItemType.novel;
          var text = '';
          AlertDialogBuilder(context)
            ..setTitle('${type.name} sources')
            ..setCustomView(
              TextField(
                decoration: const InputDecoration(hintText: 'Repo URL'),
                onChanged: (value) => text = value,
              ),
            )
            ..setPositiveButton(
              getString.ok,
              () => manager.addRepo(text, type),
            )
            ..show();
        },
      ),
      IconButton(
        icon: Icon(Icons.language_rounded, color: theme.primary),
        onPressed: () {
          var language = completeLanguageName(currentLanguage);
          AlertDialogBuilder(context)
            ..setTitle(getString.language)
            ..singleChoiceItems(
              sortedLanguagesMap.keys.toList(),
              sortedLanguagesMap.keys.toList().indexOf(language),
              (index) {
                onLanguageChanged(
                  completeLanguageCode(
                    sortedLanguagesMap.keys.elementAt(index),
                  ),
                );
              },
            )
            ..show();
        },
      ),
    ];
  }

  @override
  Widget searchBar(
    BuildContext context,
    TextEditingController textEditingController,
    void Function() onChanged,
  ) {
    var theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: textEditingController,
        onChanged: (_) => onChanged(),
        decoration: InputDecoration(
          hintText: getString.search,
          suffixIcon: Icon(Icons.search, color: theme.onSurface),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
        ),
      ),
    );
  }

  @override
  Widget tabWidget(BuildContext context, String label, int count) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            "($count)",
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  @override
  ExtensionScreenBuilder get extensionScreenBuilder => (
        ItemType itemType,
        bool isInstalled,
        String searchQuery,
        String selectedLanguage,
      ) {
        return ExtensionList(
          itemType: itemType,
          isInstalled: isInstalled,
          searchQuery: searchQuery,
          selectedLanguage: selectedLanguage,
        );
      };
}

class TestSearchScreen extends StatefulWidget {
  final Source source;

  const TestSearchScreen({
    super.key,
    required this.source,
  });

  @override
  State<TestSearchScreen> createState() => _TestSearchScreenState();
}

class _TestSearchScreenState extends State<TestSearchScreen> {
  late SourceMethods methods;

  List<DMedia> results = [];
  bool loading = false;

  @override
  void initState() {
    super.initState();

    methods = widget.source.methods;

    runSearch();
  }

  Future<void> runSearch() async {
    setState(() => loading = true);

    try {
      Pages pages = await methods.search("naruto", 1, []);

      results = pages.list;
    } catch (e) {
      debugPrint("Search error: $e");
    }

    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Test"),
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                final media = results[index];

                return ListTile(
                  leading: media.cover != null
                      ? Image.network(
                          media.cover!,
                          width: 50,
                          fit: BoxFit.cover,
                        )
                      : null,
                  title: Text(media.title ?? "No title"),
                  subtitle: Text(media.url ?? ""),
                  onTap: () async {
                    final navigator = Navigator.of(context);

                    if (!mounted) return;
                    setState(() => loading = true);

                    DMedia detailed;

                    try {
                      detailed = await methods.getDetail(media);
                    } catch (e, s) {
                      debugPrint("Detail error: $e $s");
                      if (mounted) setState(() => loading = false);
                      return;
                    }

                    if (!mounted) return;

                    setState(() => loading = false);

                    navigator.push(
                      MaterialPageRoute(
                        builder: (_) => MediaDetailScreen(
                          source: widget.source,
                          media: detailed,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}

class MediaDetailScreen extends StatelessWidget {
  final Source source;
  final DMedia media;

  const MediaDetailScreen({
    super.key,
    required this.source,
    required this.media,
  });

  @override
  Widget build(BuildContext context) {
    final episodes = media.episodes ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(media.title ?? "Details"),
      ),
      body: Column(
        children: [
          if (media.cover != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.network(
                media.cover!,
                height: 200,
              ),
            ),
          if (media.description != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(media.description!),
            ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: episodes.length,
              itemBuilder: (context, index) {
                final ep = episodes[index];

                return ListTile(
                  title: Text(ep.name ?? "Episode ${ep.episodeNumber}"),
                  subtitle: Text(ep.url ?? ""),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => EpisodeScreen(
                          source: source,
                          episode: ep,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class EpisodeScreen extends StatefulWidget {
  final Source source;
  final DEpisode episode;

  const EpisodeScreen({
    super.key,
    required this.source,
    required this.episode,
  });

  @override
  State<EpisodeScreen> createState() => _EpisodeScreenState();
}

class _EpisodeScreenState extends State<EpisodeScreen> {
  late SourceMethods methods;

  bool loading = true;
  List<Video> videos = [];

  @override
  void initState() {
    super.initState();
    methods = widget.source.methods;
    load();
  }

  Future<void> load() async {
    videos = await methods.getVideoList(widget.episode);
    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.episode.name ?? "Episode"),
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: videos.length,
              itemBuilder: (context, index) {
                final v = videos[index];

                return ListTile(
                  title: Text(v.title ?? "Video ${index + 1}"),
                  subtitle: Text(v.url),
                );
              },
            ),
    );
  }
}
