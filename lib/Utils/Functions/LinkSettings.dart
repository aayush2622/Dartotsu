import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'SnackBar.dart';

const _channel = MethodChannel('dartotsu/links');

final linkHandlingEnabled = true.obs;

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
  if (opened != true) return snackString('Could not open the system settings');
  late final AppLifecycleListener listener;
  listener = AppLifecycleListener(
    onResume: () {
      unawaited(refreshLinkHandling());
      listener.dispose();
    },
  );
}
