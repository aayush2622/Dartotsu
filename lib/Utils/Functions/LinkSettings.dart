import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import 'SnackBar.dart';
import '../../Core/State/State.dart';

const _channel = MethodChannel('dartotsu/links');

final linkHandlingEnabled = true.live;

bool get canOpenLinkSettings =>
    Platform.isAndroid && !linkHandlingEnabled.value;

Future<void> refreshLinkHandling() async {
  if (!Platform.isAndroid) return;
  linkHandlingEnabled.value =
      await _channel.invokeMethod<bool>('isLinkHandlingEnabled') ?? true;
}

Future<void> openLinkSettings() async {
  if (!Platform.isAndroid) return;
  final opened = await _channel.invokeMethod<bool>('openLinkSettings');
  if (opened != true) return snackString(getString.linkSettingsFailed);
  late final AppLifecycleListener listener;
  listener = AppLifecycleListener(
    onResume: () {
      unawaited(refreshLinkHandling());
      listener.dispose();
    },
  );
}
