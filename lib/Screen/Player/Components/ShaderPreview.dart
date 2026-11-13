import 'package:dartotsu_extension_bridge/player.dart';

import '../../../Widgets/Components/ScrollConfig.dart';

import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;

import '../Engine/MpvFiles.dart';
import '../Engine/PlayerEngine.dart';
import '../Engine/PlayerSettings.dart';
import '../../../Core/Preferences/StorageManager.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../Engine/ColorPresets.dart';
import '../Engine/ColorShader.dart';
import 'ColorSheet.dart';
import 'ShaderSheet.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/AppControls.dart';

Uint8List _pngToJpeg(Uint8List png) {
  var decoded = img.decodePng(png);
  if (decoded == null) throw StateError('png');
  if (decoded.width >= 640) {
    decoded = img.copyResize(
      decoded,
      width: decoded.width ~/ 2,
      interpolation: img.Interpolation.average,
    );
  }
  return img.encodeJpg(decoded, quality: 92);
}

Future<Uint8List> _stillForMpv(Uint8List frame) async {
  if (!Platform.isAndroid) return frame;
  try {
    return await compute(_pngToJpeg, frame);
  } catch (e) {
    logger('Shader preview JPEG conversion failed: $e', tag: 'MPV');
    return frame;
  }
}

class ShaderPreview extends StatefulWidget {
  final Uint8List frame;
  final PlayerSettings settings;
  final ShaderPick onUse;
  final Future<void> Function(ColorValues values) onColor;
  final VoidCallback? onManage;

  const ShaderPreview({
    super.key,
    required this.frame,
    required this.settings,
    required this.onUse,
    required this.onColor,
    this.onManage,
  });

  @override
  State<ShaderPreview> createState() => _ShaderPreviewState();
}

class _ShaderPreviewState extends State<ShaderPreview> {
  late final Player _player;
  late final VideoController _video;
  final _split = 0.5.live;
  final _problem = Live<String?>(null);
  StreamSubscription<PlayerLog>? _log;
  final _profile = 'MID-END'.live;
  final _chosen = ''.live;
  late final _color = widget.settings.color.live;
  final _ready = false.live;
  final _processed = Live<Uint8List?>(null);
  final _plain = Live<Uint8List?>(null);
  bool _sized = false;
  final _controls = true.live;
  final _adjust = false.live;
  Timer? _colorTimer;
  int _presentSerial = 0;
  File? _file;

  @override
  void initState() {
    super.initState();
    final s = widget.settings;
    _profile.value = shaderProfiles.containsKey(s.shaderProfile)
        ? s.shaderProfile
        : 'MID-END';
    _chosen.value =
        s.shaders && shaderProfiles[_profile.value]!.containsKey(s.shader)
        ? s.shader
        : '';
    _player = Player(
      configuration: const PlayerConfiguration(logLevel: MPVLogLevel.warn),
    );
    _video = PlayerEngine.previewController(_player);
    _log = _player.stream.log.listen((e) {
      final text = e.text.toLowerCase();
      if (e.level == 'error') {
        logger('Shader preview mpv: ${e.prefix} ${e.text.trim()}', tag: 'MPV');
      }
      if ((e.level == 'error' || e.level == 'warn') &&
          (text.contains('shader') ||
              text.contains('glsl') ||
              text.contains('hook'))) {
        _problem.value = e.text.trim();
      }
    });
    unawaited(_start());
  }

  @override
  void dispose() {
    _colorTimer?.cancel();
    _presentSerial++;
    unawaited(_log?.cancel());
    unawaited(_player.dispose());
    final file = _file;
    if (file != null) unawaited(file.delete().catchError((_) => file));
    super.dispose();
  }

  NativePlayer? get _native {
    final platform = _player.platform;
    return platform is NativePlayer ? platform : null;
  }

  Future<void> _start() async {
    try {
      // systemTemp is not a path libmpv can open on Android. Seek preview
      // already plays files from this cache directory. The Android libmpv
      // build also has no PNG decoder, only MJPEG, so the still has to be JPEG.
      final dir =
          await StorageManager.getDirectory(subPath: 'cache/mpv-preview') ??
          Directory.systemTemp;
      final still = await _stillForMpv(widget.frame);
      _plain.value = still;
      final file = File(
        p.join(
          dir.path,
          Platform.isAndroid ? 'shader-preview.jpg' : 'shader-preview.png',
        ),
      );
      await file.writeAsBytes(still, flush: true);
      _file = file;
      final mpv = _native;
      await _prepare(mpv);
      await _apply();
      if (Platform.isAndroid) {
        final shown = Completer<void>();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!shown.isCompleted) shown.complete();
        });
        await shown.future;
      }
      if (!mounted) return;
      await _player.open(Media(file.path), play: true);
      if (!Platform.isAndroid) {
        if (mounted) _ready.value = true;
      } else {
        _schedulePresent();
      }
    } catch (e) {
      logger('Shader preview failed: $e', tag: 'MPV');
    }
  }

  Future<void> _prepare(NativePlayer? mpv) async {
    if (mpv == null) return;
    const props = {
      'image-display-duration': 'inf',
      'keep-open': 'yes',
      'loop-file': 'inf',
      'aid': 'no',
      'sid': 'no',
      'ao': 'null',
      'volume': '0',
    };
    for (final e in props.entries) {
      try {
        await mpv.setProperty(e.key, e.value);
      } catch (err) {
        logger('Shader preview ${e.key} failed: $err', tag: 'MPV');
      }
    }
    // lavfi scale before the Android surface exists drops the only image frame.
    if (!Platform.isAndroid) {
      try {
        await mpv.setProperty('vf', 'scale=w=iw/2:h=ih/2');
      } catch (err) {
        logger('Shader preview vf failed: $err', tag: 'MPV');
      }
    }
  }

  void _schedulePresent() {
    if (!Platform.isAndroid) return;
    final serial = ++_presentSerial;
    unawaited(_presentSoon(serial));
  }

  Future<void> _presentSoon(int serial) async {
    // The surface is replaced once the image size is known, so only the first
    // open needs the second present. A reload of the same still keeps its size
    // and the second pass runs only when the first grab came back blank.
    final resized = _sized;
    await _present(serial);
    var shown = await _grab(serial);
    if (!resized || !shown) {
      await Future<void>.delayed(const Duration(milliseconds: 450));
      if (!mounted || serial != _presentSerial) return;
      await _present(serial);
      shown = await _grab(serial) || shown;
    }
    if (!mounted || serial != _presentSerial) return;
    _sized = _player.state.width != null && _player.state.width! > 1;
    _ready.value = true;
    if (!shown && _processed.value == null) {
      _problem.value = getString.playerShadersPreviewFailed;
    }
  }

  Future<bool> _grab(int serial) async {
    if (!mounted || serial != _presentSerial) return false;
    try {
      final shot = await _player.screenshot(format: 'image/png');
      if (!mounted || serial != _presentSerial) return false;
      if (shot != null && !PlayerEngine.blankPng(shot)) {
        _processed.value = shot;
        _problem.value = null;
        return true;
      }
      logger('Shader preview grab blank: ${shot?.length ?? 0}', tag: 'MPV');
    } catch (e) {
      logger('Shader preview grab failed: $e', tag: 'MPV');
    }
    return false;
  }

  Future<void> _present(int serial) async {
    final mpv = _native;
    if (mpv == null || !mounted || serial != _presentSerial) return;
    try {
      if ((_player.state.width ?? 0) <= 1) {
        await _player.stream.width
            .firstWhere((w) => (w ?? 0) > 1)
            .timeout(const Duration(seconds: 2));
      }
    } catch (_) {}
    if (!mounted || serial != _presentSerial) return;
    try {
      // A still sits at position 0. Android replaces the Surface when the
      // image size arrives and does not redraw, and mpv ignores a seek to
      // the position it is already at. Nudge so the new Surface gets a frame.
      await mpv.command(['seek', '0.001', 'absolute+exact']);
      await mpv.command(['seek', '0', 'absolute+exact']);
      await mpv.setProperty('pause', 'no');
      await Future<void>.delayed(const Duration(milliseconds: 250));
    } catch (e) {
      logger('Shader preview present failed: $e', tag: 'MPV');
    }
  }

  Future<void> _apply() async {
    final mpv = _native;
    if (mpv == null) return;
    final name = _chosen.value;
    final files = name.isEmpty
        ? const <String>[]
        : shaderFilesOf(_profile.value, name, const []);
    final dir = await MpvFiles.shadersDir();
    final paths = shaderPaths(dir.path, files);
    final color = await colorShaderPath(_color.value);
    if (color != null) paths.add(color);
    try {
      await mpv.setProperty('glsl-shaders', joinShaders(paths));
    } catch (e) {
      logger('Shader preview apply failed: $e', tag: 'MPV');
    }
  }

  void _pick(String name) {
    _chosen.value = name;
    unawaited(_reload());
  }

  void _pickColor(ColorValues values) {
    _color.value = values;
    _colorTimer?.cancel();
    _colorTimer = Timer(const Duration(milliseconds: 90), () {
      if (mounted) unawaited(_reload());
    });
  }

  Widget _slider(
    String label,
    int value,
    ColorValues Function(int v) build,
  ) => Row(
    children: [
      SizedBox(
        width: 92,
        child: Text(
          label,
          style: context.textTheme.bodySmall?.copyWith(color: Colors.white70),
        ),
      ),
      Expanded(
        child: Slider(
          value: value.toDouble(),
          min: -100,
          max: 100,
          divisions: 100,
          onChanged: (v) => _pickColor(build(v.round())),
        ),
      ),
      SizedBox(
        width: 34,
        child: Text(
          '$value',
          textAlign: TextAlign.end,
          style: context.textTheme.bodySmall?.copyWith(color: Colors.white70),
        ),
      ),
    ],
  );

  Future<void> _reload() async {
    await _apply();
    final file = _file;
    if (file == null || !mounted) return;
    _problem.value = null;
    await _player.open(Media(file.path), play: true);
    _schedulePresent();
  }

  Future<void> _use() async {
    await widget.onUse(_profile.value, _chosen.value, null);
    await widget.onColor(_color.value);
    if (mounted) popPage(context);
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final profile = _profile.value;
    final chosen = _chosen.value;
    final names = shaderProfiles[profile]!.keys.toList();
    final controls = _controls.value;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          LayoutBuilder(
            builder: (context, box) => GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => _controls.value = !_controls.value,
              onHorizontalDragUpdate: (d) => _split.value =
                  (d.localPosition.dx / box.maxWidth).clamp(0.0, 1.0),
              child: Watch(() {
                final at = _split.value;
                final processed = _processed.value;
                final plain = _plain.value ?? widget.frame;
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Video(
                      controller: _video,
                      controls: null,
                      fit: BoxFit.contain,
                      fill: Colors.transparent,
                      filterQuality: FilterQuality.medium,
                    ),
                    // Android's Surface never presents a still, so the shader
                    // side is the frame mpv just rendered, not the texture.
                    if (processed != null)
                      Image.memory(
                        processed,
                        fit: BoxFit.contain,
                        width: box.maxWidth,
                        height: box.maxHeight,
                        gaplessPlayback: true,
                        filterQuality: FilterQuality.medium,
                      ),
                    ClipRect(
                      clipper: _LeftClip(at),
                      child: Image.memory(
                        plain,
                        fit: BoxFit.contain,
                        width: box.maxWidth,
                        height: box.maxHeight,
                        gaplessPlayback: true,
                        filterQuality: FilterQuality.medium,
                      ),
                    ),
                    Positioned(
                      left: box.maxWidth * at - 1,
                      top: 0,
                      bottom: 0,
                      child: Container(width: 2, color: Colors.white),
                    ),
                    Positioned(
                      left: box.maxWidth * at - 20,
                      top: box.maxHeight / 2 - 20,
                      child: const DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.compare_arrows_rounded,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      start: 12,
                      top: 72,
                      child: _tag(getString.playerShadersOriginal),
                    ),
                    PositionedDirectional(
                      end: 12,
                      top: 72,
                      child: _tag(
                        _chosen.value.isEmpty
                            ? getString.playerShadersOff
                            : _chosen.value,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          if (_problem.value != null)
            PositionedDirectional(
              start: 12,
              end: 12,
              top: 110,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: 0.85),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    _problem.value!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          if (!_ready.value)
            const Center(child: CircularProgressIndicator(color: Colors.white)),
          AnimatedOpacity(
            opacity: controls ? 1 : 0,
            duration: animDuration(200),
            child: IgnorePointer(
              ignoring: !controls,
              child: Column(
                children: [
                  _top(context, chosen),
                  const Spacer(),
                  _bottom(context, scheme, profile, chosen, names),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tag(String text) => DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.black.withValues(alpha: 0.6),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Text(
        text,
        style: context.textTheme.bodySmall?.copyWith(color: Colors.white),
      ),
    ),
  );

  Widget _top(BuildContext context, String chosen) => DecoratedBox(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xCC000000), Color(0x00000000)],
      ),
    ),
    child: SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 20),
        child: Row(
          children: [
            IconButton(
              color: Colors.white,
              icon: const Icon(Icons.close_rounded),
              onPressed: () => popPage(context),
            ),
            Expanded(
              child: Text(
                chosen.isEmpty ? getString.playerShadersOff : chosen,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            if (widget.onManage != null)
              IconButton(
                color: Colors.white,
                tooltip: getString.playerShaders,
                icon: const Icon(Icons.tune_rounded),
                onPressed: widget.onManage,
              ),
            FilledButton.icon(
              onPressed: _use,
              icon: const Icon(Icons.check_rounded),
              label: Text(getString.playerShadersUse),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _bottom(
    BuildContext context,
    ColorScheme scheme,
    String profile,
    String chosen,
    List<String> names,
  ) => DecoratedBox(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0x00000000), Color(0xCC000000)],
      ),
    ),
    child: SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppChoiceChips<String>(
              scrollable: true,
              value: profile,
              onChanged: (key) {
                _profile.value = key;
                _pick('');
              },
              options: [
                for (final key in shaderProfiles.keys)
                  AppSegment(key, label: key),
              ],
            ),
            const SizedBox(height: 8),
            AppChoiceChips<String>(
              scrollable: true,
              value: chosen,
              onChanged: _pick,
              options: [
                for (final name in ['', ...names])
                  AppSegment(
                    name,
                    label: name.isEmpty ? getString.playerShadersOff : name,
                  ),
              ],
            ),
            const SizedBox(height: 8),
            ScrollConfig(
              context,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final key in colorPresets.keys)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 8),
                        child: ChoiceChip(
                          avatar: const Icon(Icons.palette_rounded, size: 16),
                          label: Text(colorPresetLabel(key)),
                          selected: presetOf(_color.value) == key,
                          onSelected: (_) => _pickColor(colorPresets[key]!),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 8),
                      child: ActionChip(
                        avatar: const Icon(Icons.tune_rounded, size: 16),
                        label: Text(getString.playerColorAdjust),
                        onPressed: () => _adjust.value = !_adjust.value,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (_adjust.value) ...[
              const SizedBox(height: 4),
              _slider(
                getString.playerColorBrightness,
                _color.value.brightness,
                (x) => _color.value.copyWith(brightness: x),
              ),
              _slider(
                getString.playerColorContrast,
                _color.value.contrast,
                (x) => _color.value.copyWith(contrast: x),
              ),
              _slider(
                getString.playerColorSaturation,
                _color.value.saturation,
                (x) => _color.value.copyWith(saturation: x),
              ),
              _slider(
                getString.playerColorGamma,
                _color.value.gamma,
                (x) => _color.value.copyWith(gamma: x),
              ),
              _slider(
                getString.playerColorHue,
                _color.value.hue,
                (x) => _color.value.copyWith(hue: x),
              ),
            ],
          ],
        ),
      ),
    ),
  );
}

class _LeftClip extends CustomClipper<Rect> {
  final double fraction;

  const _LeftClip(this.fraction);

  @override
  Rect getClip(Size size) =>
      Rect.fromLTWH(0, 0, size.width * fraction, size.height);

  @override
  bool shouldReclip(_LeftClip old) => old.fraction != fraction;
}
