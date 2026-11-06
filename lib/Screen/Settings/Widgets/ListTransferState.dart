import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;

import '../Backup/ExternalLists/ExternalList.dart';
import '../Backup/ExternalLists/ExternalListService.dart';
import '../../../Core/Preferences/StorageManager.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../Downloads/StorageFolderPrompt.dart';

class ImportListsState extends ScreenState {
  final MediaService service;
  final Source? Function(ExternalItem item, ExternalLists lists)? sourceFor;

  ImportListsState({required this.service, this.sourceFor});

  final lists = Live<ExternalLists?>(null);
  final name = Live<String?>(null);
  final error = Live<String?>(null);
  final busy = false.live;
  final anime = true.live;
  final manga = true.live;
  final merge = true.live;

  Future<void> pick() async {
    final picked = await FilePicker.pickFile(
      dialogTitle: getString.chooseBackupDialog,
      type: FileType.any,
    );
    if (picked == null) return;
    busy.value = true;
    error.value = null;
    try {
      final path = picked.path;
      if (path == null) {
        throw FormatException(getString.couldNotReadFile);
      }
      final Uint8List bytes = await File(path).readAsBytes();
      final parsed = await parseExternalFile(bytes);
      if (!mounted) return;
      lists.value = parsed;
      name.value = picked.name;
      anime.value = parsed.anime.isNotEmpty;
      manga.value = parsed.manga.isNotEmpty;
    } catch (e) {
      if (mounted) {
        lists.value = null;
        error.value = e is FormatException ? e.message : '$e';
      }
    } finally {
      if (mounted) busy.value = false;
    }
  }

  void import() {
    final current = lists.value;
    if (current == null) return;
    final summary = ExternalListService.import(
      service,
      current,
      anime: anime.value,
      manga: manga.value,
      merge: merge.value,
      sourceFor: sourceFor,
    );
    snackString(
      getString.importedSummary(summary.anime, summary.manga) +
          (summary.skipped > 0 ? getString.alreadyThere(summary.skipped) : ''),
    );
    pop();
  }
}

class ExportListsState extends ScreenState {
  final MediaService service;

  ExportListsState(this.service);

  late final share = (Platform.isAndroid || Platform.isIOS).live;
  final busy = false.live;

  Future<void> export(ExternalFormat format) async {
    busy.value = true;
    try {
      final bytes = ExternalListService.export(service, format);
      if (share.value) {
        final dir = await StorageManager.getTmpDirectory();
        final file = await ExternalListService.save(dir!.path, format, bytes);
        shareFile(file.path, 'Dartotsu library');
      } else {
        final dir = await StorageManager.getDirectory(
          subPath: 'exports',
          useCustomPath: true,
          useSystemPath: false,
        );
        if (dir == null) throw StateError('no storage folder');
        final file = await ExternalListService.save(dir.path, format, bytes);
        unawaited(saveToChosenFolder(file.path, base: p.dirname(dir.path)));
        snackString(getString.savedPath(file.path));
      }
    } catch (e) {
      snackString(getString.exportFailed(e.toString()));
    } finally {
      if (mounted) busy.value = false;
    }
  }
}
