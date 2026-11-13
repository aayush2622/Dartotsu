import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Core/Security/AppLock.dart';
import '../../Core/State/State.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';

class PinPad extends StatefulWidget {
  final bool Function(String pin) onSubmit;
  final bool Function(String pin)? matches;
  final String? message;
  final bool autofocus;

  const PinPad({
    super.key,
    required this.onSubmit,
    this.matches,
    this.message,
    this.autofocus = true,
  });

  @override
  State<PinPad> createState() => _PinPadState();
}

final _digitKeys = {
  LogicalKeyboardKey.digit0: '0',
  LogicalKeyboardKey.digit1: '1',
  LogicalKeyboardKey.digit2: '2',
  LogicalKeyboardKey.digit3: '3',
  LogicalKeyboardKey.digit4: '4',
  LogicalKeyboardKey.digit5: '5',
  LogicalKeyboardKey.digit6: '6',
  LogicalKeyboardKey.digit7: '7',
  LogicalKeyboardKey.digit8: '8',
  LogicalKeyboardKey.digit9: '9',
  LogicalKeyboardKey.numpad0: '0',
  LogicalKeyboardKey.numpad1: '1',
  LogicalKeyboardKey.numpad2: '2',
  LogicalKeyboardKey.numpad3: '3',
  LogicalKeyboardKey.numpad4: '4',
  LogicalKeyboardKey.numpad5: '5',
  LogicalKeyboardKey.numpad6: '6',
  LogicalKeyboardKey.numpad7: '7',
  LogicalKeyboardKey.numpad8: '8',
  LogicalKeyboardKey.numpad9: '9',
};

class _PinPadState extends State<PinPad> {
  final _pin = ''.live;
  final _shake = 0.live;
  final _focus = FocusNode(debugLabel: 'PinPad');

  @override
  void initState() {
    super.initState();
    if (widget.autofocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _focus.requestFocus();
      });
    }
  }

  @override
  void dispose() {
    _focus.dispose();
    super.dispose();
  }

  void _add(String digit) {
    if (_pin.value.length >= AppLock.maxLength) return;
    _pin.value += digit;
    final pin = _pin.value;
    final check = widget.matches;
    if (check == null || pin.length < AppLock.minLength) return;
    if (check(pin) || pin.length >= AppLock.maxLength) _submit();
  }

  void _back() {
    if (_pin.value.isEmpty) return;
    _pin.value = _pin.value.substring(0, _pin.value.length - 1);
  }

  void _submit() {
    if (_pin.value.length < AppLock.minLength) return;
    final ok = widget.onSubmit(_pin.value);
    if (ok) return;
    _pin.value = '';
    _shake.value++;
    HapticFeedback.heavyImpact();
  }

  KeyEventResult _key(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final key = event.logicalKey;
    final label = event.character;
    final digit =
        _digitKeys[key] ??
        (label != null && RegExp(r'^[0-9]$').hasMatch(label) ? label : null);
    if (digit != null) {
      _add(digit);
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.backspace) {
      _back();
      return KeyEventResult.handled;
    }
    if (key == LogicalKeyboardKey.enter ||
        key == LogicalKeyboardKey.numpadEnter) {
      _submit();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  Widget _dots(BuildContext context) {
    final scheme = context.colorScheme;
    final length = _pin.value.length;
    final count = length < AppLock.minLength ? AppLock.minLength : length;
    return TweenAnimationBuilder<double>(
      key: ValueKey(_shake.value),
      tween: Tween(begin: _shake.value == 0 ? 0 : 1, end: 0),
      duration: animDuration(420),
      builder: (context, t, child) => Transform.translate(
        offset: Offset(math.sin(t * math.pi * 6) * 12 * t, 0),
        child: child,
      ),
      child: SizedBox(
        height: 32,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < count; i++)
              AnimatedScale(
                scale: i < length ? 1.15 : 1,
                duration: animDuration(140),
                curve: Curves.easeOutBack,
                child: AnimatedContainer(
                  duration: animDuration(160),
                  margin: EdgeInsets.symmetric(horizontal: Dimens.gapXs + 3),
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: i < length ? scheme.primary : Colors.transparent,
                    border: Border.all(
                      color: i < length
                          ? scheme.primary
                          : scheme.outline.withValues(alpha: 0.7),
                      width: 2,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _key_(
    BuildContext context,
    Widget child,
    VoidCallback? onTap, {
    bool filled = false,
  }) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.all(Dimens.gapXs),
      child: SizedBox(
        width: 76,
        height: 76,
        child: Material(
          color: filled
              ? scheme.primaryContainer
              : scheme.surfaceContainerHigh.withValues(alpha: 0.7),
          shape: CircleBorder(
            side: BorderSide(
              color: scheme.outlineVariant.withValues(alpha: 0.5),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }

  Widget _digit(BuildContext context, String d) => _key_(
    context,
    Text(d, style: context.textTheme.headlineSmall),
    () => _add(d),
  );

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final ready = _pin.value.length >= AppLock.minLength;
    return Focus(
      focusNode: _focus,
      onKeyEvent: _key,
      child: Listener(
        onPointerDown: (_) => _focus.requestFocus(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _dots(context),
            SizedBox(height: Dimens.gap),
            SizedBox(
              height: 20,
              child: Text(
                widget.message ?? '',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.error,
                ),
              ),
            ),
            SizedBox(height: Dimens.gap),
            for (final (r, row) in const [
              ['1', '2', '3'],
              ['4', '5', '6'],
              ['7', '8', '9'],
            ].indexed)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [for (final d in row) _digit(context, d)],
              ).animateStagger(r),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _key_(
                  context,
                  const Icon(Icons.backspace_outlined),
                  _pin.value.isEmpty ? null : _back,
                ),
                _digit(context, '0'),
                _key_(
                  context,
                  Icon(Icons.check_rounded, color: scheme.onPrimaryContainer),
                  ready ? _submit : null,
                  filled: ready,
                ),
              ],
            ).animateStagger(3),
          ],
        ),
      ),
    );
  }
}
