import 'dart:io';
import 'dart:typed_data';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../../../Core/Backup/ExternalLists/ExternalList.dart';
import '../../../Core/Backup/ExternalLists/ExternalListService.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';

Future<void> showListImportSheet(
  BuildContext context,
  MediaService service, {
  Source? Function(ExternalItem item, ExternalLists lists)? sourceFor,
}) => showCustomBottomDialog<void>(
  context,
  _ImportSheet(service: service, sourceFor: sourceFor),
);

Future<void> showListExportSheet(BuildContext context, MediaService service) =>
    showCustomBottomDialog<void>(context, _ExportSheet(service: service));

class _ImportSheet extends StatefulWidget {
  final MediaService service;
  final Source? Function(ExternalItem item, ExternalLists lists)? sourceFor;

  const _ImportSheet({required this.service, this.sourceFor});

  @override
  State<_ImportSheet> createState() => _ImportSheetState();
}

class _ImportSheetState extends State<_ImportSheet> {
  ExternalLists? _lists;
  String? _name;
  String? _error;
  bool _busy = false;
  bool _anime = true;
  bool _manga = true;
  bool _merge = true;

  Future<void> _pick() async {
    final picked = await FilePicker.pickFile(
      dialogTitle: 'Choose an Aniyomi, Mihon or Kotatsu backup',
      type: FileType.custom,
      allowedExtensions: const ['tachibk', 'gz', 'zip', 'proto'],
    );
    if (picked == null) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final path = picked.path;
      if (path == null) throw const FormatException('Could not read that file');
      final Uint8List bytes = await File(path).readAsBytes();
      final lists = await parseExternalFile(bytes);
      if (!mounted) return;
      setState(() {
        _lists = lists;
        _name = picked.name;
        _anime = lists.anime.isNotEmpty;
        _manga = lists.manga.isNotEmpty;
      });
    } catch (e) {
      if (mounted) {
        setState(() {
          _lists = null;
          _error = e is FormatException ? e.message : '$e';
        });
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _import() {
    final lists = _lists;
    if (lists == null) return;
    final summary = ExternalListService.import(
      widget.service,
      lists,
      anime: _anime,
      manga: _manga,
      merge: _merge,
      sourceFor: widget.sourceFor,
    );
    snackString(
      'Imported ${summary.anime} anime and ${summary.manga} manga'
      '${summary.skipped > 0 ? ' · ${summary.skipped} already there' : ''}',
    );
    popPage(context);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final lists = _lists;
    return AppSheet(
      title: 'Import lists',
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Bring a library over from Aniyomi, Mihon / Tachiyomi or Kotatsu. '
              'Titles, covers, progress and categories are kept.',
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 14),
            if (_error != null)
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: scheme.errorContainer,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  _error!,
                  style: TextStyle(color: scheme.onErrorContainer),
                ),
              ),
            if (lists == null)
              FilledButton.icon(
                onPressed: _busy ? null : _pick,
                icon: _busy
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.upload_file_rounded),
                label: const Text('Choose backup file'),
              )
            else ...[
              _summary(context, lists),
              const SizedBox(height: 8),
              if (lists.anime.isNotEmpty)
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  title: Text('Import ${lists.anime.length} anime'),
                  value: _anime,
                  onChanged: (v) => setState(() => _anime = v),
                ),
              if (lists.manga.isNotEmpty)
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  title: Text('Import ${lists.manga.length} manga'),
                  value: _manga,
                  onChanged: (v) => setState(() => _manga = v),
                ),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                title: const Text('Merge with existing lists'),
                subtitle: const Text(
                  'Keeps what you already have; off replaces matching titles',
                ),
                value: _merge,
                onChanged: (v) => setState(() => _merge = v),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  TextButton(
                    onPressed: _busy ? null : _pick,
                    child: const Text('Choose another'),
                  ),
                  const Spacer(),
                  FilledButton.icon(
                    onPressed: (_anime || _manga) ? _import : null,
                    icon: const Icon(Icons.download_done_rounded),
                    label: const Text('Import'),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _summary(BuildContext context, ExternalLists lists) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.inventory_2_rounded, color: scheme.primary),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lists.format.label,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      _name ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              if (lists.anime.isNotEmpty)
                Chip(label: Text('${lists.anime.length} anime')),
              if (lists.manga.isNotEmpty)
                Chip(label: Text('${lists.manga.length} manga')),
              for (final c in lists.categories.take(10))
                Chip(
                  label: Text(c),
                  avatar: const Icon(Icons.folder_outlined, size: 16),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ExportSheet extends StatefulWidget {
  final MediaService service;

  const _ExportSheet({required this.service});

  @override
  State<_ExportSheet> createState() => _ExportSheetState();
}

class _ExportSheetState extends State<_ExportSheet> {
  late bool _share = Platform.isAndroid || Platform.isIOS;
  bool _busy = false;

  Future<void> _export(ExternalFormat format) async {
    setState(() => _busy = true);
    try {
      final bytes = ExternalListService.export(widget.service, format);
      if (_share) {
        final dir = await getTemporaryDirectory();
        final file = await ExternalListService.save(dir.path, format, bytes);
        shareFile(file.path, 'Dartotsu library');
      } else {
        final dir = await FilePicker.getDirectoryPath(
          dialogTitle: 'Choose where to save the backup',
        );
        if (dir == null) return;
        final file = await ExternalListService.save(dir, format, bytes);
        snackString('Saved ${file.path}');
      }
    } catch (e) {
      snackString('Export failed: $e');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final media = ExternalListService.localMedia(widget.service);
    final anime = media.where((m) => m.isAnime).length;
    final manga = media.length - anime;
    return AppSheet(
      title: 'Export lists',
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 12),
              child: Text(
                media.isEmpty
                    ? 'Nothing in your local lists yet.'
                    : 'Exports $anime anime and $manga manga from your local '
                          'lists. Kotatsu only supports manga.',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: AppSegmented<bool>(
                value: _share,
                onChanged: (v) => setState(() => _share = v),
                segments: const [
                  AppSegment(false, label: 'Save to folder'),
                  AppSegment(true, label: 'Share'),
                ],
              ),
            ),
            const SizedBox(height: 8),
            for (final (format, note, icon) in const [
              (
                ExternalFormat.aniyomi,
                'Anime and manga · .tachibk',
                Icons.movie_filter_rounded,
              ),
              (
                ExternalFormat.mihon,
                'Manga only · .tachibk',
                Icons.menu_book_rounded,
              ),
              (
                ExternalFormat.kotatsu,
                'Manga only · .zip',
                Icons.auto_stories_rounded,
              ),
            ])
              SheetTile(
                leading: Icon(icon, color: scheme.primary),
                title: Text(format.label),
                subtitle: Text(note),
                trailing: _busy
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.chevron_right_rounded),
                enabled: !_busy && media.isNotEmpty,
                onTap: () => _export(format),
              ),
          ],
        ),
      ),
    );
  }
}
