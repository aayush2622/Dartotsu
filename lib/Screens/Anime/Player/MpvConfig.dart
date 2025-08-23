import 'dart:io';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/logger.dart';

class MpvConf {
  static final shaderProfiles = {
    "MID-END": {
      'Anime4K: Mode A (Fast)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Restore_CNN_M.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode B (Fast)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Restore_CNN_Soft_M.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode C (Fast)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Upscale_Denoise_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode A+A (Fast)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Restore_CNN_VL.glsl',
        'Anime4K_Upscale_CNN_x2_VL.glsl',
        'Anime4K_Restore_CNN_M.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode B+B (Fast)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Restore_CNN_Soft_VL.glsl',
        'Anime4K_Upscale_CNN_x2_VL.glsl',
        'Anime4K_Restore_CNN_Soft_M.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode C+A (Fast)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Upscale_Denoise_CNN_x2_VL.glsl',
        'Anime4K_Restore_CNN_M.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
    },
    "HIGH-END": {
      'Anime4K: Mode A (HQ)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Restore_CNN_VL.glsl',
        'Anime4K_Upscale_CNN_x2_VL.glsl',
        'Anime4K_AutoDownscalePre_x2.glsl',
        'Anime4K_AutoDownscalePre_x4.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode B (HQ)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Restore_CNN_Soft_VL.glsl',
        'Anime4K_Upscale_CNN_x2_VL.glsl',
        'Anime4K_AutoDownscalePre_x2.glsl',
        'Anime4K_AutoDownscalePre_x4.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode C (HQ)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Upscale_Denoise_CNN_x2_VL.glsl',
        'Anime4K_AutoDownscalePre_x2.glsl',
        'Anime4K_AutoDownscalePre_x4.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode A+A (HQ)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Restore_CNN_VL.glsl',
        'Anime4K_Upscale_CNN_x2_VL.glsl',
        'Anime4K_Restore_CNN_M.glsl',
        'Anime4K_AutoDownscalePre_x2.glsl',
        'Anime4K_AutoDownscalePre_x4.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode B+B (HQ)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Restore_CNN_Soft_VL.glsl',
        'Anime4K_Upscale_CNN_x2_VL.glsl',
        'Anime4K_AutoDownscalePre_x2.glsl',
        'Anime4K_AutoDownscalePre_x4.glsl',
        'Anime4K_Restore_CNN_Soft_M.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
      'Anime4K: Mode C+A (HQ)': [
        'Anime4K_Clamp_Highlights.glsl',
        'Anime4K_Upscale_Denoise_CNN_x2_VL.glsl',
        'Anime4K_AutoDownscalePre_x2.glsl',
        'Anime4K_AutoDownscalePre_x4.glsl',
        'Anime4K_Restore_CNN_M.glsl',
        'Anime4K_Upscale_CNN_x2_M.glsl',
      ],
    }
  };

  static List<String> getShaderProfiles() => shaderProfiles.keys.toList();

  // TODO => ill just leave it here for future use case

  // TODO => For Gettings Selected profile's shaders
  // static List<String> getShaders() {
  //   final selectedProfile = settingsController.selectedProfile;
  //   return shaderProfiles[selectedProfile]?.keys.toList() ?? [];
  // }

  // TODO => Helper method for getting shader path by name of the shader
  // static List<String> getShaderByName(String configName) {
  //   final selectedProfile = settingsController.selectedProfile;
  //   final shaders = shaderProfiles[selectedProfile]?[configName] ?? <String>[];

  //   Logger.i(
  //       'Profile: $selectedProfile, Config: $configName, Shaders: $shaders');
  //   return shaders;
  // }

  // TODO => Helper method for getting shader base path
  // static String getShaderBasePath() {
  //   final path = settingsController.mpvPath.value;
  //   return '${path}Shaders/';
  // }

  // TODO => Helper method for merging shader paths of selected shader (like A+A)
  // static Future<List<String>> getShaderPathsForProfile(
  //     String configName) async {
  //   final shaderFiles = getShaderByName(configName);
  //   final shaderFolderPath = PlayerShaders.getShaderBasePath();

  //   return shaderFiles.map((file) => '$shaderFolderPath$file').toList();
  // }

  // TODO => for actuallly settings the shaders!, pass player instance
  // static void setShaders(dynamic player, String shader) async {
  //   settingsController.selectedShader = shader;
  //   var paths =
  //       (await PlayerShaders.getShaderPathsForProfile(shader)).join(';');
  //   Logger.i('Paths: $paths');
  //   (player.platform as dynamic).setProperty('glsl-shaders', paths);
  // }

  // TODO => helper method for your screen, so you can check and notify users if shaders are downloaded
  // static Future<bool> areShadersDownloaded() async {
  //   try {
  //     final basePath = getShaderBasePath();
  //     final dir = Directory(basePath);

  //     if (!await dir.exists()) return false;

  //     final items = await dir.list().toList();
  //     return items.isNotEmpty;
  //   } catch (e) {
  //     debugPrint('Error checking shader directories: $e');
  //     return false;
  //   }
  // }

  static Future<void> init() async {
    Logger.log('Initializing MPV config...');
    await createMpvConfigFolder();
    Logger.log('MPV config initialized!');
    Logger.log(
      'Status => useCustomMpvConfig: ${loadData(PrefName.useCustomMpvConfig)}, mpvConfigPath: ${loadData(PrefName.mpvConfigDir)}',
    );
  }

  static Future<bool> createMpvConfigFolder() async {
    try {
      final mpvPath = await getMpvPath();
      Logger.log("Saving mpv config path to isar!");
      saveData(PrefName.mpvConfigDir, mpvPath);
      final configDir = Directory(mpvPath);

      if (!await configDir.exists()) {
        await configDir.create(recursive: true);
        Logger.log('Created MPV directory: ${configDir.path}');
      }

      final configFile = File('${configDir.path}mpv.conf');

      if (!await configFile.exists()) {
        await configFile.writeAsString('');
        Logger.log('Created empty MPV config file: ${configFile.path}');
      }

      return true;
    } catch (e) {
      Logger.log('Error creating MPV config folder/file: $e');
      return false;
    }
  }

  static Future<String> getMpvPath() async {
    var path = await PrefManager.getDirectory(
      subPath: "mpv",
      useSystemPath: false,
      useCustomPath: true,
    );

    return path?.path ?? '';
  }

  static Future<String> getMpvConfigPath() async {
    final mpvPath = await getMpvPath();
    return '${mpvPath}mpv.conf';
  }

  static Future<bool> doesMpvConfigExist() async {
    try {
      final configPath = await getMpvConfigPath();
      final configFile = File(configPath);
      return await configFile.exists();
    } catch (e) {
      Logger.log('Error checking MPV config existence: $e');
      return false;
    }
  }
}
