import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Logger.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/CopyToClip.dart';
import '../../Utils/Functions/ImageActions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Functions/SnackBar.dart';
import 'AppSheet.dart';
import 'CachedNetworkImage.dart';
import 'CustomBottomDialog.dart';
import 'SheetTile.dart';
import 'AppSpinner.dart';

void showImageSheet(
  BuildContext context, {
  required String? url,
  required String name,
  String? title,
  Future<File?> Function()? file,
}) {
  final remote = url != null && url.startsWith('http');
  if (file == null && !remote) return;
  final busy = false.live;
  final size = Live<int?>(null);
  unawaited(_measure(url: url, file: file).then((bytes) => size.value = bytes));

  Future<File> source() async {
    if (file != null) {
      final found = await file();
      if (found == null) throw const FileSystemException('Image unavailable');
      return namedImageCopy(found, name: name);
    }
    return downloadImage(url!, name: name);
  }

  Future<void> run(Future<void> Function() job) async {
    if (busy.value) return;
    busy.value = true;
    try {
      await job();
    } catch (e, st) {
      logError('ImageSheet', e, st);
      snackString(getString.imageActionFailed);
    } finally {
      busy.value = false;
    }
  }

  showCustomBottomDialog(
    context,
    Builder(
      builder: (sheet) => AppSheet(
        title: title ?? name,
        trailing: Watch(() {
          final bytes = size.value;
          if (bytes == null || bytes <= 0) return const SizedBox.shrink();
          final scheme = Theme.of(sheet).colorScheme;
          return Padding(
            padding: const EdgeInsetsDirectional.only(end: 12),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: scheme.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                child: Text(
                  formatBytes(bytes),
                  style: Theme.of(sheet).textTheme.labelMedium?.copyWith(
                    color: scheme.onSecondaryContainer,
                  ),
                ),
              ),
            ),
          );
        }),
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 280),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: file != null
                    ? _FileImage(file)
                    : cachedNetworkImage(imageUrl: url!, fit: BoxFit.contain),
              ),
            ),
            const SizedBox(height: 12),
            Watch(
              () => Column(
                children: [
                  SheetTile(
                    tinted: true,
                    radius: groupedRadius(0, remote ? 4 : 2),
                    enabled: !busy.value,
                    leading: busy.value
                        ? const AppSpinner(size: 22)
                        : const Icon(Icons.download_rounded),
                    title: Text(getString.imageSave),
                    onTap: () => unawaited(
                      run(() async {
                        final saved = await saveImageFile(
                          await source(),
                          name: name,
                        );
                        snackString(
                          getString.imageSavedTo(saved),
                          clipboard: saved,
                        );
                        if (sheet.mounted) popPage(sheet);
                      }),
                    ),
                  ),
                  SheetTile(
                    tinted: true,
                    radius: groupedRadius(1, remote ? 4 : 2),
                    enabled: !busy.value,
                    leading: const Icon(Icons.share_rounded),
                    title: Text(getString.share),
                    onTap: () => unawaited(
                      run(() async {
                        final shared = await source();
                        shareFile(shared.path, name);
                      }),
                    ),
                  ),
                  if (remote)
                    SheetTile(
                      tinted: true,
                      radius: groupedRadius(2, 4),
                      leading: const Icon(Icons.link_rounded),
                      title: Text(getString.copyLink),
                      onTap: () {
                        copyToClipboard(url, message: getString.linkCopied);
                        popPage(sheet);
                      },
                    ),
                  if (remote)
                    SheetTile(
                      tinted: true,
                      radius: groupedRadius(3, 4),
                      leading: const Icon(Icons.open_in_browser_rounded),
                      title: Text(getString.openInBrowser),
                      onTap: () {
                        unawaited(openLinkInBrowser(url));
                        popPage(sheet);
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Future<int?> _measure({
  required String? url,
  Future<File?> Function()? file,
}) async {
  try {
    if (file != null) return await (await file())?.length();
    if (url == null) return null;
    final res = await find<NetworkManager>().head(url);
    for (final entry in res.headers.entries) {
      if (entry.key.toLowerCase() != 'content-length') continue;
      return int.tryParse(entry.value.first);
    }
  } catch (_) {}
  return null;
}

class _FileImage extends StatelessWidget {
  final Future<File?> Function() load;

  const _FileImage(this.load);

  @override
  Widget build(BuildContext context) => FutureBuilder<File?>(
    future: load(),
    builder: (context, snap) {
      final found = snap.data;
      if (found == null) {
        return SizedBox(
          height: 160,
          child: Center(
            child: snap.connectionState == ConnectionState.done
                ? const Icon(Icons.broken_image_rounded)
                : const CircularProgressIndicator(strokeWidth: 2),
          ),
        );
      }
      return Image.file(found, fit: BoxFit.contain);
    },
  );
}
