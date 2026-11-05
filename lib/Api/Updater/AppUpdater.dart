import '../../Logger.dart';
import 'package:collection/collection.dart';
import 'dart:async';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:install_plugin/install_plugin.dart';
import 'package:path/path.dart' as path;
import 'package:rhttp/rhttp.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Preferences/StorageManager.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Screen/Update/UpdateSheet.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';

enum UpdatePhase { idle, preparing, downloading, installing, failed }

class UpdateInfo {
  final String tag;
  final String name;
  final String body;
  final DateTime? published;
  final num? size;

  const UpdateInfo({
    required this.tag,
    required this.name,
    required this.body,
    this.published,
    this.size,
  });

  factory UpdateInfo.fromRelease(Map data, {num? size}) => UpdateInfo(
    tag: '${data['tag_name'] ?? ''}',
    name: '${data['name'] ?? ''}',
    body: '${data['body'] ?? ''}',
    published: DateTime.tryParse('${data['published_at'] ?? ''}')?.toLocal(),
    size: size,
  );
}

class AppUpdater extends AppController {
  static const _mainRepo = 'aayush2622/Dartotsu';
  static const _alphaRepo = 'grayankit/Dartotsu-Downloader';

  NetworkManager get _network => find();
  bool get _checkForUpdates => PrefName.checkForUpdates.value;

  UpdateChannel get _channel => PrefManager.watch(PrefName.updateChannel).value;

  bool get _isNixManaged =>
      Platform.isLinux && Platform.resolvedExecutable.contains('/nix/store/');

  bool get _runningFromAppImage {
    final appImage = Platform.environment['APPIMAGE'];
    return Platform.isLinux && appImage != null && appImage.isNotEmpty;
  }

  /// Checks for application updates by comparing the current version hash
  /// with the latest release on GitHub. If an update is available, it shows
  /// a bottom sheet with update details and options to download and install.
  /// [force]: If true, forces the update check regardless of user settings.
  Future<void> checkForUpdate({bool force = false}) async {
    try {
      await _check(force);
    } catch (e, st) {
      logError('AppUpdater', e, st);
      if (force) snackString(getString.updateCheckFailed);
    }
  }

  Future<void> _check(bool force) async {
    if (!_checkForUpdates && !force) return;
    var hash = await loadEnv("hash");

    if (hash == null) {
      if (force) snackString("Hash not found");
      return;
    }

    final data = await _fetchLatestRelease(force: force);
    if (data == null) return;

    final release = data["tag_name"];

    if (release == hash) {
      if (force) snackString(getString.updateUpToDate);
      return;
    }

    if (!force && PrefName.skippedUpdates.value.contains(release)) return;

    final compare = await _network.get(
      'https://api.github.com/repos/$_mainRepo/compare/$release...$hash',
    );
    final compareData = compare.data;
    final isUpdate = compareData is Map && compareData['status'] == 'behind';
    if (!isUpdate) {
      if (force) snackString(getString.updateUpToDate);
      return;
    }

    unawaited(_showUpdateBottomSheet(data));
  }

  Future<Map?> _fetchLatestRelease({required bool force}) async {
    switch (_channel) {
      case UpdateChannel.stable:
        final response = await _network.get(
          'https://api.github.com/repos/$_mainRepo/releases/latest',
        );
        return _unwrapRelease(response, force: force);
      case UpdateChannel.alpha:
        final response = await _network.get(
          'https://api.github.com/repos/$_alphaRepo/releases/latest',
        );
        return _unwrapRelease(response, force: force);
      case UpdateChannel.prerelease:
        final response = await _network.get(
          'https://api.github.com/repos/$_mainRepo/releases',
        );
        if (response.statusCode != 200 ||
            response.data is! List ||
            (response.data as List).isEmpty) {
          if (force) snackString(getString.updateNoReleases);
          return null;
        }
        return (response.data as List).first as Map;
    }
  }

  Map? _unwrapRelease(
    NetworkResponse<dynamic> response, {
    required bool force,
  }) {
    if (response.statusCode == 404) {
      if (force) {
        snackString(getString.updateNotFound('${response.statusMessage}'));
      }
      return null;
    }
    if (response.statusCode != 200) return null;
    if (response.data == null || response.data is! Map) {
      if (force) snackString(getString.updateInvalidResponse);
      return null;
    }
    return response.data as Map;
  }

  Map? _release;
  bool _sheetOpen = false;
  bool _cancelled = false;

  final phase = UpdatePhase.idle.live;
  final error = Live<String?>(null);
  final progress = (-1.0).live;
  final receivedBytes = 0.live;
  final totalBytes = 0.live;
  final speed = 0.0.live;
  CancelToken? _cancelToken;
  DateTime? _sampleAt;
  int _sampleBytes = 0;

  bool get busy =>
      phase.value == UpdatePhase.preparing ||
      phase.value == UpdatePhase.downloading ||
      phase.value == UpdatePhase.installing;

  Future<void> _showUpdateBottomSheet(Map data) async {
    final context = appContext;
    if (_sheetOpen || context == null) return;
    _sheetOpen = true;
    _release = data;
    _cancelled = false;
    _resetDownloadState();
    phase.value = UpdatePhase.idle;
    error.value = null;
    final asset = await _pickAsset((data['assets'] as List?) ?? const []);
    final info = UpdateInfo.fromRelease(data, size: asset?['size'] as num?);
    final skip = false.live;
    if (!context.mounted) {
      _sheetOpen = false;
      return;
    }
    unawaited(
      showCustomBottomDialog(
        context,
        UpdateSheet(
          updater: this,
          info: info,
          skip: skip,
          onLater: () {
            if (skip.value && info.tag.isNotEmpty) {
              PrefName.skippedUpdates.value = [
                ...PrefName.skippedUpdates.value,
                info.tag,
              ];
            }
            appNavigator?.pop();
          },
        ),
        onDismissed: () {
          _sheetOpen = false;
          cancel();
        },
      ),
    );
  }

  Future<void> start() async {
    final data = _release;
    if (data == null || busy) return;
    _cancelled = false;
    error.value = null;
    _resetDownloadState();
    phase.value = UpdatePhase.preparing;
    try {
      await _run(data);
    } catch (e, st) {
      if (_cancelled) return;
      logError('AppUpdater', e, st);
      _fail('$e');
    }
  }

  void cancel() {
    _cancelled = true;
    final token = _cancelToken;
    if (token != null && !token.isCancelled) token.cancel();
    _resetDownloadState();
    phase.value = UpdatePhase.idle;
  }

  Future<void> _run(Map data) async {
    if (Platform.isIOS) {
      final page = data['html_url'];
      if (page is String) unawaited(openLinkInBrowser(page));
      snackString(getString.updateIosHint);
      _finish();
      return;
    }
    if (!Platform.isAndroid && _isNixManaged) {
      snackString(getString.nixManagedUpdate);
      _finish();
      return;
    }
    final asset = await _pickAsset((data['assets'] as List?) ?? const []);
    final url = asset?['browser_download_url'] as String?;
    if (_cancelled) return;
    if (url == null) {
      _fail(getString.updateNoAsset);
      return;
    }
    if (Platform.isAndroid) return _downloadAndInstallApk(url);
    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      return _selfUpdateDesktop(url);
    }
    unawaited(openLinkInBrowser(url));
    snackString(getString.updateOpenedBrowser);
    _finish();
  }

  void _finish() {
    _resetDownloadState();
    phase.value = UpdatePhase.idle;
  }

  void _fail(String message) {
    _resetDownloadState();
    error.value = message;
    phase.value = UpdatePhase.failed;
  }

  void _resetDownloadState() {
    progress.value = -1;
    receivedBytes.value = 0;
    totalBytes.value = 0;
    speed.value = 0;
    _sampleAt = null;
    _sampleBytes = 0;
    _cancelToken = null;
  }

  void _onProgress(int received, int total) {
    if (total <= 0) return;
    receivedBytes.value = received;
    totalBytes.value = total;
    progress.value = (received / total) * 100;
    final now = DateTime.now();
    final at = _sampleAt;
    if (at == null) {
      _sampleAt = now;
      _sampleBytes = received;
      return;
    }
    final elapsed = now.difference(at).inMilliseconds;
    if (elapsed < 700) return;
    final rate = (received - _sampleBytes) * 1000 / elapsed;
    speed.value = speed.value == 0 ? rate : speed.value * 0.6 + rate * 0.4;
    _sampleAt = now;
    _sampleBytes = received;
  }

  Future<Map<String, dynamic>?> _pickAsset(List a) async {
    final assets = a.cast<Map<String, dynamic>>();
    if (Platform.isAndroid) {
      final abi = await _getDeviceABI();
      if (abi != null) {
        final match = assets.firstWhereOrNull(
          (a) => (a['name'] as String).contains('Android_$abi'),
        );
        if (match != null) return match;
      }
      return assets.firstWhereOrNull(
        (a) => (a['name'] as String).endsWith('.apk'),
      );
    }
    final platformExtensions = {
      Platform.isWindows: ['.exe', '.msi'],
      Platform.isLinux: _runningFromAppImage
          ? ['.AppImage', '.zip']
          : ['.zip', '.deb', '.tar.gz'],
      Platform.isMacOS: ['.dmg'],
      Platform.isIOS: ['.ipa'],
    };

    for (final entry in platformExtensions.entries) {
      if (!entry.key) continue;
      for (final ext in entry.value) {
        final match = assets.firstWhereOrNull(
          (a) => (a['name'] as String).endsWith(ext),
        );
        if (match != null) return match;
      }
    }
    return null;
  }

  Future<String?> _getDeviceABI() async {
    if (!Platform.isAndroid) return null;

    final abis = (await DeviceInfoPlugin().androidInfo).supportedAbis;
    if (abis.isEmpty) return null;

    const preferred = ['arm64-v8a', 'armeabi-v7a', 'x86_64', 'x86'];
    return preferred.firstWhereOrNull((abi) => abis.contains(abi));
  }

  Future<void> _downloadAndInstallApk(String apkUrl) async {
    try {
      final packageName = path.basenameWithoutExtension(apkUrl);
      final tempDir = await StorageManager.getTmpDirectory();
      final filePath = '${tempDir!.path}/$packageName.apk';
      final file = File(filePath);
      _cancelToken = _network.newCancelToken();
      phase.value = UpdatePhase.downloading;
      await _network.download(
        apkUrl,
        filePath,
        cancelToken: _cancelToken,
        onProgress: _onProgress,
      );
      if (_cancelled) return;

      phase.value = UpdatePhase.installing;
      final result = await InstallPlugin.installApk(
        file.path,
        appId: packageName,
      );

      if (result['isSuccess'] != true) {
        final message = '${result['errorMessage'] ?? 'APK install failed'}';
        if (message.toLowerCase().contains('cancel')) {
          logger('APK install cancelled by the user', tag: 'UPDATER');
          _finish();
          snackString(getString.updateInstallCancelled);
          return;
        }
        throw message;
      }

      if (await file.exists()) {
        await file.delete();
      }
      _finish();
    } catch (e, st) {
      if (_cancelled) return;
      logError('AppUpdater', e, st);
      _fail(getString.updateInstallFailed('$e'));
    }
  }

  Future<String> _downloadUpdateArchive(String url) async {
    final tempDir = await StorageManager.getTmpDirectory();
    final ext = path.extension(Uri.parse(url).path);
    final filePath = path.join(tempDir!.path, 'dartotsu_update$ext');
    _cancelToken = _network.newCancelToken();
    phase.value = UpdatePhase.downloading;
    await _network.download(
      url,
      filePath,
      cancelToken: _cancelToken,
      onProgress: _onProgress,
    );
    return filePath;
  }

  bool _canWrite(Directory dir) {
    try {
      final probe = File(path.join(dir.path, '.dartotsu-write-test-$pid'));
      probe.writeAsStringSync('');
      probe.deleteSync();
      return true;
    } catch (e, st) {
      logError('AppUpdater', e, st);
      return false;
    }
  }

  Directory _resolveBundleRoot(Directory extracted) {
    final entries = extracted.listSync();
    if (entries.length == 1 && entries.single is Directory) {
      return entries.single as Directory;
    }
    return extracted;
  }

  Future<void> _selfUpdateDesktop(String url) async {
    try {
      final filePath = await _downloadUpdateArchive(url);
      if (_cancelled) return;
      phase.value = UpdatePhase.installing;
      if (Platform.isLinux) {
        await _applyLinuxUpdate(filePath);
      } else if (Platform.isMacOS) {
        await _applyMacUpdate(filePath);
      } else if (Platform.isWindows) {
        await _applyWindowsUpdate(filePath);
      }
    } catch (e) {
      if (_cancelled) return;
      _fail(getString.autoUpdateFailed(e.toString()));
      unawaited(openLinkInBrowser(url));
    }
  }

  Future<void> _applyLinuxUpdate(String filePath) async {
    if (path.extension(filePath).toLowerCase() == '.appimage') {
      await _applyAppImageUpdate(filePath);
      return;
    }
    final zipPath = filePath;
    final exePath = File(
      Platform.resolvedExecutable,
    ).resolveSymbolicLinksSync();
    final installDir = Directory(path.dirname(exePath));
    final parentDir = installDir.parent;

    if (_isNixManaged || !_canWrite(parentDir)) {
      throw 'install directory is not writable';
    }

    final stagingDir = Directory(
      path.join(parentDir.path, '.dartotsu-update-staging'),
    );
    if (stagingDir.existsSync()) stagingDir.deleteSync(recursive: true);
    await extractFileToDisk(zipPath, stagingDir.path);
    final bundleRoot = _resolveBundleRoot(stagingDir);

    for (final name in ['dartotsu', 'dartotsu.bin']) {
      final f = File(path.join(bundleRoot.path, name));
      if (f.existsSync()) {
        await Process.run('chmod', ['+x', f.path]);
      }
    }

    final backupDir = Directory(
      '${installDir.path}.bak-${DateTime.now().millisecondsSinceEpoch}',
    );
    installDir.renameSync(backupDir.path);
    bundleRoot.renameSync(installDir.path);
    if (stagingDir.existsSync()) {
      try {
        stagingDir.deleteSync(recursive: true);
      } catch (e, st) {
        logError('AppUpdater', e, st);
      }
    }

    await Process.start(
      path.join(installDir.path, 'dartotsu'),
      [],
      mode: ProcessStartMode.detached,
    );

    try {
      backupDir.deleteSync(recursive: true);
    } catch (e, st) {
      logError('AppUpdater', e, st);
    }

    exit(0);
  }

  Future<void> _applyAppImageUpdate(String filePath) async {
    final current = Platform.environment['APPIMAGE'];
    if (current == null || current.isEmpty) {
      throw 'not running from an AppImage';
    }
    final target = File(current);
    if (_isNixManaged || !_canWrite(target.parent)) {
      throw 'install directory is not writable';
    }

    final staged = File('$current.partial');
    if (staged.existsSync()) staged.deleteSync();
    await File(filePath).copy(staged.path);
    final chmod = await Process.run('chmod', ['+x', staged.path]);
    if (chmod.exitCode != 0) {
      throw 'failed to mark AppImage executable: ${chmod.stderr}';
    }
    staged.renameSync(current);
    await Process.start(current, [], mode: ProcessStartMode.detached);
    exit(0);
  }

  Future<void> _applyWindowsUpdate(String installerPath) async {
    await Process.start(
      installerPath,
      [],
      mode: ProcessStartMode.detached,
      runInShell: true,
    );
    exit(0);
  }

  Future<void> _applyMacUpdate(String dmgPath) async {
    final exePath = Platform.resolvedExecutable;
    final appDir = Directory(path.dirname(path.dirname(path.dirname(exePath))));

    if (!appDir.path.endsWith('.app') || !_canWrite(appDir.parent)) {
      throw 'app bundle location is not writable';
    }

    final mountPoint = path.join(
      Directory.systemTemp.path,
      'dartotsu-update-mount-${DateTime.now().millisecondsSinceEpoch}',
    );
    final attach = await Process.run('hdiutil', [
      'attach',
      dmgPath,
      '-nobrowse',
      '-mountpoint',
      mountPoint,
      '-quiet',
    ]);
    if (attach.exitCode != 0) {
      throw 'failed to mount update image: ${attach.stderr}';
    }

    try {
      final mounted = Directory(mountPoint)
          .listSync()
          .whereType<Directory>()
          .firstWhere((d) => d.path.endsWith('.app'));

      final stagingApp = Directory(
        path.join(appDir.parent.path, '.dartotsu-update-staging.app'),
      );
      if (stagingApp.existsSync()) stagingApp.deleteSync(recursive: true);
      final copy = await Process.run('cp', [
        '-R',
        mounted.path,
        stagingApp.path,
      ]);
      if (copy.exitCode != 0) {
        throw 'failed to copy update: ${copy.stderr}';
      }

      final backupDir = Directory(
        '${appDir.path}.bak-${DateTime.now().millisecondsSinceEpoch}',
      );
      appDir.renameSync(backupDir.path);
      stagingApp.renameSync(appDir.path);

      await Process.run('xattr', ['-dr', 'com.apple.quarantine', appDir.path]);
      await Process.start('open', [
        '-n',
        appDir.path,
      ], mode: ProcessStartMode.detached);

      try {
        backupDir.deleteSync(recursive: true);
      } catch (e, st) {
        logError('AppUpdater', e, st);
      }
    } finally {
      await Process.run('hdiutil', ['detach', mountPoint, '-quiet']);
      try {
        File(dmgPath).deleteSync();
      } catch (e, st) {
        logError('AppUpdater', e, st);
      }
    }

    exit(0);
  }
}
