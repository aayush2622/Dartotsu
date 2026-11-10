import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../../../Logger.dart';

class SpeechVoice {
  final String id;
  final String label;

  const SpeechVoice(this.id, this.label);
}

class NovelSpeech {
  FlutterTts? _tts;
  final _processes = <Process>[];
  bool _stopped = false;

  static bool get supported =>
      !kIsWeb &&
      (Platform.isAndroid ||
          Platform.isIOS ||
          Platform.isMacOS ||
          Platform.isWindows ||
          Platform.isLinux);

  static bool get _useProcess => !kIsWeb && Platform.isLinux;

  Future<FlutterTts> _engine() async {
    final existing = _tts;
    if (existing != null) return existing;
    final tts = FlutterTts();
    await tts.awaitSpeakCompletion(true);
    tts.setErrorHandler((message) {
      logger(
        'Speech failed: $message',
        logLevel: LogLevel.error,
        tag: 'READER',
      );
    });
    return _tts = tts;
  }

  Future<bool> speak(
    String text, {
    required int rate,
    required int pitch,
    String? language,
    String? voice,
    void Function(int start, int end)? onWord,
  }) async {
    _stopped = false;
    try {
      if (_useProcess) {
        await _speakProcess(text, rate, pitch, language, voice);
      } else {
        final tts = await _engine();
        if (voice != null && voice.contains('|')) {
          final at = voice.lastIndexOf('|');
          await tts.setVoice({
            'name': voice.substring(0, at),
            'locale': voice.substring(at + 1),
          });
        } else if (language != null && language.isNotEmpty) {
          await tts.setLanguage(language);
        }
        await tts.setSpeechRate((rate / 200).clamp(0.05, 1.0));
        await tts.setPitch((pitch / 100).clamp(0.5, 2.0));
        final limit = await _inputLimit(tts);
        var offset = 0;
        for (final chunk in _chunks(text, limit)) {
          if (_stopped) break;
          final base = offset;
          tts.setProgressHandler((spoken, start, end, word) {
            if (onWord != null && spoken == chunk) {
              onWord(base + start, base + end);
            }
          });
          if (!await _speakChunk(tts, chunk, rate)) return false;
          offset += chunk.length;
        }
      }
    } catch (e) {
      logger('Speech failed: $e', logLevel: LogLevel.error, tag: 'READER');
      return false;
    }
    return !_stopped;
  }

  Future<bool> _speakChunk(FlutterTts tts, String chunk, int rate) async {
    final budget = Duration(
      milliseconds: 4000 + (chunk.length * 9000 / rate.clamp(50, 400)).round(),
    );
    for (var attempt = 0; attempt < 3; attempt++) {
      final result = await tts
          .speak(chunk)
          .timeout(
            budget,
            onTimeout: () {
              unawaited(tts.stop());
              return 0;
            },
          );
      if (_stopped || result == 1) return true;
      await tts.stop();
      await Future<void>.delayed(const Duration(milliseconds: 150));
      if (_stopped) return true;
    }
    return false;
  }

  static const _fallbackLimit = 3000;

  static Future<int> _inputLimit(FlutterTts tts) async {
    if (kIsWeb || !Platform.isAndroid) return 1 << 30;
    try {
      final max = await tts.getMaxSpeechInputLength;
      if (max != null && max > 200) return (max - 200).clamp(200, 3500);
    } catch (_) {}
    return _fallbackLimit;
  }

  static Iterable<String> _chunks(String text, int limit) sync* {
    var rest = text;
    while (rest.length > limit) {
      var cut = rest.lastIndexOf(RegExp(r'[.!?。！？…]\s'), limit - 1);
      if (cut < limit ~/ 2) cut = rest.lastIndexOf(' ', limit - 1);
      if (cut < limit ~/ 2) cut = limit - 1;
      yield rest.substring(0, cut + 1);
      rest = rest.substring(cut + 1);
    }
    if (rest.isNotEmpty) yield rest;
  }

  static List<File> piperModels() {
    final home = Platform.environment['HOME'];
    final dirs = [
      if (home != null) '$home/.local/share/piper',
      '/usr/share/piper-voices',
    ];
    final out = <File>[];
    for (final d in dirs) {
      final dir = Directory(d);
      if (!dir.existsSync()) continue;
      for (final f in dir.listSync(recursive: true, followLinks: true)) {
        if (f is File && f.path.endsWith('.onnx')) out.add(f);
      }
    }
    out.sort((a, b) => a.path.compareTo(b.path));
    return out;
  }

  static Future<bool> _hasPiper() async {
    try {
      final r = await Process.run('piper', ['--help']);
      return r.exitCode == 0 || r.exitCode == 1 || r.exitCode == 2;
    } catch (_) {
      return false;
    }
  }

  static int _sampleRate(File model) {
    try {
      final json = jsonDecode(File('${model.path}.json').readAsStringSync());
      return (json['audio']['sample_rate'] as num).toInt();
    } catch (_) {
      return 22050;
    }
  }

  Future<bool> _speakPiper(String text, int rate, String voice) async {
    final path = voice.startsWith('piper:') ? voice.substring(6) : null;
    final model = path != null ? File(path) : piperModels().firstOrNull;
    if (model == null || !model.existsSync()) return false;
    if (!await _hasPiper()) return false;
    final piper = await Process.start('piper', [
      '--model',
      model.path,
      '--output-raw',
      '--length_scale',
      (100 / rate).toStringAsFixed(2),
    ]);
    final player = await Process.start('pw-cat', [
      '-p',
      '--raw',
      '--rate',
      '${_sampleRate(model)}',
      '--format',
      's16',
      '--channels',
      '1',
      '-',
    ]);
    _processes
      ..add(piper)
      ..add(player);
    unawaited(piper.stderr.drain<void>());
    unawaited(player.stdout.drain<void>());
    unawaited(player.stderr.drain<void>());
    piper.stdin.write(text);
    unawaited(piper.stdin.close().catchError((_) {}));
    unawaited(piper.stdout.pipe(player.stdin).catchError((_) {}));
    final code = await player.exitCode;
    piper.kill();
    _processes
      ..remove(piper)
      ..remove(player);
    return code == 0 || _stopped;
  }

  Future<void> _speakProcess(
    String text,
    int rate,
    int pitch,
    String? language,
    String? voice,
  ) async {
    final v = voice ?? '';
    if (!v.startsWith('spd:') && await _speakPiper(text, rate, v)) return;
    final name = v.startsWith('spd:') ? v.substring(4) : v;
    final process = await Process.start('spd-say', [
      '--wait',
      '-r',
      '${(rate - 100).clamp(-100, 100)}',
      '-p',
      '${(pitch - 100).clamp(-100, 100)}',
      if (name.isNotEmpty && !name.startsWith('piper:')) ...[
        '-y',
        name,
      ] else if (language != null && language.isNotEmpty) ...[
        '-l',
        language,
      ],
      '--',
      text,
    ]);
    _processes.add(process);
    unawaited(process.stdout.drain<void>());
    unawaited(process.stderr.drain<void>());
    await process.exitCode;
    _processes.remove(process);
  }

  static Future<List<SpeechVoice>> voices() async {
    try {
      if (_useProcess) {
        final out = await Process.run('spd-say', ['-L']);
        final lines = out.stdout.toString().split('\n').skip(1);
        return [
          for (final m in piperModels())
            SpeechVoice(
              'piper:${m.path}',
              'Piper · ${m.uri.pathSegments.last.replaceAll('.onnx', '')}',
            ),
          for (final line in lines)
            if (line.trim().isNotEmpty)
              if (line.trim().split(RegExp(r'\s+')) case final p
                  when p.length >= 2)
                SpeechVoice('spd:${p.first}', '${p.first} (${p[1]})'),
        ];
      }
      final raw = await FlutterTts().getVoices as List?;
      final list = <SpeechVoice>[];
      for (final v in raw ?? const []) {
        if (v is! Map) continue;
        final name = '${v['name']}';
        final locale = '${v['locale']}';
        list.add(SpeechVoice('$name|$locale', '$name ($locale)'));
      }
      list.sort((a, b) => a.label.compareTo(b.label));
      return list;
    } catch (e) {
      logger('Voice list failed: $e', logLevel: LogLevel.error, tag: 'READER');
      return const [];
    }
  }

  Future<void> stop() async {
    _stopped = true;
    if (_processes.isNotEmpty) {
      for (final p in _processes.toList()) {
        p.kill();
      }
      _processes.clear();
      try {
        await Process.run('spd-say', ['-S']);
      } catch (_) {}
    }
    final tts = _tts;
    if (tts != null) {
      try {
        await tts.stop();
      } catch (_) {}
    }
  }

  Future<void> dispose() => stop();
}
