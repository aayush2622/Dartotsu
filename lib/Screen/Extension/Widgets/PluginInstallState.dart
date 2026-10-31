import 'dart:async';

import 'package:dartotsu_extension_bridge/Extensions/DownloadablePlugin.dart';

import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../../../Widgets/Components/ScreenState.dart';

enum PluginPhase { loading, ready, downloading, failed, missing }

class PluginInstallState extends ScreenState {
  final DownloadablePlugin plugin;
  final String name;

  PluginInstallState(this.plugin, this.name);

  final phase = PluginPhase.loading.live;
  final remote = Live<Map<String, dynamic>?>(null);
  final hasUpdate = false.live;
  final message = Live<String?>(null);

  bool _cancelled = false;

  bool get installed => plugin.installed.value;

  bool get busy =>
      phase.value == PluginPhase.downloading || plugin.downloading.value;

  bool get upToDate => installed && !hasUpdate.value;

  bool get installing => busy && plugin.progress.value >= 1;

  bool get canStart =>
      !busy && !upToDate && remote.value != null && phase.value.canStart;

  @override
  void onInit() {
    super.onInit();
    unawaited(load());
  }

  Future<void> load() async {
    if (busy) return;
    phase.value = PluginPhase.loading;
    message.value = null;
    try {
      final data = await plugin.fetchRemote(forceRefresh: true);
      if (!mounted) return;
      if (data == null) {
        phase.value = PluginPhase.missing;
        return;
      }
      remote.value = data;
      hasUpdate.value = installed && await plugin.checkForUpdate();
      if (!mounted) return;
      phase.value = PluginPhase.ready;
    } catch (e, st) {
      logError('PluginInstall', e, st);
      if (!mounted) return;
      message.value = e.toString().replaceFirst('Exception: ', '');
      phase.value = PluginPhase.failed;
    }
  }

  Future<void> start() async {
    if (!canStart) return;
    _cancelled = false;
    phase.value = PluginPhase.downloading;
    message.value = null;
    Object? thrown;
    try {
      if (installed) {
        await plugin.update();
      } else {
        await plugin.download();
      }
    } catch (e, st) {
      thrown = e;
      logError('PluginInstall', e, st);
    }
    if (!mounted) return;
    if (_cancelled) {
      phase.value = PluginPhase.ready;
      return;
    }
    final error =
        plugin.error.value ??
        (thrown?.toString().replaceFirst('Exception: ', ''));
    if (error != null || !installed) {
      message.value = error ?? name;
      phase.value = PluginPhase.failed;
      return;
    }
    hasUpdate.value = false;
    phase.value = PluginPhase.ready;
    pop();
  }

  void cancel() {
    if (!busy || installing) return;
    _cancelled = true;
    plugin.cancel();
  }

  Future<void> retry() => remote.value == null ? load() : _again();

  Future<void> _again() async {
    phase.value = PluginPhase.ready;
    await start();
  }
}

extension on PluginPhase {
  bool get canStart => this == PluginPhase.ready || this == PluginPhase.failed;
}
