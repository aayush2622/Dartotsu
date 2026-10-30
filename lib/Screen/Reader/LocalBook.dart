import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart' as p;

import '../../Core/Downloads/Archives.dart';
import '../../Core/Downloads/DownloadScanner.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Functions/DeepLink.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Detail/Watch/Data/EpisodeUnits.dart';
import '../Detail/Watch/Data/Media/MediaRecord.dart';
import 'Engine/ReaderRequest.dart';
import 'ReaderLauncher.dart';

void installReaderLinks() =>
    DeepLink.readFiles = (paths) => openLocalBooks(paths);

Future<void> openLocalBooks(List<String> paths, {BuildContext? context}) async {
  final books = paths.where((f) => isBookFile(f) || isPdfFile(f)).toList();
  if (books.isEmpty) return;
  await openLocalBook(books.first, context: context);
}

Future<void> pickAndReadBook({BuildContext? context}) async {
  final picked = await FilePicker.pickFiles(
    type: FileType.custom,
    allowedExtensions: [...bookExtensions, ...pdfExtensions],
  );
  final paths = [
    for (final f in picked)
      if (f.path != null) f.path!,
  ];
  if (paths.isEmpty || context?.mounted == false) return;
  await openLocalBooks(paths, context: context);
}

Future<void> openLocalBook(String path, {BuildContext? context}) async {
  final services = find<MediaServiceController>().services;
  if (services.isEmpty) return snackString(getString.readerNoText);
  final service = services.first;
  final title = p.basenameWithoutExtension(path);
  final media = Media(
    id: '$localServiceId/$title',
    name: title,
    nameRomaji: title,
    userPreferredName: title,
    format: isPdfFile(path) ? 'MANGA' : 'NOVEL',
    shareLink: path,
  );
  final record = MediaRecords.of(service, media);
  if (record.saveProgress) {
    record.saveProgress = false;
    MediaRecords.save(service, media);
  }
  await openReader(
    ReaderRequest(
      service: service,
      media: media,
      units: [
        WatchUnit(
          raw: DEpisode(episodeNumber: '1', name: title, url: path),
          number: '1',
          key: '1',
          value: 1,
          title: title,
        ),
      ],
      index: 0,
      file: path,
    ),
    context: context,
  );
}
