import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Widgets/Components/HomeLayoutSheet.dart';
import '../../../../Screen/Settings/Widgets/SettingRows.dart';
import '../../../../Core/State/State.dart';
import '../../../../Utils/Functions/RefreshController.dart';
import '../Auth.dart';
import '../Prefs.dart';
import '../Data/User.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

String _shown(Pref<Map<String, bool>> pref) => getString.sectionsShown(
  pref.rx.value.values.where((v) => v).length,
  pref.rx.value.length,
);

class SimklSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = simklAuth.user.value;
    return [
      Setting.header(getString.feedLayout),
      choiceSetting<String>(
        context,
        name: getString.simklTitleLanguage,
        icon: Icons.translate_rounded,
        value: SimklPref.titleLanguage.rx.value,
        values: const ['en', 'romaji'],
        label: (v) => v == 'romaji'
            ? getString.titleLanguageRomaji
            : getString.titleLanguageEnglish,
        onPick: (v) {
          SimklPref.titleLanguage.rx.value = v;
          simklAuth.queries.invalidateLibrary(full: true);
          findBuilt<RefreshController>()?.all();
        },
      ),
      Setting.switchType(
        name: getString.simklMoviesOnly,
        description: getString.simklMoviesOnlyDesc,
        icon: Icons.theaters_rounded,
        isChecked: SimklPref.moviesOnly.rx.value,
        onSwitchChange: (v) => SimklPref.moviesOnly.rx.value = v,
      ),
      Setting.normal(
        name: getString.homeSections,
        description: _shown(SimklPref.homeLayout),
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: simklAuth.isLoggedIn,
        onClick: () => showHomeLayoutSheet(context, pref: SimklPref.homeLayout),
      ),
      if (SimklPref.moviesOnly.rx.value) ...[
        Setting.normal(
          name: getString.labelSections(getString.movies),
          description: _shown(SimklPref.movieOnlyLayout),
          icon: Icons.theaters_rounded,
          isActivity: true,
          onClick: () => showHomeLayoutSheet(
            context,
            title: getString.labelSections(getString.movies),
            pref: SimklPref.movieOnlyLayout,
          ),
        ),
        Setting.normal(
          name: getString.labelSections(getString.shows),
          description: _shown(SimklPref.seriesLayout),
          icon: Icons.live_tv_rounded,
          isActivity: true,
          onClick: () => showHomeLayoutSheet(
            context,
            title: getString.labelSections(getString.shows),
            pref: SimklPref.seriesLayout,
          ),
        ),
      ] else ...[
        Setting.normal(
          name: getString.labelSections(getString.anime),
          description: _shown(SimklPref.animeLayout),
          icon: Icons.movie_filter_rounded,
          isActivity: true,
          onClick: () => showHomeLayoutSheet(
            context,
            title: getString.labelSections(getString.anime),
            pref: SimklPref.animeLayout,
          ),
        ),
        Setting.normal(
          name: getString.labelSections(getString.moviesAndSeries),
          description: _shown(SimklPref.movieLayout),
          icon: Icons.theaters_rounded,
          isActivity: true,
          onClick: () => showHomeLayoutSheet(
            context,
            title: getString.labelSections(getString.moviesAndSeries),
            pref: SimklPref.movieLayout,
          ),
        ),
      ],
      Setting.header(getString.account),
      if (user is SimklUser)
        Setting.normal(
          name: getString.simklProfile,
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.profileUrl),
        ),
      if (user is SimklUser) ..._details(user),
      Setting.normal(
        name: getString.refreshFromSimkl,
        description: getString.repullProfileLibrary,
        icon: Icons.refresh_rounded,
        onClick: () async {
          simklAuth.queries.invalidateLibrary();
          await simklAuth.refreshUser();
          snackString(getString.refreshed);
        },
      ),
    ];
  }

  List<Setting> _details(SimklUser user) {
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

    final type = user.accountType;
    return [
      info(getString.memberSince, Icons.cake_outlined, joined()),
      info(getString.location, Icons.place_outlined, user.location),
      info(getString.timezone, Icons.schedule_rounded, user.timeZone),
      info(
        getString.accountType,
        Icons.workspace_premium_outlined,
        type == null || type.isEmpty
            ? null
            : '${type[0].toUpperCase()}${type.substring(1)}',
      ),
    ];
  }
}
