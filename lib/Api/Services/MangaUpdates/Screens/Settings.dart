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

class MangaUpdatesSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = mangaUpdatesAuth.user.value;
    return [
      Setting.header(getString.sectionPrivacy),
      Setting.switchType(
        name: getString.hideNsfw,
        description: getString.hideNsfwDesc,
        icon: Icons.visibility_off_outlined,
        isChecked: MangaUpdatesPref.hideNsfw.rx.value,
        onSwitchChange: (v) {
          MangaUpdatesPref.hideNsfw.rx.value = v;
          tryFind<RefreshController>()?.all();
        },
      ),
      Setting.header(getString.feedLayout),
      Setting.normal(
        name: getString.homeSections,
        description: _shown(MangaUpdatesPref.homeLayout),
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: mangaUpdatesAuth.isLoggedIn,
        onClick: () =>
            showHomeLayoutSheet(context, pref: MangaUpdatesPref.homeLayout),
      ),
      Setting.normal(
        name: getString.labelSections(getString.manga),
        description: _shown(MangaUpdatesPref.feedLayout),
        icon: Icons.menu_book_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.manga),
          pref: MangaUpdatesPref.feedLayout,
        ),
      ),
      Setting.header(getString.account),
      if (user is MangaUpdatesUser) ...[
        Setting.normal(
          name: getString.mangaUpdatesProfile,
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.url),
        ),
      ],
      Setting.normal(
        name: getString.refreshFromMangaUpdates,
        description: getString.repullProfileCounts,
        icon: Icons.refresh_rounded,
        isVisible: mangaUpdatesAuth.isLoggedIn,
        onClick: () async {
          mangaUpdatesAuth.queries.invalidateLibrary();
          await mangaUpdatesAuth.refreshUser();
          snackString(getString.refreshed);
        },
      ),
    ];
  }
}
