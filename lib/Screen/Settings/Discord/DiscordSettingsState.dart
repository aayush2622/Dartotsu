import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Api/Discord/DiscordAccount.dart';
import '../../../Api/Discord/DiscordPresence.dart';
import '../../../Api/Discord/DiscordPresenceController.dart';
import '../../../Api/Discord/DiscordRpcRouter.dart';
import '../../../Api/Discord/Mobile/TokenManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Model/Anime.dart';
import '../../../Core/Services/Model/Manga.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'DiscordLoginScreen.dart';

class DiscordSettingsState extends ScreenState {
  static const sampleAnime =
      'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx154587-gHSraOSa0nBG.jpg';
  static const sampleManga =
      'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx105778-euxXZEIfDY2u.png';

  final account = find<DiscordAccount>();
  final presenceController = find<DiscordPresenceController>();

  final now = DateTime.now().live;
  final sample = 0.live;
  final activeField = 'details'.live;

  final custom = TextEditingController(
    text: PrefName.discordCustomStatus.value,
  );
  final customName = TextEditingController(
    text: PrefName.discordCustomName.value,
  );
  final details = TextEditingController(
    text: PrefName.discordDetailsTemplate.value,
  );
  final stateLine = TextEditingController(
    text: PrefName.discordStateTemplate.value,
  );
  final buttonLabel = TextEditingController(
    text: PrefName.discordButtonLabel.value,
  );
  final buttonUrl = TextEditingController(
    text: PrefName.discordButtonUrl.value,
  );
  final privateText = TextEditingController(
    text: PrefName.discordPrivateText.value,
  );
  final detailsFocus = FocusNode();
  final stateFocus = FocusNode();

  late final int _opened = DateTime.now().millisecondsSinceEpoch;
  Timer? _tick;

  @override
  void onInit() {
    detailsFocus.addListener(() {
      if (detailsFocus.hasFocus) activeField.value = 'details';
    });
    stateFocus.addListener(() {
      if (stateFocus.hasFocus) activeField.value = 'state';
    });
    _tick = Timer.periodic(
      const Duration(seconds: 1),
      (_) => now.value = DateTime.now(),
    );
    if (account.signedIn.value) unawaited(account.refresh());
  }

  @override
  void onClose() {
    _tick?.cancel();
    for (final c in [
      custom,
      customName,
      details,
      stateLine,
      buttonLabel,
      buttonUrl,
      privateText,
    ]) {
      c.dispose();
    }
    detailsFocus.dispose();
    stateFocus.dispose();
    super.onClose();
  }

  static final _tracked = <Live>[
    PrefName.discordRpc.rx,
    PrefName.discordBrowsing.rx,
    PrefName.discordImages.rx,
    PrefName.discordButtons.rx,
    PrefName.discordTimer.rx,
    PrefName.discordHideTitles.rx,
    PrefName.discordActivity.rx,
    PrefName.discordStatus.rx,
    PrefName.discordLive.rx,
    PrefName.discordCustomStatus.rx,
    PrefName.discordNameMode.rx,
    PrefName.discordCustomName.rx,
    PrefName.discordStatusDisplay.rx,
    PrefName.discordDetailsTemplate.rx,
    PrefName.discordStateTemplate.rx,
    PrefName.discordLargeImage.rx,
    PrefName.discordSmallImage.rx,
    PrefName.discordTimerStyle.rx,
    PrefName.discordMediaButton.rx,
    PrefName.discordAppButton.rx,
    PrefName.discordButtonLabel.rx,
    PrefName.discordButtonUrl.rx,
    PrefName.discordPrivateText.rx,
    PrefName.discordShowWatching.rx,
    PrefName.discordShowReading.rx,
  ];

  void track() {
    for (final pref in _tracked) {
      pref.value;
    }
  }

  bool get signedIn => account.signedIn.value;

  DiscordRoute get route {
    signedIn;
    PrefName.discordLive.rx.value;
    return DiscordRpcRouter.route;
  }

  Media _media(bool anime) => Media(
    id: 'sample',
    name: anime ? 'Frieren: Beyond Journey’s End' : 'Chainsaw Man',
    cover: anime ? sampleAnime : sampleManga,
    shareLink: anime
        ? 'https://anilist.co/anime/154587'
        : 'https://anilist.co/manga/105778',
    anime: anime ? Anime(totalEpisodes: 28) : null,
    manga: anime ? null : Manga(totalChapters: 97),
  );

  DiscordPresence? raw(DateTime at) {
    final ms = at.millisecondsSinceEpoch;
    final elapsed = (ms - _opened) ~/ 1000;
    switch (sample.value) {
      case 0:
        return DiscordPresence.consuming(
          _media(true),
          number: 12,
          total: 28,
          positionSeconds: 754 + elapsed,
          durationSeconds: 1440,
          anchorMs: ms,
        );
      case 1:
        return DiscordPresence.reading(
          _media(false),
          number: '45',
          total: 97,
          since: _opened - 8 * 60 * 1000,
        );
      case 2:
        return DiscordPresence.browsing('Browsing anime', state: 'Home');
      default:
        return presenceController.current;
    }
  }

  DiscordPresence? preview(DateTime at) {
    final style = PresenceStyle.fromPrefs();
    final shown = raw(at);
    if (shown == null || !style.shows(shown.kind)) return null;
    return shown.styled(style);
  }

  void insert(String variable) {
    final controller = activeField.value == 'state' ? stateLine : details;
    final pref = activeField.value == 'state'
        ? PrefName.discordStateTemplate
        : PrefName.discordDetailsTemplate;
    final text = controller.text;
    final sel = controller.selection;
    final at = sel.isValid ? sel.end : text.length;
    final next = text.replaceRange(at, at, '{$variable}');
    controller.value = TextEditingValue(
      text: next,
      selection: TextSelection.collapsed(offset: at + variable.length + 2),
    );
    pref.rx.value = next;
  }

  void login(BuildContext context) {
    unawaited(
      navigateToPage(context, const DiscordLoginScreen()).then((_) {
        account.onSignedIn();
        if (MobileTokenManager.saved) {
          snackString(getString.discordTokenSavedSnack);
        }
      }),
    );
  }

  Future<void> signOut() async {
    await account.signOut();
    snackString(getString.discordTokenRemovedSnack);
  }
}
