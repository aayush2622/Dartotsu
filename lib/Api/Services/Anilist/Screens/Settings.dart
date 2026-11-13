import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Functions/LinkSettings.dart';
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
import '../Prefs.dart';
import '../Widgets/CustomListsSheet.dart';
import '../../../../Widgets/Components/HomeLayoutSheet.dart';
import '../Auth.dart';
import '../../../../Core/State/State.dart';
import '../../../../Utils/Functions/RefreshController.dart';

class AnilistSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final auth = anilistAuth;
    final user = auth.user.value;
    final layout = AnilistPref.homeLayout.rx.value;
    final shown = layout.values.where((v) => v).length;
    return [
      Setting.header(getString.sectionLoading),
      segmentedSetting<QueryLoadMode>(
        name: getString.querySize,
        description: getString.querySizeDesc,
        icon: Icons.bolt_rounded,
        label: getString.querySize,
        value: AnilistPref.queryLoadMode.rx.value,
        onChanged: (v) => AnilistPref.queryLoadMode.rx.value = v,
        segments: [
          AppSegment(QueryLoadMode.stacked, label: getString.oneBig),
          AppSegment(QueryLoadMode.sequential, label: getString.split),
        ],
      ),
      Setting.header(getString.sectionSocial),
      Setting.normal(
        name: getString.linkOpenAnilist,
        description: getString.linkOpenAnilistDesc,
        icon: Icons.link_rounded,
        isActivity: true,
        isVisible: canOpenLinkSettings,
        onClick: openLinkSettings,
      ),
      Setting.header(getString.feedLayout),
      Setting.normal(
        name: getString.homeSections,
        description: getString.sectionsShown(shown, layout.length),
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: auth.isLoggedIn,
        onClick: () =>
            showHomeLayoutSheet(context, pref: AnilistPref.homeLayout),
      ),
      for (final (label, pref, icon) in [
        (getString.anime, AnilistPref.animeLayout, Icons.movie_filter_rounded),
        (getString.manga, AnilistPref.mangaLayout, Icons.menu_book_rounded),
      ])
        Setting.normal(
          name: getString.labelSections(label),
          description: getString.sectionsShown(
            pref.rx.value.values.where((v) => v).length,
            pref.rx.value.length,
          ),
          icon: icon,
          isActivity: true,
          onClick: () => showHomeLayoutSheet(
            context,
            title: getString.labelSections(label),
            pref: pref,
          ),
        ),
      Setting.switchType(
        name: getString.anilistExcludeList,
        description: getString.anilistExcludeListDesc,
        icon: Icons.playlist_remove_rounded,
        isVisible: auth.isLoggedIn,
        isChecked: AnilistPref.excludeList.rx.value,
        onSwitchChange: (v) {
          AnilistPref.excludeList.rx.value = v;
          findBuilt<RefreshController>()?.all();
        },
      ),
      Setting.header(getString.sectionPrivacy),
      Setting.switchType(
        name: getString.hidePrivateEntries,
        description: getString.hidePrivateEntriesDesc,
        icon: Icons.lock_outline_rounded,
        isChecked: AnilistPref.hidePrivate.rx.value,
        onSwitchChange: (v) => AnilistPref.hidePrivate.rx.value = v,
      ),
      Setting.header(getString.account),
      Setting.normal(
        name: getString.anilistProfile,
        description: user?.name ?? getString.notSignedIn,
        icon: Icons.open_in_new_rounded,
        isVisible: user != null,
        onClick: () =>
            openLinkInBrowser('https://anilist.co/user/${user?.name}'),
      ),
      Setting.normal(
        name: getString.refreshFromAnilist,
        description: getString.repullProfileCounts,
        icon: Icons.refresh_rounded,
        isVisible: auth.isLoggedIn,
        onClick: auth.refreshUser,
      ),
    ];
  }

  static List<Setting> accountOptions(BuildContext context) {
    final current = anilistAuth.user.value;
    if (current is! AnilistUser) return const [];
    final user = current;
    Future<void> change(Map<String, dynamic> changes) async {
      if (!await anilistAuth.updateSettings(changes)) {
        snackString(getString.couldNotUpdateAnilistSettings);
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
      Setting.header(getString.sectionNames),
      segmentedSetting<String>(
        name: getString.titleLanguage,
        description: getString.titleLanguageDesc,
        icon: Icons.translate_rounded,
        label: getString.titleLanguage,
        value: user.titleLanguage,
        onChanged: (v) => change({'titleLanguage': v}),
        segments: [
          for (final e in kAnilistTitleLanguages.entries)
            AppSegment(e.key, label: e.value),
        ],
      ),
      choice<String>(
        name: getString.staffCharacterNames,
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
      Setting.header(getString.sectionLists),
      choice<ScoreFormat>(
        name: getString.scoreFormat,
        description: user.scoreFormat.label,
        icon: Icons.star_rounded,
        value: user.scoreFormat,
        key: 'scoreFormat',
        encode: (v) => v.api,
        options: [for (final f in ScoreFormat.values) ChoiceOption(f, f.label)],
      ),
      choice<String>(
        name: getString.sortListsBy,
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
      for (final (label, anime) in [
        (getString.anime, true),
        (getString.manga, false),
      ])
        Setting.normal(
          name: getString.labelCustomLists(label),
          description: getString.customListsCount(
            (anime ? user.animeCustomLists : user.mangaCustomLists).length,
          ),
          icon: Icons.playlist_add_rounded,
          isActivity: true,
          onClick: () => showCustomListsSheet(context, anime: anime),
        ),
      Setting.header(getString.accountOptions),
      choice<int>(
        name: getString.mergeActivities,
        description:
            kAnilistMergeTimes[user.activityMergeTime] ??
            getString.minutesCount(user.activityMergeTime),
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
        name: getString.timezone,
        description: timezone ?? getString.notSet,
        icon: Icons.public_rounded,
        value: timezone,
        key: 'timezone',
        encode: (v) => anilistTimezoneApi(v ?? ''),
        options: [for (final z in kAnilistTimezones) ChoiceOption(z, z)],
      ),
      Setting.switchType(
        name: getString.airingNotifications,
        description: getString.airingNotificationsDesc,
        icon: Icons.notifications_active_rounded,
        isChecked: user.airingNotifications,
        onSwitchChange: (v) => change({'airingNotifications': v}),
      ),
      Setting.switchType(
        name: getString.displayAdultContent,
        description: getString.displayAdultContentDesc,
        icon: Icons.explicit_rounded,
        isChecked: user.adultContent,
        onSwitchChange: (v) => change({'displayAdultContent': v}),
      ),
      Setting.switchType(
        name: getString.restrictMessages,
        description: getString.restrictMessagesDesc,
        icon: Icons.lock_open_rounded,
        isChecked: user.restrictMessagesToFollowing,
        onSwitchChange: (v) => change({'restrictMessagesToFollowing': v}),
      ),
    ];
  }
}
