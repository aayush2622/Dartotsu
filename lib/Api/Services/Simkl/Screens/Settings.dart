import 'package:flutter/material.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../Auth.dart';
import '../Data/User.dart';

class SimklSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = simklAuth.user.value;
    return [
      if (user is SimklUser)
        Setting.normal(
          name: 'Simkl profile',
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.profileUrl),
        ),
      Setting.normal(
        name: 'Refresh from Simkl',
        description: 'Re-pull your profile and library',
        icon: Icons.refresh_rounded,
        onClick: () async {
          simklAuth.queries.clearLibrary();
          await simklAuth.refreshUser();
          snackString('Refreshed');
        },
      ),
    ];
  }
}
