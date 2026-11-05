import 'package:flutter/widgets.dart';

import '../../../Core/State/State.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'BarLayout.dart';

class LayoutEditorState extends ScreenState {
  final LayoutSurface surface;

  LayoutEditorState(this.surface);

  late final layout = surface.layout.live;
  final cut = Live<String?>(null);
  final dragging = Live<String?>(null);
  final hover = Live<({String zone, int index})?>(null);
  final _keys = <String, GlobalKey>{};

  GlobalKey keyOf(String id) => _keys.putIfAbsent(id, GlobalKey.new);

  void _apply(BarLayout next) {
    layout.value = next;
    next.save();
  }

  void move(String id, String zone, [int? index]) {
    cut.value = null;
    final current = layout.value;
    final from = current.zone(current.zoneOf(id) ?? zone);
    var at = index;
    if (at != null && current.zoneOf(id) == zone) {
      final old = from.indexOf(id);
      if (old >= 0 && old < at) at -= 1;
    }
    _apply(current.moved(id, zone, at));
  }

  void hide(String id) {
    cut.value = null;
    _apply(layout.value.hiding(id));
  }

  void startCut(String id) => cut.value = cut.value == id ? null : id;

  void cancelCut() => cut.value = null;

  void paste(String zone) {
    final id = cut.value;
    if (id != null) move(id, zone);
  }

  void reset() {
    cut.value = null;
    BarLayout.reset(surface);
    layout.value = BarLayout.defaults(surface);
  }
}
