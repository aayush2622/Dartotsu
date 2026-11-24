import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';

class ReaderPinch extends StatefulWidget {
  final Widget child;
  final Live<bool>? pinching;
  final ValueChanged<bool>? onZoom;
  final double maxScale;
  final double minScale;
  final bool pan;
  final bool doubleTap;
  final Duration? settle;

  const ReaderPinch({
    super.key,
    required this.child,
    this.pinching,
    this.onZoom,
    this.maxScale = 4,
    this.minScale = 0.5,
    this.pan = true,
    this.doubleTap = false,
    this.settle,
  });

  @override
  State<ReaderPinch> createState() => _ReaderPinchState();
}

class _ReaderPinchState extends State<ReaderPinch>
    with SingleTickerProviderStateMixin {
  final _points = <int, Offset>{};
  final _scale = 1.0.live;
  final _shift = Offset.zero.live;
  late final Live<bool> _pinching = widget.pinching ?? false.live;
  bool _zoomed = false;
  double _baseScale = 1;
  double _baseDistance = 1;
  Offset _anchor = Offset.zero;
  double _fromScale = 1;
  Offset _fromShift = Offset.zero;
  double _toScale = 1;
  Offset _toShift = Offset.zero;
  Offset _tapDown = Offset.zero;
  Duration _tapDownAt = Duration.zero;
  Offset? _lastTap;
  Duration _lastTapAt = Duration.zero;
  bool _secondTap = false;
  bool _multi = false;
  late final AnimationController _anim = AnimationController(vsync: this)
    ..addListener(() {
      final t = Curves.easeOutCubic.transform(_anim.value);
      _scale.value = _fromScale + (_toScale - _fromScale) * t;
      _shift.value = Offset.lerp(_fromShift, _toShift, t)!;
    })
    ..addStatusListener((status) {
      if (status == AnimationStatus.completed) _report();
    });

  @override
  void dispose() {
    _anim.dispose();
    super.dispose();
  }

  void _animateTo(double scale, Offset shift) {
    _fromScale = _scale.value;
    _fromShift = _shift.value;
    _toScale = scale;
    _toShift = shift;
    _anim.duration = widget.settle ?? animDuration(220);
    _anim.forward(from: 0);
  }

  void _settle() => _animateTo(1, Offset.zero);

  void _toggle(Offset at) {
    _anim.stop();
    if (_scale.value > 1.02) return _settle();
    final s = math.min(2.5, widget.maxScale);
    _animateTo(s, _clamp(at * (1 - s), s));
    _zoomed = true;
    widget.onZoom?.call(true);
  }

  bool _tapped(PointerUpEvent e) {
    if (_secondTap) {
      _secondTap = false;
      _lastTap = null;
      _toggle(e.localPosition);
      return true;
    }
    _lastTap = e.localPosition;
    _lastTapAt = e.timeStamp;
    return false;
  }

  (Offset, double) _pair() {
    final p = _points.values.take(2).toList();
    return ((p[0] + p[1]) / 2, (p[0] - p[1]).distance);
  }

  void _begin() {
    _anim.stop();
    final (focal, distance) = _pair();
    _baseScale = _scale.value;
    _baseDistance = math.max(distance, 1);
    _anchor = (focal - _shift.value) / _scale.value;
    _pinching.value = true;
  }

  Offset _clamp(Offset t, double s) {
    final size = context.size ?? Size.zero;
    return Offset(
      t.dx.clamp(size.width - size.width * s, 0.0).toDouble(),
      t.dy.clamp(size.height - size.height * s, 0.0).toDouble(),
    );
  }

  void _report() {
    final zoomed = (_scale.value - 1).abs() > 0.02;
    if (zoomed == _zoomed) return;
    _zoomed = zoomed;
    widget.onZoom?.call(zoomed);
  }

  void _down(PointerDownEvent e) {
    _points[e.pointer] = e.localPosition;
    if (_points.length == 1) {
      _multi = false;
      _tapDown = e.localPosition;
      _tapDownAt = e.timeStamp;
      final last = _lastTap;
      _secondTap =
          last != null &&
          e.timeStamp - _lastTapAt < const Duration(milliseconds: 400) &&
          (e.localPosition - last).distance < 100;
    }
    if (_points.length >= 2) {
      _multi = true;
      _lastTap = null;
      _begin();
    }
  }

  void _move(PointerMoveEvent e) {
    if (!_points.containsKey(e.pointer)) return;
    _points[e.pointer] = e.localPosition;
    if (_points.length >= 2) {
      final (focal, distance) = _pair();
      final s = (_baseScale * distance / _baseDistance)
          .clamp(widget.minScale, widget.maxScale)
          .toDouble();
      _scale.value = s;
      final free = focal - _anchor * s;
      _shift.value = s < 1 ? free : _clamp(free, s);
      _report();
    } else if (widget.pan && _scale.value > 1 && !_anim.isAnimating) {
      _shift.value = _clamp(_shift.value + Offset(e.delta.dx, 0), _scale.value);
    }
  }

  void _up(PointerEvent e) {
    final tap =
        widget.doubleTap &&
        e is PointerUpEvent &&
        !_multi &&
        _points.length == 1 &&
        (e.localPosition - _tapDown).distance < 18 &&
        e.timeStamp - _tapDownAt < const Duration(milliseconds: 400);
    if (_points.remove(e.pointer) == null) return;
    var toggled = false;
    if (tap) {
      toggled = _tapped(e);
    } else {
      _lastTap = null;
      _secondTap = false;
    }
    if (_points.length >= 2) {
      _begin();
    } else {
      _pinching.value = false;
    }
    if (_points.isEmpty && _scale.value < 1.02 && !toggled) _settle();
  }

  @override
  Widget build(BuildContext context) => ClipRect(
    child: Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: _down,
      onPointerMove: _move,
      onPointerUp: _up,
      onPointerCancel: _up,
      child: Watch(() {
        final s = _scale.value;
        final t = _shift.value;
        return Transform(
          transform: Matrix4.translationValues(t.dx, t.dy, 0)..scale(s, s, 1),
          child: widget.child,
        );
      }),
    ),
  );
}
