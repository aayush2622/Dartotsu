import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/Setting.dart';
import '../../../../Screen/Settings/Widgets/SegmentedSetting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Widgets/Components/AppControls.dart';
import '../AnilistPrefs.dart';
import '../Widgets/HomeLayoutSheet.dart';
import '../AnilistAuth.dart';

class AnilistSettingsView implements SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final auth = anilistAuth;
    final user = auth.user.value;
    final layout = AnilistPref.homeLayout.rx.value;
    final shown = layout.values.where((v) => v).length;
    return [
      segmentedSetting<QueryLoadMode>(
        name: 'Query size',
        description:
            'One big query loads every row in a single request. Split queries '
            'send a small request per row: each is quick and rows appear as '
            'they arrive.',
        icon: Icons.bolt_rounded,
        label: 'Queries',
        value: AnilistPref.queryLoadMode.rx.value,
        onChanged: (v) => AnilistPref.queryLoadMode.rx.value = v,
        segments: const [
          AppSegment(QueryLoadMode.stacked, label: 'One big'),
          AppSegment(QueryLoadMode.sequential, label: 'Split'),
        ],
      ),
      Setting.normal(
        name: 'Home sections',
        description:
            '$shown of ${layout.length} shown — tap to pick and reorder',
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: auth.isLoggedIn,
        onClick: () => showHomeLayoutSheet(context),
      ),
      Setting.switchType(
        name: 'Hide private entries',
        description: 'Keep entries marked private on AniList out of the feed',
        icon: Icons.lock_outline_rounded,
        isChecked: AnilistPref.hidePrivate.rx.value,
        onSwitchChange: (v) => AnilistPref.hidePrivate.rx.value = v,
      ),
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
