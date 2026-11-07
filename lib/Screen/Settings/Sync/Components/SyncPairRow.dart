import 'package:flutter/material.dart';

import '../../../../Core/Services/Model/Date.dart';
import '../Data/SyncModels.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Nav/DpadNav.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/ThemedContainer.dart';

class SyncPairRow extends StatelessWidget {
  final SyncPair pair;
  final String Function(String?) statusLabel;
  final VoidCallback? onTap;
  final String? from;

  const SyncPairRow({
    super.key,
    required this.pair,
    required this.statusLabel,
    this.onTap,
    this.from,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final target = pair.target;
    final ghost = target == null;
    final state = pair.op == SyncOpState.failed
        ? SyncStatus.outdated
        : pair.state;
    final skipped = pair.op == SyncOpState.skipped;
    final accent = switch (pair.op == SyncOpState.failed ? null : state) {
      _ when skipped => scheme.outline,
      SyncStatus.synced => scheme.primary,
      SyncStatus.outdated => scheme.tertiary,
      SyncStatus.missing => scheme.secondary,
      SyncStatus.unmapped => scheme.outline,
      null => scheme.error,
    };
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: Dimens.gapSm),
      child: DpadTap(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: ThemedContainer(
          blur: false,
          borderRadius: BorderRadius.circular(20),
          padding: EdgeInsets.zero,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                PositionedDirectional(
                  start: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(width: 4, color: accent),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(14, 8, 10, 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: _Side(
                          item: pair.main,
                          statusLabel: statusLabel,
                          diffs: pair.diffs,
                          tag: from == null
                              ? null
                              : getString.syncAheadFrom(from!),
                        ),
                      ),
                      SizedBox(
                        width: 34,
                        child: Icon(
                          skipped
                              ? Icons.block_rounded
                              : pair.op == SyncOpState.done
                              ? Icons.check_circle_rounded
                              : pair.op == SyncOpState.failed
                              ? Icons.error_rounded
                              : pair.state == SyncStatus.missing
                              ? Icons.add_circle_outline_rounded
                              : Icons.arrow_forward_rounded,
                          size: 20,
                          color: accent,
                        ),
                      ),
                      Expanded(
                        child: pair.state == SyncStatus.unmapped
                            ? _Note(
                                label: pair.error == syncSharedEntry
                                    ? getString.syncShared
                                    : getString.syncStateUnmapped,
                              )
                            : _Side(
                                item: target ?? pair.main,
                                statusLabel: statusLabel,
                                ghost: ghost,
                                diffs: pair.diffs,
                                note: pair.op == SyncOpState.failed
                                    ? pair.error
                                    : null,
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Note extends StatelessWidget {
  final String label;

  const _Note({required this.label});

  @override
  Widget build(BuildContext context) => Center(
    child: Text(
      label,
      style: context.textTheme.labelMedium?.copyWith(
        color: context.colorScheme.onSurfaceVariant,
      ),
    ),
  );
}

class _Side extends StatelessWidget {
  final SyncItem item;
  final String Function(String?) statusLabel;
  final bool ghost;
  final List<String> diffs;
  final String? note;
  final String? tag;

  const _Side({
    required this.item,
    required this.statusLabel,
    this.ghost = false,
    this.diffs = const [],
    this.note,
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final changed = diffs.isNotEmpty && !ghost;
    TextStyle? mark(String key) => text.labelSmall?.copyWith(
      color: changed && diffs.contains(key)
          ? scheme.tertiary
          : scheme.onSurfaceVariant,
      fontWeight: changed && diffs.contains(key) ? FontWeight.w700 : null,
    );
    final total = item.total;
    return Opacity(
      opacity: ghost ? 0.45 : 1,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: 40,
              height: 58,
              child: ColoredBox(
                color: scheme.surfaceContainerHighest,
                child: cachedNetworkImage(
                  imageUrl: item.cover,
                  fit: BoxFit.cover,
                  width: 40,
                  height: 58,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: text.labelLarge?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 2),
                if (ghost)
                  Text(
                    getString.syncNotInList,
                    style: text.labelSmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  )
                else ...[
                  Text(
                    tag == null
                        ? statusLabel(item.status)
                        : '${statusLabel(item.status)} · $tag',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: mark('status'),
                  ),
                  Text(
                    '${item.progress}${total == null || total == 0 ? '' : '/$total'}'
                    '${item.score > 0 ? ' · ${(item.score / 10).round()}' : ''}',
                    style: mark('progress'),
                  ),
                  if (item.repeat > 0 || item.started?.year != null)
                    Text(
                      [
                        if (item.repeat > 0) '↻${item.repeat}',
                        if (item.started?.year != null) _date(item.started!),
                        if (item.completed?.year != null)
                          '→ ${_date(item.completed!)}',
                      ].join('  '),
                      style: mark(
                        diffs.contains('repeat') ? 'repeat' : 'dates',
                      ),
                    ),
                ],
                if (note != null)
                  Text(
                    note!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: text.labelSmall?.copyWith(color: scheme.error),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String _date(Date d) =>
    '${d.year}${d.month == null ? '' : '-${d.month.toString().padLeft(2, '0')}'}'
    '${d.day == null ? '' : '-${d.day.toString().padLeft(2, '0')}'}';
