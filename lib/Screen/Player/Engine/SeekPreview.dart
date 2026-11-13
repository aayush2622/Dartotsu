import 'package:dartotsu_extension_bridge/player.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../../../Core/Preferences/StorageManager.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import 'PlayerEngine.dart';

class SeekPreview {
  static const _window = 30.0;
  static const _margin = 4.0;

  final Player Function() _main;
  final String? Function() _target;
  final Map<String, String> Function() _headers;

  SeekPreview(this._main, this._target, this._headers);

  final covered = false.live;

  Player? _player;
  VideoController? _controller;
  Directory? _dir;
  File? _file;
  double _from = 0;
  double _to = 0;
  bool _local = false;
  String? _opened;
  double _base = 0;
  bool _busy = false;
  bool _disposed = false;
  int _serial = 0;
  Timer? _timer;
  Duration? _pending;

  VideoController? get controller => _controller;

  static Future<Directory?> _root() =>
      StorageManager.getDirectory(subPath: 'cache/mpv-preview');

  static Future<void> sweep() async {
    try {
      final root = await _root();
      if (root == null || !await root.exists()) return;
      await for (final entry in root.list()) {
        try {
          await entry.delete(recursive: true);
        } catch (_) {}
      }
    } catch (e, st) {
      logError('SeekPreview', e, st, 'sweep failed');
    }
  }

  Future<List<(double, double)>> _ranges(NativePlayer native) async {
    final raw = await native.getProperty('demuxer-cache-state');
    final json = jsonDecode(raw);
    if (json is! Map) return const [];
    final list = json['seekable-ranges'];
    if (list is! List) return const [];
    return [
      for (final r in list)
        if (r is Map && r['start'] is num && r['end'] is num)
          ((r['start'] as num).toDouble(), (r['end'] as num).toDouble()),
    ];
  }

  Future<void> _ensurePlayer() async {
    if (_player != null) return;
    final player = Player(
      configuration: const PlayerConfiguration(
        logLevel: MPVLogLevel.error,
        bufferSize: 8 * 1024 * 1024,
        libass: false,
      ),
    );
    _player = player;
    _controller = PlayerEngine.previewController(player);
    final native = player.platform;
    if (native is! NativePlayer) return;
    const props = {
      'aid': 'no',
      'sid': 'no',
      'ao': 'null',
      'volume': '0',
      'hr-seek': 'no',
      'hwdec': 'no',
      'vd-lavc-skiploopfilter': 'all',
      'vd-lavc-fast': 'yes',
      'vd-lavc-threads': '2',
      'keep-open': 'yes',
      'ytdl': 'no',
      'cache': 'yes',
      'cache-pause': 'no',
      'demuxer-readahead-secs': '0',
      'hls-bitrate': 'min',
      'network-timeout': '15',
    };
    for (final e in props.entries) {
      try {
        await native.setProperty(e.key, e.value);
      } catch (err, st) {
        logError('SeekPreview', err, st, 'mpv ${e.key} failed');
      }
    }
  }

  bool _isLocal(String target) {
    final uri = Uri.tryParse(target);
    return uri == null || !uri.hasScheme || uri.scheme == 'file';
  }

  void seek(Duration position) {
    _pending = position;
    if (_timer?.isActive ?? false) return;
    _timer = Timer(const Duration(milliseconds: 90), _run);
  }

  void stop() {
    _pending = null;
    _timer?.cancel();
    covered.value = false;
  }

  Future<void> _run() async {
    if (_busy || _disposed) return;
    _busy = true;
    try {
      while (!_disposed) {
        final to = _pending;
        if (to == null) break;
        _pending = null;
        await _show(to.inMilliseconds / 1000);
      }
    } catch (e, st) {
      logError('SeekPreview', e, st, 'preview failed');
      covered.value = false;
    } finally {
      _busy = false;
    }
  }

  Future<void> _show(double at) async {
    final target = _target();
    if (target == null) {
      covered.value = false;
      return;
    }
    await _ensurePlayer();
    final player = _player;
    if (player == null || _disposed) return;
    if (_isLocal(target)) {
      _local = true;
      final path = target.startsWith('file:')
          ? Uri.parse(target).toFilePath()
          : target;
      await _open(player, path, Media(path));
      _base = 0;
      await player.seek(Duration(milliseconds: (at * 1000).round()));
      covered.value = true;
      return;
    }
    _local = false;
    final inWindow =
        _file != null &&
        _opened == _file!.path &&
        at >= _from + _margin &&
        at <= _to - _margin;
    if (inWindow || await _dump(player, at)) {
      _base = _from;
    } else {
      await _openRemote(player, target);
      _base = 0;
    }
    await player.seek(Duration(milliseconds: ((at - _base) * 1000).round()));
    covered.value = true;
  }

  Future<void> _open(Player player, String key, Media media) async {
    if (_opened == key) return;
    await player.open(media, play: false);
    _opened = key;
  }

  Future<void> _openRemote(Player player, String target) async {
    if (_opened == target) return;
    final headers = _headers();
    final agent = headers.entries
        .where((e) => e.key.toLowerCase() == 'user-agent')
        .firstOrNull
        ?.value;
    final native = player.platform;
    if (native is NativePlayer && agent != null) {
      await native.setProperty('user-agent', agent);
    }
    await _open(
      player,
      target,
      Media(
        target,
        httpHeaders: {
          for (final e in headers.entries)
            if (e.key.toLowerCase() != 'user-agent') e.key: e.value,
        },
      ),
    );
  }

  Future<bool> _dump(Player preview, double at) async {
    final main = _main().platform;
    if (main is! NativePlayer) return false;
    final ranges = await _ranges(main);
    final range = ranges
        .where((r) => at >= r.$1 && at <= r.$2)
        .cast<(double, double)?>()
        .firstOrNull;
    if (range == null) return false;
    final root = _dir ??= await _root();
    if (root == null) return false;
    await root.create(recursive: true);
    final from = at - _window > range.$1 ? at - _window : range.$1;
    final to = at + _window < range.$2 ? at + _window : range.$2;
    if (to - from < 2) return false;
    final file = File('${root.path}/preview-${++_serial}.mkv');
    await main.command([
      'dump-cache',
      from.toStringAsFixed(3),
      to.toStringAsFixed(3),
      file.path,
    ]);
    if (_disposed || !await file.exists()) return false;
    await preview.open(Media(file.path), play: false);
    _opened = file.path;
    final old = _file;
    _file = file;
    _from = from;
    _to = to;
    if (old != null && old.path != file.path) {
      unawaited(_delete(old));
    }
    return true;
  }

  Future<void> _delete(File file) async {
    try {
      if (await file.exists()) await file.delete();
    } catch (_) {}
  }

  Future<void> dispose() async {
    _disposed = true;
    _timer?.cancel();
    final player = _player;
    final file = _file;
    _player = null;
    _controller = null;
    _file = null;
    try {
      await player?.dispose();
    } catch (e, st) {
      logError('SeekPreview', e, st, 'dispose failed');
    }
    if (file != null && !_local) await _delete(file);
    await sweep();
  }
}
