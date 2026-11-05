import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../../Core/NetworkManager/NetworkManager.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Widgets/Components/ScreenState.dart';
import '../../../Extension/SourcePreferenceScreen.dart';
import '../../../Webview/WebView.dart';
import '../Data/SourceHealth.dart';

enum ToolsBusy { idle, testing, solving }

class SourceToolsState extends ScreenState {
  final Source source;

  SourceToolsState(this.source);

  late final health = SourceHealth.read(source).live;
  final probe = Live<SourceProbe?>(null);
  late final lastSolve = Live<CloudflareResult?>(
    SourceHealth.lastSolve(source),
  );
  final busy = ToolsBusy.idle.live;

  bool get working => busy.value != ToolsBusy.idle;

  void refresh() {
    health.value = SourceHealth.read(source);
    lastSolve.value = SourceHealth.lastSolve(source);
  }

  Future<void> test() async {
    if (working) return;
    busy.value = ToolsBusy.testing;
    final result = await SourceHealth.test(source);
    if (!mounted) return;
    probe.value = result;
    busy.value = ToolsBusy.idle;
    refresh();
  }

  Future<void> solve() async {
    if (working) return;
    busy.value = ToolsBusy.solving;
    final result = await SourceHealth.solve(source);
    if (!mounted) return;
    busy.value = ToolsBusy.idle;
    refresh();
    if (result?.cleared == true) {
      unawaited(test());
    } else if (result?.failure != null) {
      probe.value = SourceProbe(
        ProbeResult.challenge,
        probe.value?.status,
        result,
      );
    }
  }

  Future<void> openWebView() async {
    final url = health.value.url;
    if (url == null) return;
    await navigateToPage<void>(context, WebView(url: url));
    if (!mounted) return;
    refresh();
    unawaited(test());
  }

  void openSettings() => unawaited(
    navigateToPage<void>(context, SourcePreferenceScreen(source: source)),
  );

  Future<void> clearCookies() async {
    final host = health.value.host;
    if (host.isEmpty) return;
    await find<NetworkManager>().cookieManager.deleteCookiesForDomain(host);
    if (!mounted) return;
    probe.value = null;
    refresh();
    snackString(getString.watchCookiesCleared);
  }
}
