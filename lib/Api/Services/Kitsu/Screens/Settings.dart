import 'package:flutter/material.dart';
import '../../../../Screen/Settings/Widgets/SegmentedSetting.dart';
import '../../../../Widgets/Components/AppControls.dart';
import '../../../../Widgets/Components/ChoiceSheet.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Widgets/Components/HomeLayoutSheet.dart';
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

class KitsuSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = kitsuAuth.user.value;
    return [
      Setting.header(getString.sectionPrivacy),
      Setting.switchType(
        name: getString.hideNsfw,
        description: getString.hideNsfwDesc,
        icon: Icons.visibility_off_outlined,
        isChecked: KitsuPref.hideNsfw.rx.value,
        onSwitchChange: (v) {
          KitsuPref.hideNsfw.rx.value = v;
          findBuilt<RefreshController>()?.all();
        },
      ),
      Setting.header(getString.sectionExperimental),
      Setting.switchType(
        name: getString.kitsuGraphqlDetail,
        description: getString.kitsuGraphqlDetailDesc,
        icon: Icons.bolt_rounded,
        isChecked: KitsuPref.graphqlDetail.rx.value,
        onSwitchChange: (v) => KitsuPref.graphqlDetail.rx.value = v,
      ),
      Setting.header(getString.feedLayout),
      Setting.normal(
        name: getString.homeSections,
        description: _shown(KitsuPref.homeLayout),
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: kitsuAuth.isLoggedIn,
        onClick: () => showHomeLayoutSheet(context, pref: KitsuPref.homeLayout),
      ),
      Setting.normal(
        name: getString.labelSections(getString.anime),
        description: _shown(KitsuPref.animeLayout),
        icon: Icons.movie_filter_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.anime),
          pref: KitsuPref.animeLayout,
        ),
      ),
      Setting.normal(
        name: getString.labelSections(getString.manga),
        description: _shown(KitsuPref.mangaLayout),
        icon: Icons.menu_book_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.manga),
          pref: KitsuPref.mangaLayout,
        ),
      ),
      Setting.header(getString.account),
      if (user is KitsuUser)
        Setting.normal(
          name: getString.kitsuProfile,
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.profileUrl),
        ),
      Setting.normal(
        name: getString.refreshFromKitsu,
        description: getString.repullProfileCounts,
        icon: Icons.refresh_rounded,
        onClick: () async {
          await kitsuAuth.refreshUser();
          snackString(getString.refreshed);
        },
      ),
    ];
  }

  static List<Setting> accountOptions(BuildContext context) {
    final current = kitsuAuth.user.value;
    if (current is! KitsuUser) return const [];
    final user = current;
    Future<void> change(Map<String, dynamic> changes) async {
      if (!await kitsuAuth.updateSettings(changes)) {
        snackString(getString.couldNotUpdateKitsuSettings);
      }
    }

    final ratings = {
      'simple': getString.ratingSimple,
      'regular': getString.ratingRegular,
      'advanced': getString.ratingAdvanced,
    };
    final filters = {
      'sfw': getString.contentSfw,
      'nsfw_sometimes': getString.contentSometimes,
      'nsfw_everywhere': getString.contentEverywhere,
    };

    Setting choice(
      String name,
      IconData icon,
      String value,
      Map<String, String> options,
      String key,
    ) => Setting.normal(
      name: name,
      description: options[value] ?? value,
      icon: icon,
      isActivity: true,
      onClick: () async {
        final picked = await showChoiceSheet<String>(
          context,
          title: name,
          options: [
            for (final e in options.entries) ChoiceOption(e.key, e.value),
          ],
          selected: value,
        );
        if (picked != null && picked != value) await change({key: picked});
      },
    );

    return [
      Setting.header(getString.sectionNames),
      segmentedSetting<String>(
        name: getString.titleLanguage,
        description: getString.titleLanguageDesc,
        icon: Icons.translate_rounded,
        label: getString.titleLanguage,
        value: user.titleLanguage,
        onChanged: (v) => change({'titleLanguagePreference': v}),
        segments: [
          AppSegment('canonical', label: getString.titleCanonical),
          AppSegment('romanized', label: getString.titleRomanized),
          AppSegment('localized', label: getString.titleLocalized),
        ],
      ),
      Setting.header(getString.sectionLists),
      choice(
        getString.ratingSystem,
        Icons.star_rounded,
        user.ratingSystem,
        ratings,
        'ratingSystem',
      ),
      Setting.header(getString.sectionPrivacy),
      choice(
        getString.contentFilter,
        Icons.explicit_rounded,
        user.contentFilter,
        filters,
        'sfwFilterPreference',
      ),
      Setting.switchType(
        name: getString.shareToGlobal,
        description: getString.shareToGlobalDesc,
        icon: Icons.public_rounded,
        isChecked: user.shareToGlobal,
        onSwitchChange: (v) => change({'shareToGlobal': v}),
      ),
      Setting.header(getString.accountDetails),
      Setting.normal(
        name: getString.timezone,
        description: user.timeZone ?? getString.notSet,
        icon: Icons.schedule_rounded,
      ),
      Setting.normal(
        name: getString.country,
        description: user.country ?? getString.notSet,
        icon: Icons.flag_outlined,
      ),
      Setting.normal(
        name: getString.language,
        description: user.language ?? getString.notSet,
        icon: Icons.language_rounded,
      ),
    ];
  }
}
