import 'package:flutter/widgets.dart';

import '../ReaderState.dart';

class OverscrollNext extends StatefulWidget {
  final ReaderState state;
  final Widget child;

  const OverscrollNext({super.key, required this.state, required this.child});

  @override
  State<OverscrollNext> createState() => _OverscrollNextState();
}

class _OverscrollNextState extends State<OverscrollNext> {
  double _pulled = 0;
  double _pulledBack = 0;

  bool _onScroll(ScrollNotification n) {
    if (n.depth != 0 || widget.state.controlsVisible.value) return false;
    if (n is OverscrollNotification) {
      if (n.overscroll < 0 && n.metrics.extentBefore == 0) {
        _pulledBack += -n.overscroll;
        if (_pulledBack > 64) {
          _pulledBack = 0;
          widget.state.pullPrevious();
        }
      } else if (n.overscroll > 0 && n.metrics.extentAfter == 0) {
        _pulled += n.overscroll;
        if (_pulled > 48) {
          _pulled = 0;
          widget.state.pullNext();
        }
      }
    } else if (n is ScrollEndNotification || n is ScrollStartNotification) {
      _pulled = 0;
      _pulledBack = 0;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) =>
      NotificationListener<ScrollNotification>(
        onNotification: _onScroll,
        child: widget.child,
      );
}
