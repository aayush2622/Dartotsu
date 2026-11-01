import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import 'package:dartotsu_extension_bridge/downloads.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/SheetTile.dart';

const torrentFileAuto = -1;

class TorrentFileSheet extends StatefulWidget {
  final TorrServerAddon addon;
  final String url;
  final String title;

  const TorrentFileSheet({
    super.key,
    required this.addon,
    required this.url,
    required this.title,
  });

  @override
  State<TorrentFileSheet> createState() => _TorrentFileSheetState();
}

class _TorrentFileSheetState extends State<TorrentFileSheet> {
  final _files = Live<List<TorrentFileStat>?>(null);
  final _error = Live<String?>(null);
  String? _hash;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    final hash = _hash;
    if (hash != null) unawaited(widget.addon.release(hash));
    super.dispose();
  }

  Future<void> _load() async {
    _files.value = null;
    _error.value = null;
    try {
      final info = await widget.addon.addForDownload(
        url: widget.url,
        title: widget.title,
      );
      if (!mounted) {
        unawaited(widget.addon.release(info.hash));
        return;
      }
      _hash = info.hash;
      final videos = [
        for (final f in info.fileStats)
          if (videoExtensions.contains(extensionOf(f.path, fallback: ''))) f,
      ]..sort((a, b) => a.path.compareTo(b.path));
      if (videos.length < 2) {
        popPage(context, torrentFileAuto);
        return;
      }
      _files.value = videos;
    } catch (e, st) {
      logger(
        'Torrent files failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'DOWNLOAD',
      );
      if (mounted) _error.value = '$e';
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Watch(() {
      final many = (_files.value?.length ?? 0) > 12;
      return AppSheet(
        title: getString.downloadTorrentFile,
        heightFactor: many ? 0.8 : null,
        child: _body(context, scheme, many),
      );
    });
  }

  Widget _body(BuildContext context, ColorScheme scheme, bool many) {
    return Watch(() {
      final files = _files.value;
      final error = _error.value;
      if (error != null) {
        return SizedBox(
          height: 300,
          child: EmptyState(
            icon: Icons.cloud_off_rounded,
            failed: true,
            title: getString.downloadTorrentNoFile,
            message: error,
            actionLabel: getString.retry,
            onAction: _load,
          ),
        );
      }
      if (files == null) {
        return Padding(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapSm,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const LinearProgressIndicator(),
              SizedBox(height: Dimens.gap),
              Text(
                getString.downloadTorrentLoading,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        );
      }
      return ListView.builder(
        shrinkWrap: !many,
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          0,
          Dimens.pagePad,
          Dimens.gapLg,
        ),
        itemCount: files.length + 1,
        itemBuilder: (_, i) {
          if (i == 0) {
            return SheetTile(
              tinted: true,
              radius: const BorderRadius.vertical(
                top: Radius.circular(20),
                bottom: Radius.circular(6),
              ),
              leading: const Icon(Icons.auto_awesome_rounded),
              title: Text(getString.downloadTorrentAuto),
              onTap: () => popPage(context, torrentFileAuto),
            );
          }
          final file = files[i - 1];
          return SheetTile(
            tinted: true,
            radius: BorderRadius.vertical(
              top: const Radius.circular(6),
              bottom: Radius.circular(i == files.length ? 20 : 6),
            ),
            leading: const Icon(Icons.movie_outlined),
            title: Text(
              p.basename(file.path),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(formatBytes(file.length)),
            onTap: () => popPage(context, file.id),
          );
        },
      );
    });
  }
}
