import 'package:flutter/material.dart';

class _ClickCursor extends WidgetStateMouseCursor {
  const _ClickCursor();

  @override
  MouseCursor resolve(Set<WidgetState> states) =>
      states.contains(WidgetState.disabled)
      ? SystemMouseCursors.basic
      : SystemMouseCursors.click;

  @override
  String get debugDescription => 'AppClickCursor';
}

const WidgetStateMouseCursor kClickCursor = _ClickCursor();
