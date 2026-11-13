import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/RefreshController.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../AnimePlanetService.dart';
import '../Auth.dart';
import '../Data/User.dart';
import '../Prefs.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Widgets/Components/HomeLayoutSheet.dart';

String _shown(Pref<Map<String, bool>> pref) => getString.sectionsShown(
  pref.rx.value.values.where((v) => v).length,
  pref.rx.value.length,
);

class AnimePlanetSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = animePlanetAuth.user.value;
    return [
      Setting.header(getString.feedLayout),
      Setting.normal(
        name: getString.homeSections,
        description: _shown(AnimePlanetPref.homeLayout),
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: animePlanetAuth.isLoggedIn,
        onClick: () =>
            showHomeLayoutSheet(context, pref: AnimePlanetPref.homeLayout),
      ),
      Setting.normal(
        name: getString.labelSections(getString.anime),
        description: _shown(AnimePlanetPref.animeLayout),
        icon: Icons.movie_filter_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.anime),
          pref: AnimePlanetPref.animeLayout,
        ),
      ),
      Setting.normal(
        name: getString.labelSections(getString.manga),
        description: _shown(AnimePlanetPref.mangaLayout),
        icon: Icons.menu_book_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.manga),
          pref: AnimePlanetPref.mangaLayout,
        ),
      ),
      Setting.header(getString.account),
      if (user is AnimePlanetUser)
        Setting.normal(
          name: getString.profile,
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.url),
        ),
      Setting.normal(
        name: getString.animePlanetRefreshLists,
        description: getString.animePlanetRefreshListsDesc,
        icon: Icons.refresh_rounded,
        isVisible: animePlanetAuth.isLoggedIn,
        onClick: () async {
          animePlanetAuth.client.clear();
          animePlanetQueries.invalidateLibrary();
          await animePlanetAuth.refreshUser();
          findBuilt<RefreshController>()?.all();
          snackString(getString.refresh);
        },
      ),
      Setting.normal(
        name: getString.animePlanetLocalNote,
        icon: Icons.info_outline_rounded,
        isVisible: !animePlanetAuth.isLoggedIn,
      ),
    ];
  }
}
