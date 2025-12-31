import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:markdown_widget/config/configs.dart';
import 'package:markdown_widget/widget/blocks/leaf/heading.dart';
import 'package:markdown_widget/widget/blocks/leaf/link.dart';
import 'package:markdown_widget/widget/markdown.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:install_plugin/install_plugin.dart';
import 'package:rhttp/rhttp.dart';

import '../../Functions/Extensions/ContextExtensions.dart';
import '../../Functions/Functions/GetXFunctions.dart';
import '../../Functions/Function.dart';
import '../../Functions/Functions/SnackBar.dart';
import '../../Utils/NetworkManager/NetworkManager.dart';
import '../../Utils/Preferences/PrefManager.dart';
import '../../Widgets/CustomBottomDialog.dart';

class AppUpdater {
  final _skippedUpdatesKey = "skippedUpdateList";
  final _mainRepo = 'aayush2622/Dartotsu';
  final _alphaRepo = 'grayankit/Dartotsu-Downloader';

  NetworkManager get _network => find();
  bool get _checkForUpdates => loadCustomData("checkForUpdates") ?? true;
  bool get _alphaUpdates => loadCustomData("alphaUpdates") ?? !false;

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
    var response = await _network.get(
        'https://api.github.com/repos/${_alphaUpdates ? _alphaRepo : _mainRepo}/releases/latest');
    if (response.statusCode == 404) {
      if (force) {
        snackString("Ooo Nooo you fell into limbo: ${response.statusMessage}");
      }
      return;
    }

    if (response.statusCode != 200) return;

    if (response.data == null || response.data is! Map) {
      if (force) snackString("Invalid update response");
      return;
    }

    final data = response.data;

    final release = data["tag_name"];

    if (release == hash) {
      if (force) snackString("Latest version is already installed");
      return;
    }

    var skippedUpdates = loadCustomData<List<String>>(_skippedUpdatesKey) ?? [];

    if (skippedUpdates.contains(release) && !force) return;

    final compare = await _network.get(
      'https://api.github.com/repos/$_mainRepo/compare/$release...$hash',
    );
    final compareData = compare.data;
    final isUpdate = compareData['status'] == 'behind';
    if (!isUpdate) {
      if (force) snackString("No Update Available");
      return;
    }

    _showUpdateBottomSheet(data);
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
                color: context.cardColor,
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
                Text(
                  "Change Logs: ",
                  style: textStyle,
                ),
                const SizedBox(height: 8),
                Container(
                  constraints: const BoxConstraints(maxHeight: 260),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: context.cardColor,
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

                    return MarkdownWidget(
                      data: data["body"] ?? "",
                      shrinkWrap: true,
                      config: MarkdownConfig(
                        configs: [
                          LinkConfig(
                            onTap: openLinkInBrowser,
                            style: textStyle!.copyWith(color: scheme.primary),
                          ),
                          H1Config(
                            style: textStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              color: scheme.primary,
                            ),
                          )
                        ],
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
                      color: scheme.onSurface.withOpacity(0.7),
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
          if (skipUpdate.value) {
            final skipped =
                loadCustomData<List<String>>(_skippedUpdatesKey) ?? [];
            skipped.add(data["tag_name"]);
            saveCustomData(_skippedUpdatesKey, skipped);
          }
          Get.back();
        },
        positiveCallback: () async {
          final assets = data['assets'] as List;
          final downloadUrl = await _getAssetDownloadUrl(assets);
          if (downloadUrl == null) return;

          if (Platform.isAndroid) {
            _downloadAndInstallApk(downloadUrl);
          } else {
            openLinkInBrowser(downloadUrl);
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
    return preferred.firstWhereOrNull(
      (abi) => abis.contains(abi),
    );
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

      final result =
          await InstallPlugin.installApk(file.path, appId: packageName);

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
}
