import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'package:dartotsu/Widgets/CustomBottomDialog.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Anime.dart';
import '../../DataClass/Media.dart';
import '../../DataClass/Setting.dart';
import '../../Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import '../../Preferences/PrefManager.dart';
import '../../Theme/CustomColorPicker.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Widgets/AlertDialogBuilder.dart';
import '../Anime/Player/Player.dart';
import 'BaseSettingsScreen.dart';

class SettingsPlayerScreen extends StatefulWidget {
  const SettingsPlayerScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsPlayerScreenState();
}

class SettingsPlayerScreenState extends BaseSettingsScreen {
  @override
  String title() => getString.playerSettingsTitle;

  @override
  Widget icon() => Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          size: 52,
          Icons.video_settings,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );

  @override
  List<Widget> get settingsList => playerSettings(context, setState);

  @override
  Future<void> onIconPressed() async => showCustomBottomDialog(
        context,
        CustomBottomDialog(
          title: "Select Option",
          viewList: [
            _buildOptionCard(
              icon: Icons.video_library_rounded,
              label: "Pick Video Files",
              onTap: () {
                Navigator.pop(context);
                selectFile(context);
              },
            ),
            _buildOptionCard(
              label: "Pick Folder",
              icon: Icons.folder_rounded,
              onTap: () {
                Navigator.pop(context);
                selectFolder(context);
              },
            ),
          ],
        ),
      );
  Widget _buildOptionCard({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: SizedBox(
        width: double.infinity,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(icon, size: 22),
                const SizedBox(width: 12),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> playerSettings(
  BuildContext context,
  void Function(void Function()) setState, {
  Media? media,
}) {
  var perPlayerSettings = loadData<bool>(PrefName.perAnimePlayerSettings);

  var playerSettings = media?.settings.playerSettings ??
      PlayerSettings.fromJson(
        jsonDecode(loadData(PrefName.playerSettings)),
      );

  return [
    StatefulBuilder(
      builder: (context, s) {
        void savePlayerSettings(PlayerSettings playerSettings) {
          if (media != null) {
            MediaSettings.saveMediaSettings(
                media..settings.playerSettings = playerSettings);
          }

          if (media == null || !perPlayerSettings) {
            saveData(
                PrefName.playerSettings, jsonEncode(playerSettings.toJson()));
          }
          setState(() {});
          s(() {});
        }

        return Column(
          children: [
            SettingsAdaptor(
              settings: [
                Setting(
                  type: SettingType.switchType,
                  name: getString.cursedSpeed,
                  description: getString.cursedSpeedDescription,
                  icon: Icons.accessible_forward,
                  isChecked: loadData(PrefName.cursedSpeed),
                  onSwitchChange: (value) {
                    saveData(PrefName.cursedSpeed, value);
                  },
                ),
                Setting(
                  type: SettingType.switchType,
                  name: getString.thumbLessSeekBar,
                  description: getString.thumbLessSeekBarDesc,
                  icon: Icons.circle_rounded,
                  isChecked: loadData(PrefName.thumbLessSeekBar),
                  onSwitchChange: (value) {
                    saveData(PrefName.thumbLessSeekBar, value);
                    setState(() {});
                  },
                ),
                Setting(
                  type: SettingType.normal,
                  name: getString.speed,
                  description: getString.speedDescription,
                  icon: Icons.speed_rounded,
                  onClick: () {
                    var cursed = loadData(PrefName.cursedSpeed);
                    AlertDialogBuilder(context)
                      ..setTitle(getString.speed)
                      ..singleChoiceItems(
                        speedMap(cursed),
                        !speedMap(cursed).contains(playerSettings.speed)
                            ? 3
                            : speedMap(cursed).indexOf(playerSettings.speed),
                        (value) {
                          playerSettings.speed = speedMap(cursed)[value];
                          savePlayerSettings(playerSettings);
                        },
                      )
                      ..show();
                  },
                ),
                Setting(
                  type: SettingType.normal,
                  name: getString.resizeMode,
                  description: getString.resizeModeDescription,
                  icon: Icons.fit_screen_rounded,
                  onClick: () {
                    AlertDialogBuilder(context)
                      ..setTitle(getString.resizeMode)
                      ..singleChoiceItems(
                        resizeStringMap.values.toList(),
                        playerSettings.resizeMode,
                        (value) {
                          playerSettings.resizeMode = value;
                          savePlayerSettings(playerSettings);
                        },
                      )
                      ..show();
                  },
                ),
                Setting(
                  type: SettingType.inputBox,
                  name: getString.skipButton,
                  description: getString.skipButtonDescription,
                  icon: Icons.fast_forward_rounded,
                  maxValue: 1000,
                  minValue: 0,
                  initialValue: playerSettings.skipDuration,
                  onInputChange: (value) {
                    playerSettings.skipDuration = value;
                    savePlayerSettings(playerSettings);
                  },
                ),
                Setting(
                  type: SettingType.switchType,
                  name: getString.adjustVolume,
                  description: getString.adjustVolumeDescription,
                  icon: Icons.accessible_forward,
                  isChecked: playerSettings.adjustVolume,
                  onSwitchChange: (value) {
                    playerSettings.adjustVolume = value;
                    savePlayerSettings(playerSettings);
                  },
                ),
                Setting(
                  type: SettingType.switchType,
                  name: getString.adjustBrightness,
                  description: getString.adjustBrightnessDescription,
                  icon: Icons.accessible_forward,
                  isChecked: playerSettings.adjustBrightness,
                  onSwitchChange: (value) {
                    playerSettings.adjustBrightness = value;
                    savePlayerSettings(playerSettings);
                  },
                ),
                Setting(
                  type: SettingType.switchType,
                  name: getString.autoPlayNextEpisode,
                  description: getString.autoPlayNextEpisodeDescription,
                  icon: Icons.play_circle_rounded,
                  isChecked: playerSettings.autoPlay,
                  onSwitchChange: (value) {
                    playerSettings.autoPlay = value;
                    savePlayerSettings(playerSettings);
                  },
                ),
                Setting(
                  type: SettingType.switchType,
                  name: getString.customMPV,
                  description: getString.customMPVDescription(
                      loadData(PrefName.mpvConfigDir)
                          .fixSeparator
                          .replaceAll(' ', '')),
                  icon: Icons.extension_rounded,
                  isChecked: loadData(PrefName.useCustomMpvConfig),
                  onSwitchChange: (value) {
                    saveData(PrefName.useCustomMpvConfig, value);
                  },
                ),
                if (Platform.isAndroid)
                  Setting(
                    type: SettingType.switchType,
                    name: getString.useGpuNext,
                    description: getString.useGpuNextDescription,
                    icon: Icons.memory_rounded,
                    isChecked: playerSettings.useGpuNext,
                    onSwitchChange: (value) {
                      playerSettings.useGpuNext = value;
                      savePlayerSettings(playerSettings);
                    },
                  ),
              ],
            ),
            Text(
              getString.subtitles,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            SettingsAdaptor(
              settings: [
                Setting(
                  type: SettingType.switchType,
                  name: getString.useLibass,
                  description: getString.useLibassDescription,
                  icon: Icons.subtitles_rounded,
                  isChecked: playerSettings.useLibass,
                  onSwitchChange: (value) {
                    playerSettings.useLibass = value;
                    savePlayerSettings(playerSettings);
                  },
                ),
                Setting(
                  type: SettingType.switchType,
                  name: getString.showSubtitles,
                  description: getString.showSubtitlesDescription,
                  icon: Icons.subtitles_rounded,
                  isChecked: playerSettings.showSubtitle,
                  onSwitchChange: (value) {
                    playerSettings.showSubtitle = value;
                    savePlayerSettings(playerSettings);
                  },
                ),
                Setting(
                  //TODO: Add subtitle fonts
                  type: SettingType.normal,
                  name: getString.fontFamily,
                  description: getString.fontFamilyDescription,
                  icon: Icons.font_download_rounded,
                  onClick: () {
                    AlertDialogBuilder(context)
                      ..setTitle(getString.fontFamily)
                      ..singleChoiceItems(
                        ['Poppins', 'Roboto', 'Arial', 'Times New Roman'],
                        ['Poppins', 'Roboto', 'Arial', 'Times New Roman']
                            .indexOf(playerSettings.subtitleFont),
                        (value) {
                          playerSettings.subtitleFont = [
                            'Poppins',
                            'Roboto',
                            'Arial',
                            'Times New Roman'
                          ][value];
                          savePlayerSettings(playerSettings);
                        },
                      )
                      ..show();
                  },
                ),
                Setting(
                  type: SettingType.slider,
                  name: getString.fontSize,
                  description: getString.fontSizeDescription,
                  icon: Icons.format_size_rounded,
                  maxValue: 100,
                  minValue: 10,
                  initialValue: playerSettings.subtitleSize,
                  onSliderChange: (value) {
                    playerSettings.subtitleSize = value;
                    savePlayerSettings(playerSettings);
                  },
                ),
                Setting(
                  type: SettingType.slider,
                  name: getString.fontWeight,
                  description: getString.fontWeightDescription,
                  maxValue: 8,
                  minValue: 4,
                  initialValue: playerSettings.subtitleWeight,
                  icon: Icons.format_bold_rounded,
                  onSliderChange: (value) {
                    playerSettings.subtitleWeight = value;
                    savePlayerSettings(playerSettings);
                  },
                ),
                Setting(
                  type: SettingType.slider,
                  name: getString.bottomPadding,
                  description: getString.bottomPaddingDescription,
                  icon: Icons.format_line_spacing,
                  maxValue: 100,
                  minValue: 0,
                  initialValue: playerSettings.subtitleBottomPadding,
                  onSliderChange: (value) {
                    playerSettings.subtitleBottomPadding = value;
                    savePlayerSettings(playerSettings);
                  },
                ),
                Setting(
                  type: SettingType.normal,
                  name: getString.fontColor,
                  description: getString.fontColorDescription,
                  icon: Icons.color_lens,
                  onClick: () async {
                    var color = playerSettings.subtitleColor;
                    Color? newColor =
                        await showColorPickerDialog(context, Color(color));
                    if (newColor != null) {
                      playerSettings.subtitleColor = newColor.value;
                      savePlayerSettings(playerSettings);
                    }
                  },
                ),
                Setting(
                  type: SettingType.normal,
                  name: getString.backgroundColor,
                  description: getString.backgroundColorDescription,
                  icon: Icons.color_lens,
                  onClick: () async {
                    var color = playerSettings.subtitleBackgroundColor;
                    Color? newColor =
                        await showColorPickerDialog(context, Color(color));
                    if (newColor != null) {
                      playerSettings.subtitleBackgroundColor = newColor.value;
                      savePlayerSettings(playerSettings);
                    }
                  },
                ),
                Setting(
                  type: SettingType.normal,
                  name: getString.outlineColor,
                  description: getString.outlineColorDescription,
                  icon: Icons.color_lens,
                  onClick: () async {
                    var color = playerSettings.subtitleOutlineColor;
                    Color? newColor =
                        await showColorPickerDialog(context, Color(color));
                    if (newColor != null) {
                      playerSettings.subtitleOutlineColor = newColor.value;
                      savePlayerSettings(playerSettings);
                    }
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Text(
                  getString.subtitlePreview,
                  style: TextStyle(
                    fontSize: playerSettings.subtitleSize.toDouble(),
                    fontFamily: playerSettings.subtitleFont,
                    fontWeight: FontWeight
                        .values[playerSettings.subtitleWeight.toInt()],
                    backgroundColor: Color(
                      playerSettings.subtitleBackgroundColor,
                    ),
                    inherit: false,
                    color: Color(
                      playerSettings.subtitleColor,
                    ),
                    shadows: [
                      Shadow(
                        offset: const Offset(1.0, 1.0),
                        blurRadius: 10.0,
                        color: Color(playerSettings.subtitleOutlineColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    )
  ];
}

Future<void> selectFile(BuildContext context) async {
  if (!await PrefManager.videoPermission()) return;

  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: vidMap,
    allowMultiple: true,
  );

  if (result == null || result.files.isEmpty) return;
  if (!context.mounted) return;

  final paths = result.files.map((e) => e.path!).toList();
  openPlayer(context, paths);
}

Future<void> selectFolder(BuildContext context) async {
  final folderPath = await FilePicker.platform.getDirectoryPath();
  if (folderPath == null) return;

  final dir = Directory(folderPath);
  if (!dir.existsSync()) return;

  final paths = dir
      .listSync(recursive: true)
      .whereType<File>()
      .where((file) => vidMap.contains(file.path.split('.').last.toLowerCase()))
      .map((file) => file.path)
      .toList();

  if (paths.isEmpty) return;
  if (!context.mounted) return;

  openPlayer(context, paths);
}

Future<void> openPlayer(BuildContext context, List<String> files) async {
  final episodes = <String, DEpisode>{};
  for (var i = 0; i < files.length; i++) {
    episodes['${i + 1}'] = DEpisode(
      episodeNumber: '${i + 1}',
      name: files[i].split('/').last,
      url: files[i],
    );
  }

  final media = Media(
    id: Random().nextInt(900000000),
    nameRomaji: 'Local files',
    userPreferredName: 'Local files',
    isAdult: false,
    settings: MediaSettings(
      playerSetting: PlayerSettings.fromJson(
        jsonDecode(loadData(PrefName.playerSettings)),
      ),
    ),
    anime: Anime(episodes: episodes),
  );

  navigateToPage(
    context,
    MediaPlayer(
      isOffline: true,
      videos: [Video(episodes['1']?.name, episodes['1']!.url!, 'Media')],
      currentEpisode: episodes['1']!,
      index: 0,
      source: Source(),
      media: media,
    ),
  );
}

const List<String> vidMap = [
  'mp4',
  'mkv',
  'webm',
  'avi',
  'mov',
  'wmv',
  'flv',
  'm4v',
  '3gp',
  'mpg',
  'mpeg',
  'ogv',
  'ts',
  'm3u8',
];

const List<String> subMap = [
  'srt',
  'ass',
  'ssa',
  'vtt',
  'sub',
  'txt',
  'dfxp',
  'smi',
  'stl',
  'idx',
  'ttml',
  'sbv',
  'lrc',
  'xml'
];
const List<String> audioMap = [
  'mp3',
  'aac',
  'm4a',
  'ogg',
  'oga',
  'wma',
  'flac',
  'alac',
  'caf',
  'wav',
  'aiff',
  'aif',
  'ape',
  'tta',
  'mod',
  'xm',
  'it',
  's3m',
  'mtm',
  'mid',
  'midi',
  'kar',
  'ra',
  'rm'
];

List<String> speedMap(bool cursed) => cursed
    ? [
        "0.25x",
        "0.5x",
        "0.75x",
        "1x",
        "1.25x",
        "1.5x",
        "1.75x",
        "2x",
        "2.5x",
        "3x",
        "4x",
        "5x",
        "10x",
        "25x",
        "50x"
      ]
    : [
        "0.25x",
        "0.33x",
        "0.5x",
        "0.66x",
        "0.75x",
        "1x",
        "1.15x",
        "1.25x",
        "1.33x",
        "1.5x",
        "1.66x",
        "1.75x",
        "2x"
      ];

final resizeStringMap = {0: "Original", 1: "Zoom", 2: "Stretch"};

final resizeMap = {
  0: BoxFit.contain,
  1: BoxFit.cover,
  2: BoxFit.fill,
};
