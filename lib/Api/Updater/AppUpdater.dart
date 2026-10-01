import 'dart:async';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:device_info_plus/device_info_plus.dart';
import '../../Utils/Nav/DpadNav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:install_plugin/install_plugin.dart';
import 'package:markdown_widget/config/configs.dart';
import 'package:markdown_widget/widget/blocks/leaf/heading.dart';
import 'package:markdown_widget/widget/blocks/leaf/link.dart';
import 'package:markdown_widget/widget/markdown.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:rhttp/rhttp.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';

class AppUpdater extends GetxController {
  static const _mainRepo = 'aayush2622/Dartotsu';
  static const _alphaRepo = 'grayankit/Dartotsu-Downloader';

  NetworkManager get _network => find();
  bool get _checkForUpdates => PrefName.checkForUpdates.value;

  UpdateChannel get _channel => PrefManager.watch(PrefName.updateChannel).value;

  bool get _isNixManaged =>
      Platform.isLinux && Platform.resolvedExecutable.contains('/nix/store/');

  /// Checks for application updates by comparing the current version hash
  /// with the latest release on GitHub. If an update is available, it shows
  /// a bottom sheet with update details and options to download and install.
  /// [force]: If true, forces the update check regardless of user settings.
  Future<void> checkForUpdate({bool force = false}) async {
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
      if (force) snackString("Latest version is already installed");
      return;
    }

    if (!force && PrefName.skippedUpdates.value.contains(release)) return;

    final compare = await _network.get(
      'https://api.github.com/repos/$_mainRepo/compare/$release...$hash',
    );
    final compareData = compare.data;
    final isUpdate = compareData is Map && compareData['status'] == 'behind';
    if (!isUpdate) {
      if (force) snackString("No Update Available");
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
          if (force) snackString("No releases found");
          return null;
        }
        return (response.data as List).first as Map;
    }
  }

  Map? _unwrapRelease(NetworkResponse<dynamic> response, {required bool force}) {
    if (response.statusCode == 404) {
      if (force) {
        snackString("Ooo Nooo you fell into limbo: ${response.statusMessage}");
      }
      return null;
    }
    if (response.statusCode != 200) return null;
    if (response.data == null || response.data is! Map) {
      if (force) snackString("Invalid update response");
      return null;
    }
    return response.data as Map;
  }

  Future<void> _showUpdateBottomSheet(dynamic data) async {
    final context = Get.context!;
    final scheme = context.colorScheme;
    final textStyle = Theme.of(context).textTheme.labelMedium;

    final skipUpdate = false.obs;

    showCustomBottomDialog(
      context,
      CustomBottomDialog(
        title: "Update Available",
        viewList: [
          const SizedBox(height: 12),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: context.cardColor.withValues(alpha: .4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                data["tag_name"] ?? "",
                style: textStyle?.copyWith(color: scheme.primary),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Change Logs: ", style: textStyle),
                const SizedBox(height: 8),
                Container(
                  constraints: const BoxConstraints(maxHeight: 260),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: context.cardColor.withValues(alpha: .4),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Obx(() {
                    if (_downloadProgress.value >= 0) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          LinearProgressIndicator(
                            value: _downloadProgress.value / 100,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "${_downloadedBytes.value ~/ (1024 * 1024)} MB / "
                            "${_totalBytes.value ~/ (1024 * 1024)} MB "
                            "${_downloadProgress.value.toStringAsFixed(1)}%",
                            style: textStyle,
                          ),
                        ],
                      );
                    }

                    return DpadFocusable(
                      enabled: false,
                      child: FocusTraversalGroup(
                        descendantsAreFocusable: false,
                        child: MarkdownWidget(
                          data: data["body"] ?? "",
                          shrinkWrap: true,
                          config: MarkdownConfig(
                            configs: [
                              LinkConfig(
                                onTap: openLinkInBrowser,
                                style: textStyle!.copyWith(
                                  color: scheme.primary,
                                ),
                              ),
                              H1Config(
                                style: textStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: scheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Obx(() {
            if (_downloadProgress.value >= 0) {
              return const SizedBox.shrink();
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Checkbox(
                    value: skipUpdate.value,
                    visualDensity: VisualDensity.compact,
                    onChanged: (v) => skipUpdate.value = v ?? false,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "Skip this update",
                    style: textStyle?.copyWith(
                      fontSize: 13,
                      color: scheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            );
          }),
          const SizedBox(height: 8),
        ],
        negativeText: "Later",
        positiveText: "Update",
        negativeCallback: () {
          final tag = data["tag_name"];
          if (skipUpdate.value && tag is String) {
            PrefName.skippedUpdates.value = [
              ...PrefName.skippedUpdates.value,
              tag,
            ];
          }
          Get.back();
        },
        positiveCallback: () async {
          if (Platform.isAndroid) {
            final assets = data['assets'] as List;
            final downloadUrl = await _getAssetDownloadUrl(assets);
            if (downloadUrl == null) return;
            unawaited(_downloadAndInstallApk(downloadUrl));
            return;
          }

          if (Platform.isIOS) {
            final releasePage = data['html_url'] as String?;
            if (releasePage != null) unawaited(openLinkInBrowser(releasePage));
            snackString(
              "iOS builds aren't on the App Store — grab the .ipa from "
              "the release page and sideload it with AltStore or SideStore",
            );
            return;
          }

          if (_isNixManaged) {
            snackString(
              'This build is managed by Nix — run "nix flake update" on '
              'your flake and rebuild instead of updating from here',
            );
            return;
          }

          final assets = data['assets'] as List;
          final downloadUrl = await _getAssetDownloadUrl(assets);
          if (downloadUrl == null) return;

          if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
            unawaited(_selfUpdateDesktop(downloadUrl));
          } else {
            unawaited(openLinkInBrowser(downloadUrl));
            snackString("Check your browser");
          }
        },
      ),
      onDismissed: () {
        if (_cancelToken != null && !_cancelToken!.isCancelled) {
          _cancelToken!.cancel();
        }
        _resetDownloadState();
      },
    );
  }

  void _resetDownloadState() {
    _downloadProgress.value = -1;
    _downloadedBytes.value = 0;
    _totalBytes.value = 0;
    _cancelToken = null;
  }

  Future<String?> _getAssetDownloadUrl(List a) async {
    var assets = a.cast<Map<String, dynamic>>();
    if (Platform.isAndroid) {
      final abi = await _getDeviceABI();

      if (abi != null) {
        final match = assets.firstWhere(
          (a) => (a['name'] as String).contains('Android_$abi'),
          orElse: () => {},
        );
        if (match.isNotEmpty) return match['browser_download_url'];
      }
      final fallbackApk = assets.firstWhere(
        (a) => (a['name'] as String).endsWith('.apk'),
        orElse: () => {},
      );
      if (fallbackApk.isNotEmpty) return fallbackApk['browser_download_url'];
      return null;
    }
    final platformExtensions = {
      Platform.isWindows: ['.exe', '.msi'],
      Platform.isLinux: ['.AppImage', '.deb', '.tar.gz', '.zip'],
      Platform.isMacOS: ['.dmg'],
      Platform.isIOS: ['.ipa'],
    };

    for (final entry in platformExtensions.entries) {
      if (entry.key) {
        for (final ext in entry.value) {
          final match = assets.firstWhere(
            (a) => (a['name'] as String).endsWith(ext),
            orElse: () => {},
          );
          if (match.isNotEmpty) return match['browser_download_url'];
        }
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

  final RxDouble _downloadProgress = (-1.0).obs;
  final RxInt _downloadedBytes = 0.obs;
  final RxInt _totalBytes = 0.obs;
  CancelToken? _cancelToken;
  Future<void> _downloadAndInstallApk(String apkUrl) async {
    try {
      final packageName = path.basenameWithoutExtension(apkUrl);

      _resetDownloadState();

      final tempDir = await getTemporaryDirectory();
      final filePath = '${tempDir.path}/$packageName.apk';
      final file = File(filePath);
      _cancelToken = _network.newCancelToken();
      await _network.download(
        apkUrl,
        filePath,
        cancelToken: _cancelToken,
        onProgress: (received, total) {
          if (total <= 0) return;
          _downloadedBytes.value = received;
          _totalBytes.value = total;
          _downloadProgress.value = (received / total) * 100;
        },
      );

      final result = await InstallPlugin.installApk(
        file.path,
        appId: packageName,
      );

      if (result['isSuccess'] != true) {
        throw result['errorMessage'] ?? 'APK install failed';
      }

      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      _resetDownloadState();
      rethrow;
    }
  }

  Future<String> _downloadUpdateArchive(String url) async {
    final tempDir = await getTemporaryDirectory();
    final ext = path.extension(Uri.parse(url).path);
    final filePath = path.join(tempDir.path, 'dartotsu_update$ext');
    _cancelToken = _network.newCancelToken();
    await _network.download(
      url,
      filePath,
      cancelToken: _cancelToken,
      onProgress: (received, total) {
        if (total <= 0) return;
        _downloadedBytes.value = received;
        _totalBytes.value = total;
        _downloadProgress.value = (received / total) * 100;
      },
    );
    return filePath;
  }

  bool _canWrite(Directory dir) {
    try {
      final probe = File(path.join(dir.path, '.dartotsu-write-test-$pid'));
      probe.writeAsStringSync('');
      probe.deleteSync();
      return true;
    } catch (_) {
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
      _resetDownloadState();
      final filePath = await _downloadUpdateArchive(url);
      if (Platform.isLinux) {
        await _applyLinuxUpdate(filePath);
      } else if (Platform.isMacOS) {
        await _applyMacUpdate(filePath);
      } else if (Platform.isWindows) {
        await _applyWindowsUpdate(filePath);
      }
    } catch (e) {
      _resetDownloadState();
      snackString(
        'Automatic update failed ($e) — opening the download page instead',
      );
      unawaited(openLinkInBrowser(url));
    }
  }

  Future<void> _applyLinuxUpdate(String zipPath) async {
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
      } catch (_) {}
    }

    await Process.start(
      path.join(installDir.path, 'dartotsu'),
      [],
      mode: ProcessStartMode.detached,
    );

    try {
      backupDir.deleteSync(recursive: true);
    } catch (_) {}

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
    final appDir = Directory(
      path.dirname(path.dirname(path.dirname(exePath))),
    );

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
      final mounted = Directory(
        mountPoint,
      ).listSync().whereType<Directory>().firstWhere(
        (d) => d.path.endsWith('.app'),
      );

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
      } catch (_) {}
    } finally {
      await Process.run('hdiutil', ['detach', mountPoint, '-quiet']);
      try {
        File(dmgPath).deleteSync();
      } catch (_) {}
    }

    exit(0);
  }
}
