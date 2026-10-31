import '../../../Core/Downloads/Archives.dart';
import '../../../Core/Downloads/DownloadEngine.dart';
import '../../../Core/Downloads/DownloadPaths.dart';
import '../../../Core/Downloads/PdfPages.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../Engine/ReaderRequest.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../Detail/Watch/Components/UnitTile.dart';

class ReaderLoadSheet extends StatefulWidget {
  final ReaderRequest request;

  const ReaderLoadSheet({super.key, required this.request});

  @override
  State<ReaderLoadSheet> createState() => _ReaderLoadSheetState();
}

class _ReaderLoadSheetState extends State<ReaderLoadSheet> {
  final _error = Live<String?>(null);

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    _error.value = null;
    final request = widget.request;
    try {
      final unit = request.units[request.index];
      final file = request.file;
      final local = file != null && isPdfFile(file)
          ? [
              for (final f in await renderPdf(file, archiveCache(file)))
                PageUrl(f),
            ]
          : request.online
          ? null
          : await find<DownloadEngine>().localPages(
              request.service.id,
              request.media.id,
              unit.key,
            );
      final source = request.source;
      if (local == null && source == null) {
        throw StateError(getString.downloadSourceMissing);
      }
      final pages = local ?? await source!.methods.getPageList(unit.raw);
      if (!mounted) return;
      if (pages.isEmpty) {
        _error.value = getString.readerNoPages;
        return;
      }
      popPage<List<PageUrl>>(context, pages);
    } catch (e, st) {
      logger(
        'Reader pages failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'READER',
      );
      if (mounted) _error.value = e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = widget.request;
    return AppSheet(
      title: unitLabel(request.units[request.index], false),
      child: Watch(() {
        final error = _error.value;
        if (error != null) {
          return SizedBox(
            height: 300,
            child: EmptyState(
              icon: Icons.cloud_off_rounded,
              failed: true,
              title: getString.readerFailed,
              message: error,
              actionLabel: getString.retry,
              onAction: _load,
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const LinearProgressIndicator(),
              const SizedBox(height: 16),
              Text(
                getString.readerLoadingPages,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
