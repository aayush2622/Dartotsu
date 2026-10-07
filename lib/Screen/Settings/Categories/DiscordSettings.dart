import 'dart:io';

import 'package:flutter/material.dart';

import '../../../Api/Discord/BaseDiscordRPC.dart';
import '../../../Api/Discord/Mobile/MobileRPC.dart';
import '../../../Api/Discord/Mobile/TokenManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Model/Setting.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../Widgets/SegmentedSetting.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Core/State/State.dart';

bool get _needsToken => Platform.isAndroid || Platform.isIOS;

List<Setting> discordSettings(BuildContext context) {
  final on = PrefName.discordRpc.rx.value;
  final all = _discordSettings(context);
  return [
    for (final s in all)
      if (s.name == 'Rich Presence' || on) s,
  ];
}

List<Setting> _discordSettings(BuildContext context) => [
  Setting.switchType(
    name: 'Rich Presence',
    description: _needsToken
        ? 'Show what you are doing on your Discord profile. Needs your '
              'Discord token.'
        : 'Show what you are doing on your Discord profile. Needs the '
              'Discord desktop app running.',
    icon: Icons.sports_esports_rounded,
    isChecked: PrefName.discordRpc.rx.value,
    onSwitchChange: (v) => PrefName.discordRpc.rx.value = v,
  ),
  Setting.switchType(
    name: 'Show browsing activity',
    description:
        'Also show the tab, page or profile you are looking at, not only '
        'what you watch or read.',
    icon: Icons.explore_rounded,
    isVisible: PrefName.discordRpc.rx.value,
    isChecked: PrefName.discordBrowsing.rx.value,
    onSwitchChange: (v) => PrefName.discordBrowsing.rx.value = v,
  ),
  const Setting.header('Presence look'),
  segmentedSetting<String>(
    name: 'Activity type',
    description:
        'How Discord words it: "Watching …" or "Playing …". Auto uses '
        'Watching for anime and Playing for everything else.',
    icon: Icons.sports_esports_rounded,
    label: 'Activity type',
    value: PrefName.discordActivity.rx.value,
    onChanged: (v) => PrefName.discordActivity.rx.value = v,
    segments: const [
      AppSegment('auto', label: 'Auto'),
      AppSegment('watching', label: 'Watching'),
      AppSegment('playing', label: 'Playing'),
    ],
  ),
  Setting.switchType(
    name: 'Show covers',
    description: 'Cover art and the Dartotsu icon on the card.',
    icon: Icons.image_rounded,
    isChecked: PrefName.discordImages.rx.value,
    onSwitchChange: (v) => PrefName.discordImages.rx.value = v,
  ),
  Setting.switchType(
    name: 'Show timer',
    description: 'Elapsed or remaining time under the title.',
    icon: Icons.timer_outlined,
    isChecked: PrefName.discordTimer.rx.value,
    onSwitchChange: (v) => PrefName.discordTimer.rx.value = v,
  ),
  Setting.switchType(
    name: 'Show buttons',
    description: '"View anime / manga" and "Open Dartotsu" buttons.',
    icon: Icons.smart_button_rounded,
    isChecked: PrefName.discordButtons.rx.value,
    onSwitchChange: (v) => PrefName.discordButtons.rx.value = v,
  ),
  Setting.switchType(
    name: 'Hide titles',
    description:
        'Replace anime and manga names (and their cover and link) with '
        '"Something private".',
    icon: Icons.visibility_off_rounded,
    isChecked: PrefName.discordHideTitles.rx.value,
    onSwitchChange: (v) => PrefName.discordHideTitles.rx.value = v,
  ),
  const Setting.header('Connection'),
  Setting.normal(
    name: 'Discord token',
    description: MobileTokenManager.saved
        ? 'Saved. Tap to replace, long press to remove.'
        : 'Not set. Tap to add.',
    icon: Icons.key_rounded,
    isVisible: _needsToken && PrefName.discordRpc.rx.value,
    isActivity: true,
    onClick: () => _askToken(context),
    onLongClick: _removeToken,
  ),
];

void _askToken(BuildContext context) {
  final controller = TextEditingController();
  AlertDialogBuilder(context)
    ..setTitle('Discord token')
    ..setOnDismissListener(controller.dispose)
    ..setMessage(
      'Paste the token of the Discord account to show the presence on. It '
      'stays on this device.',
    )
    ..setCustomView(
      TextField(
        controller: controller,
        obscureText: true,
        autocorrect: false,
        enableSuggestions: false,
        decoration: const InputDecoration(hintText: 'Token'),
      ),
    )
    ..setPositiveButton('Save', () {
      final value = controller.text.trim();
      if (value.isEmpty) return;
      MobileTokenManager.saveAuthToken(value);
      _resetSession();
      snackString('Discord token saved');
    })
    ..setNegativeButton('Cancel', null)
    ..show();
}

Future<void> _removeToken() async {
  final rpc = tryFind<BaseDiscordRPC>();
  if (rpc is MobileRPC) {
    await rpc.logout();
  } else {
    MobileTokenManager().removeAuthToken();
  }
  snackString('Discord token removed');
}

void _resetSession() {
  final rpc = tryFind<BaseDiscordRPC>();
  if (rpc is MobileRPC) rpc.tokenManager.clear();
}
