import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/Setting.dart';
import '../../../../Screen/Settings/Widgets/SegmentedSetting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Widgets/Components/AppControls.dart';
import '../Prefs.dart';
import '../Widgets/HomeLayoutSheet.dart';
import '../Auth.dart';

class AnilistSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final auth = anilistAuth;
    final user = auth.user.value;
    final layout = AnilistPref.homeLayout.rx.value;
    final shown = layout.values.where((v) => v).length;
    return [
      const Setting.header('Loading'),
      segmentedSetting<QueryLoadMode>(
        name: 'Query size',
        description:
            'One big query loads every row in a single request. Split queries '
            'send a small request per row: each is quick and rows appear as '
            'they arrive.',
        icon: Icons.bolt_rounded,
        label: 'Query size',
        value: AnilistPref.queryLoadMode.rx.value,
        onChanged: (v) => AnilistPref.queryLoadMode.rx.value = v,
        segments: const [
          AppSegment(QueryLoadMode.stacked, label: 'One big'),
          AppSegment(QueryLoadMode.sequential, label: 'Split'),
        ],
      ),
      const Setting.header('Feed layout'),
      Setting.normal(
        name: 'Home sections',
        description:
            '$shown of ${layout.length} shown — tap to pick and reorder',
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: auth.isLoggedIn,
        onClick: () =>
            showHomeLayoutSheet(context, pref: AnilistPref.homeLayout),
      ),
      for (final (label, pref, icon) in [
        ('Anime', AnilistPref.animeLayout, Icons.movie_filter_rounded),
        ('Manga', AnilistPref.mangaLayout, Icons.menu_book_rounded),
      ])
        Setting.normal(
          name: '$label sections',
          description:
              '${pref.rx.value.values.where((v) => v).length} of ${pref.rx.value.length} shown — tap to pick and reorder',
          icon: icon,
          isActivity: true,
          onClick: () => showHomeLayoutSheet(
            context,
            title: '$label sections',
            pref: pref,
          ),
        ),
      const Setting.header('Privacy'),
      Setting.switchType(
        name: 'Hide private entries',
        description: 'Keep entries marked private on AniList out of the feed',
        icon: Icons.lock_outline_rounded,
        isChecked: AnilistPref.hidePrivate.rx.value,
        onSwitchChange: (v) => AnilistPref.hidePrivate.rx.value = v,
      ),
      const Setting.header('Account'),
      Setting.normal(
        name: 'AniList profile',
        description: user?.name ?? 'Not signed in',
        icon: Icons.open_in_new_rounded,
        isVisible: user != null,
        onClick: () =>
            openLinkInBrowser('https://anilist.co/user/${user?.name}'),
      ),
      Setting.normal(
        name: 'Refresh from AniList',
        description: 'Re-pull your profile and counts',
        icon: Icons.refresh_rounded,
        isVisible: auth.isLoggedIn,
        onClick: auth.refreshUser,
      ),
    ];
  }
}
