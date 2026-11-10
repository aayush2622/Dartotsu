import '../../../../Widgets/Components/ScrollConfig.dart';

import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../Data/SyncController.dart';
import '../Data/SyncModels.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Widgets/Components/SheetTile.dart';
import '../SyncState.dart';

Future<bool?> showSyncPreview(
  BuildContext context,
  List<SyncPreview> previews,
) => showCustomBottomDialog<bool>(context, _Preview(previews: previews));

Future<void> showSyncPair(
  BuildContext context,
  SyncState state,
  MediaService service,
  SyncPair pair,
) => showCustomBottomDialog<void>(
  context,
  _PairSheet(state: state, service: service, pair: pair),
);

class _Preview extends StatelessWidget {
  final List<SyncPreview> previews;

  const _Preview({required this.previews});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final total = previews.fold<int>(0, (n, p) => n + p.total);
    return AppSheet(
      title: getString.syncPreviewTitle,
      child: ScrollConfig(
        context,
        child: ScrollConfig(context, child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (total == 0)
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(getString.syncPreviewNothing),
                ),
              for (final p in previews)
                if (p.total > 0)
                  SheetTile(
                    title: Text(p.service.name),
                    subtitle: Text(
                      [
                        getString.syncPreviewLine(p.updates, p.adds),
                        getString.syncPreviewRequests(p.requests),
                        if (p.lookups > 0)
                          getString.syncPreviewLookups(p.lookups),
                      ].join('  ·  '),
                    ),
                  ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () => popPage(context, false),
                      child: Text(getString.cancel),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: scheme.primary,
                      ),
                      onPressed: total == 0
                          ? null
                          : () => popPage(context, true),
                      child: Text(getString.syncStart),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class _PairSheet extends StatelessWidget {
  final SyncState state;
  final MediaService service;
  final SyncPair pair;

  const _PairSheet({
    required this.state,
    required this.service,
    required this.pair,
  });

  String _label(String key) => switch (key) {
    'status' => getString.syncChangeStatus,
    'progress' => getString.syncChangeProgress,
    'score' => getString.syncChangeScore,
    'dates' => getString.syncChangeDates,
    _ => getString.syncChangeRepeat,
  };

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final diffs = pair.diffs;
    final failed = pair.op == SyncOpState.failed;
    final skipped = pair.op == SyncOpState.skipped;
    return AppSheet(
      title: pair.main.title,
      child: ScrollConfig(
        context,
        child: ScrollConfig(context, child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (failed && pair.error != null)
                SheetTile(
                  leading: Icon(Icons.error_rounded, color: scheme.error),
                  title: Text(getString.syncFailedReason),
                  subtitle: SelectableText(pair.error!),
                ),
              if (skipped)
                SheetTile(
                  leading: const Icon(Icons.block_rounded),
                  title: Text(getString.syncSkippedLabel),
                  subtitle: Text(getString.syncSkippedHint),
                ),
              if (diffs.isNotEmpty)
                SheetTile(
                  leading: Icon(
                    Icons.compare_arrows_rounded,
                    color: scheme.tertiary,
                  ),
                  title: Text(getString.syncChanges),
                  subtitle: Text(diffs.map(_label).join(', ')),
                ),
              if (failed)
                SheetTile(
                  leading: const Icon(Icons.refresh_rounded),
                  title: Text(getString.syncRetry),
                  onTap: () {
                    state.retry(pair);
                    popPage(context);
                  },
                ),
              if (pair.state != SyncStatus.unmapped)
                SheetTile(
                  leading: Icon(
                    skipped ? Icons.undo_rounded : Icons.block_rounded,
                  ),
                  title: Text(
                    skipped ? getString.syncInclude : getString.syncSkip,
                  ),
                  onTap: () {
                    state.skip(service, pair, !skipped);
                    popPage(context);
                  },
                ),
            ],
          ),
        )),
      ),
    );
  }
}
