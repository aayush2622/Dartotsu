import 'package:flutter/material.dart';
import 'package:flutter_qjs/quickjs/ffi.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../DataClass/Media.dart';
import '../../../../../Preferences/PrefManager.dart';
import '../../../../../Widgets/DropdownMenu.dart';
import '../../../../../api/Mangayomi/Extensions/extensions_provider.dart';
import '../../../../../api/Mangayomi/Model/Source.dart';
import '../../../../Settings/language.dart';

class SourceSelector extends ConsumerStatefulWidget {
  final Source? currentSource;
  final Function(Source source) onSourceChange;
  final media mediaData;

  const SourceSelector(
      {super.key,
      this.currentSource,
      required this.onSourceChange,
      required this.mediaData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SourceSelectorState();
}

class _SourceSelectorState extends ConsumerState<SourceSelector> {
  @override
  Widget build(BuildContext context) {
    final sources = widget.mediaData.anime != null
        ? ref.watch(getExtensionsStreamProvider(false))
        : ref.watch(getExtensionsStreamProvider(true));

    return Material(
        child: sources.when(
      data: (List<Source> sources) {
        var installedSources = sources
            .where((source) => source.isAdded!)
            .toList()
            .reversed
            .toList();

        String nameAndLang(Source source) {
          bool isDuplicateName =
              installedSources.where((s) => s.name == source.name).length > 1;

          return isDuplicateName
              ? '${source.name!} - ${completeLanguageName(source.lang!.toLowerCase())}'
              : source.name!;
        }

        final sourceName = installedSources.map((e) => nameAndLang(e)).toList();
        var lastUsedSource = PrefManager.getCustomVal<String>(
            '${widget.mediaData.id}-lastUsedSource');
        if (lastUsedSource == null ||
            !installedSources.any((e) => nameAndLang(e) == lastUsedSource)) {
          lastUsedSource = nameAndLang(installedSources.first);
        }

        var source = installedSources
            .firstWhereOrNull((e) => nameAndLang(e) == lastUsedSource!);

        if (widget.currentSource != source) {
          widget.onSourceChange(source!);
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
                      if (widget.currentSource != source) {
                        widget.onSourceChange(source!);
                      }
                    },
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: null,
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
    ));
  }
}
