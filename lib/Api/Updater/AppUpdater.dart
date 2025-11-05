import 'dart:convert';
import 'dart:io';

import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Widgets/CustomBottomDialog.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:install_plugin/install_plugin.dart';

class AppUpdater {
  final mainRepo = 'aayush2622/Dartotsu';
  final alphaRepo = 'grayankit/Dartotsu-Downloader';

  late bool checkForUpdates;
  late bool alphaUpdates;

  AppUpdater() {
    checkForUpdates = loadCustomData("checkForUpdates") ?? true;
    alphaUpdates = loadCustomData("alphaUpdates") ?? false;
  }

  Future<void> checkForUpdate({bool force = false}) async {
    if (!checkForUpdates && !force) return;

    var response = await http.get(
      Uri.parse(
        'https://api.github.com/repos/${alphaUpdates ? alphaRepo : mainRepo}/releases/latest',
      ),
    );

    if (response.statusCode != 200) return;

    final data = jsonDecode(response.body);

    final release = data["tag_name"];
    var skippedUpdates =
        loadCustomData<List<String>>("skippedUpdateList") ?? [];
    if (skippedUpdates.contains(release)) return;
    final compare = await http.get(
      Uri.parse(
        'https://api.github.com/repos/$mainRepo/compare/$release...${BuildInfo.hash}',
      ),
    );
    final compareData = jsonDecode(compare.body);
    final isUpdate = compareData['status'] == 'behind';
    if (!isUpdate) return;

    updateBottomSheet(data);
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
      Platform.isLinux: ['.AppImage', '.deb', '.tar.gz'],
      Platform.isMacOS: ['.dmg', '.zip'],
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

  Future<void> downloadAndInstallApk(String apkUrl) async {
    try {
      final packageName = path.basenameWithoutExtension(apkUrl);
      downloadProgress.value = 0;
      downloadedBytes.value = 0;
      totalBytes.value = 0;

      final response =
          await http.Client().send(http.Request('GET', Uri.parse(apkUrl)));
      if (response.statusCode != 200) throw "HTTP ${response.statusCode}";

      final total = response.contentLength ?? 0;
      if (total == 0) throw "Invalid file size";
      totalBytes.value = total;

      final file =
          File("${(await getTemporaryDirectory()).path}/$packageName.apk");
      final sink = file.openWrite();

      int downloaded = 0;
      await for (final chunk in response.stream) {
        downloaded += chunk.length;
        sink.add(chunk);

        downloadedBytes.value = downloaded;
        downloadProgress.value = (downloaded / total) * 100;
      }
      await sink.close();

      final result =
          await InstallPlugin.installApk(file.path, appId: packageName);

      if (!result['isSuccess']) throw result['errorMessage'];

      if (await file.exists()) await file.delete();
    } catch (e) {
      downloadProgress.value = -1;
      downloadedBytes.value = 0;
      totalBytes.value = 0;
      rethrow;
    }
  }

  Future<void> updateBottomSheet(dynamic data) async {
    final assets = data['assets'] as List;
    final downloadUrl = await _getAssetDownloadUrl(assets);
    if (downloadUrl == null) return;

    final textStyle = Theme.of(Get.context!).textTheme.labelMedium;
    final skipUpdate = false.obs;

    showCustomBottomDialog(
      Get.context!,
      CustomBottomDialog(
        title: "Update Available",
        viewList: [
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Text(
              "Change Logs:\n\n${data["name"]}",
              style: textStyle,
            ),
          ),
          const SizedBox(height: 24),
          Obx(() {
            if (downloadProgress.value == -1) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Obx(() => Checkbox(
                          value: skipUpdate.value,
                          onChanged: (val) => skipUpdate.value = val ?? false,
                        )),
                    const SizedBox(width: 8),
                    Text(
                      "Skip this update",
                      style: textStyle,
                    ),
                  ],
                ),
              );
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                children: [
                  LinearProgressIndicator(
                    value: downloadProgress.value / 100,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "${downloadedBytes.value ~/ (1024 * 1024)}MB / ${totalBytes.value ~/ (1024 * 1024)}MB (${downloadProgress.value.toStringAsFixed(1)}%)",
                    style: textStyle,
                  ),
                  const SizedBox(height: 12),
                  if (downloadProgress.value == -1)
                    Row(
                      children: [
                        Obx(() => Checkbox(
                              value: skipUpdate.value,
                              onChanged: (val) =>
                                  skipUpdate.value = val ?? false,
                            )),
                        const SizedBox(width: 8),
                        const Text("Skip this update"),
                      ],
                    ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          }),
        ],
        positiveText: "Update",
        negativeText: "Cope",
        negativeCallback: () {
          if (skipUpdate.value) {
            var skippedUpdates =
                loadCustomData<List<String>>("skippedUpdateList") ?? [];
            skippedUpdates.add(data["tag_name"]);
            saveCustomData("skippedUpdateList", skippedUpdates);
          }
          Get.back();
        },
        positiveCallback: () {
          if (Platform.isAndroid) {
            downloadAndInstallApk(downloadUrl);
          } else {
            openLinkInBrowser(downloadUrl);
            snackString("Check your browser");
          }
        },
      ),
    );
  }
}

class BuildInfo {
  static String? hash;

  static void load() {
    hash = dotenv.env['hash'];
  }
}
