import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:dbus/dbus.dart';
import 'package:flutter/services.dart';
import 'package:nativeapi/nativeapi.dart' as native;
import 'package:path_provider/path_provider.dart';
import 'package:window_manager/window_manager.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Logger.dart';
import '../../Screen/Player/Engine/PipWindow.dart';
import '../../Screen/Settings/Sync/Data/SyncController.dart';
import '../../Api/Updater/AppUpdater.dart';
import '../../Utils/Functions/AppRouteLinks.dart';
import '../../Utils/Functions/AppWindow.dart';
import '../Downloads/DownloadEngine.dart';
import '../Downloads/DownloadTask.dart';

bool get hasTray => Platform.isLinux || Platform.isWindows || Platform.isMacOS;

class TrayController extends AppController {
  static const _idleChecks = 3;

  native.TrayIcon? _tray;
  native.MenuItem? _status;
  native.MenuItem? _show;
  native.MenuItem? _quit;
  native.MenuItem? _transfers;
  native.MenuItem? _playback;
  final _shown = <native.MenuItem, (String, bool)>{};
  native.ListenerId? _trayListener;
  native.ListenerId? _windowListener;
  Disposer? _prefWatch;
  Timer? _watch;
  bool _hidden = false;
  bool _quitting = false;
  bool _building = false;
  int _idle = 0;

  bool get ready => _tray != null;

  CloseAction get mode => PrefName.closeAction.value;

  bool get willHide =>
      ready &&
      !_quitting &&
      switch (mode) {
        CloseAction.quit => false,
        CloseAction.always => true,
        CloseAction.whenBusy => activity().isNotEmpty,
      };

  List<String> activity() {
    final out = <String>[];
    final downloads = findBuilt<DownloadEngine>()?.tasks
        .where(
          (t) =>
              t.isActive ||
              (t.state.value == DownloadState.queued &&
                  findBuilt<DownloadEngine>()?.blockedReason.value == null),
        )
        .length;
    if (downloads != null && downloads > 0) {
      out.add(getString.trayDownloading(downloads));
    }
    if (findBuilt<SyncController>()?.busy ?? false) {
      out.add(getString.traySyncing);
    }
    if (findBuilt<AppUpdater>()?.busy ?? false) {
      out.add(getString.trayUpdating);
    }
    if (PipWindow.active) out.add(getString.trayPlaying);
    return out;
  }

  void start() {
    if (!hasTray) return;
    _windowListener ??= appWindow?.addListener(_onWindow);
    _prefWatch ??= onChange(PrefName.closeAction.rx, (_) => unawaited(_sync()));
    unawaited(_sync());
  }

  Future<void> _sync() async {
    if (mode == CloseAction.quit) {
      _dropTray();
      return;
    }
    await _create();
  }

  Future<void> _create() async {
    if (_tray != null || _building) return;
    _building = true;
    try {
      if (!native.TrayManager.instance.isSupported() || !await _hasHost()) {
        return;
      }
      final icon = await _icon();
      final tray = native.TrayIcon.create();
      if (tray == null) return;
      final menu = native.Menu.create();
      if (menu == null) {
        tray.dispose();
        return;
      }
      _show = _item(getString.trayShow, _reveal);
      _status = native.MenuItem.createWithLabelAndType(
        getString.trayIdle,
        native.MenuItemType.normal,
      )?..isEnabled = false;
      _quit = _item(getString.trayQuit, () => unawaited(quit()));
      _transfers = _item(getString.trayPauseDownloads, _toggleTransfers);
      _playback = _item(getString.playerPipPause, _togglePlayback);
      menu
        ..addItem(_show)
        ..addItem(_status)
        ..addSeparator()
        ..addItem(_route(getString.continueWatching, 'continue'))
        ..addItem(_route(getString.traySearch, 'search'))
        ..addItem(_route(getString.downloadsTitle, 'downloads'))
        ..addItem(_route(getString.calendarTitle, 'calendar'))
        ..addSeparator()
        ..addItem(_transfers)
        ..addItem(_playback)
        ..addSeparator()
        ..addItem(_quit);
      menu.addListener((event) {
        if (event is native.MenuOpenedEvent) _refresh();
      });
      if (icon != null) tray.icon = icon;
      tray
        ..setTooltip('Dartotsu')
        ..setContextMenu(menu)
        ..setContextMenuTrigger(native.ContextMenuTrigger.rightClicked)
        ..setVisible(true);
      _trayListener = tray.addListener((event) {
        if (event is native.TrayIconClickedEvent ||
            event is native.TrayIconDoubleClickedEvent) {
          _toggle();
        }
      });
      _tray = tray;
      _refresh();
    } catch (e, st) {
      logError('TRAY', e, st);
      _dropTray();
    } finally {
      _building = false;
    }
  }

  native.MenuItem? _item(String label, void Function() onTap) {
    final item = native.MenuItem.createWithLabelAndType(
      label,
      native.MenuItemType.normal,
    );
    item?.addListener((event) {
      if (event is native.MenuItemClickedEvent) onTap();
    });
    return item;
  }

  native.MenuItem? _route(String label, String route) => _item(label, () {
    _reveal();
    final context = appContext;
    if (context == null) return;
    unawaited(AppRouteLinks().handle(context, Uri.parse(appRouteLink(route))));
  });

  bool get _downloadsRunning =>
      findBuilt<DownloadEngine>()?.tasks.any((t) => t.isActive) ?? false;

  bool get _downloadsPaused =>
      findBuilt<DownloadEngine>()?.tasks.any(
        (t) => t.state.value == DownloadState.paused,
      ) ??
      false;

  void _toggleTransfers() {
    final engine = findBuilt<DownloadEngine>();
    if (engine == null) return;
    if (_downloadsRunning) {
      engine.pauseAll();
    } else {
      engine.resumeAll();
    }
    _refresh();
  }

  void _togglePlayback() {
    final player = PipWindow.state;
    if (player == null) return;
    unawaited(player.togglePlayback());
    Timer(const Duration(milliseconds: 300), _refresh);
  }

  void _set(native.MenuItem? item, String label, {required bool enabled}) {
    if (item == null || _shown[item] == (label, enabled)) return;
    _shown[item] = (label, enabled);
    item
      ..label = label
      ..isEnabled = enabled;
  }

  void _dropTray() {
    _shown.clear();
    final tray = _tray;
    _tray = null;
    if (tray == null) return;
    final id = _trayListener;
    if (id != null) tray.removeListener(id);
    _trayListener = null;
    tray.setVisible(false);
    tray.dispose();
    if (_hidden) _reveal();
  }

  Future<bool> _hasHost() async {
    if (!Platform.isLinux) return true;
    final bus = DBusClient.session();
    try {
      final watcher = DBusRemoteObject(
        bus,
        name: 'org.kde.StatusNotifierWatcher',
        path: DBusObjectPath('/StatusNotifierWatcher'),
      );
      final value = await watcher
          .getProperty(
            'org.kde.StatusNotifierWatcher',
            'IsStatusNotifierHostRegistered',
          )
          .timeout(const Duration(seconds: 2));
      return value is DBusBoolean && value.value;
    } catch (_) {
      return false;
    } finally {
      await bus.close();
    }
  }

  Future<native.Image?> _icon() async {
    try {
      final dir = await getApplicationCacheDirectory();
      final file = File('${dir.path}${Platform.pathSeparator}tray-icon.png');
      if (!await file.exists()) {
        final data = await rootBundle.load('assets/images/logo.png');
        final codec = await ui.instantiateImageCodec(
          data.buffer.asUint8List(),
          targetWidth: 96,
          targetHeight: 96,
        );
        final image = (await codec.getNextFrame()).image;
        final png = await image.toByteData(format: ui.ImageByteFormat.png);
        image.dispose();
        codec.dispose();
        if (png == null) return null;
        await file.create(recursive: true);
        await file.writeAsBytes(png.buffer.asUint8List());
      }
      return native.Image.fromFile(file.path);
    } catch (e, st) {
      logError('TRAY', e, st);
      return null;
    }
  }

  void _onWindow(WindowEvent event) {
    if (event is! WindowCloseRequestedEvent || !willHide) return;
    final request = event.request;
    if (!request.isCancelable || !request.cancel()) return;
    _conceal();
  }

  void _conceal() {
    _hidden = true;
    _idle = 0;
    appWindow?.hide();
    _refresh();
    _watch?.cancel();
    _watch = Timer.periodic(const Duration(seconds: 2), (_) => _tick());
  }

  void _tick() {
    _refresh();
    if (mode != CloseAction.whenBusy) return;
    if (activity().isNotEmpty) {
      _idle = 0;
      return;
    }
    if (++_idle >= _idleChecks) unawaited(quit());
  }

  void _refresh() {
    final lines = activity();
    _status?.label = lines.isEmpty ? getString.trayIdle : lines.join(' · ');
    final running = _downloadsRunning;
    _set(
      _transfers,
      running ? getString.trayPauseDownloads : getString.trayResumeDownloads,
      enabled: running || _downloadsPaused,
    );
    final player = PipWindow.state;
    _set(
      _playback,
      player?.isPlaying ?? false
          ? getString.playerPipPause
          : getString.playerPipPlay,
      enabled: player != null,
    );
  }

  void _toggle() {
    if (_hidden) {
      _reveal();
    } else {
      appWindow
        ?..show()
        ..focus();
    }
  }

  void _reveal() {
    _hidden = false;
    _watch?.cancel();
    _watch = null;
    appWindow
      ?..show()
      ..focus();
  }

  Future<void> quit() async {
    if (_quitting) return;
    _quitting = true;
    _watch?.cancel();
    PipWindow.close();
    Timer(const Duration(seconds: 6), () => exit(0));
    appWindow?.close();
  }

  @override
  void onClose() {
    _watch?.cancel();
    _prefWatch?.dispose();
    final id = _windowListener;
    if (id != null) appWindow?.removeListener(id);
    _dropTray();
    super.onClose();
  }
}
