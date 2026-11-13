import '../../../Logger.dart';

import 'package:dartotsu_extension_bridge/AddonManager.dart';
import 'package:dartotsu_extension_bridge/Engines/TorrentEngine/TorrServerAddon.dart';

import '../../../Core/State/State.dart';

bool isTorrentSource(String url) {
  final lower = url.toLowerCase();
  return lower.startsWith('magnet:') ||
      lower.endsWith('.torrent') ||
      lower.contains('.torrent?');
}

class TorrentUnavailable implements Exception {
  const TorrentUnavailable();

  @override
  String toString() => 'The torrent addon is not installed';
}

TorrServerAddon? _addon() {
  final manager = tryFind<AddonManager>();
  if (manager == null) return null;
  try {
    return manager.get<TorrServerAddon>();
  } catch (e, st) {
    logError('TorrentStream', e, st);
    return null;
  }
}

bool get torrentReady => _addon()?.installed.value ?? false;

Future<String> startTorrentStream(String url, {String? title}) async {
  final addon = _addon();
  if (addon == null || !addon.installed.value) throw const TorrentUnavailable();
  return addon.startStream(url: url, title: title);
}

Future<void> stopTorrentStream() async {
  final addon = _addon();
  if (addon == null || !addon.installed.value) return;
  await addon.stopStream();
}
