import 'package:dartotsu_extension_bridge/player.dart';

// ignore_for_file: implementation_imports, invalid_use_of_internal_member
import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/_window.dart' as fw;
import 'package:screen_retriever/screen_retriever.dart';
import 'package:window_manager/window_manager.dart';
import 'package:window_manager/windowing.dart' show nativeWindowOf;

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Functions/AppWindow.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Functions/WindowMemory.dart';
import '../../../Utils/Functions/Windowing.dart';
import '../Components/PlayerSubtitleView.dart';
import '../PlayerScreen.dart';
import '../PlayerState.dart';
import 'HyprlandPip.dart';

class _Delegate with fw.WindowControllerDelegate {
  @override
  void onWindowCloseRequested(fw.WindowController controller) {
    PipWindow.close();
  }

  @override
  void onWindowDestroyed() {
    PipWindow._released();
  }
}

class PipWindow {
  PipWindow._();

  static const title = 'Dartotsu PiP';
  static const _width = 420.0;
  static const _margin = 24.0;
  static const _smallest = Size(240, 135);

  static final controller = Live<fw.WindowController?>(null);
  static PlayerState? _state;
  static void Function()? onClosed;

  static bool get supported => windowingSupported;

  static bool get active => controller.peek != null;

  static bool holds(PlayerState state) => active && identical(_state, state);

  static Future<bool> open(PlayerState state, double aspect) async {
    if (active) return true;
    if (!supported) return false;
    try {
      final ratio = aspect.isFinite && aspect > 0 ? aspect : 16 / 9;
      final size = _fit(ratio);
      final window = fw.WindowController(
        size: size,
        constraints: BoxConstraints(
          minWidth: _smallest.width,
          minHeight: _smallest.height,
        ),
        title: title,
        delegate: _Delegate(),
      );
      _state = state;
      WindowMemory.instance.suspended = true;
      controller.value = window;
      unawaited(_style(window, ratio, size));
      return true;
    } on Object catch (e, st) {
      logError('PlayerPip', e, st, 'pip window failed to open');
      _state = null;
      controller.value = null;
      WindowMemory.instance.suspended = false;
      return false;
    }
  }

  static void close({bool release = true}) {
    final window = controller.peek;
    if (window == null) return;
    try {
      window.destroy();
    } on Object catch (e, st) {
      logError('PlayerPip', e, st, 'pip window failed to close');
    }
    _released(release: release);
  }

  static void restore() {
    final state = _state;
    final context = appContext;
    if (state == null || context == null || !state.detached) {
      close();
      return;
    }
    close(release: false);
    appWindow
      ?..show()
      ..focus();
    unawaited(
      navigateToPage(
        context,
        PlayerScreen(request: state.request, adopt: state),
      ),
    );
  }

  static void _released({bool release = true}) {
    if (controller.peek == null && _state == null) return;
    final state = _state;
    controller.value = null;
    _state = null;
    WindowMemory.instance.suspended = false;
    onClosed?.call();
    if (release) state?.closeDetached();
  }

  static void drag() {
    final window = controller.peek;
    if (window == null || HyprlandPip.supported) return;
    nativeWindowOf(window)?.startDragging();
  }

  static final Widget _host = Watch(() {
    final window = controller.value;
    final state = _state;
    if (window == null || state == null) {
      return const ViewCollection(views: []);
    }
    return fw.Window(
      controller: window,
      child: _PipContent(state: state),
    );
  });

  static Widget view() => _host;

  static Future<void> _style(
    fw.WindowController window,
    double ratio,
    Size size,
  ) async {
    try {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      if (controller.peek != window) return;
      if (HyprlandPip.supported) {
        await HyprlandPip.place(title, size);
        return;
      }
      final native = nativeWindowOf(window);
      if (native == null) return;
      native.setFrameless(true);
      native.isAlwaysOnTop = true;
      native.aspectRatio = ratio;
      final area = _area();
      if (area != null) {
        native.bounds = Rect.fromLTWH(
          area.right - size.width - _margin,
          area.bottom - size.height - _margin,
          size.width,
          size.height,
        ).toNative();
      }
    } on Object catch (e, st) {
      logError('PlayerPip', e, st, 'pip window styling failed');
    }
  }

  static Size _fit(double ratio) {
    final height = math.max(_smallest.height, _width / ratio);
    return Size(height * ratio, height);
  }

  static Rect? _area() {
    final at = appWindow?.bounds.toRect().center;
    for (final d in DisplayManager.instance.getAll()) {
      final area = d.workArea.toRect();
      if (at != null && area.contains(at)) return area;
    }
    return DisplayManager.instance.getPrimary()?.workArea.toRect();
  }
}

class _PipContent extends StatelessWidget {
  final PlayerState state;

  const _PipContent({required this.state});

  @override
  Widget build(BuildContext context) => MediaQuery.fromView(
    view: View.of(context),
    child: Material(
      color: Colors.black,
      child: MouseRegion(
        onEnter: (_) => state.pipHover.value = true,
        onExit: (_) => state.pipHover.value = false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Watch(() {
              state.engineTick.value;
              return Video(
                controller: state.engine.video,
                controls: null,
                fit: BoxFit.contain,
                subtitleViewConfiguration: const SubtitleViewConfiguration(
                  visible: false,
                ),
              );
            }),
            Watch(
              () => state.engine.assActive.value
                  ? const SizedBox.shrink()
                  : PlayerSubtitleView(
                      lines: state.engine.subtitleLines.value,
                      settings: state.settings,
                      controlsVisible: false,
                    ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => unawaited(state.togglePlayback()),
              onPanStart: (_) => PipWindow.drag(),
            ),
            _overlay(),
          ],
        ),
      ),
    ),
  );

  Widget _overlay() => Positioned.fill(
    child: Watch(
      () => IgnorePointer(
        ignoring: !state.pipHover.value,
        child: AnimatedOpacity(
          opacity: state.pipHover.value ? 1 : 0,
          duration: const Duration(milliseconds: 150),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xB3000000),
                  Color(0x00000000),
                  Color(0xB3000000),
                ],
                stops: [0, 0.5, 1],
              ),
            ),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _button(
                        Icons.open_in_full_rounded,
                        getString.playerPipRestore,
                        PipWindow.restore,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _button(
                        Icons.replay_10_rounded,
                        getString.playerPipBack,
                        () => state.seekBy(
                          Duration(seconds: -state.settings.seekDuration),
                        ),
                      ),
                      Watch(
                        () => _button(
                          state.isPlaying
                              ? Icons.pause_rounded
                              : Icons.play_arrow_rounded,
                          state.isPlaying
                              ? getString.playerPipPause
                              : getString.playerPipPlay,
                          () => unawaited(state.togglePlayback()),
                        ),
                      ),
                      _button(
                        Icons.forward_10_rounded,
                        getString.playerPipForward,
                        () => state.seekBy(
                          Duration(seconds: state.settings.seekDuration),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

  Widget _button(IconData icon, String label, VoidCallback onTap) => Semantics(
    label: label,
    button: true,
    child: GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Icon(icon, color: Colors.white, size: 26),
      ),
    ),
  );
}
