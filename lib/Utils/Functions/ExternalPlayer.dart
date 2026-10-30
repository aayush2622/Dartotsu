import 'dart:io';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Logger.dart';
import '../../Widgets/Components/ChoiceSheet.dart';
import 'CopyToClip.dart';
import 'SnackBar.dart';

const _channel = MethodChannel('dartotsu/external');

enum _External { copy, chooser, vlc, mpv }

Future<bool> _has(String name) async {
  try {
    final result = await Process.run(Platform.isWindows ? 'where' : 'which', [
      name,
    ]);
    return result.exitCode == 0;
  } catch (_) {
    return false;
  }
}

Future<String?> _find(String name, List<String> extra) async {
  if (await _has(name)) return name;
  for (final path in extra) {
    if (await File(path).exists()) return path;
  }
  return null;
}

Future<String?> _vlcPath() => _find('vlc', const [
  r'C:\Program Files\VideoLAN\VLC\vlc.exe',
  r'C:\Program Files (x86)\VideoLAN\VLC\vlc.exe',
  '/Applications/VLC.app/Contents/MacOS/VLC',
  '/usr/bin/vlc',
]);

Future<String?> _mpvPath() => _find('mpv', const [
  r'C:\Program Files\mpv\mpv.exe',
  '/opt/homebrew/bin/mpv',
  '/usr/local/bin/mpv',
  '/usr/bin/mpv',
]);

String? _header(Map<String, String>? headers, String name) {
  if (headers == null) return null;
  for (final e in headers.entries) {
    if (e.key.toLowerCase() == name) return e.value;
  }
  return null;
}

Future<bool> _launch(String exe, List<String> args) async {
  try {
    await Process.start(exe, args, mode: ProcessStartMode.detached);
    return true;
  } catch (e) {
    logger('External player failed: $e', logLevel: LogLevel.error);
    return false;
  }
}

Future<bool> _openMpv(v.Video video) async {
  final exe = await _mpvPath();
  if (exe == null) return false;
  return _launch(exe, [
    for (final e in (video.headers ?? const <String, String>{}).entries)
      '--http-header-fields-append=${e.key}: ${e.value}',
    if (video.title != null && video.title!.isNotEmpty)
      '--force-media-title=${video.title}',
    video.url,
  ]);
}

Future<bool> _openVlc(v.Video video) async {
  if (Platform.isIOS) {
    final uri = Uri.parse(
      'vlc-x-callback://x-callback-url/stream?url=${Uri.encodeComponent(video.url)}',
    );
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }
  final exe = await _vlcPath();
  if (exe == null) return false;
  final agent = _header(video.headers, 'user-agent');
  final referer = _header(video.headers, 'referer');
  return _launch(exe, [
    if (agent != null) '--http-user-agent=$agent',
    if (referer != null) '--http-referrer=$referer',
    video.url,
  ]);
}

Future<bool> _openChooser(v.Video video) async {
  try {
    final ok = await _channel.invokeMethod<bool>('openVideo', {
      'url': video.url,
      'title': video.title ?? '',
      'headers': video.headers ?? const <String, String>{},
    });
    return ok ?? false;
  } catch (e) {
    logger('External chooser failed: $e', logLevel: LogLevel.error);
    return false;
  }
}

Future<void> showExternalPlayerSheet(
  BuildContext context,
  v.Video video,
) async {
  final desktop = Platform.isLinux || Platform.isWindows || Platform.isMacOS;
  final choice = await showChoiceSheet<_External>(
    context,
    title: getString.externalPlayerTitle,
    selected: _External.copy,
    options: [
      ChoiceOption(
        _External.copy,
        getString.externalCopyUrl,
        icon: Icons.copy_rounded,
      ),
      if (Platform.isAndroid)
        ChoiceOption(
          _External.chooser,
          getString.externalChooser,
          icon: Icons.open_in_new_rounded,
        ),
      if (desktop || Platform.isIOS)
        ChoiceOption(
          _External.vlc,
          getString.externalVlc,
          icon: Icons.play_circle_outline_rounded,
        ),
      if (desktop)
        ChoiceOption(
          _External.mpv,
          getString.externalMpv,
          icon: Icons.play_circle_outline_rounded,
        ),
    ],
  );
  if (choice == null) return;
  final ok = switch (choice) {
    _External.copy => () {
      copyToClipboard(video.url, message: getString.externalCopied);
      return true;
    }(),
    _External.chooser => await _openChooser(video),
    _External.vlc => await _openVlc(video),
    _External.mpv => await _openMpv(video),
  };
  if (!ok) snackString(getString.externalFailed);
}
