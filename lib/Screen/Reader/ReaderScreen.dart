import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Engine/ReaderItems.dart';
import 'Engine/ReaderRequest.dart';
import 'Engine/ReaderSettings.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'Components/ReaderControls.dart';
import 'Components/ReaderImage.dart';
import 'Components/ReaderPagedView.dart';
import 'Components/ReaderWebtoonView.dart';
import 'ReaderState.dart';

class ReaderScreen extends StatefulWidget {
  final ReaderRequest request;

  const ReaderScreen({super.key, required this.request});

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen>
    with ScreenStateHost<ReaderScreen, ReaderState> {
  final _focus = FocusNode();
  bool? _spreadsSeen;

  @override
  ReaderState buildState() => ReaderState(widget.request);

  @override
  void dispose() {
    _focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Color _background(BuildContext context, String id) => switch (id) {
    'gray' => const Color(0xFF3A3A3A),
    'white' => Colors.white,
    'theme' => context.colorScheme.surface,
    _ => Colors.black,
  };

  ColorFilter? _filter(String id) => switch (id) {
    'grayscale' => const ColorFilter.matrix([
      0.2126, 0.7152, 0.0722, 0, 0, //
      0.2126, 0.7152, 0.0722, 0, 0,
      0.2126, 0.7152, 0.0722, 0, 0,
      0, 0, 0, 1, 0,
    ]),
    'invert' => const ColorFilter.matrix([
      -1, 0, 0, 0, 255, //
      0, -1, 0, 0, 255,
      0, 0, -1, 0, 255,
      0, 0, 0, 1, 0,
    ]),
    'sepia' => const ColorFilter.matrix([
      0.393, 0.769, 0.189, 0, 0, //
      0.349, 0.686, 0.168, 0, 0,
      0.272, 0.534, 0.131, 0, 0,
      0, 0, 0, 1, 0,
    ]),
    _ => null,
  };

  Widget _build(BuildContext context) {
    final settings = state.settings;
    state.settingsVersion.value;
    final size = MediaQuery.sizeOf(context);
    final wantSpreads =
        settings.doublePage && !settings.scrolls && size.width > size.height;
    if (_spreadsSeen != wantSpreads) {
      _spreadsSeen = wantSpreads;
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => mounted ? state.setSpreads(wantSpreads) : null,
      );
    }
    final filter = _filter(settings.filter);
    final body = state.loading.value
        ? const Center(child: CircularProgressIndicator())
        : state.error.value != null && state.segments.isEmpty
        ? EmptyState(
            icon: Icons.error_outline_rounded,
            failed: true,
            title: getString.readerFailed,
            message: state.error.value,
            actionLabel: getString.retry,
            onAction: state.retry,
          )
        : _content(settings, filter);
    return PopScope(
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) unawaited(state.snapshot());
      },
      child: Scaffold(
        backgroundColor: _background(context, settings.background),
        body: KeyboardListener(
          focusNode: _focus,
          autofocus: true,
          onKeyEvent: _key,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                key: const ValueKey('reader-body'),
                child: RepaintBoundary(
                  key: state.shotKey,
                  child: !state.loading.value && state.segments.isNotEmpty
                      ? _taps(settings, body)
                      : body,
                ),
              ),
              if (settings.dim > 0)
                Positioned.fill(
                  key: const ValueKey('reader-dim'),
                  child: IgnorePointer(
                    child: ColoredBox(
                      color: Colors.black.withValues(alpha: settings.dim / 100),
                    ),
                  ),
                ),
              if (!state.loading.value && settings.pageNumber)
                _pageNumber(context),
              Positioned.fill(
                key: const ValueKey('reader-controls'),
                child: ReaderControls(state: state),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _content(ReaderSettings settings, ColorFilter? filter) {
    final view = settings.scrolls
        ? ReaderWebtoonView(
            key: ValueKey('w-${state.generation.value}'),
            state: state,
          )
        : ReaderPagedView(
            key: ValueKey('p-${state.generation.value}'),
            state: state,
          );
    final scoped = ReaderCropScope(
      enabled: settings.cropBorders,
      quality: settings.filterQuality,
      child: view,
    );
    return filter == null
        ? scoped
        : ColorFiltered(colorFilter: filter, child: scoped);
  }

  Widget _taps(ReaderSettings settings, Widget child) => LayoutBuilder(
    builder: (context, box) => GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTapUp: (d) {
        final at = Offset(
          d.localPosition.dx / box.maxWidth,
          d.localPosition.dy / box.maxHeight,
        );
        final action = state.controlsVisible.value
            ? TapAction.menu
            : tapActionFor(
                settings.tapZones,
                at,
                invert: settings.invertTaps,
                reversed: settings.reversed,
                topDown: settings.scrolls || settings.vertical,
              );
        _act(action);
      },
      child: child,
    ),
  );

  void _act(TapAction action) {
    switch (action) {
      case TapAction.menu:
        state.toggleControls();
      case TapAction.next:
        _move(1);
      case TapAction.previous:
        _move(-1);
      case TapAction.none:
    }
  }

  void _move(int direction) => state.move(direction);

  Widget _pageNumber(BuildContext context) {
    final count = state.pageCount;
    if (count == 0 || state.controlsVisible.value) {
      return const PositionedDirectional(
        key: ValueKey('reader-number'),
        start: 0,
        top: 0,
        child: SizedBox.shrink(),
      );
    }
    return PositionedDirectional(
      key: const ValueKey('reader-number'),
      start: 0,
      end: 0,
      bottom: 6,
      child: IgnorePointer(
        child: SafeArea(
          top: false,
          child: Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
                child: Text(
                  '${state.page + 1} / $count',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _key(KeyEvent event) {
    if (event is! KeyDownEvent) return;
    final key = event.logicalKey;
    final reversed = state.settings.reversed;
    if (key == LogicalKeyboardKey.arrowRight) {
      _move(reversed ? -1 : 1);
    } else if (key == LogicalKeyboardKey.arrowLeft) {
      _move(reversed ? 1 : -1);
    } else if (key == LogicalKeyboardKey.arrowDown ||
        key == LogicalKeyboardKey.pageDown ||
        key == LogicalKeyboardKey.space) {
      _move(1);
    } else if (key == LogicalKeyboardKey.arrowUp ||
        key == LogicalKeyboardKey.pageUp) {
      _move(-1);
    } else if (key == LogicalKeyboardKey.keyM) {
      state.toggleControls();
    } else if (key == LogicalKeyboardKey.keyN) {
      state.openNextChapter();
    } else if (key == LogicalKeyboardKey.keyP) {
      state.openPreviousChapter();
    }
  }
}
