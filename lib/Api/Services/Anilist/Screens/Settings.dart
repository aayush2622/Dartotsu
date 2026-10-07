import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/Setting.dart';
import '../../../../Screen/Settings/Widgets/SegmentedSetting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Widgets/Components/AppControls.dart';
import '../../../../Core/Services/ScoreFormat.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Widgets/Components/ChoiceSheet.dart';
import '../Data/Options.dart';
import '../Data/User.dart';
import '../../../../Screen/Settings/SubSettingsScreen.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../Prefs.dart';
import '../Widgets/CustomListsSheet.dart';
import '../Widgets/HomeLayoutSheet.dart';
import '../Auth.dart';

class AnilistSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final auth = anilistAuth;
    final user = auth.user.value;
    final layout = AnilistPref.homeLayout.rx.value;
    final viewer = user is AnilistUser ? user : null;
    final shown = layout.values.where((v) => v).length;
    return [
      const Setting.header('Loading'),
      segmentedSetting<QueryLoadMode>(
        name: 'Query size',
        description:
            'One big query loads every row (and a whole profile) in a single '
            'request. Split queries send a small request per row or per '
            'profile part: each is quick and parts appear as they arrive.',
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
      Setting.normal(
        name: 'Account options',
        description: 'Names, score format, list order, notifications and more',
        icon: Icons.manage_accounts_rounded,
        isActivity: true,
        isVisible: viewer != null,
        onClick: () => navigateToPage(
          context,
          SubSettingsScreen(
            title: 'AniList account options',
            settings: _accountOptions,
          ),
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

  List<Setting> _accountOptions(BuildContext context) {
    final current = anilistAuth.user.value;
    if (current is! AnilistUser) return const [];
    final user = current;
    Future<void> change(Map<String, dynamic> changes) async {
      if (!await anilistAuth.updateSettings(changes)) {
        snackString('Could not update AniList settings');
      }
    }

    Setting choice<T>({
      required String name,
      required String description,
      required IconData icon,
      required T value,
      required List<ChoiceOption<T>> options,
      required String key,
      required Object? Function(T) encode,
    }) => Setting.normal(
      name: name,
      description: description,
      icon: icon,
      isActivity: true,
      onClick: () async {
        final picked = await showChoiceSheet<T>(
          context,
          title: name,
          options: options,
          selected: value,
        );
        if (picked != null && picked != value) {
          await change({key: encode(picked)});
        }
      },
    );

    final timezone = anilistTimezoneLabel(user.timezone);
    return [
      const Setting.header('Names'),
      segmentedSetting<String>(
        name: 'Title language',
        description:
            'How titles are written everywhere, e.g. Attack on Titan / '
            'Shingeki no Kyojin / 進撃の巨人.',
        icon: Icons.translate_rounded,
        label: 'Title language',
        value: user.titleLanguage,
        onChanged: (v) => change({'titleLanguage': v}),
        segments: [
          for (final e in kAnilistTitleLanguages.entries)
            AppSegment(e.key, label: e.value),
        ],
      ),
      choice<String>(
        name: 'Staff and character names',
        description: kAnilistStaffLanguages[user.staffNameLanguage] ?? '',
        icon: Icons.badge_outlined,
        value: user.staffNameLanguage,
        key: 'staffNameLanguage',
        encode: (v) => v,
        options: [
          for (final e in kAnilistStaffLanguages.entries)
            ChoiceOption(e.key, e.value),
        ],
      ),
      const Setting.header('Lists'),
      choice<ScoreFormat>(
        name: 'Score format',
        description: user.scoreFormat.label,
        icon: Icons.star_rounded,
        value: user.scoreFormat,
        key: 'scoreFormat',
        encode: (v) => v.api,
        options: [for (final f in ScoreFormat.values) ChoiceOption(f, f.label)],
      ),
      choice<String>(
        name: 'Sort lists by',
        description: kAnilistRowOrders[user.rowOrder] ?? user.rowOrder,
        icon: Icons.sort_rounded,
        value: user.rowOrder,
        key: 'rowOrder',
        encode: (v) => v,
        options: [
          for (final e in kAnilistRowOrders.entries)
            ChoiceOption(e.key, e.value),
        ],
      ),
      for (final (label, anime) in [('Anime', true), ('Manga', false)])
        Setting.normal(
          name: '$label custom lists',
          description:
              '${(anime ? user.animeCustomLists : user.mangaCustomLists).length} lists — tap to add or remove',
          icon: Icons.playlist_add_rounded,
          isActivity: true,
          onClick: () => showCustomListsSheet(context, anime: anime),
        ),
      const Setting.header('Account options'),
      choice<int>(
        name: 'Merge activities',
        description:
            kAnilistMergeTimes[user.activityMergeTime] ??
            '${user.activityMergeTime} mins',
        icon: Icons.merge_rounded,
        value: user.activityMergeTime,
        key: 'activityMergeTime',
        encode: (v) => v,
        options: [
          for (final e in kAnilistMergeTimes.entries)
            ChoiceOption(e.key, e.value),
        ],
      ),
      choice<String?>(
        name: 'Timezone',
        description: timezone ?? 'Not set',
        icon: Icons.public_rounded,
        value: timezone,
        key: 'timezone',
        encode: (v) => anilistTimezoneApi(v ?? ''),
        options: [for (final z in kAnilistTimezones) ChoiceOption(z, z)],
      ),
      Setting.switchType(
        name: 'Airing notifications',
        description: 'Get notified when an episode of a followed show airs',
        icon: Icons.notifications_active_rounded,
        isChecked: user.airingNotifications,
        onSwitchChange: (v) => change({'airingNotifications': v}),
      ),
      Setting.switchType(
        name: 'Display adult content',
        description: 'Include 18+ titles in browse, search and feeds',
        icon: Icons.explicit_rounded,
        isChecked: user.adultContent,
        onSwitchChange: (v) => change({'displayAdultContent': v}),
      ),
      Setting.switchType(
        name: 'Restrict messages to following',
        description: 'Only people you follow can message you',
        icon: Icons.lock_open_rounded,
        isChecked: user.restrictMessagesToFollowing,
        onSwitchChange: (v) => change({'restrictMessagesToFollowing': v}),
      ),
    ];
  }
}
