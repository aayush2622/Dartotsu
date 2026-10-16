import 'package:flutter/material.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/State/State.dart';
import '../../../../Utils/Functions/RefreshController.dart';
import '../../../../Widgets/Components/HomeLayoutSheet.dart';
import '../Auth.dart';
import '../Prefs.dart';
import '../Data/User.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

String _shown(Pref<Map<String, bool>> pref) => getString.sectionsShown(
  pref.rx.value.values.where((v) => v).length,
  pref.rx.value.length,
);

class MalSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = malAuth.user.value;
    return [
      Setting.header(getString.sectionPrivacy),
      Setting.switchType(
        name: getString.hideNsfw,
        description: getString.hideNsfwDesc,
        icon: Icons.visibility_off_outlined,
        isChecked: MalPref.hideNsfw.rx.value,
        onSwitchChange: (v) {
          MalPref.hideNsfw.rx.value = v;
          tryFind<RefreshController>()?.all();
        },
      ),
      Setting.header(getString.feedLayout),
      Setting.normal(
        name: getString.homeSections,
        description: _shown(MalPref.homeLayout),
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: malAuth.isLoggedIn,
        onClick: () => showHomeLayoutSheet(context, pref: MalPref.homeLayout),
      ),
      Setting.normal(
        name: getString.labelSections(getString.anime),
        description: _shown(MalPref.animeLayout),
        icon: Icons.movie_filter_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.anime),
          pref: MalPref.animeLayout,
        ),
      ),
      Setting.normal(
        name: getString.labelSections(getString.manga),
        description: _shown(MalPref.mangaLayout),
        icon: Icons.menu_book_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.manga),
          pref: MalPref.mangaLayout,
        ),
      ),
      Setting.header(getString.account),
      if (user is MalUser)
        Setting.normal(
          name: getString.malProfile,
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.profileUrl),
        ),
      if (user is MalUser) ..._details(user),
      Setting.normal(
        name: getString.refreshFromMal,
        description: getString.repullProfileCounts,
        icon: Icons.refresh_rounded,
        onClick: () async {
          await malAuth.refreshUser();
          snackString(getString.refreshed);
        },
      ),
    ];
  }

  List<Setting> _details(MalUser user) {
    String? joined() {
      final d = DateTime.tryParse(user.joinedAt ?? '');
      return d == null
          ? null
          : '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
    }

    Setting info(String name, IconData icon, String? value) => Setting.normal(
      name: name,
      description: value,
      icon: icon,
      isVisible: value != null && value.isNotEmpty,
    );

    return [
      info(getString.memberSince, Icons.cake_outlined, joined()),
      info(getString.location, Icons.place_outlined, user.location),
      info(getString.timezone, Icons.schedule_rounded, user.timeZone),
      info(
        getString.accountType,
        Icons.workspace_premium_outlined,
        user.supporter ? getString.accountSupporter : getString.accountFree,
      ),
      info(
        getString.meanScore,
        Icons.star_rounded,
        user.meanScore > 0 ? user.meanScore.toStringAsFixed(2) : null,
      ),
      info(
        getString.daysWatched,
        Icons.timer_outlined,
        user.daysWatched > 0 ? user.daysWatched.toStringAsFixed(1) : null,
      ),
    ];
  }
}
