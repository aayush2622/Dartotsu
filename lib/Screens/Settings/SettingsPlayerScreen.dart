import 'package:flutter/material.dart';
import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Preferences/HiveDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
import '../../Theme/CustomColorPicker.dart';
import '../../Widgets/AlertDialogBuilder.dart';
import 'BaseSettingsScreen.dart';

class SettingsPlayerScreen extends StatefulWidget {
  const SettingsPlayerScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsPlayerScreenState();
}

class SettingsPlayerScreenState extends BaseSettingsScreen {
  @override
  String title() => 'Player Settings';

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
  List<Widget> get settingsList {
    return playerSettings(context, setState);
  }
}

List<Widget> playerSettings(
    BuildContext context, void Function(void Function()) setState) {

  void savePlayerSettings(PlayerSettings playerSettings) =>
      PrefManager.setVal(PrefName.playerSettings, playerSettings);

  var playerSettings = PrefManager.getVal(PrefName.playerSettings);
  return [
    SettingsAdaptor(
      settings: [
        Setting(
          type: SettingType.switchType,
          name: 'Cursed Speed',
          description: 'For people who are too busy with life',
          icon: Icons.accessible_forward,
          isChecked: PrefManager.getVal(PrefName.cursedSpeed),
          onSwitchChange: (value) {
            PrefManager.setVal(PrefName.cursedSpeed, value);
          },
        ),
        Setting(
          type: SettingType.normal,
          name: 'Speed',
          description: 'Default speed for player',
          icon: Icons.speed,
          onClick: () {
            var cursed = PrefManager.getVal(PrefName.cursedSpeed);
            AlertDialogBuilder(context)
              ..setTitle('Speed')
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
          name: 'Resize mode',
          description: 'Default resize mode for player',
          icon: Icons.fit_screen,
          onClick: () {
            AlertDialogBuilder(context)
              ..setTitle('Resize Mode')
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
          name: 'Skip Button',
          description: 'Skip button duration',
          icon: Icons.fit_screen,
          maxValue: 1000,
          minValue: 0,
          initialValue: playerSettings.skipDuration,
          onInputChange: (value) {
            playerSettings.skipDuration = value;
            savePlayerSettings(playerSettings);
          },
        ),
      ],
    ),
    const Text(
      'Subtitles',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
      ),
    ),
    SettingsAdaptor(
      settings: [
        Setting(
          type: SettingType.switchType,
          name: 'Show Subtitles',
          description: 'Show subtitles by default',
          icon: Icons.subtitles,
          isChecked: playerSettings.showSubtitle,
          onSwitchChange: (value) {
            playerSettings.showSubtitle = value;
            savePlayerSettings(playerSettings);
          },
        ),
        Setting(
          //TODO: Add subtitle fonts
          type: SettingType.normal,
          name: "Font Family",
          description: "Subtitle font family",
          icon: Icons.font_download,
          onClick: () {
            AlertDialogBuilder(context)
              ..setTitle('Font Family')
              ..singleChoiceItems(
                ['Poppins', 'Roboto', 'Arial', 'Times New Roman'],
                ['Poppins', 'Roboto', 'Arial', 'Times New Roman']
                    .indexOf(playerSettings.subtitleFont),
                (value) {
                  playerSettings.subtitleFont =
                      ['Poppins', 'Roboto', 'Arial', 'Times New Roman'][value];
                  savePlayerSettings(playerSettings);
                  setState(() {});
                },
              )
              ..show();
          },
        ),
        Setting(
          type: SettingType.slider,
          name: "Font Size",
          description: "Subtitle font size",
          icon: Icons.format_size,
          maxValue: 100,
          minValue: 10,
          initialValue: playerSettings.subtitleSize,
          onSliderChange: (value) {
            playerSettings.subtitleSize = value;
            savePlayerSettings(playerSettings);
            setState(() {});
          },
        ),
        Setting(
          type: SettingType.slider,
          name: "Font Weight",
          description: "Subtitle font weight",
          maxValue: 8,
          minValue: 4,
          initialValue: playerSettings.subtitleWeight,
          icon: Icons.format_bold,
          onSliderChange: (value) {
            playerSettings.subtitleWeight = value;
            savePlayerSettings(playerSettings);
            setState(() {});
          },
        ),
        Setting(
          type: SettingType.slider,
          name: "Bottom Padding",
          description: "Subtitle bottom padding",
          icon: Icons.format_line_spacing,
          maxValue: 100,
          minValue: 0,
          initialValue: playerSettings.subtitleBottomPadding,
          onSliderChange: (value) {
            playerSettings.subtitleBottomPadding = value;
            savePlayerSettings(playerSettings);
            setState(() {});
          },
        ),
        Setting(
          type: SettingType.normal,
          name: "Font Color",
          description: "Subtitle font color",
          icon: Icons.color_lens,
          onClick: () async {
            var color = playerSettings.subtitleColor;
            Color? newColor =
                await showColorPickerDialog(context, Color(color));
            if (newColor != null) {
              playerSettings.subtitleColor = newColor.value;
              savePlayerSettings(playerSettings);
              setState(() {});
            }
          },
        ),
        Setting(
          type: SettingType.normal,
          name: "Background Color",
          description: "Subtitle background color",
          icon: Icons.color_lens,
          onClick: () async {
            var color = playerSettings.subtitleBackgroundColor;
            Color? newColor =
                await showColorPickerDialog(context, Color(color));
            if (newColor != null) {
              playerSettings.subtitleBackgroundColor = newColor.value;
              savePlayerSettings(playerSettings);
              setState(() {});
            }
          },
        ),

        Setting(
          type: SettingType.normal,
          name: "Outline Color",
          description: "Subtitle outline color",
          icon: Icons.color_lens,
          onClick: () async {
            var color = playerSettings.subtitleOutlineColor;
            Color? newColor =
                await showColorPickerDialog(context, Color(color));
            if (newColor != null) {
              playerSettings.subtitleOutlineColor = newColor.value;
              savePlayerSettings(playerSettings);
              setState(() {});
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
          'Subtitle Preview',
          style: TextStyle(
            fontSize: playerSettings.subtitleSize.toDouble(),
            fontFamily: playerSettings.subtitleFont,
            fontWeight: FontWeight.values[playerSettings.subtitleWeight.toInt()],
            backgroundColor: Color(
              playerSettings.subtitleBackgroundColor,
            ),
            inherit: false,
            color: Color(
              playerSettings.subtitleColor,
            ),
            shadows: [
              Shadow(
                color: Color(
                  playerSettings.subtitleOutlineColor,
                ),
                offset: const Offset(0.5, 0.5),
              ),
              Shadow(
                color: Color(
                  playerSettings.subtitleOutlineColor,
                ),
                offset: const Offset(-0.5, -0.5),
              ),
            ],
          ),
        ),
      ],
    ),
  ];
}

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
