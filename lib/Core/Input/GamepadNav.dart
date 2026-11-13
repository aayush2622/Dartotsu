import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gamepads/gamepads.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Shortcuts/KeyBindings.dart';
import '../../Core/State/State.dart';
import '../../Logger.dart';
import '../../Screen/Player/PlayerState.dart';
import '../../Utils/Nav/KeyboardMode.dart';
import 'KeyInject.dart';

bool get hasGamepadNav =>
    Platform.isLinux || Platform.isWindows || Platform.isMacOS;

class GamepadNav extends AppController with WidgetsBindingObserver {
  static const _press = 0.55;
  static const _release = 0.3;
  static const _firstRepeat = Duration(milliseconds: 400);
  static const _nextRepeat = Duration(milliseconds: 110);

  StreamSubscription<NormalizedGamepadEvent>? _events;
  StreamSubscription<GamepadConnectionEvent>? _gone;
  Disposer? _prefWatch;
  final _down = <String, _Hold>{};
  bool _started = false;

  void start() {
    if (!hasGamepadNav || _started) return;
    _started = true;
    WidgetsBinding.instance.addObserver(this);
    _prefWatch = onChange(PrefName.gamepadNav.rx, (_) => _sync());
    _sync();
  }

  bool get _on => PrefName.gamepadNav.value;

  void _sync() {
    if (_on && _events == null) {
      try {
        _events = Gamepads.normalizedEvents.listen(
          _onEvent,
          onError: (Object e, StackTrace st) => logError('GAMEPAD', e, st),
        );
        _gone = Gamepads.onDisconnected.listen((_) => _releaseAll());
      } catch (e, st) {
        logError('GAMEPAD', e, st);
      }
    } else if (!_on) {
      unawaited(_events?.cancel());
      unawaited(_gone?.cancel());
      _events = null;
      _gone = null;
      _releaseAll();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed) _releaseAll();
  }

  bool get _focused =>
      WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed;

  void _onEvent(NormalizedGamepadEvent event) {
    if (!_focused) return;
    final button = event.button;
    if (button != null) {
      _input('b:${button.name}', event.value > 0.5, () => _buttonKey(button));
      return;
    }
    final axis = event.axis;
    if (axis == null) return;
    final value = event.value;
    switch (axis) {
      case GamepadAxis.leftStickX:
        _stick(value, 'left', 'right', _arrowLeft, _arrowRight);
      case GamepadAxis.leftStickY:
        _stick(value, 'down', 'up', _arrowDown, _arrowUp);
      case GamepadAxis.rightStickY:
        _stick(value, 'rdown', 'rup', _volumeDown, _volumeUp);
      case GamepadAxis.leftTrigger:
        _input(
          't:left',
          _beyond(value, 't:left'),
          () => _buttonKey(GamepadButton.leftTrigger),
        );
      case GamepadAxis.rightTrigger:
        _input(
          't:right',
          _beyond(value, 't:right'),
          () => _buttonKey(GamepadButton.rightTrigger),
        );
      case GamepadAxis.rightStickX:
        break;
    }
  }

  bool _beyond(double value, String id) =>
      _down.containsKey(id) ? value > _release : value > _press;

  void _stick(
    double value,
    String negative,
    String positive,
    LogicalKeyboardKey? Function() negativeKey,
    LogicalKeyboardKey? Function() positiveKey,
  ) {
    _input(
      'a:$negative',
      _beyond(-value, 'a:$negative'),
      negativeKey,
      repeat: true,
    );
    _input(
      'a:$positive',
      _beyond(value, 'a:$positive'),
      positiveKey,
      repeat: true,
    );
  }

  LogicalKeyboardKey? _arrowLeft() => LogicalKeyboardKey.arrowLeft;
  LogicalKeyboardKey? _arrowRight() => LogicalKeyboardKey.arrowRight;
  LogicalKeyboardKey? _arrowUp() => LogicalKeyboardKey.arrowUp;
  LogicalKeyboardKey? _arrowDown() => LogicalKeyboardKey.arrowDown;

  LogicalKeyboardKey? _volumeUp() => _player ? _chord('playerVolumeUp') : null;
  LogicalKeyboardKey? _volumeDown() =>
      _player ? _chord('playerVolumeDown') : null;

  bool get _player => PlayerState.current?.focus.hasFocus ?? false;

  LogicalKeyboardKey? _chord(String id) {
    final action = KeyBindings.byId(id);
    if (action == null) return null;
    for (final chord in KeyBindings.of(action)) {
      if (!chord.shift && !chord.ctrl && !chord.alt && !chord.meta) {
        return chord.key;
      }
    }
    return null;
  }

  LogicalKeyboardKey? _buttonKey(GamepadButton button) {
    switch (button) {
      case GamepadButton.dpadUp:
        return LogicalKeyboardKey.arrowUp;
      case GamepadButton.dpadDown:
        return LogicalKeyboardKey.arrowDown;
      case GamepadButton.dpadLeft:
        return LogicalKeyboardKey.arrowLeft;
      case GamepadButton.dpadRight:
        return LogicalKeyboardKey.arrowRight;
      case GamepadButton.b:
        return LogicalKeyboardKey.gameButtonB;
      case GamepadButton.a:
        return _player
            ? _chord('playerPlayPause')
            : LogicalKeyboardKey.gameButtonA;
      case GamepadButton.y:
        return _player
            ? _chord('playerFullscreen')
            : LogicalKeyboardKey.contextMenu;
      case GamepadButton.x:
        return _player ? _chord('playerSkip') : null;
      case GamepadButton.leftBumper:
        return _player ? _chord('playerPrevious') : null;
      case GamepadButton.rightBumper:
        return _player ? _chord('playerNext') : null;
      case GamepadButton.leftTrigger:
        return _player ? _chord('playerSeekBackLong') : null;
      case GamepadButton.rightTrigger:
        return _player ? _chord('playerSeekForwardLong') : null;
      case GamepadButton.start:
        return _player ? _chord('playerPanel') : null;
      case GamepadButton.back:
        return _player ? _chord('playerMute') : null;
      default:
        return null;
    }
  }

  void _input(
    String id,
    bool pressed,
    LogicalKeyboardKey? Function() resolve, {
    bool repeat = false,
  }) {
    final held = _down[id];
    if (pressed && held == null) {
      final key = resolve();
      if (key == null) return;
      usingKeyboard = true;
      final hold = _Hold(key);
      _down[id] = hold;
      KeyInject.press(key);
      if (repeat || _repeats(key)) {
        hold.timer = Timer(_firstRepeat, () => _tickRepeat(hold));
      }
    } else if (!pressed && held != null) {
      _down.remove(id);
      held.timer?.cancel();
      KeyInject.release(held.key);
    }
  }

  bool _repeats(LogicalKeyboardKey key) =>
      key == LogicalKeyboardKey.arrowUp ||
      key == LogicalKeyboardKey.arrowDown ||
      key == LogicalKeyboardKey.arrowLeft ||
      key == LogicalKeyboardKey.arrowRight;

  void _tickRepeat(_Hold hold) {
    if (!_down.containsValue(hold)) return;
    KeyInject.repeat(hold.key);
    hold.timer = Timer(_nextRepeat, () => _tickRepeat(hold));
  }

  void _releaseAll() {
    for (final hold in _down.values) {
      hold.timer?.cancel();
    }
    _down.clear();
    KeyInject.releaseAll();
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(_events?.cancel());
    unawaited(_gone?.cancel());
    _prefWatch?.dispose();
    _releaseAll();
    super.onClose();
  }
}

class _Hold {
  final LogicalKeyboardKey key;
  Timer? timer;

  _Hold(this.key);
}
