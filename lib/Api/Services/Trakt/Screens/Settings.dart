import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../../Widgets/Components/HomeLayoutSheet.dart';
import '../Auth.dart';
import '../Data/User.dart';
import '../Prefs.dart';

const _appsUrl = 'https://trakt.tv/oauth/applications';
const _redirects = 'dartotsu://trakt\nhttp://localhost:43721/trakt';

String _shown(Pref<Map<String, bool>> pref) => getString.sectionsShown(
  pref.rx.value.values.where((v) => v).length,
  pref.rx.value.length,
);

class TraktSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = traktAuth.user.value;
    return [
      Setting.header(getString.feedLayout),
      Setting.normal(
        name: getString.homeSections,
        description: _shown(TraktPref.homeLayout),
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: traktAuth.isLoggedIn,
        onClick: () => showHomeLayoutSheet(context, pref: TraktPref.homeLayout),
      ),
      Setting.normal(
        name: getString.labelSections(getString.movies),
        description: _shown(TraktPref.movieLayout),
        icon: Icons.theaters_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.movies),
          pref: TraktPref.movieLayout,
        ),
      ),
      Setting.normal(
        name: getString.labelSections(getString.shows),
        description: _shown(TraktPref.seriesLayout),
        icon: Icons.live_tv_rounded,
        isActivity: true,
        onClick: () => showHomeLayoutSheet(
          context,
          title: getString.labelSections(getString.shows),
          pref: TraktPref.seriesLayout,
        ),
      ),
      Setting.header(getString.account),
      if (user is TraktUser)
        Setting.normal(
          name: getString.traktProfile,
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.profileUrl),
        ),
      if (user is TraktUser) ..._details(user),
      Setting.normal(
        name: getString.traktClientId,
        description: TraktPref.clientId.value.isEmpty
            ? getString.traktClientIdDesc
            : TraktPref.clientId.value,
        icon: Icons.key_rounded,
        onClick: () =>
            _edit(context, getString.traktClientId, TraktPref.clientId),
      ),
      Setting.normal(
        name: getString.traktCreateApp,
        description: getString.traktCreateAppDesc,
        icon: Icons.open_in_new_rounded,
        onClick: () => openLinkInBrowser(_appsUrl),
      ),
      Setting.normal(
        name: getString.refreshFromTrakt,
        description: getString.repullProfileLibrary,
        icon: Icons.refresh_rounded,
        onClick: () async {
          traktAuth.queries.invalidateLibrary();
          await traktAuth.refreshUser();
          snackString(getString.refreshed);
        },
      ),
    ];
  }

  List<Setting> _details(TraktUser user) {
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
      info(getString.about, Icons.info_outline_rounded, user.about),
      if (user.vip)
        Setting.normal(
          name: getString.traktVip,
          description: getString.traktVipMember,
          icon: Icons.workspace_premium_outlined,
        ),
    ];
  }

  void _edit(BuildContext context, String title, Pref<String> pref) {
    final controller = TextEditingController(text: pref.value);
    AlertDialogBuilder(context)
      ..setTitle(title)
      ..setCustomView(
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(getString.traktRedirectHelp(_redirects)),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: title),
            ),
          ],
        ),
      )
      ..setNegativeButton(getString.cancel, null)
      ..setPositiveButton(getString.save, () {
        pref.rx.value = controller.text.trim();
        snackString(getString.saved);
      })
      ..show();
  }
}
