import '../../Core/State/State.dart';

final _keyboardMode = false.live;

bool get usingKeyboard => _keyboardMode.value;

set usingKeyboard(bool value) {
  if (_keyboardMode.value != value) _keyboardMode.value = value;
}
