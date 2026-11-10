import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Api/Services/Extension/LocalSource.dart';
import '../../Core/Downloads/DownloadScanner.dart';
import '../../Core/Local/LocalLibrary.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AppSheet.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/SheetTile.dart';
import '../Detail/Watch/Data/EpisodeUnits.dart';
import '../Detail/Watch/Data/Media/MediaRecord.dart';
import '../Player/Engine/PlayRequest.dart';
import '../Player/PlayerLauncher.dart';
import '../Reader/Engine/ReaderRequest.dart';
import '../Reader/ReaderLauncher.dart';

ItemType? localTypeOf(MediaType? type) => type == null
    ? null
    : type == MediaType.novel
    ? ItemType.novel
    : type.isVideo
    ? ItemType.anime
    : ItemType.manga;

Future<void> openLocalTitle(BuildContext context, LocalTitle title) async {
  final picked = await showCustomBottomDialog<int>(
    context,
    AppSheet(
      title: title.name,
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        itemCount: title.units.length,
        itemBuilder: (sheet, i) => SheetTile(
          tinted: true,
          radius: groupedRadius(i, title.units.length),
          title: Text(title.units[i].name),
          subtitle: title.units[i].group == null
              ? null
              : Text(title.units[i].group!),
          onTap: () => popPage(sheet, i),
        ),
      ),
    ),
  );
  if (picked == null || !context.mounted) return;
  if (title.type == ItemType.anime) {
    await _play(context, title, picked);
  } else {
    await _read(context, title, picked);
  }
}

Future<void> _play(BuildContext context, LocalTitle title, int index) async {
  try {
    final items = <PlayItem>[];
    for (final unit in title.units.skip(index)) {
      final video = await LocalSource.videoAt(unit.path, unit.name);
      items.add(
        PlayItem(
          key: unit.path,
          title: unit.name,
          subtitle: title.name,
          number: unit.number,
          fixed: [video],
        ),
      );
    }
    if (!context.mounted) return;
    await openPlayer(PlayRequest(items: items), context: context);
  } catch (e) {
    snackString('$e');
  }
}

Future<void> _read(BuildContext context, LocalTitle title, int index) async {
  final services = find<MediaServiceController>().services;
  if (services.isEmpty) return snackString(getString.readerNoText);
  final service = services.first;
  final novel = title.type == ItemType.novel;
  final media = Media(
    id: '$localServiceId/${title.name}',
    name: title.name,
    nameRomaji: title.name,
    userPreferredName: title.name,
    format: novel ? 'NOVEL' : 'MANGA',
    shareLink: title.path,
    cover: title.cover,
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
      source: LocalSource(title.type),
      units: [
        for (final u in title.units)
          WatchUnit(
            raw: DEpisode(
              episodeNumber: '${u.number}',
              name: u.name,
              url: u.path,
            ),
            number: u.number % 1 == 0 ? '${u.number.toInt()}' : '${u.number}',
            key: u.number % 1 == 0 ? '${u.number.toInt()}' : '${u.number}',
            value: u.number,
            title: u.name,
          ),
      ],
      index: index,
    ),
    context: context,
  );
}
