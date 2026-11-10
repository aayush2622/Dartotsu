import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Security/AppLock.dart';
import '../../Core/Security/Biometric.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import 'PinPad.dart';

class LockOverlay extends StatelessWidget {
  final Widget child;

  const LockOverlay({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final lock = find<AppLock>();
    return Watch(
      () => Stack(
        fit: StackFit.expand,
        children: [
          ExcludeFocus(excluding: lock.locked.value, child: child),
          if (lock.locked.value) const _LockScreen(),
        ],
      ),
    );
  }
}

class _LockScreen extends StatefulWidget {
  const _LockScreen();

  @override
  State<_LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<_LockScreen> {
  final _message = Live<String?>(null);
  Timer? _timer;

  bool _matches(String pin) => find<AppLock>().verify(pin);

  bool _submit(String pin) {
    final lock = find<AppLock>();
    if (lock.unlock(pin)) return true;
    _tick();
    return false;
  }

  void _tick() {
    _timer?.cancel();
    final wait = find<AppLock>().blocked;
    if (wait <= Duration.zero) {
      _message.value = getString.appLockWrong;
      return;
    }
    _message.value = getString.appLockWait('${wait.inSeconds + 1}');
    _timer = Timer(const Duration(seconds: 1), _tick);
  }

  @override
  void initState() {
    super.initState();
    unawaited(_autoBiometric());
  }

  Future<void> _autoBiometric() async {
    await Biometric.probe();
    if (!mounted) return;
    await WidgetsBinding.instance.endOfFrame;
    unawaited(_biometric());
  }

  bool _asking = false;

  Future<void> _biometric() async {
    final lock = find<AppLock>();
    if (_asking || !lock.biometricReady || !mounted) return;
    _asking = true;
    final ok = await Biometric.authenticate(
      reason: getString.appLockBiometricReason,
      cancel: getString.cancel,
    );
    _asking = false;
    if (ok) lock.unlockWithBiometric();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    return PopScope(
      canPop: false,
      child: Material(
        color: scheme.surface,
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, box) {
              final wide = box.maxWidth > box.maxHeight && box.maxHeight < 620;
              final head = [
                Container(
                  width: 76,
                  height: 76,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: scheme.primaryContainer,
                  ),
                  child: Icon(
                    Icons.lock_rounded,
                    size: 34,
                    color: scheme.onPrimaryContainer,
                  ),
                ).animateDropIn(),
                SizedBox(height: Dimens.gap),
                Text(
                  getString.appLockUnlock,
                  style: context.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ).animateFadeUp(),
              ];
              final pad = PinPad(
                onSubmit: _submit,
                matches: _matches,
                message: _message.value,
              );
              final biometric = [
                if (find<AppLock>().biometricReady) ...[
                  SizedBox(height: Dimens.gap),
                  TextButton.icon(
                    onPressed: _biometric,
                    icon: const Icon(Icons.fingerprint_rounded),
                    label: Text(getString.appLockUseBiometric),
                  ),
                ],
              ];
              if (wide) {
                return Padding(
                  padding: EdgeInsets.all(Dimens.pagePad),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [...head, ...biometric],
                        ),
                      ),
                      Expanded(
                        child: FittedBox(fit: BoxFit.scaleDown, child: pad),
                      ),
                    ],
                  ),
                );
              }
              return CustomScrollConfig(
                context,
                children: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(Dimens.pagePad),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ...head,
                            SizedBox(height: Dimens.gapLg),
                            pad,
                            ...biometric,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
