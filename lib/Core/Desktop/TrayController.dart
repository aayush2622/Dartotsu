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
      menu
        ..addItem(_show)
        ..addItem(_status)
        ..addSeparator()
        ..addItem(_quit);
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

  void _dropTray() {
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
