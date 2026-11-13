import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import '../../../Logger.dart';

class HyprlandPip {
  HyprlandPip._();

  static const _margin = 24.0;

  static bool get supported =>
      Platform.isLinux &&
      Platform.environment.containsKey('HYPRLAND_INSTANCE_SIGNATURE');

  static Future<bool> place(String title, Size size) async {
    if (!supported) return false;
    try {
      Map<String, dynamic>? client;
      for (var i = 0; i < 40 && client == null; i++) {
        client = await _client(title);
        if (client == null) {
          await Future<void>.delayed(const Duration(milliseconds: 100));
        }
      }
      if (client == null) return false;
      final address = client['address'] as String;
      final area = await _area(client['monitor'] as int? ?? 0);
      final left = (area.right - size.width - _margin).round();
      final top = (area.bottom - size.height - _margin).round();
      await _dispatch(
        'hl.dsp.window.float({ action = "enable", '
        'window = "address:$address" })',
      );
      await _dispatch(
        'hl.dsp.window.resize({ x = ${size.width.round()}, '
        'y = ${size.height.round()}, relative = false, '
        'window = "address:$address" })',
      );
      await _dispatch(
        'hl.dsp.window.move({ x = $left, y = $top, relative = false, '
        'window = "address:$address" })',
      );
      if (client['pinned'] != true) {
        await _dispatch(
          'hl.dsp.window.pin({ action = "enable", '
          'window = "address:$address" })',
        );
      }
      return true;
    } on Object catch (e, st) {
      logError('PlayerPip', e, st, 'hyprland placement failed');
      return false;
    }
  }

  static Future<Map<String, dynamic>?> _client(String title) async {
    final list = jsonDecode(await _ctl(['clients', '-j'])) as List;
    for (final c in list) {
      if (c is Map<String, dynamic> && c['pid'] == pid && c['title'] == title) {
        return c;
      }
    }
    return null;
  }

  static Future<Rect> _area(int monitor) async {
    final list = jsonDecode(await _ctl(['monitors', '-j'])) as List;
    for (final m in list) {
      if (m is! Map<String, dynamic> || m['id'] != monitor) continue;
      final scale = (m['scale'] as num).toDouble();
      final x = (m['x'] as num).toDouble();
      final y = (m['y'] as num).toDouble();
      final w = (m['width'] as num).toDouble() / scale;
      final h = (m['height'] as num).toDouble() / scale;
      final r = (m['reserved'] as List).cast<num>();
      return Rect.fromLTRB(
        x + r[0].toDouble(),
        y + r[1].toDouble(),
        x + w - r[2].toDouble(),
        y + h - r[3].toDouble(),
      );
    }
    return const Rect.fromLTWH(0, 0, 1920, 1080);
  }

  static Future<void> _dispatch(String expression) async {
    final out = await _ctl(['dispatch', expression]);
    if (!out.trim().startsWith('ok')) {
      logWarn('hyprctl: ${out.trim()}', tag: 'PlayerPip');
    }
  }

  static Future<String> _ctl(List<String> args) async {
    final result = await Process.run('hyprctl', args);
    if (result.exitCode != 0) {
      throw ProcessException(
        'hyprctl',
        args,
        '${result.stderr}',
        result.exitCode,
      );
    }
    return '${result.stdout}';
  }
}
