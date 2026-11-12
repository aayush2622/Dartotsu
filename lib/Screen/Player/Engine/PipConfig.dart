import 'dart:ui';

import 'package:flutter/foundation.dart';

class PipAction {
  final String id;
  final String label;

  const PipAction(this.id, this.label);

  Map<String, Object?> toMap() => {'id': id, 'label': label};

  @override
  bool operator ==(Object other) =>
      other is PipAction && other.id == id && other.label == label;

  @override
  int get hashCode => Object.hash(id, label);
}

class PipConfig {
  final int width;
  final int height;
  final Rect? rect;
  final bool auto;
  final bool playing;
  final List<PipAction> actions;

  const PipConfig({
    this.width = 16,
    this.height = 9,
    this.rect,
    this.auto = false,
    this.playing = false,
    this.actions = const [],
  });

  static const idle = PipConfig();

  Map<String, Object?> toMap() => {
    'width': width,
    'height': height,
    'rect': rect == null
        ? null
        : [
            rect!.left.round(),
            rect!.top.round(),
            rect!.right.round(),
            rect!.bottom.round(),
          ],
    'auto': auto,
    'playing': playing,
    'actions': [for (final a in actions) a.toMap()],
  };

  @override
  bool operator ==(Object other) =>
      other is PipConfig &&
      other.width == width &&
      other.height == height &&
      other.rect == rect &&
      other.auto == auto &&
      other.playing == playing &&
      listEquals(other.actions, actions);

  @override
  int get hashCode =>
      Object.hash(width, height, rect, auto, playing, Object.hashAll(actions));
}
