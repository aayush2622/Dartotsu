import 'package:dartotsu/api/Mangayomi/Model/Manga.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qjs/quickjs/ffi.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../DataClass/Media.dart';
import '../../../../../Functions/Function.dart';
import '../../../../../Preferences/PrefManager.dart';
import '../../../../../Widgets/DropdownMenu.dart';
import '../../../../../api/Mangayomi/Extensions/extensions_provider.dart';
import '../../../../../api/Mangayomi/Model/Source.dart';
import '../../../../../api/Mangayomi/extension_preferences_providers.dart';
import '../../../../../api/Mangayomi/get_source_preference.dart';
import '../../../../Extensions/ExtensionSettings/ExtensionSettings.dart';
import '../../../../Settings/language.dart';

class SourceSelector extends ConsumerStatefulWidget {
  final Source? currentSource;
  final Function(Source source) onSourceChange;
  final Media mediaData;

  const SourceSelector({
    super.key,
    this.currentSource,
    required this.onSourceChange,
    required this.mediaData,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SourceSelectorState();
}

class _SourceSelectorState extends ConsumerState<SourceSelector> {
  @override
  Widget build(BuildContext context) {
    var isAnime = widget.mediaData.anime != null;
    final sources = isAnime
        ? ref.watch(getExtensionsStreamProvider(ItemType.anime))
        : widget.mediaData.format?.toLowerCase() == 'novel'
            ? ref.watch(getExtensionsStreamProvider(ItemType.novel))
            : ref.watch(getExtensionsStreamProvider(ItemType.manga));

    return Material(
      color: Colors.transparent,
      child: sources.when(
        data: (List<Source> sources) {
          List installedSources = sources
              .where((source) => source.isAdded!)
              .toList()
              .reversed
              .toList();
          if (installedSources.isEmpty) {
            return const Column(
              children: [
                buildDropdownMenu(
                  padding: EdgeInsets.all(0),
                  currentValue: 'No sources installed',
                  options: ['No sources installed'],
                  prefixIcon: Icons.source,
                ),
              ],
            );
          }
          String nameAndLang(Source source) {
            bool isDuplicateName =
                installedSources.where((s) => s.name == source.name).length > 1;

            return isDuplicateName
                ? '${source.name!} - ${completeLanguageName(source.lang!.toLowerCase())}'
                : source.name!;
          }

          final sourceName =
              installedSources.map((e) => nameAndLang(e)).toList();
          var lastUsedSource = PrefManager.getCustomVal<String>(
              '${widget.mediaData.id}-lastUsedSource');
          if (lastUsedSource == null ||
              !installedSources.any((e) => nameAndLang(e) == lastUsedSource)) {
            lastUsedSource = nameAndLang(installedSources.first);
          }

          Source source = installedSources
              .firstWhereOrNull((e) => nameAndLang(e) == lastUsedSource!);

          if (widget.currentSource?.id != source.id) {
            widget.onSourceChange(source);
          }
          var theme = Theme.of(context).colorScheme;

          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: buildDropdownMenu(
                      padding: const EdgeInsets.all(0),
                      currentValue: lastUsedSource,
                      options: sourceName,
                      borderColor: theme.primary,
                      prefixIcon: Icons.source,
                      onChanged: (name) async {
                        PrefManager.setCustomVal(
                            '${widget.mediaData.id}-lastUsedSource', name);
                        lastUsedSource = name;
                        source = installedSources.firstWhereOrNull(
                            (e) => nameAndLang(e) == lastUsedSource!);
                        if (widget.currentSource?.id != source.id) {
                          widget.onSourceChange(source);
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      var sourcePreference = getSourcePreference(source: source)
                          .map((e) =>
                              getSourcePreferenceEntry(e.key!, source.id!))
                          .toList();
                      navigateToPage(
                        context,
                        SourcePreferenceWidget(
                          source: source,
                          sourcePreference: sourcePreference,
                        ),
                      );
                    },
                    child: Icon(
                      Icons.settings,
                      size: 32,
                      color: theme.onSurface,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        error: (error, stackTrace) => Text('Error: $error'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
