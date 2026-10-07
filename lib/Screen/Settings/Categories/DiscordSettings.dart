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
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

bool get _needsToken => Platform.isAndroid || Platform.isIOS;

List<Setting> discordSettings(BuildContext context) {
  final on = PrefName.discordRpc.rx.value;
  final all = _discordSettings(context);
  return on ? all : [all.first];
}

List<Setting> _discordSettings(BuildContext context) => [
  Setting.switchType(
    name: getString.discordRichPresence,
    description: _needsToken
        ? getString.discordRichPresenceTokenDesc
        : getString.discordRichPresenceDesktopDesc,
    icon: Icons.sports_esports_rounded,
    isChecked: PrefName.discordRpc.rx.value,
    onSwitchChange: (v) => PrefName.discordRpc.rx.value = v,
  ),
  Setting.switchType(
    name: getString.discordBrowsing,
    description: getString.discordBrowsingDesc,
    icon: Icons.explore_rounded,
    isVisible: PrefName.discordRpc.rx.value,
    isChecked: PrefName.discordBrowsing.rx.value,
    onSwitchChange: (v) => PrefName.discordBrowsing.rx.value = v,
  ),
  Setting.header(getString.discordLookHeader),
  segmentedSetting<String>(
    name: getString.discordActivityType,
    description: getString.discordActivityTypeDesc,
    icon: Icons.sports_esports_rounded,
    label: getString.discordActivityType,
    value: PrefName.discordActivity.rx.value,
    onChanged: (v) => PrefName.discordActivity.rx.value = v,
    segments: [
      AppSegment('auto', label: getString.themeModeAuto),
      AppSegment('watching', label: getString.discordWatching),
      AppSegment('playing', label: getString.discordPlaying),
    ],
  ),
  Setting.switchType(
    name: getString.discordCovers,
    description: getString.discordCoversDesc,
    icon: Icons.image_rounded,
    isChecked: PrefName.discordImages.rx.value,
    onSwitchChange: (v) => PrefName.discordImages.rx.value = v,
  ),
  Setting.switchType(
    name: getString.discordTimer,
    description: getString.discordTimerDesc,
    icon: Icons.timer_outlined,
    isChecked: PrefName.discordTimer.rx.value,
    onSwitchChange: (v) => PrefName.discordTimer.rx.value = v,
  ),
  Setting.switchType(
    name: getString.discordButtons,
    description: getString.discordButtonsDesc,
    icon: Icons.smart_button_rounded,
    isChecked: PrefName.discordButtons.rx.value,
    onSwitchChange: (v) => PrefName.discordButtons.rx.value = v,
  ),
  Setting.switchType(
    name: getString.discordHideTitles,
    description: getString.discordHideTitlesDesc,
    icon: Icons.visibility_off_rounded,
    isChecked: PrefName.discordHideTitles.rx.value,
    onSwitchChange: (v) => PrefName.discordHideTitles.rx.value = v,
  ),
  Setting.header(getString.discordConnectionHeader),
  Setting.normal(
    name: getString.discordToken,
    description: MobileTokenManager.saved
        ? getString.discordTokenSaved
        : getString.discordTokenNotSet,
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
    ..setTitle(getString.discordToken)
    ..setOnDismissListener(controller.dispose)
    ..setMessage(getString.discordTokenPrompt)
    ..setCustomView(
      TextField(
        controller: controller,
        obscureText: true,
        autocorrect: false,
        enableSuggestions: false,
        decoration: InputDecoration(hintText: getString.discordTokenHint),
      ),
    )
    ..setPositiveButton(getString.save, () {
      final value = controller.text.trim();
      if (value.isEmpty) return;
      MobileTokenManager.saveAuthToken(value);
      _resetSession();
      snackString(getString.discordTokenSavedSnack);
    })
    ..setNegativeButton(getString.cancel, null)
    ..show();
}

Future<void> _removeToken() async {
  final rpc = tryFind<BaseDiscordRPC>();
  if (rpc is MobileRPC) {
    await rpc.logout();
  } else {
    MobileTokenManager().removeAuthToken();
  }
  snackString(getString.discordTokenRemovedSnack);
}

void _resetSession() {
  final rpc = tryFind<BaseDiscordRPC>();
  if (rpc is MobileRPC) rpc.tokenManager.clear();
}
