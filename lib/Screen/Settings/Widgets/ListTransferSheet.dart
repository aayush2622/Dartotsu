import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import 'package:flutter/material.dart';

import '../Backup/ExternalLists/ExternalList.dart';
import '../Backup/ExternalLists/ExternalListService.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'ListTransferState.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppSpinner.dart';

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

class _ImportSheetState extends State<_ImportSheet>
    with ScreenStateHost<_ImportSheet, ImportListsState> {
  @override
  ImportListsState buildState() =>
      ImportListsState(service: widget.service, sourceFor: widget.sourceFor);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final lists = state.lists.value;
    return AppSheet(
      title: getString.importLists,
      child: SingleChildScrollView(
        padding: Dimens.sheetInsets,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              getString.importListsHint,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 14),
            if (state.error.value != null)
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: scheme.errorContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  state.error.value!,
                  style: TextStyle(color: scheme.onErrorContainer),
                ),
              ),
            if (lists == null)
              FilledButton.icon(
                onPressed: state.busy.value ? null : state.pick,
                icon: state.busy.value
                    ? const AppSpinner(size: 16)
                    : const Icon(Icons.upload_file_rounded),
                label: Text(getString.chooseBackupFile),
              )
            else ...[
              _summary(context, lists),
              const SizedBox(height: 8),
              if (lists.anime.isNotEmpty)
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: Text(getString.importAnimeCount(lists.anime.length)),
                  value: state.anime.value,
                  onChanged: (v) => state.anime.value = v,
                ),
              if (lists.manga.isNotEmpty)
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: Text(getString.importMangaCount(lists.manga.length)),
                  value: state.manga.value,
                  onChanged: (v) => state.manga.value = v,
                ),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                title: Text(getString.mergeWithExisting),
                subtitle: Text(getString.mergeWithExistingDesc),
                value: state.merge.value,
                onChanged: (v) => state.merge.value = v,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  TextButton(
                    onPressed: state.busy.value ? null : state.pick,
                    child: Text(getString.chooseAnother),
                  ),
                  const Spacer(),
                  FilledButton.icon(
                    onPressed: (state.anime.value || state.manga.value)
                        ? state.import
                        : null,
                    icon: const Icon(Icons.download_done_rounded),
                    label: Text(getString.import),
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
        borderRadius: BorderRadius.circular(20),
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
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      state.name.value ?? '',
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
                Chip(label: Text(getString.animeCount(lists.anime.length))),
              if (lists.manga.isNotEmpty)
                Chip(label: Text(getString.mangaCount(lists.manga.length))),
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

class _ExportSheetState extends State<_ExportSheet>
    with ScreenStateHost<_ExportSheet, ExportListsState> {
  @override
  ExportListsState buildState() => ExportListsState(widget.service);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final media = ExternalListService.localMedia(widget.service);
    final anime = media.where((m) => m.isAnime).length;
    final manga = media.length - anime;
    return AppSheet(
      title: getString.exportLists,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 12),
              child: Text(
                media.isEmpty
                    ? getString.nothingInLocalLists
                    : getString.exportsSummary(anime, manga),
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: AppSegmented<bool>(
                value: state.share.value,
                onChanged: (v) => state.share.value = v,
                segments: [
                  AppSegment(false, label: getString.saveToFolder),
                  AppSegment(true, label: getString.share),
                ],
              ),
            ),
            const SizedBox(height: 8),
            for (final (format, note, icon) in [
              (
                ExternalFormat.aniyomi,
                getString.formatAnimeManga,
                Icons.movie_filter_rounded,
              ),
              (
                ExternalFormat.mihon,
                getString.formatMangaTachibk,
                Icons.menu_book_rounded,
              ),
              (
                ExternalFormat.kotatsu,
                getString.formatMangaZip,
                Icons.auto_stories_rounded,
              ),
            ])
              SheetTile(
                leading: Icon(icon, color: scheme.primary),
                title: Text(format.label),
                subtitle: Text(note),
                trailing: state.busy.value
                    ? const AppSpinner()
                    : const Icon(Icons.chevron_right_rounded),
                enabled: !state.busy.value && media.isNotEmpty,
                onTap: () => state.export(format),
              ),
          ],
        ),
      ),
    );
  }
}
