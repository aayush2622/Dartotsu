import 'dart:io';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/State/State.dart';
import 'ColorPresets.dart';

const _globalKey = 'playerSettings';

class PlayerSettings {
  final Map<String, Object?> _v;

  PlayerSettings([Map<String, Object?>? values]) : _v = {...?values};

  Map<String, Object?> toJson() => {..._v};

  PlayerSettings copy() => PlayerSettings(_v);

  PlayerSettings merged(Map<String, Object?> overrides) =>
      PlayerSettings({..._v, ...overrides});

  Map<String, Object?> diff(PlayerSettings base) => {
    for (final e in _v.entries)
      if (base._v[e.key] != e.value) e.key: e.value,
  };

  T _get<T>(String key, T fallback) {
    final value = _v[key];
    if (value is T) return value;
    if (fallback is double && value is num) return value.toDouble() as T;
    if (fallback is int && value is num) return value.toInt() as T;
    return fallback;
  }

  double get speed => _get('speed', 1.0);
  set speed(double v) => _v['speed'] = v;
  bool get cursedSpeed => _get('cursedSpeed', false);
  set cursedSpeed(bool v) => _v['cursedSpeed'] = v;
  int get resizeMode => _get('resizeMode', 0);
  set resizeMode(int v) => _v['resizeMode'] = v;
  int get skipDuration => _get('skipDuration', 85);
  set skipDuration(int v) => _v['skipDuration'] = v;
  int get seekDuration => _get('seekDuration', 10);
  set seekDuration(int v) => _v['seekDuration'] = v;
  double get holdSpeed => _get('holdSpeed', 2.0);
  set holdSpeed(double v) => _v['holdSpeed'] = v;
  bool get autoPlay => _get('autoPlay', true);
  set autoPlay(bool v) => _v['autoPlay'] = v;
  bool get resume => _get('resume', true);
  set resume(bool v) => _v['resume'] = v;
  bool get autoPip => _get('autoPip', true);
  set autoPip(bool v) => _v['autoPip'] = v;
  int get autoPlayDelay => _get('autoPlayDelay', 5);
  set autoPlayDelay(int v) => _v['autoPlayDelay'] = v;
  int get watchedAt => _get('watchedAt', 80);
  set watchedAt(int v) => _v['watchedAt'] = v;
  bool get autoSkipOpening => _get('autoSkipOpening', false);
  set autoSkipOpening(bool v) => _v['autoSkipOpening'] = v;
  bool get autoSkipEnding => _get('autoSkipEnding', false);
  set autoSkipEnding(bool v) => _v['autoSkipEnding'] = v;
  bool get autoSkipRecap => _get('autoSkipRecap', false);
  set autoSkipRecap(bool v) => _v['autoSkipRecap'] = v;
  bool get skipOnce => _get('skipOnce', true);
  set skipOnce(bool v) => _v['skipOnce'] = v;
  bool get adjustBrightness => _get('adjustBrightness', true);
  set adjustBrightness(bool v) => _v['adjustBrightness'] = v;
  bool get adjustVolume => _get('adjustVolume', true);
  set adjustVolume(bool v) => _v['adjustVolume'] = v;
  bool get holdToSpeed => _get('holdToSpeed', true);
  set holdToSpeed(bool v) => _v['holdToSpeed'] = v;
  bool get thumbLessSeekBar => _get('thumbLessSeekBar', false);
  set thumbLessSeekBar(bool v) => _v['thumbLessSeekBar'] = v;
  bool get seekPreview => _get('seekPreview', true);
  set seekPreview(bool v) => _v['seekPreview'] = v;
  String get orientation => _get('orientation', 'landscape');
  set orientation(String v) => _v['orientation'] = v;

  bool get showSubtitle => _get('showSubtitle', true);
  set showSubtitle(bool v) => _v['showSubtitle'] = v;
  String get subtitleLanguage => _get('subtitleLanguage', 'English');
  set subtitleLanguage(String v) => _v['subtitleLanguage'] = v;
  String get audioLanguage => _get('audioLanguage', '');
  set audioLanguage(String v) => _v['audioLanguage'] = v;
  int get subtitleSize => _get('subtitleSize', 32);
  set subtitleSize(int v) => _v['subtitleSize'] = v;
  int get subtitleColor => _get('subtitleColor', 0xFFFFFFFF);
  set subtitleColor(int v) => _v['subtitleColor'] = v;
  String get subtitleFont => _get('subtitleFont', 'Poppins');
  set subtitleFont(String v) => _v['subtitleFont'] = v;
  int get subtitleBackgroundColor =>
      _get('subtitleBackgroundColor', 0x00000000);
  set subtitleBackgroundColor(int v) => _v['subtitleBackgroundColor'] = v;
  int get subtitleOutlineColor => _get('subtitleOutlineColor', 0xFF000000);
  set subtitleOutlineColor(int v) => _v['subtitleOutlineColor'] = v;
  int get subtitleBottomPadding => _get('subtitleBottomPadding', 0);
  set subtitleBottomPadding(int v) => _v['subtitleBottomPadding'] = v;
  int get subtitleWeight => _get('subtitleWeight', 5);
  set subtitleWeight(int v) => _v['subtitleWeight'] = v;
  bool get useLibass => _get('useLibass', false);
  set useLibass(bool v) => _v['useLibass'] = v;

  String get decoder => _get('decoder', Platform.isLinux ? 'sw' : 'auto');
  set decoder(String v) => _v['decoder'] = v;
  String get videoOutput => _get('videoOutput', 'auto');
  set videoOutput(String v) => _v['videoOutput'] = v;
  String get audioOutput => _get('audioOutput', 'auto');
  set audioOutput(String v) => _v['audioOutput'] = v;
  String get audioDevice => _get('audioDevice', 'auto');
  set audioDevice(String v) => _v['audioDevice'] = v;
  String get audioChannels => _get('audioChannels', 'auto');
  set audioChannels(String v) => _v['audioChannels'] = v;

  ColorValues get color => ColorValues(
    brightness: _get('colorBrightness', 0),
    contrast: _get('colorContrast', 0),
    saturation: _get('colorSaturation', 0),
    gamma: _get('colorGamma', 0),
    hue: _get('colorHue', 0),
  );
  set color(ColorValues v) {
    _v['colorBrightness'] = v.brightness;
    _v['colorContrast'] = v.contrast;
    _v['colorSaturation'] = v.saturation;
    _v['colorGamma'] = v.gamma;
    _v['colorHue'] = v.hue;
  }

  bool get shaders => _get('shaders', false);
  set shaders(bool v) => _v['shaders'] = v;
  String get shaderProfile => _get('shaderProfile', 'MID-END');
  set shaderProfile(String v) => _v['shaderProfile'] = v;
  String get shader => _get('shader', '');
  set shader(String v) => _v['shader'] = v;

  List<String> get customShaders => [
    for (final s in _get<List>('customShaders', const [])) '$s',
  ];
  set customShaders(List<String> v) => _v['customShaders'] = v;

  bool get useMpvConfig => _get('useMpvConfig', true);
  set useMpvConfig(bool v) => _v['useMpvConfig'] = v;
  bool get useScripts => _get('useScripts', true);
  set useScripts(bool v) => _v['useScripts'] = v;
  List<String> get disabledScripts => [
    for (final s in _get<List>('disabledScripts', const [])) '$s',
  ];
  set disabledScripts(List<String> v) => _v['disabledScripts'] = v;

  bool get tuning => _get('tuning', false);
  set tuning(bool v) => _v['tuning'] = v;
  String get videoSync => _get('videoSync', 'audio');
  set videoSync(String v) => _v['videoSync'] = v;
  bool get interpolation => _get('interpolation', false);
  set interpolation(bool v) => _v['interpolation'] = v;
  int get cacheSeconds => _get('cacheSeconds', 300);
  set cacheSeconds(int v) => _v['cacheSeconds'] = v;
  int get readahead => _get('readahead', 30);
  set readahead(int v) => _v['readahead'] = v;
  int get bufferMb => _get('bufferMb', 64);
  set bufferMb(int v) => _v['bufferMb'] = v;
  int get decoderThreads => _get('decoderThreads', 4);
  set decoderThreads(int v) => _v['decoderThreads'] = v;
  bool get pitchCorrection => _get('pitchCorrection', true);
  set pitchCorrection(bool v) => _v['pitchCorrection'] = v;
  bool get deband => _get('deband', false);
  set deband(bool v) => _v['deband'] = v;
  int get debandIterations => _get('debandIterations', 2);
  set debandIterations(int v) => _v['debandIterations'] = v;
  int get debandThreshold => _get('debandThreshold', 64);
  set debandThreshold(int v) => _v['debandThreshold'] = v;
  bool get correctDownscaling => _get('correctDownscaling', true);
  set correctDownscaling(bool v) => _v['correctDownscaling'] = v;
  bool get sigmoidUpscaling => _get('sigmoidUpscaling', true);
  set sigmoidUpscaling(bool v) => _v['sigmoidUpscaling'] = v;
  String get scale => _get('scale', 'spline36');
  set scale(String v) => _v['scale'] = v;
  String get cscale => _get('cscale', 'spline36');
  set cscale(String v) => _v['cscale'] = v;
  String get dscale => _get('dscale', 'mitchell');
  set dscale(String v) => _v['dscale'] = v;
  String get toneMapping => _get('toneMapping', 'auto');
  set toneMapping(String v) => _v['toneMapping'] = v;
  int get targetPeak => _get('targetPeak', 100);
  set targetPeak(int v) => _v['targetPeak'] = v;
}

const playerDecoders = ['auto-safe', 'auto', 'sw', 'hw', 'hw-plus'];
const playerVideoOutputs = ['auto', 'gpu', 'gpu-next'];
const playerOrientations = ['auto', 'landscape', 'portrait'];
const playerSpeeds = [0.25, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0];
const playerCursedSpeeds = [
  0.25,
  0.5,
  0.75,
  1.0,
  1.25,
  1.5,
  1.75,
  2.0,
  2.5,
  3.0,
  4.0,
  5.0,
  8.0,
  10.0,
];

const playerVolumePref = Pref<double>('playerVolume', 1.0, PrefLocation.PLAYER);

class PlayerPrefs {
  PlayerPrefs._();

  static final global = Live<PlayerSettings>(_load());

  static PlayerSettings _load() {
    final raw = PrefManager.getCustomVal<Map>(_globalKey);
    return raw == null
        ? PlayerSettings()
        : PlayerSettings(Map<String, Object?>.from(raw));
  }

  static void update(void Function(PlayerSettings s) change) {
    final next = global.value.copy();
    change(next);
    global.value = next;
    PrefManager.setCustomVal<Map>(_globalKey, next.toJson());
  }

  static void reset() {
    global.value = PlayerSettings();
    PrefManager.removeCustomVal(_globalKey);
  }
}
