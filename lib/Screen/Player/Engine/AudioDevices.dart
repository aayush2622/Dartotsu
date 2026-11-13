import 'package:dartotsu_extension_bridge/player.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    show Mpv;

import 'dart:convert';

import '../../../Logger.dart';
import 'PlayerSupport.dart';

class AudioDevice {
  final String name;
  final String description;

  const AudioDevice(this.name, this.description);

  String get driver => name.contains('/') ? name.split('/').first : name;
}

Future<List<AudioDevice>> listAudioDevices() async {
  if (!PlayerSupport.available || !await Mpv.ensureIfInstalled()) {
    return const [];
  }
  final player = Player(
    configuration: const PlayerConfiguration(
      logLevel: MPVLogLevel.error,
      libass: false,
    ),
  );
  try {
    final native = player.platform as NativePlayer;
    final raw = await native.getProperty('audio-device-list');
    final list = jsonDecode(raw) as List;
    final devices = [
      for (final d in list)
        if (d is Map && d['name'] != null)
          AudioDevice('${d['name']}', '${d['description'] ?? d['name']}'),
    ];
    logger(
      'Audio devices: ${devices.length}',
      logLevel: LogLevel.debug,
      tag: 'PLAYER',
    );
    return devices;
  } catch (e, st) {
    logError('AudioDevices', e, st, 'listing failed');
    return const [];
  } finally {
    await player.dispose();
  }
}

List<String> audioDrivers(List<AudioDevice> devices) {
  final seen = <String>{};
  for (final d in devices) {
    if (d.name != 'auto') seen.add(d.driver);
  }
  return ['auto', ...seen];
}
