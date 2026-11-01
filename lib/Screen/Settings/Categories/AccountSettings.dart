import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaServiceController.dart';
import '../../../Core/Services/ServiceSwitcher.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Login/LoginScreen.dart';
import '../SubSettingsScreen.dart';
import '../SettingsSync/SettingsSyncScreen.dart';
import '../Sync/SyncScreen.dart';
import 'DiscordSettings.dart';
import '../../../Core/State/State.dart';

List<Setting> accountSettings(BuildContext context) {
  final service = find<MediaServiceController>().currentService.value;
  final auth = service.auth;
  final user = auth?.user.value;
  return [
    Setting.normal(
      name: getString.trackingService,
      description: service.name,
      icon: Icons.sync_alt_rounded,
      isActivity: true,
      onClick: () => serviceSwitcher(context),
    ),
    Setting.normal(
      name: auth?.isLoggedIn == true ? getString.signOut : getString.signIn,
      description: user?.name ?? getString.notSignedIn,
      icon: auth?.isLoggedIn == true
          ? Icons.logout_rounded
          : Icons.login_rounded,
      isVisible: auth != null,
      onClick: () {
        if (auth == null) return;
        if (auth.isLoggedIn) {
          AlertDialogBuilder(context)
              .setTitle(getString.signOut)
              .setMessage(getString.signOutOf(service.name))
              .setNegativeButton(getString.cancel, null)
              .setPositiveButton(getString.signOut, auth.logout)
              .show();
        } else {
          navigateToPage(context, const LoginScreen());
        }
      },
    ),
    Setting.normal(
      name: getString.syncRow,
      description: getString.syncRowDesc,
      icon: Icons.sync_rounded,
      isActivity: true,
      onClick: () => navigateToPage(context, const SyncScreen()),
    ),
    Setting.normal(
      name: getString.settingsSync,
      description: PrefName.settingsSync.rx.value
          ? getString.settingsSyncSwitch
          : getString.settingsSyncDesc,
      icon: Icons.cloud_sync_rounded,
      isActivity: true,
      onClick: () => navigateToPage(context, const SettingsSyncScreen()),
    ),
    Setting.normal(
      name: getString.discordRichPresenceRow,
      description: PrefName.discordRpc.rx.value
          ? getString.discordRichPresenceRowOn
          : getString.discordRichPresenceRowOff,
      icon: Icons.sports_esports_rounded,
      isActivity: true,
      onClick: () => navigateToPage(
        context,
        SubSettingsScreen(title: getString.discord, settings: discordSettings),
      ),
    ),
  ];
}
