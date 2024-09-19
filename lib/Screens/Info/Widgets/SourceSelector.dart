import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../DataClass/Media.dart';
import '../../../api/Mangayomi/Extensions/extensions_provider.dart';
import '../../../api/Mangayomi/Model/Source.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Widgets/DropdownMenu.dart';

class SourceSelector extends ConsumerStatefulWidget {
  final Source? currentSource;
  final Function(Source source) onSourceChange;
  final media mediaData;

  const SourceSelector({super.key,this.currentSource,required this.onSourceChange, required this.mediaData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SourceSelectorState();
}

class _SourceSelectorState extends ConsumerState<SourceSelector> {
  @override
  Widget build(BuildContext context) {
    final sources = ref.watch(getExtensionsStreamProvider(false));

    return Material(
     child: sources.when(
      data: (List<Source> sources) {
        var installedSources = sources
            .where((source) => source.isAdded!)
            .toList()
            .reversed
            .toList();
        final sourceName = installedSources.map((e) => e.name!).toList();
        var lastUsedSource = PrefManager.getCustomVal<String>(
            '${widget.mediaData.id}-lastUsedSource');
        if (lastUsedSource == null ||
            !installedSources.any((e) => e.name == lastUsedSource)) {
          lastUsedSource = installedSources.first.name;
        }
        var source =
            installedSources.firstWhere((e) => e.name == lastUsedSource!);
        if (widget.currentSource != source) {
          widget.onSourceChange(source);
        }

        return Stack(
          children: [
            buildDropdownMenu(
              currentValue: lastUsedSource!,
              options: sourceName,
              onChanged: (name) async {
                PrefManager.setCustomVal('${widget.mediaData.id}-lastUsedSource', name);
                lastUsedSource = name;
                source = installedSources.firstWhere((e) => e.name == name);
                widget.onSourceChange(source);

              },
            ),
          ],
        );
      },
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => const CircularProgressIndicator(),
    ));
  }
}
