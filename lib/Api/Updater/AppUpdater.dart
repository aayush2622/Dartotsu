import 'dart:io';

import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Widgets/CustomBottomDialog.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:markdown_widget/config/configs.dart';
import 'package:markdown_widget/widget/blocks/leaf/link.dart';
import 'package:markdown_widget/widget/markdown.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:install_plugin/install_plugin.dart';

import '../../Functions/Extensions/ContextExtensions.dart';
import '../../Functions/Functions/GetXFunctions.dart';
import '../../Network/NetworkManager.dart';

class AppUpdater {
  final mainRepo = 'aayush2622/Dartotsu';
  final alphaRepo = 'grayankit/Dartotsu-Downloader';

  final network = find<NetworkManager>();
  late bool checkForUpdates;
  late bool alphaUpdates;

  AppUpdater() {
    checkForUpdates = loadCustomData("checkForUpdates") ?? true;
    alphaUpdates = loadCustomData("alphaUpdates") ?? false;
  }

  Future<void> checkForUpdate({bool force = false}) async {
    if (!checkForUpdates && !force) return;
    var hash = await loadEnv("hash");

    if (hash == null) {
      if (force) snackString("Hash not found");
      return;
    }

    var response = await network.get(
        'https://api.github.com/repos/${alphaUpdates ? alphaRepo : mainRepo}/releases/latest');
    if (response.statusCode == 404) {
      if (force) {
        snackString("Ooo Nooo you fell into limbo: ${response.statusMessage}");
      }
      return;
    }

    if (response.statusCode != 200) return;

    final data = response.data;

    final release = data["tag_name"];
    var skippedUpdates =
        loadCustomData<List<String>>("skippedUpdateList") ?? [];

    if (skippedUpdates.contains(release) && !force) return;

    final compare = await network.get(
      'https://api.github.com/repos/$mainRepo/compare/$release...$hash',
    );
    final compareData = compare.data;
    final isUpdate = compareData['status'] == 'behind';
    if (!isUpdate) {
      if (force) snackString("No Update Available");
      return;
    }

    _showUpdateBottomSheet(data);
  }

  Future<String?> _getAssetDownloadUrl(List assets) async {
    if (Platform.isAndroid) {
      final abi = await _getDeviceABI();

      if (abi != null) {
        final match = assets.cast<Map<String, dynamic>>().firstWhere(
              (a) => (a['name'] as String).contains('Android_$abi'),
              orElse: () => {},
            );
        if (match.isNotEmpty) return match['browser_download_url'];
      }
      final fallbackApk = assets.cast<Map<String, dynamic>>().firstWhere(
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
          final match = assets.cast<Map<String, dynamic>>().firstWhere(
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

  final RxDouble downloadProgress = (-1.0).obs;
  final RxInt downloadedBytes = 0.obs;
  final RxInt totalBytes = 0.obs;

  Future<void> _downloadAndInstallApk(String apkUrl) async {
    try {
      final packageName = path.basenameWithoutExtension(apkUrl);

      downloadProgress.value = 0;
      downloadedBytes.value = 0;
      totalBytes.value = 0;

      final tempDir = await getTemporaryDirectory();
      final filePath = '${tempDir.path}/$packageName.apk';
      final file = File(filePath);

      final network = find<NetworkManager>();

      await network.download(
        apkUrl,
        filePath,
        onProgress: (received, total) {
          if (total <= 0) return;
          downloadedBytes.value = received;
          totalBytes.value = total;
          downloadProgress.value = (received / total) * 100;
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
      downloadProgress.value = -1;
      downloadedBytes.value = 0;
      totalBytes.value = 0;
      rethrow;
    }
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
                color: scheme.primary.withOpacity(0.12),
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
                    color: scheme.primary.withOpacity(0.12),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Obx(() {
                    if (downloadProgress.value >= 0) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          LinearProgressIndicator(
                            value: downloadProgress.value / 100,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "${downloadedBytes.value ~/ (1024 * 1024)} MB / "
                            "${totalBytes.value ~/ (1024 * 1024)} MB "
                            "${downloadProgress.value.toStringAsFixed(1)}%",
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
            if (downloadProgress.value >= 0) {
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
                loadCustomData<List<String>>("skippedUpdateList") ?? [];
            skipped.add(data["tag_name"]);
            saveCustomData("skippedUpdateList", skipped);
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
    );
  }
}
