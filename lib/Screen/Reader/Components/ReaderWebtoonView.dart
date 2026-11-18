import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../Engine/ReaderItems.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../ReaderState.dart';
import 'OverscrollNext.dart';
import 'ReaderGapView.dart';
import 'ReaderImage.dart';
import 'ReaderPinch.dart';

class ReaderWebtoonView extends StatefulWidget {
  final ReaderState state;

  const ReaderWebtoonView({super.key, required this.state});

  @override
  State<ReaderWebtoonView> createState() => _ReaderWebtoonViewState();
}

class _ReaderWebtoonViewState extends State<ReaderWebtoonView> {
  final _controller = ScrollController();
  final _keys = <String, GlobalKey>{};
  final _center = GlobalKey();
  final _view = GlobalKey();
  late final String _anchor;
  String? _lastId;
  bool _jumping = false;
  String? _anchorId;
  double _anchorTop = 0;
  double? _lastPixels;
  Duration _lastStamp = Duration.zero;
  double _velocity = 0;
  final _pinching = false.live;

  ReaderState get state => widget.state;

  @override
  void initState() {
    super.initState();
    final items = state.items;
    final at = state.current.peek;
    final start = at >= 0 && at < items.length ? items[at] : items.firstOrNull;
    _anchor = start == null ? '' : _id(start);
    _controller.addListener(_scan);
    state.jumper = _jump;
    state.scroller = _scrollBy;
    state.nudger = _nudge;
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (mounted) unawaited(_jump(state.current.value, quiet: true));
    });
    SchedulerBinding.instance.addPostFrameCallback((_) => _holdAnchor());
  }

  void _holdAnchor() {
    if (!mounted) return;
    SchedulerBinding.instance.addPostFrameCallback((_) => _holdAnchor());
    if (_jumping || !_controller.hasClients) {
      _lastPixels = null;
      _anchorId = null;
      return;
    }
    final box = _view.currentContext?.findRenderObject();
    if (box is! RenderBox || !box.hasSize) return;
    final position = _controller.position;
    final last = _lastPixels;
    final stamp = SchedulerBinding.instance.currentSystemFrameTimeStamp;
    final elapsed = (stamp - _lastStamp).inMicroseconds;
    if (last != null && elapsed > 0 && elapsed < 100000) {
      _velocity = (position.pixels - last) * 1000000 / elapsed;
    }
    _lastStamp = stamp;
    _lastPixels = position.pixels;
    final id = _anchorId;
    final held = id == null
        ? null
        : _keys[id]?.currentContext?.findRenderObject();
    if (last != null && held is RenderBox && held.attached && held.hasSize) {
      final top = held.localToGlobal(Offset.zero, ancestor: box).dy;
      final expected = _anchorTop - (position.pixels - last);
      final shift = top - expected;
      if (shift.abs() > 0.5 && !_pinching.value) {
        _correct(position, shift);
        _lastPixels = position.pixels;
        _anchorTop = expected;
      } else {
        _anchorTop = top;
      }
      if (_anchorTop + held.size.height > 1) return;
    }
    for (final item in state.items) {
      final id = _id(item);
      final rb = _keys[id]?.currentContext?.findRenderObject();
      if (rb is! RenderBox || !rb.attached || !rb.hasSize) continue;
      final top = rb.localToGlobal(Offset.zero, ancestor: box).dy;
      if (top + rb.size.height > 1) {
        _anchorId = id;
        _anchorTop = top;
        return;
      }
    }
    _anchorId = null;
  }

  void _correct(ScrollPosition position, double shift) {
    final target = (position.pixels + shift)
        .clamp(position.minScrollExtent, position.maxScrollExtent)
        .toDouble();
    if ((target - position.pixels).abs() < 0.5) return;
    if (!position.isScrollingNotifier.value) {
      position.jumpTo(target);
      return;
    }
    final velocity = _velocity;
    position.setPixels(target);
    if (!state.touching &&
        velocity.abs() > 50 &&
        position is ScrollPositionWithSingleContext) {
      position.goBallistic(velocity);
    }
  }

  @override
  void dispose() {
    if (state.jumper == _jump) state.jumper = null;
    if (state.scroller == _scrollBy) state.scroller = null;
    if (state.nudger == _nudge) state.nudger = null;
    _controller.dispose();
    super.dispose();
  }

  static String _id(ReaderItem item) => switch (item) {
    ReaderPage p => 'p${p.chapter}-${p.page}',
    ReaderGap g => 'g${g.chapter}-${g.atStart}',
    ReaderSpread s => 's${s.first.chapter}-${s.first.page}',
  };

  GlobalKey _key(ReaderItem item) =>
      _keys.putIfAbsent(_id(item), GlobalKey.new);

  BuildContext? _ctxAt(int i) {
    final items = state.items;
    if (i < 0 || i >= items.length) return null;
    final ctx = _keys[_id(items[i])]?.currentContext;
    return ctx != null && ctx.mounted ? ctx : null;
  }

  int get _split {
    final at = state.items.indexWhere((e) => _id(e) == _anchor);
    return at < 0 ? 0 : at;
  }

  double get _estimate => MediaQuery.sizeOf(context).width * 1.45;

  void _scan() {
    if (_jumping || !_controller.hasClients) return;
    final position = _controller.position;
    final view = position.viewportDimension;
    if (position.extentAfter < view * 2) state.nearEnd();
    if (position.extentBefore < view * 2) state.nearStart();
    final box = _view.currentContext?.findRenderObject();
    if (box is! RenderBox || !box.hasSize) return;
    final center = box.size.height / 2;
    final items = state.items;
    int? found;
    for (var i = 0; i < items.length; i++) {
      final rb = _ctxAt(i)?.findRenderObject();
      if (rb is! RenderBox || !rb.attached || !rb.hasSize) continue;
      final top = rb.localToGlobal(Offset.zero, ancestor: box).dy;
      if (top <= center && top + rb.size.height > center) {
        found = i;
        break;
      }
    }
    if (found == null) return;
    final id = _id(items[found]);
    if (id != _lastId) {
      _lastId = id;
      state.onVisible(found);
    }
  }

  void _nudge(double pixels) {
    if (!_controller.hasClients || state.touching) return;
    final position = _controller.position;
    if (position.isScrollingNotifier.value) return;
    final target = (_controller.offset + pixels)
        .clamp(position.minScrollExtent, position.maxScrollExtent)
        .toDouble();
    if (target != _controller.offset) _controller.jumpTo(target);
  }

  Future<void> _scrollBy(double fraction) async {
    if (!_controller.hasClients) return;
    final view = _controller.position.viewportDimension;
    final target = (_controller.offset + view * fraction).clamp(
      _controller.position.minScrollExtent,
      _controller.position.maxScrollExtent,
    );
    if (state.settings.animate) {
      await _controller.animateTo(
        target,
        duration: animDuration(260),
        curve: Curves.easeOutCubic,
      );
    } else {
      _controller.jumpTo(target);
    }
  }

  Future<void> _jump(int index, {bool quiet = false}) async {
    if (!_controller.hasClients) return;
    _jumping = true;
    try {
      final split = _split;
      for (var attempt = 0; attempt < 8; attempt++) {
        if (!mounted) return;
        final ctx = _ctxAt(index);
        if (ctx != null && ctx.mounted) {
          await Scrollable.ensureVisible(ctx);
          if (!mounted) return;
          final items = state.items;
          if (index < items.length) _lastId = _id(items[index]);
          if (!quiet) state.onVisible(index);
          return;
        }
        int? nearest;
        for (var i = 0; i < state.items.length; i++) {
          if (_ctxAt(i) == null) continue;
          if (nearest == null || (i - index).abs() < (nearest - index).abs()) {
            nearest = i;
          }
        }
        final base = nearest ?? split;
        final from = nearest == null ? 0.0 : _controller.offset;
        final raw = from + (index - base) * _estimate;
        final position = _controller.position;
        final target = raw
            .clamp(
              math.min(position.minScrollExtent, raw),
              math.max(position.maxScrollExtent, raw),
            )
            .toDouble();
        _controller.jumpTo(target);
        await SchedulerBinding.instance.endOfFrame;
        if (!mounted) return;
      }
    } finally {
      _jumping = false;
      _lastPixels = null;
    }
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final settings = state.settings;
    final items = state.items.toList();
    state.settingsVersion.value;
    final side = MediaQuery.sizeOf(context).width * settings.sidePadding / 100;
    final gap = settings.pageGap.toDouble();
    final split = items
        .indexWhere((e) => _id(e) == _anchor)
        .clamp(0, items.length);
    final before = items.sublist(0, split);
    final after = items.sublist(split);

    Widget tile(ReaderItem item) {
      final child = switch (item) {
        ReaderPage p => Padding(
          padding: EdgeInsets.fromLTRB(side, 0, side, gap),
          child: ReaderImage(
            key: ValueKey('${p.chapter}-${p.page}'),
            page: p.url,
            fit: BoxFit.fitWidth,
            width: double.infinity,
            placeholderHeight: MediaQuery.sizeOf(context).height,
          ),
        ),
        ReaderGap g => ReaderGapView(state: state, gap: g),
        ReaderSpread() => const SizedBox.shrink(),
      };
      return KeyedSubtree(key: _key(item), child: child);
    }

    final pinching = _pinching.value;
    return ReaderPinch(
      pinching: _pinching,
      doubleTap: state.settings.doubleTapZoom,
      child: OverscrollNext(
        state: state,
        child: CustomScrollView(
          key: _view,
          controller: _controller,
          physics: pinching ? const NeverScrollableScrollPhysics() : null,
          center: _center,
          cacheExtent: MediaQuery.sizeOf(context).height * 1.5,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => tile(before[before.length - 1 - i]),
                childCount: before.length,
              ),
            ),
            SliverList(
              key: _center,
              delegate: SliverChildBuilderDelegate(
                (context, i) => tile(after[i]),
                childCount: after.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
