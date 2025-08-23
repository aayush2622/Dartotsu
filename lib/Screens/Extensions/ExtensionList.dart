import 'dart:io';

import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:dartotsu_extension_bridge/Screen/ExtensionList.dart' as e;
import 'package:flutter/material.dart';

import '../../Functions/Function.dart';
import '../../Widgets/CachedNetworkImage.dart';
import '../Settings/language.dart';
import 'ExtensionSettings/SourcePreferenceScreen.dart';

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
  @override
  Widget extensionItem(bool isHeader, String lang, Source? source) {
    final theme = Theme.of(context).colorScheme;
    if (isHeader) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          completeLanguageName(lang),
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
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
            fontSize: 15.0,
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
        errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.extension_rounded);
        },
      );
    }

    return cachedNetworkImage(
      imageUrl: iconUrl,
      fit: BoxFit.contain,
      width: 37,
      height: 37,
      placeholder: (context, url) => const Icon(Icons.extension_rounded),
      errorWidget: (context, url, error) => const Icon(Icons.extension_rounded),
    );
  }

  Widget _buildSubtitle(Source source, ColorScheme theme) {
    final lang = completeLanguageName(source.lang?.toLowerCase() ?? "unknown");

    final items = [
      Text(lang, style: _subtitleTextStyle),
      if ((source.version ?? '').isNotEmpty)
        Text("${source.version}", style: _subtitleTextStyle),
      if (source.isNsfw ?? false)
        const Text("  (18+)", style: _subtitleTextStyle),
      if (source.isObsolete ?? false)
        Text(
          "  OBSOLETE",
          style: TextStyle(
            color: theme.error,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
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
              tooltip: 'Update',
              onPressed: () => manager.updateSource(source),
            ),
          IconButton(
            icon: const Icon(Icons.delete_rounded),
            tooltip: 'Uninstall',
            onPressed: () => manager.uninstallSource(source),
          ),
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            tooltip: 'Settings',
            onPressed: () async {
              var preference = await source.methods.getPreference();
              if (preference.isEmpty) {
                snackString("Source doesn't have any settings");
                return;
              }
              if (mounted) {
                navigateToPage(
                  context,
                  SourcePreferenceScreen(
                    source: source,
                    preference: preference,
                  ),
                );
              }
            },
          ),
        ],
      );
    } else {
      return IconButton(
        icon: const Icon(Icons.download_rounded),
        tooltip: 'Install',
        onPressed: () => manager.installSource(source),
      );
    }
  }

  static const _subtitleTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 10.0,
  );
}
