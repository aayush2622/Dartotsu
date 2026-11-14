import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/RefreshController.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../../Widgets/Components/HomeLayoutSheet.dart';
import '../Auth.dart';
import '../Data/User.dart';
import '../Prefs.dart';

String _shown(Pref<Map<String, bool>> pref) => getString.sectionsShown(
  pref.rx.value.values.where((v) => v).length,
  pref.rx.value.length,
);

class ComickSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = comickAuth.user.value;
    return [
      Setting.header(getString.sectionPrivacy),
      Setting.switchType(
        name: getString.hideNsfw,
        description: getString.hideNsfwDesc,
        icon: Icons.visibility_off_outlined,
        isChecked: ComickPref.hideNsfw.rx.value,
        onSwitchChange: (v) {
          ComickPref.hideNsfw.rx.value = v;
          findBuilt<RefreshController>()?.all();
        },
      ),
      Setting.header(getString.feedLayout),
      Setting.normal(
        name: getString.homeSections,
        description: _shown(ComickPref.homeLayout),
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: comickAuth.isLoggedIn,
        onClick: () =>
            showHomeLayoutSheet(context, pref: ComickPref.homeLayout),
      ),
      Setting.normal(
        name: getString.labelSections(getString.manga),
        description: _shown(ComickPref.mangaLayout),
        icon: Icons.menu_book_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.manga),
          pref: ComickPref.mangaLayout,
        ),
      ),
      Setting.normal(
        name: getString.labelSections(getString.anime),
        description: _shown(ComickPref.animeLayout),
        icon: Icons.tv_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.anime),
          pref: ComickPref.animeLayout,
        ),
      ),
      Setting.header(getString.account),
      if (user is ComickUser) ...[
        Setting.normal(
          name: getString.comickProfile,
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.profileUrl),
        ),
      ],
      Setting.normal(
        name: getString.comickClientId,
        description: ComickPref.clientId.value.isEmpty
            ? getString.comickClientIdDesc
            : ComickPref.clientId.value,
        icon: Icons.key_rounded,
        onClick: () => _editClientId(context),
      ),
      Setting.normal(
        name: getString.refreshFromComick,
        description: getString.repullProfileCounts,
        icon: Icons.refresh_rounded,
        isVisible: comickAuth.isLoggedIn,
        onClick: () async {
          comickAuth.queries.invalidateLibrary();
          await comickAuth.refreshUser();
          snackString(getString.refreshed);
        },
      ),
    ];
  }

  void _editClientId(BuildContext context) {
    final controller = TextEditingController(text: ComickPref.clientId.value);
    AlertDialogBuilder(context)
      ..setTitle(getString.comickClientId)
      ..setCustomView(
        TextField(
          controller: controller,
          decoration: InputDecoration(labelText: getString.comickClientId),
        ),
      )
      ..setNegativeButton(getString.cancel, null)
      ..setPositiveButton(getString.save, () {
        ComickPref.clientId.value = controller.text.trim();
        snackString(getString.saved);
      })
      ..show();
  }
}
