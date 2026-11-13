import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/RefreshController.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Widgets/Components/HomeLayoutSheet.dart';
import '../Auth.dart';
import '../Data/User.dart';
import '../Prefs.dart';

String _shown(Pref<Map<String, bool>> pref) => getString.sectionsShown(
  pref.rx.value.values.where((v) => v).length,
  pref.rx.value.length,
);

class MangaBakaSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = mangaBakaAuth.user.value;
    return [
      Setting.header(getString.sectionPrivacy),
      Setting.switchType(
        name: getString.hideNsfw,
        description: getString.hideNsfwDesc,
        icon: Icons.visibility_off_outlined,
        isChecked: MangaBakaPref.hideNsfw.rx.value,
        onSwitchChange: (v) {
          MangaBakaPref.hideNsfw.rx.value = v;
          findBuilt<RefreshController>()?.all();
        },
      ),
      Setting.header(getString.feedLayout),
      Setting.normal(
        name: getString.homeSections,
        description: _shown(MangaBakaPref.homeLayout),
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: mangaBakaAuth.isLoggedIn,
        onClick: () =>
            showHomeLayoutSheet(context, pref: MangaBakaPref.homeLayout),
      ),
      Setting.normal(
        name: getString.labelSections(getString.manga),
        description: _shown(MangaBakaPref.mangaLayout),
        icon: Icons.menu_book_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.manga),
          pref: MangaBakaPref.mangaLayout,
        ),
      ),
      Setting.normal(
        name: getString.labelSections(getString.novel),
        description: _shown(MangaBakaPref.novelLayout),
        icon: Icons.auto_stories_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.novel),
          pref: MangaBakaPref.novelLayout,
        ),
      ),
      Setting.header(getString.account),
      if (user is MangaBakaUser) ...[
        Setting.normal(
          name: getString.mangaBakaProfile,
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.profileUrl),
        ),
        Setting.normal(
          name: getString.ratingSteps,
          description: '${user.ratingSteps}',
          icon: Icons.star_rounded,
        ),
      ],
      Setting.normal(
        name: getString.refreshFromMangaBaka,
        description: getString.repullProfileCounts,
        icon: Icons.refresh_rounded,
        isVisible: mangaBakaAuth.isLoggedIn,
        onClick: () async {
          mangaBakaAuth.queries.resyncLibrary();
          await mangaBakaAuth.refreshUser();
          snackString(getString.refreshed);
        },
      ),
    ];
  }
}
