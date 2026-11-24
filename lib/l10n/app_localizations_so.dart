// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Barnaamijka CUSUB ee ugu fiican\nee la socodka Anime & Manga';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get trakt => 'Trakt';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get comick => 'Comick';

  @override
  String get mangaBaka => 'MangaBaka';

  @override
  String get mangaUpdates => 'MangaUpdates';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => 'Soo rar kuwo kale';

  @override
  String get login => 'Gal';

  @override
  String get continueAsGuest => 'Ku sii wad marti ahaan';

  @override
  String get getStarted => 'Bilow';

  @override
  String get loginWithToken => 'Ku gal token';

  @override
  String get pasteTokenHint => 'Halkan ku dheji token-kaaga gelitaanka';

  @override
  String loginTo(String service) {
    return 'Ku gal $service';
  }

  @override
  String get settings => 'Dejimaha';

  @override
  String get account => 'Akoon';

  @override
  String get about => 'Ku saabsan';

  @override
  String get language => 'Luqad';

  @override
  String get animationSpeed => 'Animation-ka';

  @override
  String get animationSpeedDesc =>
      'Xawaaraha kala-gudbidda iyo saameynta soo-gelidda app-ka oo dhan';

  @override
  String get animationSpeedOff => 'Dami';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kordhimo',
      one: 'Kordhin',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Isha aan la aqoon';

  @override
  String get install => 'Rakib';

  @override
  String get update => 'Cusboonaysii';

  @override
  String get uninstall => 'Ka saar';

  @override
  String get updateInstallCancelled =>
      'Rakibaadda waa la joojiyay. Haddii Android ku yidhi app-kan wuu ka hor imanayaa kii hore ee la rakibay, saxiixu waa kala duwan yahay: marka hore tirtir nooca hadda jira, kadibna rakib cusboonaysiinta';

  @override
  String updateInstallFailed(String error) {
    return 'Cusboonaysiintii waa fashilantay: $error';
  }

  @override
  String get appLock => 'Qufulka app-ka';

  @override
  String get appLockDesc =>
      'Weydii passcode marka app-ka la furo ama marka aad dib ugu soo noqoto ka dib mudo';

  @override
  String get appLockBiometric => 'Ku fur qalabka biometrics';

  @override
  String get appLockBiometricDesc =>
      'Isticmaal farahaaga ama wajigaaga intii aad ka qori lahayd lambarka sirta ah';

  @override
  String get appLockBiometricReason => 'Fur Dartotsu';

  @override
  String get appLockDelay => 'Quful marka aan shaqayn';

  @override
  String get appLockDelayAlways => 'Had iyo jeer';

  @override
  String get appLockDelayNever => 'Marna';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count daqiiqo',
      one: '1 daqiiqo',
    );
    return 'Kadib $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Isticmaal biometrics';

  @override
  String get appLockUnlock => 'Geli passcode-kaaga';

  @override
  String get appLockWrong => 'Passcode-ku waa khalad';

  @override
  String appLockWait(String seconds) {
    return 'Isku day badan, sug ${seconds}s';
  }

  @override
  String get appLockNew => 'Dooro passcode';

  @override
  String get appLockNewHint => '4 ilaa 8 lambar';

  @override
  String get appLockConfirm => 'Mar kale geli';

  @override
  String get appLockMismatch => 'Passcode-yadu isma waafaqaan';

  @override
  String get appLockOn => 'Passcode waa la dejiyay';

  @override
  String get appLockRemoveTitle =>
      'Geli passcode-kaaga si aad qufulka u damiso';

  @override
  String get installFailed => 'Rakibiddu way fashilantay';

  @override
  String get updateFailed => 'Cusboonaysiintu way fashilantay';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wararka waa la heli karaa',
      one: '1 update la heli karo',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Cusbooneysii dhammaan';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done ee $total kordhinta waa la cusboonaysiiyay';
  }

  @override
  String get updateConflictTitle => 'Cusboonaysiinta lama rakibin';

  @override
  String updateConflictBody(String names) {
    return '$names laguma rakibi karo nooca jira. Tani waxay badanaa ka dhigan tahay nuqulka la rakibay si ka duwan ayaa loo saxiixay. Ka saar oo rakib nooca cusub?';
  }

  @override
  String get updateConflictAction => 'Ka saar oo dib u rakib';

  @override
  String get noSourceSettings => 'Isha dejimo ma leh';

  @override
  String get addPluginRepository => 'Ku dar kayd plugin';

  @override
  String get pluginIndexUrlHint => 'URL-ka tusaha plugin-ka';

  @override
  String get addRepository => 'Ku dar kayd';

  @override
  String get importRepositoryFile => 'Soo deji feyl';

  @override
  String get pluginRepoUpdated => 'Kaydka plugin-ka waa la cusboonaysiiyay';

  @override
  String get pluginRepoUpdateFailed =>
      'Kaydka plugin-ka lama cusboonaysiin karin';

  @override
  String get ok => 'Haa';

  @override
  String get cancel => 'Jooji';

  @override
  String get yes => 'Haa';

  @override
  String get no => 'Maya';

  @override
  String get save => 'Kaydi';

  @override
  String get reset => 'Dib u deji';

  @override
  String get clear => 'Nadiifi';

  @override
  String get test => 'Tijaabi';

  @override
  String get testing => 'Waa la tijaabinayaa…';

  @override
  String get resolving => 'Waa la xallinayaa…';

  @override
  String get none => 'Midna';

  @override
  String get selectMediaService => 'Dooro adeegga warbaahinta';

  @override
  String get manageServices => 'Adeegyada warbaahinta';

  @override
  String get manageServicesDesc =>
      'Dib u habayso adeegyada oo dooro kuwa ka muuqda soo-dooriyaha';

  @override
  String get manageServicesHint =>
      'Jiid si aad dib u dalbato, dami kuwa aadan isticmaalin';

  @override
  String get pickColor => 'Dooro midab';

  @override
  String get colorPickerCustom => 'Gaar ah';

  @override
  String get colorPickerTransparent => 'Hufan';

  @override
  String get ltr => 'Bidix ilaa midig';

  @override
  String get searchSettings => 'Raadi dejimaha';

  @override
  String nothingMatches(String query) {
    return 'Wax ku habboon \"$query\" ma jiraan';
  }

  @override
  String searchCategory(String category) {
    return 'Raadi $category';
  }

  @override
  String get settingsAppearance => 'Muuqaal';

  @override
  String get settingsAppearanceDesc => 'Qaabka, midabada, qaabka muraayadda';

  @override
  String get settingsGeneral => 'Guud';

  @override
  String get settingsGeneralDesc => 'Luqadda iyo habdhaqanka';

  @override
  String get settingsNetwork => 'Shabakadda';

  @override
  String get settingsNetworkDesc =>
      'Wakiilka isticmaalaha, shahaadooyinka, DNS iyo wakiil';

  @override
  String get settingsAccountDesc => 'Adeegga la socodka iyo gelitaanka';

  @override
  String get settingsUpdates => 'Cusboonaysiin';

  @override
  String get amoledBlack => 'Madow AMOLED';

  @override
  String get amoledBlackDesc => 'Dusha madow oo saafi ah qaabka mugdiga';

  @override
  String get glassMode => 'Qaabka muraayadda';

  @override
  String get glassModeDesc =>
      'Dusha qabow oo ka sarreeya sawirrada maktabaddaada';

  @override
  String get shelfFrame => 'Gooni ku wareegsan qaybaha';

  @override
  String get shelfFrameDesc =>
      'Muuji kaar ka danbeeya safka kasta, ama u daa safafka inay si toos ah bogga ugu fadhiistaan';

  @override
  String get settingsExtensionsDesc =>
      'Maareeyeyaasha isha, kaydka iyo ikhtiyaarrada kordhinta';

  @override
  String get settingsAddons => 'Kordhin dheeraad ah';

  @override
  String get customPath => 'Waddo kaydin gaar ah';

  @override
  String get stories => 'Sheekooyin';

  @override
  String get watchOrder => 'Daawo amarka';

  @override
  String get watchOrderOpenSite => 'Ka fur chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Dalab daawasho ah looma helin cinwaankan';

  @override
  String get watchOrderOpenFailed => 'Ma furi karin ciwaankaas';

  @override
  String get watchOrderCurrent => 'halkan ayaad joogtaa';

  @override
  String get watchOrderCredit => 'Daawo amarada chiaki.site';

  @override
  String get customPathDesc =>
      'Meesha xogta app-ka la dhigo. Dheer taabo si aad dib ugu dejiso';

  @override
  String get selectDirectory => 'Dooro galka';

  @override
  String get differentCacheManager => 'Cache sawir oo kale';

  @override
  String get differentCacheManagerDesc =>
      'Isticmaal maareeye cache oo kale sawirrada';

  @override
  String get settingsSync => 'Isku xidhka dejinta';

  @override
  String get settingsSyncDesc =>
      'Dejintaada isku mid ku dhig qalab kasta. Waxay ku kaydsan yihiin xog gaar ah akoonkaaga GitHub';

  @override
  String get settingsSyncSwitch => 'Isku hagaaji isbeddelka';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Ku soo gal GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Dejinta waxaa lagu kaydiyaa qoraal gaar ah oo ku jira akoonkaaga';

  @override
  String get settingsSyncToken =>
      'Isticmaal calaamad gelitaanka shakhsi ahaaneed';

  @override
  String get settingsSyncTokenDesc =>
      'Mid ka samee github.com/settings/tokens adiga oo haysta ogolaanshaha gunta oo kaliya';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'U soo galay sida $user';
  }

  @override
  String get settingsSyncSignOut => 'Saxiix';

  @override
  String settingsSyncCode(Object code) {
    return 'Geli $code GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'Bogga GitHub ayaa ka furmay biraawsarkaaga. Taabo si aad koodhka koobiyayso, ama taabo oo hayso si aad u tirtirto.';

  @override
  String get settingsSyncSignInFailed => 'Ma soo geli karo GitHub';

  @override
  String get dcPreview => 'Horudhac';

  @override
  String get dcSampleWatching => 'Daawashada';

  @override
  String get dcSampleReading => 'Akhriska';

  @override
  String get dcSampleBrowsing => 'Daalacashada';

  @override
  String get dcSampleLive => 'Hadda';

  @override
  String get dcLiveNothing =>
      'Ma jiraan wax muuqda hadda Fur ciwaan, bilow dhacdo ama cutub wayna ka muuqataa halkan.';

  @override
  String get dcMemberList => 'Liiska xubnaha';

  @override
  String get dcAccount => 'Xisaab';

  @override
  String get dcSignIn => 'Ku soo gal Discord';

  @override
  String get dcSignOut => 'Saxiix';

  @override
  String get dcDesktopHint =>
      'Iyadoo aan la xidhin, Discord waxay ku tusinaysaa \"Daawashada Dartotsu\" iyada oo loo marayo abka miiska. Connect Discord si aad hawsha ugu magacowdo ciwaankaga, ay ku jirto mobaylka.';

  @override
  String get dcMobileHint =>
      'Connect Discord si aad u muujiso waxaad daawanayso ama akhrinayso. Waxay adeegsataa bogga oggolaanshaha Discord, ee maaha calaamada akoonkaaga.';

  @override
  String get dcConnect => 'Isku xirka Discord';

  @override
  String get dcConnectDesc =>
      'Fura bogga oggolaanshaha Discord oo ku dara Dartotsu hoosta Apps Idman. Discord waxay ku weyddiistaa inay cusboonaysiiso joogitaankaaga. Kaliya calaamad cusub ayaa la kaydiyay, maaha calaamada akoonkaaga.';

  @override
  String get dcConnectFailed => 'Lama xiriirin karo Discord';

  @override
  String get dcConnectedSnack => 'Khilaaf ayaa ku xiran';

  @override
  String get dcDisconnect => 'Xiriirka ka jar';

  @override
  String get dcDisconnectedSnack => 'Khilaafku wuu go\'ay';

  @override
  String get dcUseToken => 'Isticmaal calaamad';

  @override
  String get dcRouteDesktop => 'Iyadoo loo marayo barnaamijka Discord desktop';

  @override
  String get dcRouteHeadless => 'Iyada oo loo marayo akoonkaaga';

  @override
  String get dcRouteGateway => 'Iyada oo loo marayo akoonkaaga, ku noolow';

  @override
  String get dcRouteLinked => 'Abka ku xidhan';

  @override
  String get dcRouteNone => 'Ma xidhna';

  @override
  String get dcStatusNeedsToken =>
      'Wuxuu u baahan yahay calaamad Discord. Ku xidhida abka ma dhigayso heerkaaga onlaynka ah.';

  @override
  String get dcAccountOnly => 'Wuxuu u baahan yahay akoon lagu soo galay';

  @override
  String get dcStatusSection => 'Xaalada';

  @override
  String get dcControlStatus => 'Xakamee xaaladayda';

  @override
  String get dcControlStatusDesc =>
      'Waxay ku haysaa xidhiidhka tooska ah ee Discord inta joogitaanka qanigu daaran yahay, markaa Dartotsu wuxuu dejin karaa heerkaaga.';

  @override
  String get dcStatusOnline => 'Online';

  @override
  String get dcStatusIdle => 'Iidle';

  @override
  String get dcStatusDnd => 'Ha dhibin';

  @override
  String get dcStatusInvisible => 'Aan la arki karin';

  @override
  String get dcCustomStatus => 'Xaaladda gaarka ah';

  @override
  String get dcCustomStatusHint => 'maxaad wadaa';

  @override
  String get dcActivitySection => 'Dhaqdhaqaaqa';

  @override
  String get dcShowWatching => 'Muuji adigoo daawanaya';

  @override
  String get dcShowReading => 'Muuji inta aad wax akhrinayso';

  @override
  String get dcListening => 'Dhagaysi';

  @override
  String get dcCompeting => 'tartamaya';

  @override
  String get dcActivityName => 'Magaca hawsha';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Ciwaanka';

  @override
  String get dcNameCustom => 'Caadiyan';

  @override
  String get dcCustomNameHint => 'Magaca la muujiyay ka dib \"Daawashada\"';

  @override
  String get dcStatusText => 'Qoraalka xaaladda';

  @override
  String get dcStatusTextDesc =>
      'Waxa liiska xubnaha ka tusinaya magacaaga agtiisa';

  @override
  String get dcDisplayName => 'Magaca';

  @override
  String get dcDisplayState => 'Gobolka';

  @override
  String get dcDisplayDetails => 'Faahfaahin';

  @override
  String get dcTextSection => 'Qoraal';

  @override
  String get dcDetails => 'Khadka sare';

  @override
  String get dcState => 'Gunta hoose';

  @override
  String get dcTemplateHint => 'Madhan waxay isticmaashaa sida caadiga ah';

  @override
  String get dcVariables => 'Taabo si aad u geliso qiime';

  @override
  String get dcImagesSection => 'Sawirada';

  @override
  String get dcLargeImage => 'Sawir weyn';

  @override
  String get dcLargeAuto => 'Baabuur';

  @override
  String get dcLargeCover => 'Dabool';

  @override
  String get dcLargeLogo => 'Logo';

  @override
  String get dcSmallImage => 'Sawir yar';

  @override
  String get dcSmallAuto => 'Logo';

  @override
  String get dcSmallNone => 'Midna';

  @override
  String get dcTimerStyle => 'Habka saacada';

  @override
  String get dcTimerAuto => 'Baabuur';

  @override
  String get dcTimerElapsed => 'Dhacay';

  @override
  String get dcTimerRemaining => 'Haraaga';

  @override
  String get dcButtonsSection => 'Badhamada';

  @override
  String get dcButtonMedia => 'Xidhiidhka cinwaanka';

  @override
  String get dcButtonApp => 'Isku xirka Dartotsu';

  @override
  String get dcButtonCustom => 'badhanka gaarka ah';

  @override
  String get dcButtonLabel => 'Summada';

  @override
  String get dcButtonUrl => 'Xiriirinta';

  @override
  String get dcPrivacySection => 'Qarsoodi';

  @override
  String get dcPrivateText => 'Qoraal gaar ah';

  @override
  String get dcPrivateHint => 'Wax gaar ah';

  @override
  String get dcTokenWarning =>
      'Soo gelida waxay isticmaashaa calaamada akoonkaaga Xeerarka Discord ayaa tan niyadda ka dhigaya, markaa u isticmaal khatartaada.';

  @override
  String get dcConnected => 'Ku xidhan';

  @override
  String get dcConnection => 'Isku xirka';

  @override
  String get dcMethodDesktop => 'Discord desktop app';

  @override
  String get dcMethodDesktopDesc =>
      'Si toos ah ayaa loo istcimaalaa marka aan wax kale lagu xirin. Khilaafku waa inuu ka furnaa kombayutarkan.';

  @override
  String get dcMethodToken => 'Calaamada xisaabta';

  @override
  String get dcInUse => 'La isticmaalo';

  @override
  String get dcRecommended => 'lagu taliyay';

  @override
  String get dcConnecting => 'Isku xidhka…';

  @override
  String get dcDisconnected => 'Ma xidhna';

  @override
  String dcSignedInAs(String name) {
    return 'U soo galay sida $name';
  }

  @override
  String get settingsSyncOn => 'Daar';

  @override
  String get settingsSyncCustom => 'Caadiyan';

  @override
  String get settingsSyncChangedHeader => 'Goobaha la bedelay';

  @override
  String get settingsSyncNoneChanged =>
      'Weli ma aadan beddelin mid ka mid ah kuwan, marka ma jiraan wax la isku dhejiyo.';

  @override
  String get settingsSyncChangedOnly =>
      'Dejinta kaliya ee aad bedeshay ayaa lagu kaydiyaa Wax kasta oo kale waxay u isticmaalaan sida caadiga ah qalab kasta. Astaanta daruurtu waxay muujinaysaa waxa horeba ugu jiray serfarka';

  @override
  String get settingsSyncOffCategory =>
      'Iskuma toosin Kuwani waxay ku sii jiraan qalabkan oo nuqul ka mid ah server-ka ayaa loo daayaa sidiisa.';

  @override
  String get settingsSyncPartsNote =>
      'Qalabkiiba Off waxay ilaalinaysaa qalab kasta qiimahiisa, sidaa awgeed taleefoonka iyo TV-ga way kala duwanaan karaan.';

  @override
  String get settingsSyncPartSubtitles => 'cabbir hoosaadka iyo midabada';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Cabbirka, miisaanka, midabada iyo booska';

  @override
  String get settingsSyncPartPictureColors => 'midabada sawirka';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Iftiin, isbarbardhig, dhereg, gamma, midab iyo HDR';

  @override
  String get settingsSyncPartPalette => 'Midabada mawduuca';

  @override
  String get settingsSyncPartPaletteDesc =>
      'Mawduuca, midabka lahjadda iyo OLED madow';

  @override
  String get settingsSyncCatOther => 'Daawo, akhriso iyo adeegyo';

  @override
  String get settingsSyncTitles => 'Daawo horumarka iyo ciwaanada';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records ciwaanada iyo $resume dib u bilaaba galida serfarka';
  }

  @override
  String get settingsSyncTitlesNone => 'Wax wali lama soo galin';

  @override
  String get settingsSyncTitlesNote =>
      'Daawo oo akhri jagooyinka, shelf resume, liisaska deegaankaaga, bookmarks, waxyaabaha muhiimka ah iyo doorashada cinwaan kasta. Tabarbarrada isha iyo durdurrada waxay ku sii jiraan qalab kasta sababtoo ah waxay ku xidhan yihiin kordhintaada. Cinwaanadu waxay soo geliyaan ugu badnaan 45 ilbiriqsi kasta.';

  @override
  String get settingsSyncConnect => 'Ma xidhna';

  @override
  String get settingsSyncConnectDesc =>
      'Ku soo gal GitHub si aad u ilaaliso dejintaada isku mid qalab kasta.';

  @override
  String get settingsSyncFailedTitle => 'Isku xidhka ayaa fashilmay';

  @override
  String get settingsSyncPaused => 'Hakin';

  @override
  String get settingsSyncPausedDesc =>
      'Ma jiraan wax la soo geliyo ama la soo dejiyo inta ay tani maqan tahay.';

  @override
  String get settingsSyncUpToDate => 'Ilaa hadda';

  @override
  String get settingsSyncRetry => 'Isku day';

  @override
  String get settingsSyncAccount => 'Koontada GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'Xogtaadu waxay ku socotaa xog gaar ah oo ku jirta akoonkaaga.';

  @override
  String get settingsSyncWaiting => 'Adigoo ku sugaya inaad ku ogolaato GitHub';

  @override
  String get settingsSyncCopyCode => 'Taabo koodka si aad u koobiyeeyso';

  @override
  String get settingsSyncCancel => 'Jooji';

  @override
  String get settingsSyncStatSettings => 'Dejinta';

  @override
  String get settingsSyncStatTitles => 'Cinwaanada';

  @override
  String get settingsSyncStatShelf => 'Dib u bilaw';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'La soo galiyay $time $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ayaa isbedelay',
      one: '1 bedelay',
      zero: 'Wali waxba isma bedelin',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Xisaabaadka iyo furaha sirta ah';

  @override
  String get settingsSyncSecretsDesc =>
      'Isku hagaaji geliyaashaada (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), furayaasha API iyo qufulka abka ee aaladahaaga. Waxaa lagu sir ah erayga sirta ah ee ku sii jira qalabkaaga, markaa GitHub waligiis ma arko.';

  @override
  String get settingsSyncSecretsOn =>
      'Akoonada waa la is waafajiyay oo waa la siray';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Ka bixida hal qalab kuma saarayso kuwa kale.';

  @override
  String get settingsSyncSecretsBroken =>
      'Erayada sirta ah kuma eka kuwa ku jira server-ka. Geli mar kale si aad u sii wadato xisaab xidhka';

  @override
  String get settingsSyncPassphraseSet => 'Deji jumlad sir ah';

  @override
  String get settingsSyncPassphraseEnter => 'Geli eraygaaga sirta ah';

  @override
  String get settingsSyncPassphraseField => 'Sifeynta';

  @override
  String get settingsSyncPassphraseConfirm => 'Ku celi erayga sirta ah';

  @override
  String get settingsSyncPassphraseNew =>
      'Dooro jumlad sir ah oo ka kooban ugu yaraan 6 xaraf. Meelna laguma kaydiyo laakiin qalabkaaga lamana soo celin karo. Haddii aad illowdo, tirtir nuqulka serverka oo dib u bilow.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Geli erayga sirta ah ee aad ku dooratay qalabkaaga kale. Xisaabaadka qalabkan waxa lagu bedeli doonaa kuwa la isku dhejiyay.';

  @override
  String get settingsSyncPassphraseWrong => 'Erayada sirta ah ee khaldan';

  @override
  String get settingsSyncPassphraseMismatch => 'Erayada sirta ah kuma eka';

  @override
  String get settingsSyncPassphraseShort => 'Isticmaal ugu yaraan 6 xaraf';

  @override
  String get settingsSyncSecretsStop => 'Jooji xisaabinta xisaabaadka';

  @override
  String get settingsSyncSecretsDelete => 'Ka tirtir GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Tani waxay ka saartaa faylka xisaabtaada sirta ah. Aaladaha kale waxay xafidaan soo gelitaankooda waxayna dejin karaan jumlad sir ah oo cusub.';

  @override
  String get settingsSyncWhat => 'Maxaa la isku waafajiyaa';

  @override
  String get settingsSyncServer => 'On server-ka';

  @override
  String get settingsSyncServerEmpty => 'Wax wali lama soo galin';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count, laga soo raray $time $device';
  }

  @override
  String get settingsSyncThisDevice => 'qalabkan';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dejinta server-ka',
      one: '1 dejinta on server-ka',
      zero: 'Ma jiraan wax ku jira server-ka',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Isku xidh hadda';

  @override
  String get settingsSyncRunning => 'Isku xidhka…';

  @override
  String get settingsSyncNever => 'Weli lama isku dhejin';

  @override
  String settingsSyncLast(Object time) {
    return 'Markii ugu dambeysay ee la isku dhejiyay $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Isku xidhka ayaa fashilmay: $error';
  }

  @override
  String get settingsSyncScope =>
      'Keliya goobaha ku shaqeeya meel kasta waa la isku dhejiyay. Xisaabaadka, calaamadaha, faylalka, kordhinta, ogaysiisyada, Discord, cusboonaysiinta iyo cabbirka daaqada waxay ku sii sugnaan doonaan qalab kasta.';

  @override
  String get backupAndRestore => 'Kaydinta iyo soo celinta';

  @override
  String get backupAndRestoreDesc => 'Kaydi ama soo rar doorbidyadaada';

  @override
  String get backup => 'Kaydin';

  @override
  String get restore => 'Soo celi';

  @override
  String get loadExtensionsIcon => 'Soo rar astaamaha kordhinta';

  @override
  String get autoUpdateRuntimes =>
      'Si otomaatig ah u cusboonaysii wakhti kordhinta';

  @override
  String get autoUpdateRuntimesDesc =>
      'Soo deji Aniyomi, CloudStream iyo noocyo runtime kale oo gadaal ah. Demin, summada cusboonaysiinta ayaa u muuqata maamulaha agtiisa.';

  @override
  String get loadExtensionsIconDesc =>
      'Muuji astaamaha isha liisaska kordhinta';

  @override
  String get sectionStorage => 'Kaydinta';

  @override
  String get sectionManagers => 'Maareeyeyaal';

  @override
  String get sectionOptions => 'Ikhtiyaarro';

  @override
  String get backupTabBackup => 'Kaydi';

  @override
  String get backupTabRestore => 'Soo celi';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys dejin oo ku jira $categories qaybood';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Kaydkii ugu danbeeyay $time';
  }

  @override
  String get backupNever => 'Weli kayd ma jiro';

  @override
  String get backupSelectAll => 'Dooro dhammaan';

  @override
  String get backupClearAll => 'Nadiifi';

  @override
  String backupKeys(Object count) {
    return '$count dejin';
  }

  @override
  String get backupPasswordRequired =>
      'Furaha (loo baahan yahay xogta xisaabta)';

  @override
  String get backupProtectedNeedsPassword =>
      'Deji furaha sirta ah si aad u kaydiso xogta akoontada, ama ka furto';

  @override
  String get backupProtectedSkipped =>
      'Kaydkani malaha furaha sirta ah, markaa xogta akoonkeeda waa la booday';

  @override
  String get backupPassword => 'Erayga sirta (ikhtiyaari)';

  @override
  String get backupPasswordHint =>
      'Madhan ka tag si aad u isticmaasho kan caadiga ah';

  @override
  String get backupSensitive =>
      'Waxa ku jira token-yada gelitaanka. Faylkan qari';

  @override
  String get backupCreate => 'Samee kayd';

  @override
  String backupSaved(Object name) {
    return 'Kaydka waxaa lagu keydiyay $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Kaydintu way fashilantay: $error';
  }

  @override
  String get backupPickFile => 'Dooro fayl kayd ah';

  @override
  String get backupPickFileDesc =>
      'Dooro fayl .json ah oo uu sameeyay Dartotsu';

  @override
  String get backupChooseAnother => 'Dooro fayl kale';

  @override
  String get backupCreatedAt => 'La sameeyay';

  @override
  String get backupAppVersion => 'Nooca app-ka';

  @override
  String get backupDevice => 'Qalab';

  @override
  String get backupAccounts => 'Akoonno';

  @override
  String get backupSize => 'Cabbir';

  @override
  String get backupEncrypted => 'Erayga sirta ayaa lagu ilaaliyay';

  @override
  String get backupUnlock => 'Fur';

  @override
  String get backupWrongPassword =>
      'Faylkan lama akhrin karo. Hubi erayga sirta';

  @override
  String get backupRestoreSelected => 'Soo celi kuwa la doortay';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Soo celi $count dejin? Qiimayaasha hadda ku jira qaybahan waa la bedelayaa.';
  }

  @override
  String get backupRestored =>
      'Waa la soo celiyay. Dib u bilow app-ka si wax walba u dhaqmaan';

  @override
  String backupRestoreFailed(Object error) {
    return 'Soo celintu way fashilantay: $error';
  }

  @override
  String get backupSelectOne => 'Dooro ugu yaraan hal qayb';

  @override
  String get backupCatTheme => 'Muuqaal';

  @override
  String get backupCatThemeDesc =>
      'Qaabka, midabada, muraayadda, far-qoraalka iyo qaabka kaarka';

  @override
  String get backupCatCommon => 'Guud';

  @override
  String get backupCatCommonDesc =>
      'Luqadda, kaydinta, shabakadda iyo ikhtiyaarrada kordhinta';

  @override
  String get backupCatPlayer => 'Ciyaaraha';

  @override
  String get backupCatPlayerDesc => 'Doorbidyada ciyaaraha';

  @override
  String get backupCatReader => 'Akhriska';

  @override
  String get backupCatReaderDesc => 'Doorbidyada akhriska';

  @override
  String get backupCatProtected => 'Akoonno';

  @override
  String get backupCatProtectedDesc =>
      'Token-yada gelitaanka iyo xogta gelitaanka';

  @override
  String get backupCatOther => 'Adeegyada iyo feed-yada';

  @override
  String get backupCatOtherDesc =>
      'Qaabka feed-ka, liisaska iyo ikhtiyaarrada adeegga';

  @override
  String get logFile => 'Fayl log ah';

  @override
  String get logFileDesc =>
      'La wadaag log-ka app-ka, ama koobi waddadiisa Linux';

  @override
  String get logDelete => 'Tirtir faylasha log';

  @override
  String get logDeleteDesc =>
      'Nadiifi diiwaanka abka ee la keydiyay si aad meel bannaan uga soo baxdo';

  @override
  String logDeleted(String size) {
    return 'La tirtiray $size ee diiwaannada';
  }

  @override
  String get missingSequel => 'Taxanaha Maqan';

  @override
  String get rising => 'Kaca';

  @override
  String get stacks => 'Duubista';

  @override
  String get stacksAll => 'Dhammaan';

  @override
  String get stacksFeatured => 'Sifaysan';

  @override
  String get stacksMine => 'Adaa leh';

  @override
  String get stacksSaved => 'Badbaadiyay';

  @override
  String get stacksFollowing => 'Daba gal';

  @override
  String get stacksEmpty => 'Weli halkan wax xidhmo ah ma jiraan';

  @override
  String get stacksSignIn => 'Gal MangaBaka si aad u aragto xirmooyinkaaga';

  @override
  String get stacksScopeNeeded =>
      'Xirmooyinkaagu waxay u baahan yihiin ogolaansho cusub. Mar kale soo gal MangaBaka si aad u ogolaato.';

  @override
  String get stacksSignInAgain => 'Mar kale soo gal';

  @override
  String get stacksCouldntLoad => 'Waa la rari waayay xirmooyinka';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count taxane',
      one: '1 taxane',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaydiya',
      one: '1 badbaadin',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'by $name';
  }

  @override
  String get stackSpoilers => 'Qaswadayaasha';

  @override
  String get stackEmptyEntries => 'Xidhmadani waa faaruq';

  @override
  String get stackSave => 'Kaydi raso';

  @override
  String get stackUnsave => 'Ka saar kaydinta';

  @override
  String get stackSavedToast => 'Lagu keydiyay xirmooyinkaaga';

  @override
  String get stackRemovedToast => 'Laga saaray xidhmooyinkaagii kaydsanaa';

  @override
  String userStacks(String name) {
    return 'Isku dhafka $name';
  }

  @override
  String get newsTitle => 'Wararka';

  @override
  String get newsEmpty => 'Hadda war ma jiro';

  @override
  String get newsCouldntLoad => 'Ma rari karo warka';

  @override
  String get logFileCopied => 'Waddada log-ka waa la koobiyay';

  @override
  String get donateSheetTitle => 'Ma ku raaxaysanaysaa Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu waxaa dhisay oo kaydiyaa hal qof. Haddii ay kuu faa\'iido leedahay, tixgeli inaad taageerto horumarinta.';

  @override
  String get donateLater => 'Mar dambe';

  @override
  String get glassBackground => 'Gadaal muraayad ah';

  @override
  String get glassBackgroundDesc =>
      'Banner-ka profile-kaaga haddii aadan dejin xiriirka sawirka';

  @override
  String get glassBackgroundHint =>
      'Xiriirka sawirka (madhan ka tag si aad u isticmaasho banner-kaaga)';

  @override
  String get followCover => 'La raac daboolka';

  @override
  String get followCoverDesc =>
      'Midabadu waxay raacaan gadaasha, iyo daboolka boggaga faahfaahinta';

  @override
  String get followCoverMediaOnly => 'Warbaahinta kaliya';

  @override
  String get followCoverMediaOnlyDesc =>
      'Kaliya raac daboolka boggaga warbaahinta, meel kasta oo kale waxay ilaalisaa midabada caadiga ah';

  @override
  String get cardStyle => 'Qaabka kaarka';

  @override
  String get cardStyleDesc =>
      'Meesha ciwaanka, cabbirka, horumarka iyo calaamadaha';

  @override
  String get customFont => 'Far-qoraal';

  @override
  String get customFontDesc => 'Caadi, fayl qalabkaaga ah, ama Google Fonts';

  @override
  String get customFontError => 'Faylka far-qoraalkaas lama soo rari karo';

  @override
  String get googleFontError => 'Far-qoraalkaas lama soo dejin karo';

  @override
  String get yourFonts => 'Far-qoraalladaada';

  @override
  String get addFontFile => 'Ku dar fayl far-qoraal ah…';

  @override
  String get browseGoogleFonts => 'Baadh Google Fonts…';

  @override
  String get searchGoogleFonts => 'Raadi Google Fonts';

  @override
  String get defaultFont => 'Caadi';

  @override
  String get materialYou => 'Qalabka Adiga';

  @override
  String get materialYouDesc => 'Midab firfircoon oo nidaamka ka yimaada';

  @override
  String get jsonTheme => 'Fayl qaab gaar ah';

  @override
  String get jsonThemeDesc =>
      'Midabyo toos ah oo ka yimaada ~/.config/dartotsu/theme.json (script gaar ah, ama wax-ka-beddelkaaga)';

  @override
  String get themeMode => 'Habka qaabka';

  @override
  String get mode => 'Habka';

  @override
  String get trackingService => 'Adeegga la socodka';

  @override
  String get signOut => 'Ka bax';

  @override
  String get signIn => 'Gal';

  @override
  String get notSignedIn => 'Lama gelin';

  @override
  String signOutOf(String service) {
    return 'Ka bax $service?';
  }

  @override
  String get checkForUpdates => 'Hubi cusboonaysiinta';

  @override
  String get checkForUpdatesDesc => 'Igu ogeysii sii-deynta cusub ee GitHub';

  @override
  String get updateChannel => 'Kanaalka cusboonaysiinta';

  @override
  String get channel => 'Kanaalka';

  @override
  String get stable => 'Xasiloon';

  @override
  String get preRelease => 'Hore-sii-deyn';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Hadda hubi';

  @override
  String get userAgent => 'Isticmaalaha-Wakiilka';

  @override
  String get settingDefault => 'Caadi';

  @override
  String currentlyUsing(String value) {
    return 'Hadda: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Caadi (Cloudflare)';

  @override
  String get proxy => 'Wakiil';

  @override
  String get proxyProtocol => 'Nooc';

  @override
  String get proxyHost => 'Martigeliyaha';

  @override
  String get proxyPort => 'Deked';

  @override
  String get proxyUsername => 'Magaca isticmaalaha';

  @override
  String get proxyPassword => 'Erayga sirta';

  @override
  String get optional => 'Ikhtiyaari';

  @override
  String get clearCookies => 'Nadiifi cookies';

  @override
  String get clearCookiesDesc => 'Ka saar cookie kasta oo la kaydiyay';

  @override
  String notImplementedArea(String area) {
    return '$area — dhawaan ayuu imanayaa';
  }

  @override
  String notImplementedService(String service) {
    return '$service weli taageeri maayo kan.';
  }

  @override
  String get couldNotLoadResults => 'Natiijooyinka lama soo rari karo';

  @override
  String get updateCheckFailed => 'Cusboonaysiinta lama hubin karo';

  @override
  String get highRefreshRate => 'Heerka cusboonaysiinta sare';

  @override
  String get highRefreshRateDesc =>
      'Isticmaal heerka cusboonaysiinta ugu sarreeya ee shaashaddaadu taageerto';

  @override
  String get imageSave => 'Kaydi sawirka';

  @override
  String imageSavedTo(String path) {
    return 'Waxaa lagu keydiyay $path';
  }

  @override
  String get imageActionFailed => 'Sawirka lama soo dejin karo';

  @override
  String get imageTitleCover => 'Dabool';

  @override
  String get imageTitlePage => 'Bogga';

  @override
  String get imageTitleBanner => 'Calan';

  @override
  String get imageTitleAvatar => 'Sawirka profile-ka';

  @override
  String get verifyTls => 'Xaqiiji shahaadooyinka';

  @override
  String get verifyTlsDesc =>
      'Diid server-yada leh shahaadooyin HTTPS ah oo aan sax ahayn. Dami oo keliya isha isticmaasha mid is-saxiixay';

  @override
  String get clearCookiesConfirm =>
      'Ka saar dhammaan cookies-ka la kaydiyay? Tani waxay kaa saari kartaa qaar ka mid ah isha.';

  @override
  String get version => 'Nooca';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Koodka, dhibaatooyinka iyo sii-deyntu';

  @override
  String get discordDesc => 'Bulshada iyo caawimaadda';

  @override
  String get supportDeveloper => 'Taageer horumariyaha';

  @override
  String get buyMeCoffee => 'I soo iibso qaxwo';

  @override
  String get upiId => 'Aqoonsiga UPI';

  @override
  String get upiCopied => 'Aqoonsiga UPI waa la guuriyay';

  @override
  String get donateDesc => 'Taageer horumarinta';

  @override
  String get contributors => 'Gacan-ka-geystayaasha';

  @override
  String get contributorsDesc => 'Dadka dhisay Dartotsu';

  @override
  String get contributorsLoadFailed =>
      'Gacan-ka-geystayaasha lama soo rari karo';

  @override
  String get forks => 'Fargeeto';

  @override
  String get forksDesc => 'Mashaariicda lagu dhisay Dartotsu';

  @override
  String get forksEmpty => 'Forks lama helin';

  @override
  String get sectionColors => 'Midabada';

  @override
  String get sectionDisplay => 'Bandhigga';

  @override
  String get sectionStyle => 'Qaab';

  @override
  String get sectionCommunity => 'Bulshada';

  @override
  String get sectionAppInfo => 'Macluumaadka app-ka';

  @override
  String get sectionRequests => 'Codsiyada';

  @override
  String get sectionDnsProxy => 'DNS & Proxy';

  @override
  String get onboardingBack => 'Dib';

  @override
  String get onboardingNext => 'Xiga';

  @override
  String get onboardingSkip => 'Ka bood';

  @override
  String get onboardingLanguageBody =>
      'Dooro luqadda Dartotsu lagu muujiyay. Waxaad ka beddeli kartaa hadhow gudaha Settings.';

  @override
  String get onboardingPaletteTitle => 'Ka dhig mid kaaga ah';

  @override
  String get onboardingPaletteBody =>
      'Dooro midabaysan. Midab kasta, kaararka ilaa ciyaaraha, wuu raacayaa.';

  @override
  String get themeModeAuto => 'Toos';

  @override
  String get themeModeLight => 'Iftiin';

  @override
  String get themeModeDark => 'Mugdi';

  @override
  String get onboardingSyncTitle => 'Is-waafaji maktabaddaada';

  @override
  String get onboardingSyncBody =>
      'Ku gal AniList si aad u keento liisaskaaga, horumarkaaga iyo dhibcahaaga. Ama ka bood oo ka dhex baadh marti ahaan.';

  @override
  String get onboardingOpenLinks =>
      'Ku fur AniList iyo xiriiriyeyaasha kaydka Dartotsu dhexdiisa';

  @override
  String get onboardingPermsTitle => 'Ogolaanshaha';

  @override
  String get onboardingPermsBody =>
      'Hadda ogol kuwan si soo dejinta, cusboonaysiinta iyo digniinuhu u shaqeeyaan hakad la\'aan. Dib ayaad u beddeli kartaa dejimaha nidaamka.';

  @override
  String get permNotifications => 'Ogeysiisyo';

  @override
  String get permNotificationsDesc =>
      'Horumarka soo dejinta, dhacdooyin cusub iyo jawaabo';

  @override
  String get permStorage => 'Gelitaanka dhammaan faylasha';

  @override
  String get permStorageDesc =>
      'Ku kaydi soo dejinta galka dadweynaha ee Dartotsu';

  @override
  String get permInstall => 'Rakib cusboonaysiin';

  @override
  String get permInstallDesc =>
      'U ogolow Dartotsu inay rakibto cusboonaysiinteeda';

  @override
  String get permBattery => 'Batari aan xaddidnayn';

  @override
  String get permBatteryDesc => 'Ku sii wad soo dejinta dheer gadaasha';

  @override
  String get permGrant => 'Ogolow';

  @override
  String get linkOpenInApp => 'Ku fur xiriiriyeyaasha Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'U ogolow xiriiriyeyaasha AniList iyo kaydka inay app-ka furaan';

  @override
  String get reviewsTitle => 'Dib-u-eegisyo';

  @override
  String get reviewsEmpty => 'Weli dib-u-eegis ma jiro';

  @override
  String get reviewsFailed => 'Dib-u-eegisyada lama soo rari karo';

  @override
  String get reviewHelpfulQuestion => 'Dib-u-eegiskani ma kaa caawiyay?';

  @override
  String get reviewVoteFailed => 'Codkaaga lama keydin karo';

  @override
  String reviewHelpful(int n, int total) {
    return '$n ka mid ah $total ayaa u arkay mid faa\'iido leh';
  }

  @override
  String get calendarTitle => 'Jadwalka baahinta';

  @override
  String get calendarToday => 'Maanta';

  @override
  String get calendarEmpty => 'Maalintan waxba lama baahinayo';

  @override
  String get calendarFailed => 'Jadwalka lama soo rari karo';

  @override
  String calendarChapter(int n) {
    return 'Cutubka $n';
  }

  @override
  String get calendarExpected => 'La filayo';

  @override
  String get castReceiverFailed => 'Chromecast-ku ma bilaabin ciyaartoygiisa';

  @override
  String get castPlaybackFailed => 'Qalabku ma daari karo qulqulkan';

  @override
  String get shortcutNothingToContinue => 'Wax wali socda ma jiraan';

  @override
  String shortcutNoCalendar(String service) {
    return '$service malaha jadwal';
  }

  @override
  String calendarEpisode(int n) {
    return 'Dhacdada $n';
  }

  @override
  String get shareAnalytics =>
      'La wadaag xogta isticmaalka ee aan magac lahayn';

  @override
  String get shareAnalyticsDesc =>
      'Tirada isticmaalayaasha iyo warbixinnada burburka ee aan magac lahayn. Akoon iyo xog shakhsi ah ma jiraan';

  @override
  String get linkOpenAnilist =>
      'Ku fur xiriiriyeyaasha AniList Dartotsu dhexdiisa';

  @override
  String get linkOpenAnilistDesc =>
      'Shid maamulka xiriiriyeyaasha si xiriiriyeyaasha anilist.co app-ka u furaan';

  @override
  String get linkSettingsFailed => 'Dejimaha nidaamka lama furi karo';

  @override
  String get discordRichPresence => 'Joogitaanka qani';

  @override
  String get discordRichPresenceTokenDesc =>
      'Muuji waxa aad sameyneyso profile-kaaga Discord. Waxay u baahan tahay token-kaaga Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Muuji waxa aad sameyneyso profile-kaaga Discord. Waxay u baahan tahay app-ka Discord ee kombuyuutarka oo socda.';

  @override
  String get discordBrowsing => 'Muuji dhaqdhaqaaqa baadhista';

  @override
  String get discordBrowsingDesc =>
      'Muuji sidoo kale tab-ka, bogga ama profile-ka aad eegayso, ma aha oo kaliya waxa aad daawato ama akhrido.';

  @override
  String get discordLookHeader => 'Muuqaalka presence-ka';

  @override
  String get discordActivityType => 'Nooca dhaqdhaqaaqa';

  @override
  String get discordActivityTypeDesc =>
      'Sida Discord u qorto: \"Watching …\" ama \"Playing …\". Toos waxay u isticmaashaa Watching anime iyo Playing wax kasta oo kale.';

  @override
  String get discordWatching => 'Daawashada';

  @override
  String get discordPlaying => 'Ciyaarta';

  @override
  String get discordCovers => 'Muuji dabooleyaasha';

  @override
  String get discordCoversDesc =>
      'Sawirka daboolka iyo astaanta Dartotsu kaarka.';

  @override
  String get discordTimer => 'Muuji saacadda';

  @override
  String get discordTimerDesc =>
      'Waqtiga ka dhacay ama harsan ciwaanka hoostiisa.';

  @override
  String get discordButtons => 'Muuji badhamada';

  @override
  String get discordButtonsDesc =>
      'Badhamada \"View anime / manga\" iyo \"Open Dartotsu\".';

  @override
  String get discordHideTitles => 'Qari ciwaannada';

  @override
  String get discordHideTitlesDesc =>
      'Ku beddel magacyada anime iyo manga (iyo daboolkooda iyo xiriirkooda) \"Something private\".';

  @override
  String get discordConnectionHeader => 'Xiriir';

  @override
  String get listSearchHint => 'Raadi liiskan';

  @override
  String get listSort => 'Kala sooc';

  @override
  String get listFilter => 'Shaandhee';

  @override
  String get listRandom => 'Ciwaan random ah';

  @override
  String get listReverse => 'Rog hab-ka';

  @override
  String get listSortDefault => 'Habka liiska';

  @override
  String get listSortScore => 'Dhibcahaaga';

  @override
  String get listSortTitle => 'Ciwaan';

  @override
  String get listSortUpdated => 'La cusboonaysiiyay ugu danbayn';

  @override
  String get listSortProgress => 'Horumar';

  @override
  String get listSortReleased => 'Taariikhda sii-deynta';

  @override
  String get listSortAverage => 'Dhibcaha celceliska';

  @override
  String get listFilterFormat => 'Qaab';

  @override
  String get listFilterStatus => 'Xaalad';

  @override
  String get listFilterGenres => 'Noocyada';

  @override
  String get listFilterClear => 'Nadiifi shaandhooyinka';

  @override
  String get listNoMatches => 'Liiskan waxba ma ku habboona';

  @override
  String get discordLogin => 'Ku gal Discord';

  @override
  String get discordToken => 'Token-ka Discord';

  @override
  String get discordTokenSaved =>
      'La kaydiyay. Taabo si aad u bedesho, dheer taabo si aad u saarto.';

  @override
  String get discordTokenNotSet => 'Lama dejin. Taabo si aad ugu darto.';

  @override
  String get discordTokenSavedSnack => 'Token-ka Discord waa la keydiyay';

  @override
  String get discordTokenRemovedSnack => 'Token-ka Discord waa la saaray';

  @override
  String get discordRichPresenceRow => 'Joogitaanka hodanka ah ee Discord';

  @override
  String get discordRichPresenceRowOn =>
      'Shidan · taabo si aad u bedesho muuqaalkiisa';

  @override
  String get discordRichPresenceRowOff =>
      'Muuji waxa aad sameyneyso profile-kaaga Discord';

  @override
  String get loginCancelled => 'Galitaanka waa la joojiyay';

  @override
  String get invalidToken => 'Token aan sax ahayn';

  @override
  String loginFailed(String error) {
    return 'Galitaanku wuu fashilmay: $error';
  }

  @override
  String get malLoginFailed => 'Galitaanka MyAnimeList wuu fashilmay';

  @override
  String get kitsuLoginFailed =>
      'Galitaanka Kitsu wuu fashilmay. Hubi email-kaaga iyo erayga sirta.';

  @override
  String get kitsuLoginTitle => 'Ku gal Kitsu';

  @override
  String get emailOrUsername => 'Email ama magaca isticmaalaha';

  @override
  String get password => 'Erayga sirta';

  @override
  String get kitsuProfile => 'Profile-ka Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Galitaanka MangaBaka wuu fashilmay';

  @override
  String get comickLoginFailed => 'Soo gelida majaajilada ayaa guuldareystay';

  @override
  String get tagline => 'Tagline';

  @override
  String get trending => 'La daalacanayo';

  @override
  String get anticipated => 'La filayo';

  @override
  String get watchlist => 'Liiska daawashada';

  @override
  String get recommendedShows => 'Bandhigyada lagu taliyay';

  @override
  String get recommendedMovies => 'Aflaanta lagu taliyay';

  @override
  String get boxOffice => 'Xafiiska sanduuqa';

  @override
  String get popularMovies => 'Filimada caanka ah';

  @override
  String get popularShows => 'Bandhigyada caanka ah';

  @override
  String get anticipatedMovies => 'Filimada la filayo';

  @override
  String get anticipatedShows => 'Bandhigyada La Filayo';

  @override
  String get trendingShows => 'Bandhigyada Isbadalaya';

  @override
  String get mostWatchedThisWeek => 'Inta badan la daawado todobaadkan';

  @override
  String get sortMostViewed => 'Inta badan la daawado';

  @override
  String get sortMostFollowed => 'Badi way raaceen';

  @override
  String get sortLatestUpdates => 'Wararkii ugu dambeeyay';

  @override
  String get translationStatusLabel => 'Turjumaada';

  @override
  String get weeklySchedule => 'Jadwalka toddobaadlaha ah';

  @override
  String get mostFollowed => 'Inta Badan La Raaco';

  @override
  String get latestUpdates => 'Wararkii U Danbeeyay';

  @override
  String get trendingAnime => 'Anime Trending';

  @override
  String get topRatedAnime => 'Anime ee ugu Sareeya';

  @override
  String get mostFollowedAnime => 'Anime inta badan la raaco';

  @override
  String get comickProfile => 'Muuqaalka majaajilada';

  @override
  String get refreshFromComick => 'Ka cusboonaysii Comick';

  @override
  String get mangaBakaProfile => 'Profile-ka MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Ka cusboonaysii MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Soo gal MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates profile';

  @override
  String get mangaUpdatesAnimeStart => 'La qabsiga anime ayaa bilaabmaya';

  @override
  String get mangaUpdatesAnimeEnd => 'La qabsiga anime wuu dhamaanayaa';

  @override
  String get refreshFromMangaUpdates => 'Ka cusboonaysii MangaUpdates';

  @override
  String get usernameOnly => 'Magaca isticmaale';

  @override
  String get releases => 'Siidaynta';

  @override
  String get artistsLabel => 'Farshaxanno';

  @override
  String get authorsLabel => 'Qoraayaal';

  @override
  String get publishersLabel => 'Daabacayaal';

  @override
  String get licensedLabel => 'Shatiyaysan';

  @override
  String get contentRatingLabel => 'Qiimaynta nuxurka';

  @override
  String get yesLabel => 'Haa';

  @override
  String get noLabel => 'Maya';

  @override
  String get ratingSteps => 'Tillaabooyinka qiimaynta';

  @override
  String get hideNsfw => 'Qari NSFW';

  @override
  String get hideNsfwSourcesDesc =>
      'Ka qari ilaha lagu calaamadeeyay 18+ quudinta iyo cidda soo xushay. Way ku rakiban yihiin.';

  @override
  String get hideNsfwDesc =>
      'Ka ilaali ciwaannada qaangaarka ah feed-ka iyo raadinta, oo liisgareey gelitaannadaada qaangaarka ah hoos Warbaahinta La Qariyay.';

  @override
  String get kitsuAccountOptions => 'Ikhtiyaarrada akoonka Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Doorashooyinka akoonka MangaBaka';

  @override
  String get comickAccountOptions => 'Ikhtiyaarada koontada Comick';

  @override
  String get comickClientId => 'Aqoonsiga Macmiilka ee Comick';

  @override
  String get comickClientIdDesc =>
      'Aqoonsiga macmiilka gaarka ah ee ka diiwaan gashan comick.dev';

  @override
  String get traktClientId => 'Trakt Client ID';

  @override
  String get traktClientIdDesc =>
      'Sign in with your own Trakt app instead of the built-in one';

  @override
  String get traktCreateApp => 'Create a Trakt app';

  @override
  String get traktCreateAppDesc => 'Opens your apps on trakt.tv';

  @override
  String traktRedirectHelp(String uris) {
    return 'On trakt.tv/oauth/applications create an app and add these Redirect URIs, one per line:\n\n$uris\n\nThen paste its Client ID here, save and sign in again.';
  }

  @override
  String get couldNotUpdateKitsuSettings =>
      'Dejimaha Kitsu lama cusboonaysiin karin';

  @override
  String get titleCanonical => 'Rasmi ah';

  @override
  String get titleRomanized => 'Romanized';

  @override
  String get titleLocalized => 'Gudaha';

  @override
  String get ratingSystem => 'Nidaamka qiimaynta';

  @override
  String get ratingSimple => 'Fudud (3 wejiyo)';

  @override
  String get ratingRegular => 'Caadi (5 xiddigood)';

  @override
  String get ratingAdvanced => 'Horumarsan (10 dhibcood)';

  @override
  String get contentFilter => 'Shaandhada nuxurka';

  @override
  String get contentSfw => 'Kaliya ammaan shaqada';

  @override
  String get contentSometimes => 'Nuxur qaangaar ah raadinta';

  @override
  String get contentEverywhere => 'Nuxur qaangaar ah meel kasta';

  @override
  String get shareToGlobal => 'La wadaag feed-ka caalamiga';

  @override
  String get shareToGlobalDesc =>
      'U ogolow dhaqdhaqaaqaaga inuu ka muuqdo feed-ka caalamiga ah ee Kitsu.';

  @override
  String get memberSince => 'Xubin ahaan ilaa';

  @override
  String get location => 'Goobta';

  @override
  String get accountType => 'Nooca akoonka';

  @override
  String get accountSupporter => 'Taageere';

  @override
  String get accountFree => 'Bilaash';

  @override
  String get accountDetails => 'Faahfaahinta akoonka';

  @override
  String get refreshFromKitsu => 'Ka cusboonaysii Kitsu';

  @override
  String get simklReadOnly => 'Simkl waxaa la siiyay gelitaan akhris-kaliya ah';

  @override
  String get traktReadOnly => 'Trakt waxa la siiyay marin-akhris-kaliya';

  @override
  String get incognitoEditsBlocked =>
      'Qarsoodi: wax-ka-bedelka liiska waa la xannibay';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Qarsoodi: horumarka lama keydin';

  @override
  String progressSet(int progress) {
    return 'Horumarka waxaa loo dejiyay $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title waa laga saaray liiskaaga';
  }

  @override
  String get following => 'La raacayo';

  @override
  String get followsMutual => 'Labada dhinac';

  @override
  String get followsNotMutual => 'Aan wadaagin';

  @override
  String get homeSections => 'Qaybaha Guriga';

  @override
  String get homeSectionsHint =>
      'Jiid si aad dib ugu habayso. Qaybaha la qariyay marna lama soo rarto.';

  @override
  String get customListDeleteFailed => 'Liiska gaarka ah lama tirin karo';

  @override
  String get customListsSaveFailed => 'Liisaska gaarka ah lama keydin karo';

  @override
  String get customListsSaved => 'Liisaska gaarka ah waa la keydiyay';

  @override
  String get listName => 'Magaca liiska';

  @override
  String get addList => 'Ku dar liis';

  @override
  String get voiceActors => 'Jilayaasha codka';

  @override
  String voiceActorsIn(String name) {
    return 'Codka jilayaasha · $name';
  }

  @override
  String get animeAppearances => 'Muuqaallada anime';

  @override
  String get mangaAppearances => 'Muuqaallada manga';

  @override
  String get voicedCharacters => 'Jilayaasha codkooda la bixiyay';

  @override
  String get animeCredits => 'Shaqooyinka anime';

  @override
  String get mangaCredits => 'Shaqooyinka manga';

  @override
  String get mainProductions => 'Wax-soo-saarka ugu muhiimsan';

  @override
  String get otherWorks => 'Shaqooyin kale';

  @override
  String get prequelSequel => 'Hore & Xiga';

  @override
  String get prequel => 'Hordhac';

  @override
  String get sequel => 'Taxane';

  @override
  String get previousSeason => 'Xilli hore';

  @override
  String get thisSeason => 'Xilligan';

  @override
  String get nextSeason => 'Xilliga xiga';

  @override
  String get voiceRoles => 'Doorarka codka';

  @override
  String get staffPositions => 'Jagooyinka shaqaalaha';

  @override
  String get mangaWorks => 'Shaqooyinka manga';

  @override
  String get malProfile => 'Profile-ka MyAnimeList';

  @override
  String get refreshFromMal => 'Ka cusboonaysii MyAnimeList';

  @override
  String get repullProfileCounts =>
      'Dib u soo qaad profile-kaaga iyo tirooyinka';

  @override
  String get refreshed => 'La cusboonaysiiyay';

  @override
  String get simklProfile => 'Profile-ka Simkl';

  @override
  String get traktProfile => 'Trakt profile';

  @override
  String get refreshFromSimkl => 'Ka cusboonaysii Simkl';

  @override
  String get refreshFromTrakt => 'Ka cusboonaysii Trakt';

  @override
  String get repullProfileLibrary =>
      'Dib u soo qaad profile-kaaga iyo maktabadda';

  @override
  String get simklSignInToSearch => 'Ku gal Simkl si aad u raadiso';

  @override
  String get dropRate => 'Heerka joojinta';

  @override
  String get simklAttribution =>
      'Xogta iyo sawirada waxaa bixiyay Simkl. Ka eeg Simkl';

  @override
  String get traktAttribution =>
      'Xogta iyo farshaxanka uu bixiyay Trakt. Ka eeg Trakt';

  @override
  String get listsLiked => 'Jeclahay';

  @override
  String get listsYours => 'Adaa leh';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Trakt VIP Xubinta';

  @override
  String get onHold => 'La hakiyay';

  @override
  String get scoredBy => 'Dhibcaha ay bixiyeen';

  @override
  String get planToWatch => 'Hindisay inaan daawado';

  @override
  String get planToRead => 'Hindisay inaan akhriyo';

  @override
  String get timesRewatched => 'Marka dib loo daawaday';

  @override
  String get timesReread => 'Marka dib loo akhriyay';

  @override
  String get comments => 'Faallooyin';

  @override
  String get moviesAndSeries => 'Aflaamta & Taxanayaasha';

  @override
  String get simklMoviesOnly => 'Filimada & Taxanaha kaliya';

  @override
  String get simklMoviesOnlyDesc =>
      'Wuxuu ku beddelaa tab Anime: Filimada marka hore, ka dibna wuxuu ku muujiyaa dhowr saf oo anime ah';

  @override
  String get trackingOnly => 'La socod oo keliya';

  @override
  String get signedIn => 'Waa la galay';

  @override
  String get searchLanguage => 'Luqadda raadinta';

  @override
  String get savedToList => 'Liiskaaga ayaa lagu keydiyay';

  @override
  String get removedFromYourList => 'Liiskaaga waa laga saaray';

  @override
  String get retry => 'Mar kale isku day';

  @override
  String get synopsis => 'Soo koobid';

  @override
  String get details => 'Faahfaahin';

  @override
  String get addToList => 'Ku dar liiska';

  @override
  String get trailer => 'Trailer';

  @override
  String get trailerQuality => 'Tayada filimka';

  @override
  String get titleCopied => 'Ciwaanka waa la koobiyay';

  @override
  String get linkCopied => 'Xiriirka waa la koobiyay';

  @override
  String get watchTrailer => 'Daawo trailer-ka';

  @override
  String get copyTitle => 'Koobi ciwaanka';

  @override
  String get detailStale =>
      'AniList lama heli karo Tani waa macluumaadka la keydiyay waxaana laga yaabaa inay duugowday.';

  @override
  String get copyLink => 'Koobi xiriirka';

  @override
  String get openInBrowser => 'Ku fur browser-ka';

  @override
  String viewOnSource(String source) {
    return 'Ka eeg $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Dhacdada $ep waxay baaha ka noqonaysaa $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Dhacdada xigta $time kadib';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Cutubka $chapter waxaa la filayaa ilaa $time';
  }

  @override
  String get logPathCopied => 'Waddada faylka log-ka waa la koobiyay';

  @override
  String get animeSource => 'Isha anime';

  @override
  String get mangaSource => 'Isha manga';

  @override
  String get popular => 'Caan ah';

  @override
  String get allCustomLists => 'Dhammaan liisaska gaarka ah';

  @override
  String get simklTitleLanguage => 'Luuqadda cinwaanka Anime';

  @override
  String get titleLanguageEnglish => 'Ingiriis';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'La daalacanayo';

  @override
  String get simklListsMostLiked => 'Inta badan la jeclaaday';

  @override
  String get simklListsMostFollowed => 'Badi way raaceen';

  @override
  String get simklListsOfficial => 'Rasmi ah';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cinwaano',
      one: '1 ciwaan',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Dadka';

  @override
  String get mostComments => 'Inta badan faallooyinka';

  @override
  String get alphabetical => 'Alifbeeto';

  @override
  String get latest => 'Ugu dambeeyay';

  @override
  String get saved => 'La keydiyay';

  @override
  String get nothingMatched => 'Waxba lama helin';

  @override
  String get nothingSavedFromSource => 'Isha kan weli waxba kama keydsana';

  @override
  String get sourceReturnedNothing => 'Ishani waxba ma soo celin';

  @override
  String get checkConnectionOrSource =>
      'Hubi isku-xirkaaga ama isku day isha kale.';

  @override
  String get tryDifferentSearch => 'Isku day eray raadin oo kale.';

  @override
  String get savedTitlesAppearHere =>
      'Ciwaannada aad liiskaaga ku darto halkan ayay ka muuqdaan.';

  @override
  String get tryOtherFeed => 'Isku day feed-ka kale ama raadi.';

  @override
  String searchSource(String source) {
    return 'Raadi $source';
  }

  @override
  String get animeExtensions => 'Kordhinta Anime';

  @override
  String get mangaExtensions => 'Kordhinta Manga';

  @override
  String get nothingHereYet => 'Weli halkan waxba ma jiraan';

  @override
  String get savedOnDeviceUntilLogin =>
      'Wax kasta oo hoose waxay ku jiraan qalabkan ilaa aad sameyso.';

  @override
  String get yourProfile => 'Profile-kaaga';

  @override
  String get activity => 'Dhaqdhaqaaq';

  @override
  String get extensions => 'Kordhin';

  @override
  String get logOut => 'Ka bax';

  @override
  String get logIn => 'Gal';

  @override
  String get logOutConfirm => 'Ma hubtaa inaad ka baxayso?';

  @override
  String get incognitoMode => 'Qaabka qarsoodiga ah';

  @override
  String get alsoBlockListEdits => 'Xannib sidoo kale wax-ka-bedelka liiska';

  @override
  String get offlineMode => 'Qaabka offline';

  @override
  String get switchService => 'Beddel adeegga';

  @override
  String logOutOf(String name) {
    return 'Ka bax $name';
  }

  @override
  String get loggedIn => 'Waa la galay';

  @override
  String get notifications => 'Ogeysiisyo';

  @override
  String get nothingNew => 'Wax cusub ma jiraan';

  @override
  String get thisWeek => 'Usbuucan';

  @override
  String get listOnly => 'Liis kaliya';

  @override
  String get notInList => 'Aan Liiska ku jirin';

  @override
  String get filter => 'Shaandhee';

  @override
  String get searchResults => 'Natiijooyinka raadinta';

  @override
  String get recentSearches => 'Raadinadii u dambeeyay';

  @override
  String get searchOrSetFilter => 'Raadi ama dhig shaandho';

  @override
  String get filters => 'Shaandhooyin';

  @override
  String get showLess => 'Muuji wax yar';

  @override
  String get showAll => 'Muuji dhammaan';

  @override
  String get apply => 'Codso';

  @override
  String get preview => 'Hordhac';

  @override
  String get preset => 'Hore-u-dejin';

  @override
  String get cardNormal => 'Caadi';

  @override
  String get cardOnCard => 'Kaarka dusha';

  @override
  String get cardInCard => 'Kaarka gudaha';

  @override
  String get size => 'Cabbir';

  @override
  String get cardWidth => 'Ballaarka kaarka';

  @override
  String get compact => 'Yar';

  @override
  String get coverAndTitleOnly => 'Daboolka iyo ciwaanka oo keliya';

  @override
  String get titleLines => 'Safafka ciwaanka';

  @override
  String get shape => 'Qaab';

  @override
  String get posterShape => 'Qaabka bosterka';

  @override
  String get cornerRadius => 'Wareegga geesaha';

  @override
  String get off => 'Dami';

  @override
  String get topLeft => 'Kore bidix';

  @override
  String get topRight => 'Kore midig';

  @override
  String get bottomLeft => 'Hoose bidix';

  @override
  String get bottomRight => 'Hoose midig';

  @override
  String get overlays => 'Dabooleyaal';

  @override
  String get progressCount => 'Horumar / tiro';

  @override
  String get pill => 'Kaabsal';

  @override
  String get bar => 'Xarig';

  @override
  String get outside => 'Dibadda';

  @override
  String get scoreBadge => 'Calaamadda dhibcaha';

  @override
  String get airingDot => 'Dhibicda baahinta';

  @override
  String get updateAvailable => 'Cusboonaysiin diyaar ah';

  @override
  String get notInstalled => 'Lama rakibin';

  @override
  String get done => 'Dhammaaday';

  @override
  String get searchOrEnterUrl => 'Raadi ama geli URL';

  @override
  String get refresh => 'Cusboonaysii';

  @override
  String get animePlanetRank => 'Darajo';

  @override
  String get animePlanetMagazine => 'Joornaal';

  @override
  String get animePlanetRefreshLists => 'Dib u cusboonaysii liiskaaga';

  @override
  String get animePlanetRefreshListsDesc =>
      'Akhri liiskaaga Anime-Planet mar kale';

  @override
  String get animePlanetLocalNote =>
      'Soo gal si aad u kaydiso isbeddelada koontadaada Anime-Planet Ilaa markaas waxay ku sii jirayaan qalabkan';

  @override
  String get share => 'La wadaag';

  @override
  String get characters => 'Jilayaasha';

  @override
  String get staff => 'Shaqaalaha';

  @override
  String get readMore => 'Wax badan akhri';

  @override
  String get couldNotLoadList => 'Liiska lama soo rari karo';

  @override
  String get logInToFavourite => 'Gal si aad ugu darto kuwa aad jeceshahay';

  @override
  String get alsoKnownAs => 'Sidoo kale loo yaqaan';

  @override
  String get hideSpoilerNames => 'Qari magacyada waxyeelaynaya';

  @override
  String get showSpoilerNames => 'Muuji magacyada waxyeelaynaya';

  @override
  String get favourited => 'La jecel yahay';

  @override
  String get favourite => 'Jecel';

  @override
  String get couldNotOpenTitle => 'Ciwaankan lama furi karo';

  @override
  String get nobodyHereYet => 'Weli qofna ma jiro';

  @override
  String get noMatches => 'Wax ku habboon ma jiraan';

  @override
  String get gridView => 'Muuqaalka shabakadda';

  @override
  String get fullWidth => 'Ballac buuxa';

  @override
  String get userNotFound => 'Isticmaalaha lama helin';

  @override
  String get couldNotUpdateFollow => 'Raacidda lama cusboonaysiin karin';

  @override
  String followedUser(String name) {
    return 'Waad raacday $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Waad ka joojisay raacidda $name';
  }

  @override
  String get messages => 'Fariimaha';

  @override
  String get logInToSeeMessages => 'Gal si aad u aragto fariimahaaga';

  @override
  String get editActivity => 'Wax ka beddel dhaqdhaqaaqa';

  @override
  String get newActivity => 'Dhaqdhaqaaq cusub';

  @override
  String get editMessage => 'Wax ka beddel fariinta';

  @override
  String get writeMessage => 'Qor fariin';

  @override
  String get editReply => 'Wax ka beddel jawaabta';

  @override
  String get posted => 'La dhigay';

  @override
  String get couldNotPost => 'Lama dhigi karin';

  @override
  String get nothingToPreview => 'Hordhac ma jiro';

  @override
  String get writeSomethingHint =>
      'Wax qor… AniList markdown halkan ayay ka shaqeysaa';

  @override
  String get privateMessage => 'Fariin gaar ah';

  @override
  String get post => 'Dhig';

  @override
  String get nothingHere => 'Halkan waxba ma jiraan';

  @override
  String get noAnimeProgress => 'Horumar anime ma jiro';

  @override
  String get noMangaProgress => 'Horumar manga ma jiro';

  @override
  String get noMessages => 'Fariin ma jirto';

  @override
  String get writeMessageHint => 'Qor fariin…';

  @override
  String get shareSomethingHint => 'La wadaag wax…';

  @override
  String get all => 'Dhammaan';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Tiro';

  @override
  String get hoursWatched => 'Saacadaha la daawaday';

  @override
  String get chaptersRead => 'Cutubyada la akhriyay';

  @override
  String get meanScore => 'Dhibcaha celceliska';

  @override
  String get noStatsYet => 'Weli tirakoob ma jiro';

  @override
  String get totalEntries => 'Wadarta gelitaannada';

  @override
  String get episodesWatched => 'Dhacdooyinka la daawaday';

  @override
  String get daysWatched => 'Maalmaha la daawaday';

  @override
  String get volumesRead => 'Mugga la akhriyay';

  @override
  String get standardDeviation => 'Leexashada caadiga ah';

  @override
  String get showMore => 'Muuji wax badan';

  @override
  String get followsYou => 'Wuu ku raacayaa';

  @override
  String get nobodyYet => 'Weli qofna';

  @override
  String get logInToLike => 'Gal si aad u jeceshahay';

  @override
  String get failedToLikeActivity => 'Dhaqdhaqaaqa lama jeclaan karin';

  @override
  String get deleteActivityConfirm => 'Tir dhaqdhaqaaqa?';

  @override
  String get deletedActivity => 'Dhaqdhaqaaqa waa la tiray';

  @override
  String get failedToDeleteActivity => 'Dhaqdhaqaaqa lama tirin karin';

  @override
  String get subscribed => 'Waad iska diiwaangelisay';

  @override
  String get unsubscribed => 'Waad iska saartay';

  @override
  String get failedToUpdateSubscription =>
      'Diiwaangelinta lama cusboonaysiin karin';

  @override
  String get edit => 'Wax ka beddel';

  @override
  String get delete => 'Tir';

  @override
  String get likedBy => 'Jeclaaday';

  @override
  String get follow => 'Raac';

  @override
  String get nameCopied => 'Magaca waa la koobiyay';

  @override
  String get followsEachOther => 'Isku raacsan';

  @override
  String get unfollow => 'Ka jooji raacidda';

  @override
  String get userIdCopied => 'ID-ga isticmaalaha waa la koobiyay';

  @override
  String get shareProfile => 'La wadaag profile-ka';

  @override
  String get copyUserId => 'Koobi ID-ga isticmaalaha';

  @override
  String get failedToDelete => 'Lama tirin karin';

  @override
  String get failedToLike => 'Lama jeclaan karin';

  @override
  String get replies => 'Jawaabo';

  @override
  String get reply => 'Jawaab';

  @override
  String get noRepliesYet => 'Weli jawaab ma jirto';

  @override
  String get favouriteAnime => 'Anime aad jeceshahay';

  @override
  String get favouriteManga => 'Manga aad jeceshahay';

  @override
  String get favouriteCharacters => 'Jilayaasha aad jeceshahay';

  @override
  String get favouriteStaff => 'Shaqaalaha aad jeceshahay';

  @override
  String get favouriteStudios => 'Istuudiyooyinka aad jeceshahay';

  @override
  String get noFavouritesYet => 'Weli wax la jecel yahay ma jiraan';

  @override
  String get yourStory => 'Sheekadaada';

  @override
  String get copiedToClipboard => 'Waxaa lagu koobiyay clipboard-ka';

  @override
  String get justNow => 'Hadda';

  @override
  String get openImage => 'Fur sawirka';

  @override
  String get hideSpoiler => 'Qari waxyeelaynta';

  @override
  String get showSpoiler => 'Muuji waxyeelaynta';

  @override
  String get status => 'Xaalad';

  @override
  String get score => 'Dhibco';

  @override
  String get started => 'La bilaabay';

  @override
  String get completed => 'La dhammeeyay';

  @override
  String get private => 'Gaar ah';

  @override
  String get hideFromStatusLists => 'Ka qari liisaska xaaladda';

  @override
  String get totalRepeats => 'Wadarta dib-u-celinta';

  @override
  String get other => 'Kale';

  @override
  String get customLists => 'Liisaska gaarka ah';

  @override
  String get activeDays => 'Maalmaha firfircoon';

  @override
  String get longestStreak => 'Silsilada ugu dheer';

  @override
  String get currentStreak => 'Silsilada hadda';

  @override
  String get tapOrHoverDay => 'Taabo ama dul taag maalin';

  @override
  String get less => 'Yar';

  @override
  String get more => 'Badan';

  @override
  String epIn(int ep, String time) {
    return 'Dhacdada $ep $time kadib';
  }

  @override
  String get sectionLoading => 'Waa la soo rarayaa';

  @override
  String get querySize => 'Cabbirka su\'aasha';

  @override
  String get querySizeDesc =>
      'Hal su\'aal weyn ayaa soo rara safaf kasta (iyo profile dhan) hal codsi. Su\'aalaha kala qaybsan waxay u diraan codsi yar safka ama qayb profile kasta: mid kasta waa degdeg qaybuhuna way soo baxaan marka ay yimaadaan.';

  @override
  String get oneBig => 'Mid weyn';

  @override
  String get split => 'La kala qaybiyay';

  @override
  String get sectionSocial => 'Bulsho';

  @override
  String get systemNotifications => 'Ogeysiisyada nidaamka';

  @override
  String get feedLayout => 'Qaabka feed-ka';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown ka mid ah $total ayaa la muujiyay — taabo si aad u doorato oo dib u habayso';
  }

  @override
  String labelSections(String label) {
    return 'Qaybaha $label';
  }

  @override
  String get accountOptions => 'Ikhtiyaarrada akoonka';

  @override
  String get anilistAccountOptions => 'Ikhtiyaarrada akoonka AniList';

  @override
  String get sectionPrivacy => 'Asturnaanta';

  @override
  String get hidePrivateEntries => 'Qari gelitaannada gaarka ah';

  @override
  String get hidePrivateEntriesDesc =>
      'Ka ilaali feed-ka gelitaannada AniList lagu calaamadiyay gaar ah';

  @override
  String get anilistExcludeList => 'Ka saar liiskaaga';

  @override
  String get anilistExcludeListDesc =>
      'Ka ilaali cinwaannada hore ugu jira AniList-kaaga bogagga anime iyo manga';

  @override
  String get anilistProfile => 'Profile-ka AniList';

  @override
  String get refreshFromAnilist => 'Ka cusboonaysii AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Dejimaha AniList lama cusboonaysiin karin';

  @override
  String get sectionNames => 'Magacyada';

  @override
  String get titleLanguage => 'Luqadda ciwaannada';

  @override
  String get titleLanguageDesc =>
      'Sida ciwaannada loo qoro meel kasta, tusaale Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Magacyada shaqaalaha iyo jilayaasha';

  @override
  String get sectionLists => 'Liisaska';

  @override
  String get scoreFormat => 'Qaabka dhibcaha';

  @override
  String get sortListsBy => 'Liisaska ku kala sooc';

  @override
  String labelCustomLists(String label) {
    return 'Liisaska gaarka ah ee $label';
  }

  @override
  String customListsCount(int count) {
    return '$count liis — taabo si aad ugu darto ama u saarto';
  }

  @override
  String get mergeActivities => 'Isku dar dhaqdhaqaaqyada';

  @override
  String minutesCount(int count) {
    return '$count daqiiqo';
  }

  @override
  String get timezone => 'Aagga waqtiga';

  @override
  String get notSet => 'Lama dejin';

  @override
  String get airingNotifications => 'Ogeysiisyada baahinta';

  @override
  String get airingNotificationsDesc =>
      'Hel ogeysiis marka dhacdo ka mid ah bandhig aad raacayso la baahiyo';

  @override
  String get displayAdultContent => 'Muuji nuxur qaangaar ah';

  @override
  String get displayAdultContentDesc =>
      'Ku dar ciwaannada 18+ baadhista, raadinta iyo feed-yada';

  @override
  String get restrictMessages => 'U xaddid fariimaha dadka aad raacayso';

  @override
  String get restrictMessagesDesc =>
      'Kaliya dadka aad raacayso ayaa ku fariin kara';

  @override
  String get sectionServices => 'Adeegyada';

  @override
  String get novel => 'Novel';

  @override
  String labelService(String label) {
    return 'Adeegga $label';
  }

  @override
  String nameSettings(String name) {
    return 'Dejimaha $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Ikhtiyaarro ka yimid buundada kordhinta $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name ma bilaabmi karin: $error';
  }

  @override
  String get importLists => 'Soo geli liisaska';

  @override
  String get importListsDesc => 'Kayd Aniyomi, Mihon / Tachiyomi ama Kotatsu';

  @override
  String get exportLists => 'Dhoofi liisaska';

  @override
  String get exportListsDesc => 'Kayd Aniyomi, Mihon ama Kotatsu';

  @override
  String get sectionBrowse => 'Baadh';

  @override
  String get readingTab => 'Tab-ka akhriska';

  @override
  String get readingTabDesc => 'Kordhinta tab-ka saddexaad muujiyo';

  @override
  String get firstTab => 'Tab ugu horeysay';

  @override
  String get firstTabDesc =>
      'Waa kuwee kordhinta tab ugu horeysay muujinaysaa. Halkan ka dooro manga iyo sheeko cusub tab akhriska si aad anime uga soo riddo baarka';

  @override
  String get novelExtensions => 'Kordhinta Novel';

  @override
  String get defaultFeed => 'Feed caadi ah';

  @override
  String get defaultFeedDesc => 'Liiska isha la furo';

  @override
  String noServiceSupports(String type) {
    return 'Adeeg ma taageero $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded ka mid ah $installed isha ayaa soo rarmaya';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Adeeg kordhin ah ma taageero $type halkan.';
  }

  @override
  String get loadDataFrom => 'Ka soo rar xogta';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Weli isha $type la rakibay ma jirto.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Kordhinta $name lama rakibin';
  }

  @override
  String get thisSource => 'isha kan';

  @override
  String failedToAddRepository(String error) {
    return 'Kaydka lama darin karin: $error';
  }

  @override
  String installedType(String type) {
    return '$type la rakibay';
  }

  @override
  String availableType(String type) {
    return '$type diyaar ah';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Kordhin $type la rakibay ma jirto';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Kordhin $type diyaar ah ma jirto';
  }

  @override
  String get nothingToShowYet => 'Weli waxba looma muujin karo';

  @override
  String get addTitlesHint =>
      'Ku dar ciwaanno liiskaaga halkan ayay ka muuqan doonaan.';

  @override
  String get couldntLoad => 'Lama soo rari karo';

  @override
  String get progressStyleHint =>
      'Kaabsalka iyo xarigga waxay dul fadhiyaan bosterka; dibadda waxay muujisaa isla tirada qoraal caadi ah — dooro mid.';

  @override
  String get nixManagedUpdate =>
      'Dhismahan waxaa maamula Nix — ku orod \"nix flake update\" flake-gaaga oo dib u dhis halkii aad ka cusboonaysiin lahayd halkan';

  @override
  String autoUpdateFailed(String error) {
    return 'Cusboonaysiinta toos ahi way fashilantay ($error) — bogga soo dejinta ayaa la furayaa';
  }

  @override
  String get unknownPreference => 'Doorbid aan la aqoon';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Nooca doorbidka lama taageero $type';
  }

  @override
  String get notYetReleased => 'Weli lama sii dayn';

  @override
  String get notStarted => 'Lama bilaabin';

  @override
  String get country => 'Dal';

  @override
  String get sort => 'Kala sooc';

  @override
  String get chooseBackupDialog => 'Dooro kayd Aniyomi, Mihon ama Kotatsu';

  @override
  String get importListsHint =>
      'Ka keen maktabad Aniyomi, Mihon / Tachiyomi ama Kotatsu. Ciwaannada, dabooleyaasha, horumarka iyo qaybaha waa la ilaaliyaa.';

  @override
  String get chooseBackupFile => 'Dooro faylka kaydka';

  @override
  String importAnimeCount(int count) {
    return 'Soo geli $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Soo geli $count manga';
  }

  @override
  String get mergeWithExisting => 'Ku dar liisaska jira';

  @override
  String get mergeWithExistingDesc =>
      'Waxa aad hore u haysay waa la ilaaliyaa; haddii la damiyo waxay beddelaysaa ciwaannada u dhigma';

  @override
  String get chooseAnother => 'Dooro mid kale';

  @override
  String get import => 'Soo geli';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Dooro halka kaydka lagu keydinayo';

  @override
  String savedPath(String path) {
    return 'Waxaa la keydiyay $path';
  }

  @override
  String exportFailed(String error) {
    return 'Dhoofintu way fashilantay: $error';
  }

  @override
  String get nothingInLocalLists => 'Liisaskaaga gudaha waxba ma jiraan.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Waxay dhoofisaa $anime anime iyo $manga manga liisaskaaga gudaha. Kotatsu waxay taageertaa manga oo keliya.';
  }

  @override
  String get saveToFolder => 'Ku kaydi gal';

  @override
  String get formatAnimeManga => 'Anime iyo manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Manga oo keliya · .tachibk';

  @override
  String get formatMangaZip => 'Manga oo keliya · .zip';

  @override
  String get genres => 'Noocyada';

  @override
  String get relations => 'Xiriirrada';

  @override
  String get recommendations => 'Talooyinka';

  @override
  String get openings => 'Furitaannada';

  @override
  String get endings => 'Dhammaystirka';

  @override
  String get background => 'Asalka';

  @override
  String get links => 'Xiriiriyeyaasha';

  @override
  String get rank => 'Darajo';

  @override
  String get members => 'Xubnaha';

  @override
  String get favorites => 'La jecel yahay';

  @override
  String get episodes => 'Dhacdooyin';

  @override
  String get chapters => 'Cutubyo';

  @override
  String get volumes => 'Mugga';

  @override
  String get format => 'Qaab';

  @override
  String get source => 'Isha';

  @override
  String get duration => 'Muddada';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes daqiiqo dhacdo kasta';
  }

  @override
  String get rating => 'Qiimaynta';

  @override
  String get studio => 'Istuudiyo';

  @override
  String get serialization => 'Taxane';

  @override
  String get season => 'Xilli';

  @override
  String get year => 'Sannadka';

  @override
  String get filterAny => 'Mid kasta';

  @override
  String get broadcast => 'Baahinta';

  @override
  String get aired => 'La baahiyay';

  @override
  String get published => 'La daabacay';

  @override
  String get popularity => 'Caannimada';

  @override
  String get community => 'Bulshada';

  @override
  String get watching => 'La daawanayo';

  @override
  String get reading => 'La akhrinayo';

  @override
  String get dropped => 'La joojiyay';

  @override
  String get unfinished => 'Ma dhammayn';

  @override
  String get planned => 'La qorsheeyay';

  @override
  String get trailers => 'Trailer-yo';

  @override
  String get ratings => 'Qiimayn';

  @override
  String get originalTitle => 'Asalka';

  @override
  String get titleLabel => 'Ciwaan';

  @override
  String get votes => 'Codad';

  @override
  String get watchedStat => 'La daawaday';

  @override
  String get runtime => 'Muddada socodka';

  @override
  String get director => 'Agaasime';

  @override
  String get network => 'Shabakad';

  @override
  String get certification => 'Shahaado';

  @override
  String get airs => 'Baaha';

  @override
  String get budget => 'Miisaaniyad';

  @override
  String get revenue => 'Dakhli';

  @override
  String get released => 'La sii daayay';

  @override
  String get tags => 'Tag-yo';

  @override
  String get author => 'Qoraa';

  @override
  String get born => 'Dhashay';

  @override
  String get died => 'dhintay';

  @override
  String get birthplace => 'Goobta dhalashada';

  @override
  String get department => 'Waaxda';

  @override
  String get website => 'Mareegta';

  @override
  String get established => 'La aasaasay';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novel-ada';

  @override
  String get thisMonth => 'Bishan';

  @override
  String get movies => 'Aflaamta';

  @override
  String get shows => 'Bandhigyada';

  @override
  String get moviesWatched => 'Filimada La Daawaday';

  @override
  String get showsWatched => 'Bandhigyo La Daawaday';

  @override
  String get moviesCollected => 'Filimada la ururiyay';

  @override
  String get showsCollected => 'Bandhigyada la ururiyay';

  @override
  String get rewatching => 'Dib u daawanaya';

  @override
  String get rereading => 'Dib u akhriyaya';

  @override
  String get watchedStatus => 'La daawaday';

  @override
  String get planning => 'La qorsheeyay';

  @override
  String get paused => 'La hakiyay';

  @override
  String get watch => 'Daawo';

  @override
  String get read => 'Akhri';

  @override
  String get finished => 'La dhammeeyay';

  @override
  String get releasing => 'Wali la sii daynayo';

  @override
  String get cancelled => 'La joojiyay';

  @override
  String get hiatus => 'Hakad';

  @override
  String get remove => 'Ka saar';

  @override
  String syncToService(String service) {
    return 'U waafaji $service';
  }

  @override
  String syncedToService(String service) {
    return 'Loo waafajiyay $service';
  }

  @override
  String get latestReleases => 'Sii-deynta ugu danbeysa';

  @override
  String get topRated => 'Ugu qiimaha sarreeya';

  @override
  String localSection(String title) {
    return '$title · Gudaha';
  }

  @override
  String get localEntryNote =>
      'Ciwaankan wuxuu ku jiraa liiskaaga gudaha ee qalabkan oo keliya. Wax-ka-beddelka halkan waa la damiyay sababtoo ah wuxuu ku dhicin karaa liiska akoonkaaga; weli waad ka saari kartaa.';

  @override
  String get cardPresetPoster => 'Boostar';

  @override
  String get cardPresetCard => 'Kaar';

  @override
  String get cardPresetCozy => 'Raaxo';

  @override
  String get sortTopRated => 'Ugu qiimaha sarreeya';

  @override
  String get sortMostPopular => 'Ugu caansan';

  @override
  String get sortTrending => 'Hadda caan ah';

  @override
  String get sortNewest => 'Ugu cusub';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Ugu la jecel yahay';

  @override
  String get anyCountry => 'Dal kasta';

  @override
  String get orderScore => 'Dhibco';

  @override
  String get orderTitle => 'Ciwaan';

  @override
  String get orderLastUpdated => 'La cusboonaysiiyay ugu danbayn';

  @override
  String get orderLastAdded => 'La daray ugu danbayn';

  @override
  String get never => 'Marnaba';

  @override
  String get always => 'Mar walba';

  @override
  String get scorePoint100 => '100 dhibcood';

  @override
  String get scorePoint10Decimal => '10 dhibcood leh jajab';

  @override
  String get scorePoint10 => '10 dhibcood';

  @override
  String get scorePoint5 => '5 xiddigood';

  @override
  String get scorePoint3 => '3 wejiyo';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saacadood',
      one: '1 saac',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maalmood',
      one: '1 maalin',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count usbuuc',
      one: '1 usbuuc',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Sii wad';

  @override
  String get resumeSourceMissing => 'Rakib isha ciwaankan si aad u sii wadato';

  @override
  String get resumeRemove => 'Ka saar sii wadashada';

  @override
  String resumeAt(String time) {
    return '$time ayaa harsan';
  }

  @override
  String resumePage(int page, int total) {
    return 'Bogga $page ee $total';
  }

  @override
  String get continueWatching => 'Sii wad daawashada';

  @override
  String get continueReading => 'Sii wad akhriska';

  @override
  String get favouriteAnimeSection => 'Anime la jecel yahay';

  @override
  String get favouriteMangaSection => 'Manga la jecel yahay';

  @override
  String get plannedAnime => 'Anime la qorsheeyay';

  @override
  String get plannedManga => 'Manga la qorsheeyay';

  @override
  String get completedAnime => 'Anime la dhammeeyay';

  @override
  String get completedManga => 'Manga la dhammeeyay';

  @override
  String get hiddenMedia => 'Warbaahin la qariyay';

  @override
  String get recentUpdates => 'Cusboonaysiinnadii u dambeeyay';

  @override
  String get trendingNow => 'Hadda caan ah';

  @override
  String get popularThisSeason => 'Caan ah xilligan';

  @override
  String get trendingMovies => 'Aflaamta caanka ah';

  @override
  String get topRatedSeries => 'Taxanayaasha ugu qiimaha sarreeya';

  @override
  String get mostFavouriteSeries => 'Taxanayaasha ugu la jecel yahay';

  @override
  String get popularAnime => 'Anime caan ah';

  @override
  String get trendingManhwa => 'Manhwa caan ah';

  @override
  String get trendingNovels => 'Novel-ada caanka ah';

  @override
  String get topRatedManga => 'Manga ugu qiimaha sarreeya';

  @override
  String get mostFavouriteManga => 'Manga ugu la jecel yahay';

  @override
  String get popularManga => 'Manga caan ah';

  @override
  String get topMovies => 'Aflaamta ugu fiican';

  @override
  String get topOna => 'ONA ugu fiican';

  @override
  String get topOva => 'OVA ugu fiican';

  @override
  String get mostPopular => 'Ugu caansan';

  @override
  String get mostFavourite => 'Ugu la jecel yahay';

  @override
  String get upcoming => 'Imanaya';

  @override
  String get topManga => 'Manga ugu fiican';

  @override
  String get topManhwa => 'Manhwa ugu fiican';

  @override
  String get topManhua => 'Manhua ugu fiican';

  @override
  String get topNovels => 'Novel-ada ugu fiican';

  @override
  String get topOneShots => 'One-shot-yada ugu fiican';

  @override
  String get trendingMoviesToday => 'Aflaamta caanka ah maanta';

  @override
  String get trendingShowsToday => 'Bandhigyada caanka ah maanta';

  @override
  String get trendingMoviesWeek => 'Aflaamta caanka ah usbuucan';

  @override
  String get trendingShowsWeek => 'Bandhigyada caanka ah usbuucan';

  @override
  String get mostWatchedMoviesMonth => 'Aflaamta ugu badan la daawaday bishan';

  @override
  String get mostWatchedShowsMonth =>
      'Bandhigyada ugu badan la daawaday bishan';

  @override
  String get trendingThisWeek => 'Caan ah usbuucan';

  @override
  String get mostWatchedThisMonth => 'Ugu badan la daawaday bishan';

  @override
  String get repoLinksAdded =>
      'Xiriiriyeyaasha kaydka si guul leh ayaa loo daray!';

  @override
  String repoLinkConfirm(String url) {
    return 'Kudar kaydkan?\n\n$url\n\nKaliya ku dar bakhaarrada ilaha aad ku kalsoon tahay.';
  }

  @override
  String get errorGettingAnilistData => 'Cilad ka timid helista xogta AniList.';

  @override
  String get navInfo => 'XOG';

  @override
  String get navComments => 'FAALLOOYIN';

  @override
  String get playerNotAvailable => 'Ciyaaraha weli lama heli karo';

  @override
  String deepLinkInitialError(String error) {
    return 'Cilad helitaanka xiriirka hore: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Cilad furista xiriirka: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Xiriirkan lama furi karo: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Cilad furista xiriirka: $error';
  }

  @override
  String get forReleasingTitles => 'ciwaannada hadda la sii daynayo';

  @override
  String get progress => 'Horumar';

  @override
  String get notes => 'Qoraallo';

  @override
  String serviceNotFound(String id) {
    return 'Adeegga \"$id\" lama helin';
  }

  @override
  String get glassEffectEnabled => 'Saameynta muraayadda waa la shiday';

  @override
  String get glassEffectDisabled => 'Saameynta muraayadda waa la damiyay';

  @override
  String get materialYouEnabled => 'Material You waa la shiday';

  @override
  String get materialYouDisabled => 'Material You waa la damiyay';

  @override
  String get darkModeEnabled => 'Qaabka mugdiga waa la shiday';

  @override
  String get darkModeDisabled => 'Qaabka mugdiga waa la damiyay';

  @override
  String get animeList => 'Liiska anime';

  @override
  String get mangaList => 'Liiska manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Liiska anime ee $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Liiska manga ee $owner';
  }

  @override
  String get loadingList => 'Liiska waa la soo rarayaa';

  @override
  String get earlier => 'Hore';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count maalmood ka hor',
      one: '1 maalin ka hor',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saacadood ka hor',
      one: '1 saac ka hor',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count daqiiqo ka hor',
      one: '1 daqiiqo ka hor',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '${count}d ka hor';
  }

  @override
  String hoursAgoShort(int count) {
    return '${count}s ka hor';
  }

  @override
  String daysAgoShort(int count) {
    return '${count}m ka hor';
  }

  @override
  String weeksAgoShort(int count) {
    return '${count}u ka hor';
  }

  @override
  String get couldntLoadSource => 'Isha lama soo rari karo';

  @override
  String get followers => 'Raacayaasha';

  @override
  String couldntLoadTitle(String title) {
    return '$title lama soo rari karo';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Profile-kan lama soo rari karo';

  @override
  String get profile => 'Profile';

  @override
  String get feed => 'Quudinta';

  @override
  String get stats => 'Tirakoob';

  @override
  String get received => 'La helay';

  @override
  String get sent => 'La diray';

  @override
  String get global => 'Caalami';

  @override
  String get couldntLoadPage => 'Bogga lama soo rari karo';

  @override
  String get couldntLoadAllDetails => 'Faahfaahinta oo dhan lama soo rari karo';

  @override
  String get series => 'Taxane';

  @override
  String get studios => 'Istuudiyooyin';

  @override
  String get users => 'Isticmaalayaal';

  @override
  String repositoriesTitle(String type) {
    return 'Kaydka $type';
  }

  @override
  String get repositoryUrl => 'URL-ka kaydka';

  @override
  String get downloadingRepository => 'Kaydka waa la soo dejinayaa…';

  @override
  String get noRepositories => 'Kayd lama darin';

  @override
  String repoExtensionsCount(String count) {
    return '$count kordhin';
  }

  @override
  String get searchExtensions => 'Raadi kordhin...';

  @override
  String deletePluginTitle(String name) {
    return 'Tir $name?';
  }

  @override
  String get deletePluginMessage => 'Ma hubtaa inaad tirayso plugin-kan?';

  @override
  String pluginDeleted(String name) {
    return '$name waa la tiray';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name kaydka la habeeyay kuma jiro';
  }

  @override
  String get pluginFetchFailed => 'Macluumaadka plugin-ka lama keeni karin';

  @override
  String installPluginTitle(String name) {
    return 'Rakib $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Cabbirka: $size';
  }

  @override
  String get installedState => 'La rakibay';

  @override
  String updatePluginTitle(String name) {
    return 'Cusbooneysii $name';
  }

  @override
  String get errorLabel => 'Cilad:';

  @override
  String get stackTraceDetails => 'Faahfaahin (Stack Trace)';

  @override
  String get shareLogFile => 'La wadaag faylka log-ka';

  @override
  String get copyLogs => 'Koobi log-yada';

  @override
  String noListToEdit(String service) {
    return '$service liis wax laga beddelo ma leh';
  }

  @override
  String get couldNotReadFile => 'Faylkaas lama akhrin karo';

  @override
  String importedSummary(int anime, int manga) {
    return 'La soo geliyay $anime anime iyo $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count horey u jiray';
  }

  @override
  String get airingNow => 'Hadda la baahinayo';

  @override
  String get topRatedMovies => 'Aflaamta ugu qiimaha sarreeya';

  @override
  String get koreanDramas => 'Riwaayadaha Kuuriyada';

  @override
  String get chineseDramas => 'Riwaayadaha Shiinaha';

  @override
  String get japaneseDramas => 'Riwaayadaha Jabaan';

  @override
  String get thaiDramas => 'Riwaayadaha Thailand';

  @override
  String get turkishDramas => 'Riwaayadaha Turkiga';

  @override
  String get miniSeries => 'Taxane gaaban';

  @override
  String get topRatedShows => 'Bandhigyada ugu qiimaha sarreeya';

  @override
  String get recommendedSection => 'La soo jeediyay';

  @override
  String get syncRow => 'Isku waafaji liisaska';

  @override
  String get syncRowDesc => 'U koobi liiska hal adeeg akoonnadaada kale';

  @override
  String get syncTitle => 'Isku waafaji';

  @override
  String get syncMainService => 'Adeegga ugu muhiimsan';

  @override
  String get syncMainServiceDesc =>
      'Liiskiisa waa halka runta; adeeg kasta oo kale oo aad gashay waa la cusboonaysiiyaa si uu ugu habboonaado';

  @override
  String get syncAuto => 'Is-waafajin toos ah';

  @override
  String get syncAutoDesc =>
      'Soo qaad oo isku waafaji gadaasha marka app-ku furmo iyo 30 daqiiqo kasta';

  @override
  String get syncAddMissing => 'Ku dar gelitaannada maqan';

  @override
  String get syncAddMissingDesc =>
      'Ku dar sidoo kale gelitaannada adeegga kale aanu weli lahayn';

  @override
  String syncServiceOn(String name) {
    return 'Ku xidh $name';
  }

  @override
  String get syncDelete => 'Tirtir waxa aanu lahayn adeegga ugu muhiimsan';

  @override
  String get syncDeleteDesc =>
      'Ka saar gelinta adeegyada kale ee aan ku jirin liiska ugu muhiimsan. Keliya waxa la geliyaa ee la mid ah ciwaanka ayaa meesha laga saaray, si ay waxyaabaha ay ka midka yihiin filimada Simkl iyo taxanaha sii joogaan';

  @override
  String get syncDeleteTitle => 'Tir tir gelinta?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gelida',
      one: '1 gelid',
    );
    return '$_temp0 kuwa aan ku jirin liiskaaga ugu muhiimsan waa laga tirtiri doonaa adeegyada kale. Tan lama celin karo.';
  }

  @override
  String get syncDeleteAction => 'Tirtir';

  @override
  String get syncToDelete => 'Si loo tirtiro';

  @override
  String get syncDeletedNote => 'Waa la tirtiri doonaa';

  @override
  String syncWillRemove(int count, String name) {
    return '$count waa laga tirtiri doonaa $name';
  }

  @override
  String get syncOnlyForward => 'Ilaali horumarka sii fog';

  @override
  String get syncOnlyForwardDesc =>
      'Ha yareynin horumarka adeeg hore u sii socda';

  @override
  String get animePlanetWontWatch => 'Ma daawan doono';

  @override
  String get animePlanetWontRead => 'Ma akhrin doono';

  @override
  String get animePlanetAlreadyOnList => 'Durba liiskan';

  @override
  String get animePlanetNewList => 'Magaca liiska cusub';

  @override
  String get syncPrivate => 'Gelida gaarka ah';

  @override
  String get syncPrivateDesc =>
      'Waxa aad ku samaynayso qoraalada aad si gaar ah u ilaaliso. Adeeg leh ikhtiyaar gaar ah ayaa ka dhigaya kuwo gaar ah; qaar kalena si cad ayay u tusi lahaayeen';

  @override
  String get syncPrivateModeAsk => 'Waydii';

  @override
  String get syncPrivateModeSync => 'Isku hagaaji';

  @override
  String get syncPrivateModeSkip => 'Ka bood iyaga';

  @override
  String get syncPrivateTitle => 'Gelida gaarka ah';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count waxyaabaha la galiyo waa kuwo gaar ah',
      one: '1 gelitaanka waa mid gaar ah',
    );
    return '$_temp0. Adeegyada leh ikhtiyaar gaar ah (AniList, Kitsu, MangaBaka) waxay u heli doonaan si gaar ah; Adeegyada kale ma laha ikhtiyaar gaar ah waxayna u tusi lahaayeen si guud. Isku xidh iyaga? Jawaabtaada waa la xusuustaa; ku beddel ikhtiyaarka Sync.';
  }

  @override
  String get syncPrivateInclude => 'Isku hagaaji';

  @override
  String get syncPrivateSkip => 'Ka bood iyaga';

  @override
  String get syncFetch => 'Soo qaad';

  @override
  String get syncFetchAgain => 'Mar kale soo qaad';

  @override
  String get syncAll => 'Isku waafaji dhammaan';

  @override
  String get syncStop => 'Jooji';

  @override
  String get syncResume => 'Sii wad';

  @override
  String get syncNothingToSync => 'Adeeggan lama isku waafajin karo nooca kan';

  @override
  String get syncNoTargets => 'Ku gal adeeg kale si aad ula waafajiso';

  @override
  String get syncLoadingMap => 'ID mapping waa la soo rarayaa';

  @override
  String get syncComparing => 'Liisaska waa la barbar dhigayaa';

  @override
  String get syncIntro =>
      'Dooro adeeg ugu muhiimsan oo taabo Soo qaad. Adeeg kasta mar ayaa liiskaaga looga weydiiyaa, ka dibna waxaa lagu barbar dhigaa kan ugu muhiimsan.';

  @override
  String get syncStateSynced => 'La isku waafajiyay';

  @override
  String get syncStateOutdated => 'Aan is-waafaqsanayn';

  @override
  String get syncStateMissing => 'Liiska kuma jiro';

  @override
  String get syncStateUnmapped => 'Wax ku habboon ma jiro';

  @override
  String syncPaused(String time) {
    return 'Waxaa la sugayaa xadka codsiyada, wuxuu sii socon doonaa $time kadib';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count oo keliya $name, lama taaban';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done ka mid ah $total';
  }

  @override
  String get syncNothingHere => 'Waxba looma muujin karo';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used ka mid ah $max codsi ayaa la isticmaalay $window kan';
  }

  @override
  String get syncMinute => 'daqiiqad';

  @override
  String get syncDay => 'maalin';

  @override
  String get syncNotInList => 'Weli liiska kuma jiro';

  @override
  String get syncCleared => 'Qorshaha waa la nadiifiyay';

  @override
  String get syncClear => 'Nadiifi';

  @override
  String get syncOptions => 'Ikhtiyaarro';

  @override
  String get syncShared => 'Gelitaankiisa wuxuu la wadaagaa shay kale';

  @override
  String syncNotFound(String service) {
    return 'Lagama helin $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Isku waafaji $service ($count)';
  }

  @override
  String get syncOnEdit => 'Isku waafaji isla markiiba isbeddelada';

  @override
  String get syncOnEditDesc =>
      'U dir cusboonaysiin kasta oo horumar ah iyo wax-ka-bedel liis kasta adeegyadaada kale isla markiiba';

  @override
  String syncRemoved(String services) {
    return 'Laga saaray $services';
  }

  @override
  String syncPushed(String services) {
    return 'Loo waafajiyay $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Xad ayaa laga gaadhay, mar kale isku day wax yar kadib';

  @override
  String get syncAhead => 'Kan hore u sii socda';

  @override
  String get syncAheadDesc =>
      'Laba dhinac: ciwaan kasta gelitaanka ugu fog ayaa guuleysta oo loo koobiyaa dhammaan adeegyadaada kale';

  @override
  String syncAheadFrom(String service) {
    return 'Ka $service';
  }

  @override
  String get syncConfirm => 'Dib u eeg ka hor intaadan waafajin';

  @override
  String get syncConfirmDesc =>
      'Muuji waxa Isku waafaji dhammaan beddeli doono iyo imisa codsi ay u baahan tahay';

  @override
  String get syncPreviewTitle => 'Diyaar u ah is-waafajin';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates cusboonaysiin, $adds la darayo';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Ku dhawaad $count codsi';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID ayaa u baahan raadin hore';
  }

  @override
  String get syncPreviewNothing => 'Waxba lama beddelayo';

  @override
  String get syncStart => 'Bilow';

  @override
  String get syncRetry => 'Mar kale isku day';

  @override
  String get syncSkip => 'Ka bood shaygan';

  @override
  String get syncInclude => 'Mar kale ku dar shaygan';

  @override
  String get syncSkippedLabel => 'La booday';

  @override
  String get syncChanges => 'Kala duwanaansho';

  @override
  String get syncChangeStatus => 'Xaalad';

  @override
  String get syncChangeProgress => 'Horumar';

  @override
  String get syncChangeScore => 'Dhibco';

  @override
  String get syncChangeDates => 'Taariikho';

  @override
  String get syncChangeRepeat => 'Tirada dib-u-daawashada';

  @override
  String get syncFailedReason => 'Sababta ay u fashilantay';

  @override
  String get syncSkippedHint =>
      'Alaabta la booday waa la ilaaliyaa, xitaa mar kale soo qaadis kadib';

  @override
  String get commentsRules => 'Xeerarka faallooyinka';

  @override
  String get commentsRulesBody =>
      'XEER KASTA HADDII AAD jebiso WAAD GADHAYSAA\n\n1. Cunsuriyad, takoor ama hadal nacayb ah ma jiro\n2. Spam ama is-xayaysiin ma jiro\n3. Nuxur NSFW ah gabi ahaanba ma jiro\n4. Ingiriis oo keliya, ka reeban ma jirto\n5. Is-dhigid, cadaadis ama xumaan ma jirto\n6. Nuxur sharci-darro ah ama sharaf-dhac xad-dhaaf ah fandom kasta ma jiro\n7. Ha codsan ha la wadaagin kayd ama kordhin\n8. Waxyeelayn kaliya iyadoo la isticmaalayo tag waxyeelayn iyo digniin\n9. Faallooyin galmo ama aan habboonayn oo ku saabsan jilayaasha yaryar ma jiraan\n10. Haddii ay qalad tahay, ha dhigin!';

  @override
  String get commentsRulesAccept => 'Waan fahmay';

  @override
  String get commentsSortNewest => 'Ugu cusub';

  @override
  String get commentsSortOldest => 'Ugu hore';

  @override
  String get commentsSortHighest => 'Ugu qiimaha sarreeya';

  @override
  String get commentsSortLowest => 'Ugu qiimaha hooseeya';

  @override
  String commentsEpisodeShort(int number) {
    return 'Dh. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'C. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Ku shaandhee dhacdo';

  @override
  String get commentsFilterChapterTitle => 'Ku shaandhee cutub';

  @override
  String get commentsFilterTagTitle => 'Geli lambarka dhacdada ama cutubka';

  @override
  String get commentsFilterHint => 'Lambar';

  @override
  String get commentsFilterApply => 'Shaandhee';

  @override
  String get commentsFilterClear => 'Muuji dhammaan';

  @override
  String get commentsPlaceholder => 'Ku dar faallo…';

  @override
  String commentsReplyingTo(String name) {
    return 'Jawaabta $name';
  }

  @override
  String get commentsSend => 'Dir';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (ikhtiyaari)';
  }

  @override
  String get commentsTagEpisode => 'dhacdo';

  @override
  String get commentsTagChapter => 'cutub';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Lambarka $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Tag-gu ma dhaafi karo wadarta ($total)';
  }

  @override
  String get commentsNoTag => 'Tag ma jiro';

  @override
  String get commentsSpoiler => 'Waxyeelayn';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Raadi GIF';

  @override
  String get commentsGifEmpty => 'GIF lama helin';

  @override
  String get commentsEmptyText => 'Faalladu ma madhnaan karto';

  @override
  String get commentsBannedYou => 'Waa laguu mamnuucay inaad faallo bixiso';

  @override
  String get commentsEdited => 'Faalladii waa la beddelay';

  @override
  String get commentsDeleted => 'Faalladii waa la tiray';

  @override
  String get commentsDeletedPlaceholder => '[la tiray]';

  @override
  String get commentsReported => 'Faalladii waa la soo sheegay';

  @override
  String get commentsUserBanned => 'Isticmaalaha waa la mamnuucay';

  @override
  String get commentsReport => 'Soo sheeg';

  @override
  String get commentsReportAsk => 'U soo sheeg faalladan kormeeraha?';

  @override
  String get commentsDelete => 'Tir';

  @override
  String get commentsDeleteAsk => 'Faalladan waa laga saarayaa qof walba.';

  @override
  String get commentsBan => 'Mamnuuc';

  @override
  String get commentsBanAsk => 'Mamnuuc isticmaalahan faallooyinka?';

  @override
  String get commentsCopy => 'Koobi';

  @override
  String get commentsViewReply => 'Eeg 1 jawaab';

  @override
  String commentsViewReplies(int count) {
    return 'Eeg $count jawaab';
  }

  @override
  String get commentsHideReplies => 'Qari jawaabaha';

  @override
  String get commentsLoadMore => 'Soo rar faallooyin kale';

  @override
  String get commentsEmpty => 'Weli faallo ma jirto. Noqo kan ugu horreeya!';

  @override
  String get commentsEmptyFiltered => 'Faallo shaandhadan ma jirto';

  @override
  String get commentsSignIn =>
      'Ku gal AniList si aad u akhrido oo aad u qorto faallooyin';

  @override
  String get commentsSignInMessage =>
      'Faallooyinka waa la wadaagaa adeeg kasta waxayna isticmaalaan akoonkaaga AniList.';

  @override
  String get commentsUnavailable => 'Faallooyinka ciwaankan lama heli karo';

  @override
  String get commentsUnavailableMessage =>
      'Lama waafajin karin gelitaan AniList ah.';

  @override
  String get commentsDisabled => 'Faallooyinka waa la damiyay';

  @override
  String get commentsDisabledMessage =>
      'Waad mar kale shidi kartaa Dejimaha › Guud.';

  @override
  String get commentsOffline => 'Faallooyinka lama soo rari karo';

  @override
  String get commentsSingleTitle => 'Waxaa la muujinayaa hal faallo';

  @override
  String get commentsShowAll => 'Muuji dhammaan faallooyinka';

  @override
  String get commentsSettingsHeader => 'Faallooyin';

  @override
  String get commentsSettingEnabled => 'Faallooyin';

  @override
  String get commentsSettingEnabledDesc =>
      'Muuji tab-ka Faallooyinka ciwaannada oo ku gal server-ka faallooyinka akoonkaaga AniList';

  @override
  String get commentsSettingAlerts => 'Ogeysiisyada jawaabaha';

  @override
  String get commentsSettingAlertsDesc =>
      'I ogeysii marka qof ka jawaabo faallooyinkayga';

  @override
  String get commentsNoticeReplyTitle => 'Jawaab cusub oo faallo ah';

  @override
  String commentsNoticeReply(String name) {
    return '$name ayaa ka jawaabay faalladaada';
  }

  @override
  String get commentsNoticeWarningTitle => 'Waxaad heshay digniin';

  @override
  String get commentsNoticeWarning => 'Ka taxaddar faallooyinkaaga';

  @override
  String get commentsNoticeUpdateTitle => 'Cusboonaysiin ka timid Dantotsu';

  @override
  String get barcodeTitle => 'Iskaan barcode';

  @override
  String get barcodeTooltip => 'Ka hel manga ama novel barcode-kiisa';

  @override
  String get barcodeIntro =>
      'U jiheey kamarada barcode-ka dhabarka mugga, ama ku qor ISBN-kiisa.';

  @override
  String get barcodeIntroManual =>
      'Ku qor ISBN-ka ka sarreeya barcode-ka dhabarka mugga.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Taasi ISBN sax ah maaha';

  @override
  String barcodeNotFound(String isbn) {
    return 'Buug lama helin $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Kamarada lama heli karo. Ogolow gelitaanka kamarada ama ku qor ISBN.';

  @override
  String get themesTitle => 'Furitaannada & dhammaystirka';

  @override
  String get themesPlayVideo => 'Ciyaar muuqaalka';

  @override
  String get themesPlayAudio => 'Ciyaar codka oo keliya';

  @override
  String get themesOpenSite => 'Ku fur AnimeThemes';

  @override
  String get themesCredit => 'Heesaha AnimeThemes';

  @override
  String get themesVersions => 'Noocyada';

  @override
  String get sauceTitle => 'Hel isha';

  @override
  String get sauceIntro =>
      'Soo rar bog manga ah ama shaqo farshaxan, ama ku dheji xiriirkeeda, si aad u hesho halka ay ka timid.';

  @override
  String get sauceKeyTitle => 'Furaha API ee SauceNAO';

  @override
  String get sauceKeyHint =>
      'Ikhtiyaari, wuxuu kordhiyaa xadka raadinta maalinlaha ah';

  @override
  String get sauceKeyDesc => 'Hel fure bilaash ah saucenao.com/user.php';

  @override
  String get sauceOpen => 'Fur isha';

  @override
  String get sauceCredit => 'Raadinta sawirka SauceNAO';

  @override
  String get sauceEmpty => 'Wax ku habboon lama helin';

  @override
  String get sauceTooltip => 'Hel isha bog manga ah ama shaqo farshaxan';

  @override
  String get trendzTitle => 'Jaantusyada anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Jilayaasha dumarka';

  @override
  String get trendzMale => 'Jilayaasha ragga';

  @override
  String get trendzCouple => 'Lammaanayaal';

  @override
  String get trendzCredit => 'Jaantusyo usbuucle ah oo AniTrendz';

  @override
  String get trendzNew => 'CUSUB';

  @override
  String get trendzEmpty => 'Jaantusku waa madhan yahay';

  @override
  String get shareCard => 'Kaarka la wadaagida';

  @override
  String get shareCardList => 'La wadaag kaarka liiska';

  @override
  String get shareCardSaved => 'Kaarka waa la keydiyay';

  @override
  String get shareCardFailed => 'Kaarka lama samayn karin';

  @override
  String get shareCardListEmpty => 'Liiskaaga wax la wadaago weli ma laha';

  @override
  String get shareCardTop => 'Doorashooyinkayga ugu sarreeya';

  @override
  String themesEpisodes(String eps) {
    return 'Dhacdooyin $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% ayaa ku habboon';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Usbuuca $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count cod';
  }

  @override
  String trendzPeak(String rank) {
    return 'Ugu sarreeyay #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count usbuuc tobanka sare';
  }

  @override
  String get imageSearchTitle => 'Ku raadi sawir';

  @override
  String get imageSearchTooltip => 'Ka hel anime sawirka shaashadda';

  @override
  String get imageSearchIntro =>
      'Dooro sawir shaashad ama ku dheji xiriir sawir trace.moe-na waxay heli doontaa dhacdada iyo daqiiqadda ay ka timid.';

  @override
  String get imageSearchPick => 'Dooro sawir';

  @override
  String get imageSearchLinkHint => 'Ku dheji xiriirka sawirka';

  @override
  String get imageSearchGo => 'Raadi';

  @override
  String get imageSearchEmpty => 'Wax ku habboon lama helin';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Dhacdada $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time';
  }

  @override
  String get imageSearchPreview => 'Hordhac muuqaal';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% ayaa ku habboon';
  }

  @override
  String get imageSearchCredit => 'Waxaa wada trace.moe';

  @override
  String get imageSearchOpenFailed => 'Ciwaankan lama furi karo';

  @override
  String get groups => 'Kooxaha';

  @override
  String get groupsYours => 'Kooxahaaga';

  @override
  String get groupsPopular => 'Caan ah';

  @override
  String get groupsNew => 'Cusub';

  @override
  String get groupsFeatured => 'La soo bandhigay';

  @override
  String get groupsSearch => 'Raadi kooxo';

  @override
  String get groupsAll => 'Dhammaan';

  @override
  String get groupsEmpty => 'Koox lama helin';

  @override
  String get groupsEmptyYours => 'Weli kooxo kuma biirin';

  @override
  String get groupsSignIn => 'Gal si aad u aragto kooxaha aad ku biirtay';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count xubnood',
      one: '1 xubin',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Ku biir';

  @override
  String get groupsJoined => 'Waad ku biirtay';

  @override
  String get groupsLeave => 'Ka bax kooxda';

  @override
  String get groupsLeaveAsk =>
      'Mar dambe ma arki doonto boostooyinka kooxdan feed-kaaga.';

  @override
  String get groupsJoinFailed =>
      'Kooxdan lagu biiri waayay, waxaa laga yaabaa inay ku bixi tahay casuumaad oo keliya';

  @override
  String get groupsLeaveFailed => 'Kooxdan laga bixi waayay';

  @override
  String get groupsPosts => 'Boostooyin';

  @override
  String get groupsMembersTab => 'Xubnaha';

  @override
  String get groupsAbout => 'Ku saabsan';

  @override
  String get groupsRules => 'Xeerarka';

  @override
  String get groupsPrivacyOpen => 'Furan';

  @override
  String get groupsPrivacyRestricted => 'La xaddiday';

  @override
  String get groupsPrivacyClosed => 'Xiran';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Kooxdan lama soo rari karo';

  @override
  String get groupsNewPost => 'Ku dhig kooxda';

  @override
  String get groupsPostHint => 'La wadaag wax kooxda';

  @override
  String get groupsOpenInBrowser => 'Ku fur browser-ka';

  @override
  String get groupsCategory => 'Qayb';

  @override
  String get groupsLanguage => 'Luqad';

  @override
  String get groupsCreated => 'La sameeyay';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hogaamiye',
      one: '1 hogaamiye',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Asturnaanta';

  @override
  String get notificationsAll => 'Dhammaan';

  @override
  String get notificationsAiring => 'Baahin';

  @override
  String get notificationsMedia => 'Ciwaanno cusub';

  @override
  String get notificationsReplies => 'Jawaabo';

  @override
  String get notificationsMentions => 'Magacaabid';

  @override
  String get notificationsMessages => 'Fariimaha';

  @override
  String get notificationsLikes => 'Jeclaanshaha';

  @override
  String get notificationsFollows => 'Raacitaanno';

  @override
  String get notificationsNoServices =>
      'Adeeg la galay oo ogeysiis leh ma jiro';

  @override
  String get notificationsNoServicesMessage =>
      'Ku gal adeeg ogeysiis diraya ogeysiisyadana halkan ayay ka soo muuqan doonaan.';

  @override
  String get notificationsEmptyKind => 'Qaybtan weli waxba kuma jiraan';

  @override
  String get notificationsCommentsEmpty => 'Ogeysiis faallo ma jiro';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Jawaabaha faallooyinkaaga iyo ku-dhawaaqyada Dantotsu halkan ayay ka muuqdaan.';

  @override
  String get notificationsSettings => 'Dejimaha ogeysiisyada';

  @override
  String get notificationsPollTitle => 'Hubi ogeysiisyo cusub';

  @override
  String notificationsPollDesc(int minutes) {
    return '$minutes daqiiqo kasta marka app-ku furan yahay';
  }

  @override
  String get notificationsNotifyAbout => 'Igu ogeysii';

  @override
  String get notificationsCommentsHeader => 'Ogeysiisyada faallooyinka';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Muuji ogeysiis nidaam ah mid kasta oo $service ah oo aan la akhrin marka app-ku socdo.';
  }

  @override
  String get notificationsTestSent => 'Ogeysiiska tijaabada waa la diray';

  @override
  String get notificationsTestDenied =>
      'Ogeysiisyada loogu ogolaan maayo Dartotsu. Ka shid dejimaha nidaamka.';

  @override
  String get notificationsTestHint =>
      'Dheer taabo si aad u dirto ogeysiis tijaabo ah';

  @override
  String get notificationsTestSample => 'Kani waa ogeysiis tijaabo ah';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name ayaa ka jawaabay faalladaada $media';
  }

  @override
  String get imageSearchNotLink => 'Taasi ma eka xiriir';

  @override
  String get imageSearchQuota => 'Xadka raadinta waa dhaafay';

  @override
  String get imageSearchBusy =>
      'Codsiyo aad u badan, mar kale isku day wax yar kadib';

  @override
  String imageSearchFailed(int code) {
    return 'Raadintu way fashilantay ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count ogeysiis cusub';
  }

  @override
  String get reactionsTitle => 'Falcelinno';

  @override
  String get reactionsNeedEntry =>
      'Ku dar ciwaankan liiskaaga ka hor intaadan falcelin';

  @override
  String get reactionsAdd => 'Ku dar falcelin';

  @override
  String get reactionsHint =>
      'Maxaad ka qabtaa? (gaaban oo waxyeelayn la\'aan)';

  @override
  String get reactionsPost => 'Dhig';

  @override
  String get reactionsFailed => 'Falcelinta lama cusboonaysiin karin';

  @override
  String get settingsWatch => 'Daawo & akhri';

  @override
  String get settingsWatchDesc =>
      'Liisaska dhacdooyinka, isha la waafajinta iyo faahfaahinta dhacdooyinka';

  @override
  String get watchSettingsLayout => 'Liiska dhacdooyinka';

  @override
  String get watchSettingsSources => 'Ishaha';

  @override
  String get watchSettingsMetadata => 'Faahfaahinta dhacdada';

  @override
  String get watchLayout => 'Habaynta';

  @override
  String get watchListView => 'Liis';

  @override
  String get watchGridView => 'Shabakad';

  @override
  String get watchCompactView => 'Yar';

  @override
  String get watchDefaultLayoutDesc =>
      'Sida dhacdooyinka iyo cutubyada loo habeeyo ilaa aad u beddesho ciwaan gaar ah';

  @override
  String get watchChunkSize => 'Cabbirka kooxda';

  @override
  String get watchChunkSizeDesc =>
      'Immisa dhacdo ama cutub ayuu tab-ka kooxda kasta hayaa';

  @override
  String get watchShowDescription => 'Muuji sharraxaadaha';

  @override
  String get watchShowDescriptionDesc =>
      'Muuji soo koobidda dhacdada ciwaan kasta hoostiisa habaynta liiska';

  @override
  String get watchShowFiller => 'Muuji dhacdooyinka filler';

  @override
  String get watchShowFillerDesc =>
      'Dami si aad u qarisid dhacdooyinka filler-ka lagu calaamadiyay';

  @override
  String get watchBlurUnwatched => 'Qari muuqaalada waxyeelaynta';

  @override
  String get watchBlurUnwatchedDesc =>
      'Ka dhig mid aan cadayn muuqaalka dhacdooyinka aadan weli daawan';

  @override
  String get watchResumeShelf => 'Safka sii wadashada';

  @override
  String get watchResumeShelfDesc => 'Muuji safka Sii wad ee Guriga';

  @override
  String get watchMarkOnLongPress => 'Dheer taabo si aad horumar u calaamadiso';

  @override
  String get watchMarkOnLongPressDesc =>
      'Dheer taabo dhacdo ama cutub si aad ugu calaamadiso la daawaday ama aan la daawan';

  @override
  String get watchMatching => 'La waafajinta isha';

  @override
  String get watchMatchingDesc =>
      'Ugu dhow wuxuu qaataa natiijada raadinta ugu fiican. Saxda oo keliya wuxuu aqbalaa ciwaan aad isugu eg iyo inta kale adiga ayaa dooranaya.';

  @override
  String get watchMatchClosest => 'Isku-dhigma ugu dhow';

  @override
  String get watchMatchExact => 'Isku-dhigma sax ah oo keliya';

  @override
  String get watchMetadataDesc =>
      'Halka ciwaannada dhacdooyinka, soo koobidda, muuqaalada, taariikhaha baahinta iyo calaamadaha filler ay ka yimaadaan. Jiid si aad mudnaanta u dejiso; isha ugu horreysa ee leh qiimo ayaa guuleysata.';

  @override
  String get watchMetaAniZipDesc =>
      'Ciwaannada dhacdooyinka, soo koobidda, sawirada iyo taariikhaha baahinta';

  @override
  String get watchMetaKitsuDesc =>
      'Ciwaannada dhacdooyinka, sharraxaadaha iyo muuqaalada';

  @override
  String get watchMetaSimklDesc =>
      'Ciwaannada dhacdooyinka, sharraxaadaha, sawirada iyo taariikhaha baahinta';

  @override
  String get watchMetaAniListDesc =>
      'Ciwaannada dhacdooyinka streaming-ka, muuqaalada iyo jadwalka baahinta';

  @override
  String get watchMetaTenraiDesc =>
      'Ciwaannada dhacdooyinka MyAnimeList, taariikhaha baahinta, filler iyo calaamadaha recap ee Tenrai';

  @override
  String get watchClearMetadata => 'Cusboonaysii faahfaahinta dhacdada';

  @override
  String get watchClearMetadataDesc =>
      'Illow faahfaahinta dhacdada la kaydiyay si mar kale loo soo qaado';

  @override
  String get watchMetadataCleared =>
      'Faahfaahinta dhacdada mar kale ayaa la soo qaadi doonaa';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dhacdo',
      one: '1 dhacdo',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cutubyo',
      one: '1 cutub',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Dhacdada $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Cutubka $number';
  }

  @override
  String get watchSearching => 'Waa la raadinayaa…';

  @override
  String watchSearchingFor(String term) {
    return 'Waa la raadinayaa: $term';
  }

  @override
  String watchSelected(String title) {
    return 'La doortay: $title';
  }

  @override
  String watchFound(String title) {
    return 'La helay: $title';
  }

  @override
  String get watchNothingFound => 'Isha kan waxba kuma jiraan';

  @override
  String get watchSearchFailed => 'Raadinta ishu way fashilantay';

  @override
  String get watchLoadFailed => 'Liiska lama soo rari karo';

  @override
  String get watchSignInToTrack => 'Gal si aad u la socoto horumarkaaga';

  @override
  String watchInstallSource(String action) {
    return 'Rakib kordhin si aad u bilowdo $action';
  }

  @override
  String get watchSourceMissing => 'Ishani lama rakibin';

  @override
  String get watchWrongTitle => 'Ciwaan qalad ah?';

  @override
  String get watchSearchAgain => 'Mar kale raadi';

  @override
  String watchSearchSource(String source) {
    return 'Raadi $source';
  }

  @override
  String get watchSource => 'Isha';

  @override
  String get sourceTags => 'Tags';

  @override
  String get sourceTagsHint =>
      'Tag waxa ishani loogu talagalay. Cinwaanku wuxuu taxayaa ilaha lagu calaamadeeyay marka hore, ka dibna kuwa aan la taaban. 18+ ilo ayaa kaliya muujinaya cinwaanada dadka waaweyn.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Filimada & Taxanaha';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Qarsoon by tags';

  @override
  String get watchOptions => 'Ikhtiyaarro';

  @override
  String get watchReverse => 'Rog hab-ka';

  @override
  String get watchScanlators => 'Kooxaha';

  @override
  String get watchResetOptions => 'Dib u deji ikhtiyaarradan';

  @override
  String get watchContinue => 'Sii wad';

  @override
  String get watchStart => 'Bilow';

  @override
  String get watchPlay => 'Ciyaar';

  @override
  String get watchRead => 'Akhri';

  @override
  String get watchMarkWatched => 'Ku calaamadee la daawaday';

  @override
  String get watchMarkUnwatched => 'Ku calaamadee aan la daawan';

  @override
  String get watchMarkRead => 'Ku calaamadee la akhriyay';

  @override
  String get watchMarkUnread => 'Ku calaamadee aan la akhrin';

  @override
  String get watchFiller => 'Buuxiyaha';

  @override
  String get watchRecap => 'Dib u soo koobid';

  @override
  String get watchNoEpisodes => 'Dhacdo lama helin';

  @override
  String get watchNoChapters => 'Cutub lama helin';

  @override
  String get watchSourceTools => 'Qalabka isha';

  @override
  String get watchSourceSettings => 'Dejimaha isha';

  @override
  String get watchOpenWebView => 'Ku fur web view';

  @override
  String get watchOpenWebViewDesc =>
      'Xalli hubinta Cloudflare ama gal; cookies-ka waa la wadaagaa codsiyada isha';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies ayaa loo kaydiyay $host',
      one: '1 cookie ayaa loo kaydiyay $host',
      zero: 'Cookies lagu kaydiyay $host ma jiraan',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Ogolaanshaha Cloudflare waa firfircoon yahay, $time';
  }

  @override
  String get watchClearanceMissing => 'Cookie ogolaansho Cloudflare ma jiro';

  @override
  String get watchClearanceSession => 'wuxuu sii jiraa ilaa app-ka la xidho';

  @override
  String get watchAgentShared =>
      'Codsiyadu waxay isticmaalaan user agent-ka web view, kaas oo Cloudflare hubiyo';

  @override
  String get watchAgentCustom =>
      'User agent gaar ah ayaa la dejiyay, sidaas darteed ogolaanshaha Cloudflare ee web view waa la diidi karaa';

  @override
  String get watchTestConnection => 'Tijaabi isku-xirka';

  @override
  String get watchSolveChallenge => 'Xalli';

  @override
  String watchProbeOk(int code) {
    return 'La gaari karaa (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare wali waxay codsanaysaa hubin';

  @override
  String watchProbeBlocked(int code) {
    return 'Goobta ayaa xannibtay (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Goobta lama gaari karin';

  @override
  String get watchClearCookies => 'Nadiifi cookies-ka goobtan';

  @override
  String get watchCookiesCleared => 'Cookies-ka waa la nadiifiyay';

  @override
  String get watchFailTimeout =>
      'Jeeggu kuma dhammaanin waqtigii loogu talagalay';

  @override
  String get watchFailBlocked =>
      'Goobtu waxay xannibtay aaladdan (gelitaanka waa la diiday). Jeeggu waxba tari maayo';

  @override
  String get watchFailTurnstile =>
      'Jeeggani wuxuu u baahan yahay tuubo oo uusan samayn karin cidda wax xalisa';

  @override
  String get watchFailLoad =>
      'Boggu ma shubin Hubi xidhiidhka iyo cinwaanka goobta';

  @override
  String get watchFailRejected =>
      'Goobtu way diiday ogolaanshaha ay hadda bixisay. Isku day marlabaad ama nadiifi cookies-ka';

  @override
  String get watchFailDismissed =>
      'Jeeggu waa la xidhay ka hor inta aanu dhammaan';

  @override
  String get watchFailCooldown =>
      'Waxaad xidhay jeegga wax yar ka hor. Taabo xal si aad mar kale isugu daydo';

  @override
  String get watchFailQuiet =>
      'Jeeggu adiga ayuu kuu baahan yahay, abkana iskii ayuu u shaqaynayay';

  @override
  String get watchFailWebView =>
      'Aragtida shabakadeed ee dambe way bilaaban kartaa';

  @override
  String get watchFailUnavailable => 'Ma jirto shaashad muujinaysa jeeggu';

  @override
  String get watchStatusReady => 'Diyaarsan';

  @override
  String get watchStatusChallenge => 'Hubinta Cloudflare ayaa loo baahan yahay';

  @override
  String get watchStatusBlocked => 'Waxaa xannibay goobta';

  @override
  String get watchStatusOffline => 'Ma gaadhi karo goobta';

  @override
  String get watchStatusUntested => 'Weli lama tijaabin';

  @override
  String get watchStatusTesting => 'Tijaabi xidhiidhka…';

  @override
  String get watchStatusSolving => 'Gudbinaya hubinta Cloudflare…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Jeega Cloudflare ayaa laga dhex maray gadaasha ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Jeega Cloudflare waa la dhaafay';

  @override
  String watchClearanceIssued(String time) {
    return 'kasbaday $time';
  }

  @override
  String get watchClearanceStale =>
      'Ogolaanshaha waxaa lagu kasbaday wakiilka isticmaale kale, markaa lama dirin. Tijaabi xidhiidhka si aad mid cusub u hesho';

  @override
  String get watchSectionConnection => 'Isku xirka';

  @override
  String get watchSectionSession => 'Casharka';

  @override
  String get watchSectionTools => 'Qalabka';

  @override
  String get watchMetaSource => 'Faahfaahinta dhacdada ka timid';

  @override
  String get watchMetaAuto => 'Toos';

  @override
  String get watchMetaOff => 'Dami';

  @override
  String get playerSettingsTitle => 'Dejimaha ciyaaraha';

  @override
  String get playerSectionPlayback => 'Ciyaarista';

  @override
  String get playerSectionSkip => 'Booditaanka';

  @override
  String get playerSectionGestures => 'Xakamaynta';

  @override
  String get playerSectionSubtitles => 'Tarjumaado hoose';

  @override
  String get playerSectionShaders => 'Shaders';

  @override
  String get playerSectionEngine => 'Matoor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Xawaaraha ciyaarista';

  @override
  String get localSource => 'Faylasha deegaanka';

  @override
  String get localMissing =>
      'Faylkan ama galkan hadda kuma jiro galka degaankaaga';

  @override
  String get playerStickyStage => 'Muuqaal dhejis ah';

  @override
  String get playerStickyStageDesc =>
      'Fiidiyowga ha ahaado mid meel sare ku yaal inta aad ka rogto qaybaha iyo faallooyinka hoose';

  @override
  String get playerCursedSpeed => 'Xawaaraha dheeraadka ah';

  @override
  String get playerCursedSpeedDesc => 'Ku dar xawaare ilaa 10x liiska';

  @override
  String get playerResize => 'Habka cabbirka';

  @override
  String get playerFitFit => 'Ku habboon';

  @override
  String get playerFitCover => 'Dabool';

  @override
  String get playerFitStretch => 'Fidi';

  @override
  String get playerSkipDuration => 'Dhererka badhanka booditaanka';

  @override
  String get playerSkipDurationDesc =>
      'Ilbiriqsiyada badhanka booditaanku boodo furitaannada iyo dhammaystirka dibaddooda';

  @override
  String get playerSeekDuration => 'Raadinta laba-taabasho';

  @override
  String get playerSeekDurationDesc =>
      'Ilbiriqsiyada la boodayo laba-taabasho ama fure fallaar ah';

  @override
  String get playerAutoPlay => 'Ciyaar kan xiga toos ah';

  @override
  String get playerAutoPlayDesc => 'Bilow dhacdada xigta marka tan dhammaato';

  @override
  String get playerResume => 'Ka sii wad halkii aad ku joojisay';

  @override
  String get playerResumeDesc => 'Ka sii wad dhacdo meeshii ugu danbaysay';

  @override
  String get playerOrientation => 'Jihaynta';

  @override
  String get playerOrientationAuto => 'La raac qalabka';

  @override
  String get playerOrientationLandscape => 'Dhinac-fidsan';

  @override
  String get playerOrientationPortrait => 'Dhinac-taagan';

  @override
  String get playerAutoSkipOpening => 'Ka bood furitaannada';

  @override
  String get playerAutoSkipEnding => 'Ka bood dhammaystirka';

  @override
  String get playerAutoSkipRecap => 'Ka bood recap';

  @override
  String get playerAutoSkipDesc =>
      'Ka bood isla marka uu bilaabmo, adigoo isticmaalaya AniSkip iyo waqtiyada stream-ka';

  @override
  String get playerDisableSkips => 'Dami boodboodka';

  @override
  String get playerDisableSkipsDesc =>
      'Ma jiro AniSkip ama qulqulka timestamps, calamadaha cutubka ama ka boodi soo gudbinta ee ciyaaryahanka';

  @override
  String get playerSkipOnce => 'Mar keliya ka bood';

  @override
  String get playerSkipOnceDesc =>
      'Ha ka boodin qaybta isla marka aad dib ugu noqoto';

  @override
  String get playerAdjustBrightness => 'Dhaqdhaqaaqa iftiinka';

  @override
  String get playerAdjustBrightnessDesc =>
      'Kor iyo hoos ka sii dhaq midigta shaashadda';

  @override
  String get playerAdjustVolume => 'Dhaqdhaqaaqa codka';

  @override
  String get playerAdjustVolumeDesc =>
      'Kor iyo hoos ka sii dhaq bidixda shaashadda';

  @override
  String get playerHoldToSpeed => 'Hay si aad u dedejiso';

  @override
  String get playerHoldToSpeedDesc =>
      'Taabo oo hay muuqaalka si uu u ciyaaro degdeg, jiid dhinaca si aad xawaaraha u beddesho';

  @override
  String get playerThumbless => 'Barta raadinta ballaaran';

  @override
  String get playerThumblessDesc => 'Xarig dhumuc weyn oo aan fure lahayn';

  @override
  String get playerShowSubtitles => 'Muuji tarjumaadaha hoose';

  @override
  String get playerShowSubtitlesDesc => 'Dami si aad u qarisid tarjumaad kasta';

  @override
  String get playerSubtitleLanguage => 'Luqadda tarjumaadaha ee la door biday';

  @override
  String get playerSubtitleSize => 'Cabbirka tarjumaadaha';

  @override
  String get playerSubtitleWeight => 'Culeyska tarjumaadaha';

  @override
  String get playerSubtitleBottom => 'Meel hoose ee tarjumaadaha';

  @override
  String get playerSubtitleFont => 'Far-qoraalka tarjumaadaha';

  @override
  String get playerSubtitleColor => 'Midabka tarjumaadaha';

  @override
  String get playerSubtitleBackground => 'Gadaasha tarjumaadaha';

  @override
  String get playerSubtitleOutline => 'Xariiqda tarjumaadaha';

  @override
  String get playerSubtitleOutlineWidth => 'Balaadhka dulmar-hoosaadka';

  @override
  String get playerSubtitlePreview => 'Horudhac-hoosaadka';

  @override
  String get playerSubtitlePreviewText => 'Qoraal horudhac-hoosaad ah';

  @override
  String get playerLibass => 'Isticmaal libass';

  @override
  String get playerLibassDesc =>
      'Samee tarjumaadaha .ass ee qaabaysan. Cabbirka, midabka iyo far-qoraalka kor ku xusan markaas ma dhaqmaan';

  @override
  String get playerShaders => 'Shaders';

  @override
  String get playerShadersEnable => 'Daar shaders';

  @override
  String get playerShadersEnableDesc =>
      'Kor u qaad oo nadiifi sawirka adoo isticmaalaya GLSL shaders sida Anime4K';

  @override
  String get playerShadersOff => 'Shaders waa damsan yihiin';

  @override
  String get playerShadersMissing => 'Anime4K lama rakibin';

  @override
  String get playerShadersMissingDesc =>
      'Soo deji xirmada shader-ka Anime4K (ku dhawaad 0.8 MB) si aad u isticmaasho qaababka dhismay.';

  @override
  String get playerShadersDownload => 'Soo deji Anime4K';

  @override
  String get playerPictureSave => 'Keydi jirkan';

  @override
  String get playerPictureOriginal => 'Asalka';

  @override
  String get playerPictureOriginalDesc =>
      'Qaabka sida muuqaalku u leeyahay, iyada oo aan lahayn hadh ama midabyo';

  @override
  String get playerPictureProcessed => 'Iyada oo hadhka iyo midabada';

  @override
  String get playerPictureProcessedDesc => 'Qaabka sida aad hadda u aragto';

  @override
  String get playerPictureSaved => 'Qaabka la keydiyay';

  @override
  String get playerPictureSaveFailed => 'Ma kaydin karayn jir';

  @override
  String get playerShadersPreview => 'Ku hordhac frame-kan';

  @override
  String get playerShadersUse => 'Isticmaal kan';

  @override
  String get playerPicture => 'Sawir';

  @override
  String get playerColors => 'Midabada';

  @override
  String get playerColorDefault => 'Caadi';

  @override
  String get playerColorVivid => 'Firfircoon';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Jilicsan';

  @override
  String get playerColorCinematic => 'Filim-nuuc';

  @override
  String get playerColorBright => 'Dhalaalaya';

  @override
  String get playerColorNight => 'Habeen';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Gaar ah';

  @override
  String get playerColorBrightness => 'Iftiinka';

  @override
  String get playerColorContrast => 'Kala duwanaanshaha';

  @override
  String get playerColorSaturation => 'Buuxinta midabka';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Hue';

  @override
  String get playerColorReset => 'Dib u deji';

  @override
  String get playerColorAdjust => 'Hagaaji';

  @override
  String get playerShadersOriginal => 'Asalka';

  @override
  String get playerShadersPreviewFailed =>
      'Fiilooyin lagu hordhaco lama qabsan karin';

  @override
  String get playerShadersSoftware =>
      'Shaders waxay u baahan yihiin samaynta qalabka, ciyaartoyguna waxa uu isticmaalayaa samaynta software. Dami soo-bandhigista Software-ka ee goobaha Ciyaartoyga.';

  @override
  String get playerSoftwareRender => 'Soo saarista software';

  @override
  String get playerSoftwareRenderDesc =>
      'Kaliya muuqaal madow. Shaders kuma shaqeeyaan. Codsada marka xigta uu ciyaaryahanku furmo';

  @override
  String get playerShadersCustomFiles => 'Shaders-kaaga';

  @override
  String get playerShadersCustom => 'Shaders gaar ah';

  @override
  String get playerShadersImport => 'Soo geli .glsl';

  @override
  String get playerShadersNone =>
      'Soo geli faylasha .glsl ama .hook ee adiga ku saabsan oo calaamadee si aad u silsilaysid';

  @override
  String get playerShadersBadFile => 'Dooro fayl shader ah .glsl ama .hook';

  @override
  String get playerDecoder => 'Decoder';

  @override
  String get playerDecoderAuto => 'Toos';

  @override
  String get playerDecoderAutoSafe => 'Toos (ammaan)';

  @override
  String get playerDecoderSoftware => 'Software';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Soo-saarka muuqaalka';

  @override
  String get playerAudioChannels => 'Kanaalada codka';

  @override
  String get playerBuffer => 'Cabbirka buffer-ka (MB)';

  @override
  String get playerBufferDesc =>
      'Xusuusta ciyaartoygu isticmaali karo si uu stream u kaydiyo';

  @override
  String get playerUseMpvConf => 'Isticmaal mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Codso ikhtiyaarrada mpv.conf marka ciyaarista bilaabato';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Wax ka beddel habaynta mpv';

  @override
  String get playerMpvConfDesc =>
      'Hal ikhtiyaar xariiq kasta, sida --hwdec=auto mpv.conf caadi ah. Profile-yada [qaansoleyda] ku jira waa la iska indhatiraa.';

  @override
  String get playerMpvConfSaved => 'mpv.conf waa la keydiyay';

  @override
  String get playerUseScripts => 'Isticmaal scripts-ka mpv';

  @override
  String get playerUseScriptsDesc =>
      'Soo rar plugin-nada galka scripts-ka. Waxay u baahan yihiin dhismaha libmpv oo taageera Lua ama JavaScript';

  @override
  String get playerScripts => 'Scripts-ka mpv';

  @override
  String get playerScriptsManage => 'Ku dar, ka saar oo beddel plugin-nada';

  @override
  String get playerScriptsAdd => 'Ku dar script';

  @override
  String get playerScriptsDesc =>
      'Plugin-nada Lua, JavaScript iyo native ee halkan la dhigo waa la soo rarayaa marka ciyaarista bilaabato.';

  @override
  String get playerScriptsNone => 'Weli scripts ma jiraan';

  @override
  String get playerScriptsBadFile =>
      'Dooro fayl .lua, .js ama plugin native ah';

  @override
  String get playerTuning => 'Hagaajinta muuqaalka horumarsan';

  @override
  String get playerTuningDesc =>
      'Beddel sync, caching, scaling iyo tone mapping. Qiimayaasha khaldan waxay waxyeelayn karaan ciyaarista';

  @override
  String get playerVideoSync => 'Sync-ga muuqaalka';

  @override
  String get playerInterpolation => 'Interpolation-ka fiilooyinka';

  @override
  String get playerInterpolationDesc =>
      'Dhaqdhaqaaq jilicsan, wuxuu u baahan yahay sync display-resample';

  @override
  String get playerPitch => 'Hagaajinta pitch-ka';

  @override
  String get playerPitchDesc => 'Ka dhig codadka kuwo dabiici ah xawaare kale';

  @override
  String get playerCacheSeconds => 'Cache (ilbiriqsi)';

  @override
  String get playerReadahead => 'Akhri horay (ilbiriqsi)';

  @override
  String get playerThreads => 'Dhuumaha decoder-ka';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Yaree xargaha midabka ee gradients-ka';

  @override
  String get playerDebandIterations => 'Soo noqnoqoshada deband';

  @override
  String get playerDebandThreshold => 'Xadka deband';

  @override
  String get playerCorrectDownscaling => 'Yaraynta saxda ah';

  @override
  String get playerSigmoid => 'Kor-u-qaadista sigmoid';

  @override
  String get playerScale => 'Kor-u-qaade';

  @override
  String get playerCscale => 'Chroma kor-u-qaade';

  @override
  String get playerDscale => 'Hoos-u-dhige';

  @override
  String get playerToneMapping => 'Khariidaynta codka';

  @override
  String get playerTargetPeak => 'Ugu sarreeya bartilmaameedka';

  @override
  String get playerOpenFiles => 'Fur faylasha muuqaalka';

  @override
  String get playerOpenFilesDesc => 'Ciyaar faylasha qalabkan';

  @override
  String get playerOpenFolder => 'Fur galka';

  @override
  String get playerOpenFolderDesc =>
      'Ciyaar muuqaal kasta oo galka ku jira sida playlist';

  @override
  String get playerNetworkStream => 'Stream shabakad';

  @override
  String get playerNetworkStreamDesc => 'Fur xiriir muuqaal toos ah ama HLS';

  @override
  String get playerStreamUrl => 'URL-ka stream-ka';

  @override
  String get playerStreamReferer => 'Referer (ikhtiyaari)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'Stream xiriir magnet ama fayl .torrent';

  @override
  String get playerMagnetLink => 'Xiriirka magnet ama URL torrent';

  @override
  String get playerPickTorrent => 'Dooro fayl .torrent';

  @override
  String get playerTorrentMissing =>
      'Marka hore ka rakib kordhinta torrent Dejimaha > Kordhin dheeraad ah';

  @override
  String get playerNoVideos => 'Muuqaal la ciyaari karo lama helin';

  @override
  String get playerReset => 'Dib u deji dejimaha ciyaaraha';

  @override
  String get playerResetDesc =>
      'U celi ikhtiyaar kasta oo ciyaaraha caadigiisa';

  @override
  String get playerResetConfirm => 'Dib u deji dhammaan dejimaha ciyaaraha?';

  @override
  String get playerResetDone => 'Dejimaha ciyaaraha dib ayaa loo dejiyay';

  @override
  String get playerQuality => 'Tayada';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Sub adag';

  @override
  String get streamGroupSoftSub => 'Sub jilicsan';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Ceyriin';

  @override
  String get streamGroupOther => 'Mid kale';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count durdurrada',
      one: '1 durdur',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Stream-yada';

  @override
  String get playerStreamFailedNext =>
      'Socodkaasi ma ciyaari doono, isagoo isku dayaya kan ku xiga';

  @override
  String get playerAutoSelect => 'Dooro stream si toos ah';

  @override
  String get playerAutoSelectDesc =>
      'Dooro stream ugu eg doorashadaadii ugu danbaysay ee ciwaankan';

  @override
  String get playerLoadingStreams => 'Stream-yo ayaa la raadinayaa…';

  @override
  String get playerNoStreams => 'Dhacdadani stream ma leh';

  @override
  String get playerNoStreamsTitle => 'Stream lama helin';

  @override
  String get playerFailed => 'Ciyaaristu way fashilantay';

  @override
  String get playerTorrentNeeded => 'Stream-kani waa torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Rakib kordhinta torrent si aad u ciyaarto xiriiriyeyaasha magnet iyo faylasha .torrent';

  @override
  String get playerOpenAddons => 'Fur kordhinta dheeraadka ah';

  @override
  String get playerTryAnotherStream => 'Isku day stream kale';

  @override
  String get playerEpisodes => 'Dhacdooyin';

  @override
  String get playerLock => 'Qufulo xakamaynta';

  @override
  String get playerFullscreen => 'Shaashad buuxda';

  @override
  String get readerChapters => 'Cutubyo';

  @override
  String get readerSettingsTitle => 'Dejimaha akhriska';

  @override
  String get readerPreviousChapter => 'Cutubka hore';

  @override
  String get readerNextChapter => 'Cutubka xiga';

  @override
  String get readerFirstChapter => 'Kani waa cutubka ugu horreeya';

  @override
  String get readerLastChapter => 'Wax walba waad dhammaysay';

  @override
  String get readerFailed => 'Cutubkan lama furi karo';

  @override
  String get readerOpenBook => 'Buug fur';

  @override
  String get readerOpenBookDesc =>
      'Akhri epub (akhriiyaha sheeko cusub) ama PDF (manga reader) ee faylalkaaga';

  @override
  String get readerNoText => 'Cutubkan qoraal ma leh';

  @override
  String get readerPerTitle => 'Ciwaankan oo keliya';

  @override
  String get readerPerTitleDesc =>
      'Ilaali dejimahan akhriska ciwaankan oo keliya';

  @override
  String get readerSectionReading => 'Akhrinta';

  @override
  String get readerSectionControls => 'Xakamaynta';

  @override
  String get readerSectionDisplay => 'Bandhigga';

  @override
  String get readerSectionNovel => 'Novel';

  @override
  String get readerMode => 'Habka akhriska';

  @override
  String get readerModeAuto => 'Auto (nooca taxane ah)';

  @override
  String get readerModeRtl => 'Midig ilaa bidix';

  @override
  String get readerModeLtr => 'Bidix ilaa midig';

  @override
  String get readerModeVertical => 'Bogag toosan';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Hoos u dhaqaaq joogto ah';

  @override
  String get readerScale => 'Cabbirka sawirka';

  @override
  String get readerScaleFit => 'Ku habboonee shaashadda';

  @override
  String get readerScaleWidth => 'Ku habboonee ballaca';

  @override
  String get readerScaleHeight => 'Ku habboonee dhererka';

  @override
  String get readerScaleOriginal => 'Cabbirka asalka';

  @override
  String get readerScaleSmart => 'Ku habboonaysiin caqli leh';

  @override
  String get readerDoublePage => 'Laba bog';

  @override
  String get readerDoublePageDesc =>
      'Muuji laba bog is garab socda marka dhinac-fidsan';

  @override
  String get readerDoubleTapZoom => 'Laba-taabasho si aad u weyneyso';

  @override
  String get readerDoubleTapZoomDesc =>
      'Weyneyso ama yaree bog adigoo laba jeer taabanaya';

  @override
  String get readerAnimate => 'Animation-ka bogga';

  @override
  String get readerAnimateDesc => 'Animation u samee rogista boggaga';

  @override
  String get readerSidePadding => 'Meel dhinaca ah';

  @override
  String get readerSidePaddingDesc => 'Meesha ku xigta boggaga boqolkiiba';

  @override
  String get readerPageGap => 'Daloolka boggaga';

  @override
  String get readerPageGapDesc => 'Meesha u dhaxaysa boggaga';

  @override
  String get readerAutoNext => 'Ku sii wad cutubka xiga';

  @override
  String get readerAutoNextDesc =>
      'Soo rar cutubka xiga markaad akhrineyso dhammaadka kan';

  @override
  String get readerPreload => 'Hore u soo rar boggaga';

  @override
  String get readerPreloadDesc => 'Immisa bog ayaa hore loo soo dejiyaa';

  @override
  String get readerTapZones => 'Aagagga taabashada';

  @override
  String get readerTapDefault => 'Caadi';

  @override
  String get readerTapLShaped => 'Qaabka L';

  @override
  String get readerTapKindle => 'Sida Kindle';

  @override
  String get readerTapEdge => 'Cidhifyada oo keliya';

  @override
  String get readerTapOff => 'La damiyay';

  @override
  String get readerInvertTaps => 'Rog aagagga taabashada';

  @override
  String get readerInvertTapsDesc => 'Is beddel aagagga hore iyo xiga';

  @override
  String get readerBackground => 'Gadaal';

  @override
  String get readerBackgroundBlack => 'Madow';

  @override
  String get readerBackgroundGray => 'Cawl';

  @override
  String get readerBackgroundWhite => 'Cad';

  @override
  String get readerBackgroundTheme => 'Qaabka app-ka';

  @override
  String get readerFilter => 'Shaandhada midabka';

  @override
  String get readerFilterNone => 'Midna';

  @override
  String get readerFilterGrayscale => 'Madow-cawl';

  @override
  String get readerFilterInvert => 'Rog';

  @override
  String get readerFilterSepia => 'Sebiya';

  @override
  String get readerFilterQuality => 'Tayada filtarrada sawirka';

  @override
  String get readerFilterQualityNone => 'Midna (deriska ugu dhow)';

  @override
  String get readerFilterQualityLow => 'Hoose (Bilinear)';

  @override
  String get readerFilterQualityMedium => 'Dhexdhexaad (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'Sare (Bicubic)';

  @override
  String get readerFilterQualityLanczos =>
      'Lanczos (Tayo sare leh oo miridhku)';

  @override
  String get readerDim => 'Madoobee';

  @override
  String get readerDimDesc => 'Ka dhig boggaga mid mugdi ah';

  @override
  String get readerPageNumber => 'Lambarka bogga';

  @override
  String get readerPageNumberDesc =>
      'Muuji lambarka bogga marka aad akhrinayso';

  @override
  String get readerFullscreen => 'Shaashad buuxda';

  @override
  String get readerFullscreenDesc => 'Qari barafyada nidaamka';

  @override
  String get readerCropBorders => 'Gooy cidhifyada';

  @override
  String get readerCropBordersDesc =>
      'Ka jar baaxadaha madhan ee cad ama madow boggaga';

  @override
  String get readerLongPressSave => 'Qabo bog si aad u kaydiso';

  @override
  String get readerLongPressSaveDesc =>
      'Taabo bogga si aad u furto kaydinta, wadaagto oo koobiyo doorashooyinka';

  @override
  String get readerVolumeKeys => 'Furayaasha codku wuxuu rogaa boggaga';

  @override
  String get readerVolumeKeysDesc =>
      'Codka hoos wuxuu horay u socdaa, codka kor wuxuu dib u noqdaa';

  @override
  String get readerBookmarks => 'Calaamadaha';

  @override
  String get readerBookmarkAdd => 'Ku dar calaamad';

  @override
  String get readerBookmarkRemove => 'Ka saar calaamad';

  @override
  String get readerBookmarksEmpty => 'Weli calaamad ma jirto';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Bogga $page ee $total';
  }

  @override
  String get readerAutoScroll => 'Hoos u dhaqaaq toos ah';

  @override
  String get readerAutoScrollStop => 'Jooji hoos u dhaqaaqa toos ah';

  @override
  String get readerAutoScrollSpeed => 'Xawaaraha hoos u dhaqaaqa toos ah';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Sida degdeg boggaggu u dhaqaaqaan ama u rogmaan iyaga laftooda';

  @override
  String get readerKeepOn => 'Shaashadda ha daaran';

  @override
  String get readerKeepOnDesc =>
      'Ka hortag shaashadda inay dansato markaad akhrinayso';

  @override
  String get readerOrientation => 'Jihaynta';

  @override
  String get readerOrientationFree => 'Xor';

  @override
  String get readerOrientationPortrait => 'Dhinac-taagan';

  @override
  String get readerOrientationLandscape => 'Dhinac-fidsan';

  @override
  String get readerSaveProgress => 'Kaydi horumarka';

  @override
  String get readerSaveProgressDesc =>
      'Xasuuso bogga oo cutubyada ku calaamadee la akhriyay';

  @override
  String get readerReset => 'Dib u deji dejimaha akhriska';

  @override
  String get readerResetDesc => 'Ku noqo kuwa caadiga ah';

  @override
  String get readerResetConfirm =>
      'Dib u dajin kasta oo akhriste dejintiisa u dhigma?';

  @override
  String get novelSize => 'Cabbirka qoraalka';

  @override
  String get novelFont => 'Far-qoraal';

  @override
  String get novelLineHeight => 'Dhererka xariiqda';

  @override
  String get novelParagraph => 'Meesha u dhaxaysa tuducyada';

  @override
  String get novelMargin => 'Baaxadaha';

  @override
  String get novelTheme => 'Qaabka akhriska';

  @override
  String get novelThemeApp => 'Qaabka app-ka';

  @override
  String get novelThemeLight => 'Iftiin';

  @override
  String get novelThemeSepia => 'Sebiya';

  @override
  String get novelThemeDark => 'Mugdi';

  @override
  String get novelThemeBlack => 'Madow';

  @override
  String get novelJustify => 'Isu simo qoraalka';

  @override
  String get novelJustifyDesc => 'Qoraalka ku isku xaadh labada cidhifba';

  @override
  String get trackProgressTitle => 'Kaydi horumarka?';

  @override
  String trackProgressAnime(String name) {
    return 'La soco $name liiskaaga markaad daawato? Dooro \"Qalabkan oo keliya\" si aad ugu hayso gudaha, ama Maya si aadan waxba u kaydin.';
  }

  @override
  String trackProgressManga(String name) {
    return 'La soco $name liiskaaga marka aad dhammaysato cutub? Dooro \"Qalabkan oo keliya\" si aad ugu hayso gudaha, ama Maya si aadan waxba u kaydin.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Ku keydi horumarkaaga $name liiskaaga qalabkan markaad daawato?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Ku keydi horumarkaaga $name liiskaaga qalabkan marka aad dhammayso cutubka?';
  }

  @override
  String get downloadClearQueue => 'Safka cad';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Jooji dhammaan $count soo dejinta safka ku jira? Wixii horay loo soo dejiyay waa la tirtiray.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count la doortay';
  }

  @override
  String get downloadSelectAll => 'Dhammaan dooro';

  @override
  String get downloadDeleteSelected => 'Tirtir la doortay';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Ma tirtirtaa $count soo dejinta? Faylalkooda waa laga saaray aaladda.';
  }

  @override
  String get castTitle => 'Ku tuur qalabka';

  @override
  String get castSearching => 'Raadinta aaladaha shabakadaada…';

  @override
  String get castNoDevices =>
      'Qalab lama helin Hubi in TV-ga ama Chromecast-ku ku yaal isla Wi-Fi, ka dibna raadi mar kale.';

  @override
  String get castRefresh => 'Mar labaad raadi';

  @override
  String get castFailed => 'Ma bilaabi karayn jilista';

  @override
  String get castStop => 'Jooji tuurista';

  @override
  String castNowCasting(String name) {
    return 'Ku duubida $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku ma warbixin karo mana bedeli karo booska';

  @override
  String get castControls => 'Xakamaynta';

  @override
  String get castVolume => 'Mugga TV-ga';

  @override
  String castSkipPart(String name) {
    return 'Ka bood $name';
  }

  @override
  String get trackProgressRememberSeries => 'Xusuusnow taxanahan';

  @override
  String get trackProgressYes => 'Kaydi';

  @override
  String get trackProgressReset =>
      'Su\'aasha kaydinta horumarka waa la dib u dejiyay nooca kan, mar kale ayay weydiin doontaa';

  @override
  String get trackProgressNo => 'Maya';

  @override
  String get trackProgressOff => 'Dami';

  @override
  String get trackProgressLocal => 'Qalabkan oo keliya';

  @override
  String get trackProgressSettingAnime => 'La soco horumarka anime';

  @override
  String get trackProgressSettingManga => 'La soco horumarka manga iyo novel';

  @override
  String get trackProgressSettingDesc =>
      'Maxaa la sameeyaa marka aad furto dhacdo ama aad dhammaysato cutub';

  @override
  String get trackProgressAsk => 'Weydii';

  @override
  String get trackProgressAlways => 'Mar walba';

  @override
  String get dantotsuImport => 'Ka soo geli Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Akhri kayd dejimaha Dantotsu (.ani, ama .sani oo sir ah)';

  @override
  String get dantotsuPick => 'Dooro kayd Dantotsu';

  @override
  String get dantotsuNothing => 'Faylkan waxba lagama soo gelin karo';

  @override
  String get dantotsuApply => 'Soo geli kuwa la doortay';

  @override
  String dantotsuDone(int done, int total) {
    return 'La soo geliyay $done ka mid ah $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Akoonno';

  @override
  String get dantotsuGroupAppearance => 'Muuqaal';

  @override
  String get dantotsuGroupExtensions => 'Kordhin';

  @override
  String get dantotsuGroupApp => 'App-ka';

  @override
  String get dantotsuGroupPlayer => 'Ciyaaraha';

  @override
  String get dantotsuAnilist => 'Galitaanka AniList';

  @override
  String get dantotsuMal => 'Galitaanka MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token-ka Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Qaab';

  @override
  String get themePickerTitle => 'Dulucda';

  @override
  String get dantotsuReposAnime => 'Kaydka kordhinta anime';

  @override
  String get dantotsuReposManga => 'Kaydka kordhinta manga';

  @override
  String get dantotsuReposNovel => 'Kaydka kordhinta novel';

  @override
  String get dantotsuUpdates => 'Hubinta cusboonaysiinta';

  @override
  String get dantotsuComments => 'Faallooyin';

  @override
  String get dantotsuActivity => 'Hubinta ogeysiisyada AniList';

  @override
  String get dantotsuDns => 'Bixiyaha DNS';

  @override
  String get dantotsuPlayer => 'Xawaaraha ciyaaraha iyo midabada tarjumaadaha';

  @override
  String get dantotsuWarning =>
      'Faylkan wuxuu hayaa token-yada gelitaanka. Qari.';

  @override
  String get novelIndent => 'Gudaha ka bilow tuducyada';

  @override
  String get novelIndentDesc => 'Ku bilow tuduc kasta gudaha xariiqda hore';

  @override
  String get novelLetterSpacing => 'Meesha u dhaxaysa xarfaha';

  @override
  String get novelSectionTranslate => 'Tarjumaad';

  @override
  String get sectionExperimental => 'Tijaabo';

  @override
  String get kitsuGraphqlDetail =>
      'Boggaga faahfaahinta oo degdeg ah (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Soo rar ciwaan jilayaashiisa, shaqaalihiisa iyo gelitaankaaga hal codsi';

  @override
  String get togetherTitle => 'Wada daawo';

  @override
  String get togetherIntro =>
      'Ku dheji xiriirka qolka saaxiibkaa kuu soo diray. Isla markiiba ayaad ku biirtaa ciyaartoygana wuu furmaa marka ay bilaabaan daawashada.';

  @override
  String togetherLinkConfirm(String room) {
    return 'Ku biir qolka $room? Martigeliyaha ayaa dooranaya waxa ciyaaraya, ciyaaryahankuna iskii ayuu u furaa marka ay bilaabaan daawashada.';
  }

  @override
  String get togetherJoin => 'Ku biir';

  @override
  String get togetherName => 'Magacaaga';

  @override
  String get togetherConnecting => 'Waa la xidhayaa…';

  @override
  String get togetherLeave => 'Ka bax qolka';

  @override
  String get togetherYou => 'Adiga';

  @override
  String get togetherNoChat => 'Weli fariin ma jirto';

  @override
  String get togetherChatHint => 'Fariin';

  @override
  String get togetherCopyInvite => 'Koobi casuumaadda';

  @override
  String get togetherShareInvite => 'La wadaag martiqaad';

  @override
  String togetherShareText(String link) {
    return 'ila daawo Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Server-ka iyo qolka waa la koobiyay';

  @override
  String get togetherConnectionLost => 'Isku-xirka waa go\'ay';

  @override
  String togetherConnectedTo(String room) {
    return 'Waxaa lagu xidhay $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Lama xidhi karin: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ayaa ku biiray';
  }

  @override
  String togetherLeft(String name) {
    return '$name ayaa ka baxay';
  }

  @override
  String togetherPaused(String name) {
    return '$name ayaa hakiyay';
  }

  @override
  String togetherResumed(String name) {
    return '$name ayaa sii waday';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name ayaa boodday $time';
  }

  @override
  String get togetherFollowFailed =>
      'Dhacdada martigeliyaha lama furi karin. Adigu fur.';

  @override
  String get togetherJoinRole => 'Ku biir qol';

  @override
  String get togetherOpenHost => 'Fur dhacdada martigeliyaha';

  @override
  String get togetherShowChat => 'Muuji sheekada toos ah';

  @override
  String get togetherWaitingHost =>
      'Waxaa la sugayaa martigeliyaha inuu bilaabo dhacdo';

  @override
  String get togetherRoomLink => 'Xiriirka qolka';

  @override
  String get togetherBadLink => 'Taasi ma aha xiriir qol';

  @override
  String get togetherHostClosed => 'Martigeliyuhu wuu xidhay qolka';

  @override
  String get togetherNowPlaying => 'Hadda ciyaaraya';

  @override
  String togetherWatchingCount(int count) {
    return '$count daawanaya';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user wuxuu rabaa inuu hakiyo';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user wuxuu rabaa inuu sii wado';
  }

  @override
  String get togetherChip => 'Wadajir';

  @override
  String get togetherSettingsDesc =>
      'Ku biir qolka saaxiib adigoo xiriir isticmaalaya';

  @override
  String get novelBilingual => 'Muuji asalka iyo tarjumaadda';

  @override
  String get novelBilingualDesc =>
      'Tuduc kasta wuxuu muujiyaa qoraalka asalka ah iyo tarjumaaddiisa hoostiisa';

  @override
  String get novelTranslateTo => 'U tarjun';

  @override
  String get novelTranslateOff => 'Dami';

  @override
  String get novelSectionSpeech => 'Qoraal ilaa hadal';

  @override
  String get novelSpeechRate => 'Xawaaraha hadalka';

  @override
  String get novelSpeechPitch => 'Dhawaaqa hadalka';

  @override
  String get novelSpeak => 'Ku akhri cod';

  @override
  String get novelSpeakStop => 'Jooji akhriska codka';

  @override
  String get novelTranslate => 'Tarjun cutubka';

  @override
  String get novelTranslateShowOriginal => 'Muuji asalka';

  @override
  String novelTranslateFailed(String error) {
    return 'Tarjumaaddu way fashilantay: $error';
  }

  @override
  String get novelSpeechUnavailable => 'Qoraal ilaa hadal qalabkan kuma jiro';

  @override
  String get novelSpeechVoice => 'Cod';

  @override
  String get novelSpeechVoiceDefault => 'Caadiga nidaamka';

  @override
  String get novelSpeakPrevious => 'Xariiqda hore';

  @override
  String get novelSpeakNext => 'Xariiqda xigta';

  @override
  String get novelTapPaging => 'Taabo cidhifyada si aad bogga u rogto';

  @override
  String get novelTapPagingDesc =>
      'Taabo dhinaca bidix ama midig si aad bog u dhaqaajiso, dhexdu waxay muujisaa xakamaynta';

  @override
  String get novelPaged => 'Bogga leexashada';

  @override
  String get novelPagedDesc =>
      'U kala qaybi cutubka bogag oo ku dhufo ama taabo si aad u rogto halkii aad ka rogi lahayd';

  @override
  String novelPageOf(int current, int total) {
    return 'Bogga $current ee $total';
  }

  @override
  String get novelPaginating => 'Dejinta bogag';

  @override
  String get novelTools => 'Nuxurka, raadinta iyo waxyaabaha muhiimka ah';

  @override
  String get novelContents => 'Nuxurka';

  @override
  String get novelContentsEmpty => 'Cutubkani ma laha cinwaano';

  @override
  String get novelSearch => 'Raadi';

  @override
  String get novelSearchHint => 'Ka raadi cutubkan';

  @override
  String get novelSearchNone => 'Ma jiro tabarro';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kulan',
      one: '1 ciyaar',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Tilmaamaha';

  @override
  String get novelHighlightsEmpty =>
      'Dooro qoraal oo taabo Highlight si aad halkan ugu hayso';

  @override
  String get novelHighlight => 'Iftiimin';

  @override
  String get novelHighlightNote => 'Ogow';

  @override
  String get novelHighlightNoteHint => 'Ku dar qoraal';

  @override
  String get novelHighlightRemove => 'Ka saar iftiiminta';

  @override
  String get novelHighlightFailed =>
      'Waa la waafajin kari waayay doorashadaas qoraalka';

  @override
  String novelMinutesLeft(int count) {
    return '$count daqiiqo ayaa harsan';
  }

  @override
  String get novelBold => 'Qoraal dufan';

  @override
  String get novelBoldDesc => 'Isticmaal culeys ka culus';

  @override
  String readerFinishedChapter(String chapter) {
    return 'La dhammeeyay $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Xiga: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Hore: $chapter';
  }

  @override
  String get readerNoPages => 'Cutubkan bog ma leh';

  @override
  String get readerLoadingPages => 'Boggaga waa la soo rarayaa…';

  @override
  String get readerSlowPage => 'Bogga weli waa la soo rarayaa…';

  @override
  String get readerPageFailed => 'Bogga lama soo rari karo';

  @override
  String get playerShowComments => 'Muuji faallooyinka';

  @override
  String get playerHideComments => 'Qari faallooyinka';

  @override
  String get playerSubtitles => 'Tarjumaado hoose';

  @override
  String get playerSubtitlesOff => 'Tarjumaadaha waa damsan yihiin';

  @override
  String get playerAudio => 'Cod';

  @override
  String get playerAddSubtitle => 'Ku dar faylka tarjumaadda';

  @override
  String get playerAddAudio => 'Ku dar faylka codka';

  @override
  String get playerChapters => 'Cutubyo';

  @override
  String get playerSkipSubmit => 'Soo gudbi waqtiyada boodada';

  @override
  String get playerSkipSubmitDesc =>
      'Calaamadee meesha furitaanka, ku dhamaanaysa ama dib u koobista ay ka bilaabato kuna dhamaato qaybtan lana wadaag AniSkip, si qof kastaa u helo badhanka boodada.';

  @override
  String get playerSkipStart => 'Bilow';

  @override
  String get playerSkipEnd => 'Dhammaad';

  @override
  String get playerSkipUseNow => 'Isticmaal booska hadda jira';

  @override
  String get playerSkipSend => 'U gudbi AniSkip';

  @override
  String get playerSkipSent =>
      'Waqtiyada boodboodka waxaa loo gudbiyay AniSkip, mahadsanid';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip wuu diiday waqtiyada boodada: $error';
  }

  @override
  String get playerUnsupported =>
      'Ciyaartoyga muuqaalku kuma shaqayn karo qalabkan (nooca Android-kiisa aad buu u da\'weyn yahay maktabadda ciyaartoyga ee la isku xidho). Taabo si aad u koobiyeeyso faahfaahinta';

  @override
  String get playerSkipNoMal =>
      'Magacani malaha aqoonsiga MyAnimeList, AniSkip ma qaadan karo';

  @override
  String get playerNoChapters => 'Cutub ma jiro';

  @override
  String get playerTimestamp => 'Calaamadda waqtiga';

  @override
  String get playerAutoPlayDelay => 'Tirinta dhacdada xigta';

  @override
  String get playerWatchedAt => 'U tiri sida la daawaday';

  @override
  String playerNextIn(int seconds) {
    return 'Dhacdada xigta ${seconds}ilbiriqsi kadib';
  }

  @override
  String get playerPlayNow => 'Hadda ciyaar';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: toos ayuu u booday ciwaankan';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: toos uma boodi doono ciwaankan';
  }

  @override
  String get playerAudioLanguage => 'Luqadda codka ee la door biday';

  @override
  String get playerLanguageOrderHint =>
      'Luqadaha ku kala saar hakad. Tan ugu horraysa ee la helo ayaa la isticmaalaa.';

  @override
  String get playerPip => 'Sawir ku jira sawir';

  @override
  String get playerAutoPip => 'Sawir ku jira sawir marka aad ka baxdo';

  @override
  String get playerAutoPipDesc =>
      'Ku sii ciyaar daaqad yar marka aad app-ka ka baxdo';

  @override
  String get playerPipPlay => 'Ciyaar';

  @override
  String get playerPipPause => 'Jooji';

  @override
  String get playerPipBack => 'Dib u celi';

  @override
  String get playerPipForward => 'Horey';

  @override
  String get playerPipRestore => 'Ku laabo ciyaaryahanka';

  @override
  String get playerPipActive => 'Ku ciyaarista daaqad yar';

  @override
  String get listDateAdded => 'Lagu daray liiska';

  @override
  String get listDateLastWatched => 'Daawashada ugu dambeysay';

  @override
  String playerAutoPlaying(String title) {
    return 'Hadda xigta: $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Shaders lama rakibin karin: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Cutubka $number';
  }

  @override
  String get playerPerTitle => 'Ciwaankan oo keliya';

  @override
  String get playerPerTitleDesc =>
      'Ilaali ikhtiyaarradan ciwaankan oo ha taaban kuwa caadiga ah';

  @override
  String get playerSwapGestures => 'Beddel dhinacyada swipe-ka';

  @override
  String get playerSwapGesturesDesc => 'Iftiinka bidixda iyo codka midigta';

  @override
  String get playerOpenBig => 'Ku fur muuqaal weyn';

  @override
  String get playerOpenBigDesc =>
      'Ku bilow player-ka shaashadda buuxda halkii liiska qaybaha';

  @override
  String get playerPauseOnBlur => 'Jooji marka aan fooggnayn';

  @override
  String get playerPauseOnBlurDesc =>
      'Jooji marka app-ka la dahaadho, sida guddiga ogeysiisyada, kuna sii wad marka aad soo noqoto';

  @override
  String get playerAudioOutput => 'Soo-saarka codka';

  @override
  String get fontAppDefault => 'Far-qoraalka app-ka';

  @override
  String get fontImport => 'Soo geli far-qoraal';

  @override
  String get fontSample =>
      'Dawacadii degdega ahayd ee maariinka ahayd ayaa ka booday eeyga caajiska ah';

  @override
  String get playerSubtitleDelay => 'Daahista tarjumaadaha';

  @override
  String get playerAudioDelay => 'Daahista codka';

  @override
  String get playerDelayReset => 'Dib u deji';

  @override
  String get playerOnlineSubtitles => 'Tarjumaado khadka';

  @override
  String get playerOnlineSearchHint => 'Ciwaanka iyo dhacdada';

  @override
  String get playerOnlineNone => 'Tarjumaado lama helin';

  @override
  String playerOnlineFailed(String error) {
    return 'Raadinta tarjumaadaha way fashilantay: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Tarjumaadan lama soo dejin karo: $error';
  }

  @override
  String get playerOnlineMatch => 'Wuxuu ku habboon yahay faylkan';

  @override
  String get playerOnlineEpisode => 'Isku-dhigma dhacdo';

  @override
  String playerOnlineDownloads(int count) {
    return '$count soo dejin';
  }

  @override
  String get playerSeekPreview => 'Hordhac raadinta';

  @override
  String get playerSeekPreviewDesc =>
      'Muuji hordhac yar oo frame ah barta raadinta dusheeda marka la jiido. Wuxuu furaa decoder labaad oo xalin hoose ah, sidaas darteed wuxuu isticmaalaa xog dheeraad ah stream-yada.';

  @override
  String get playerSettingsChip => 'Dejimaha';

  @override
  String get playerAudioDevice => 'Qalabka codka';

  @override
  String get settingsDownloads => 'Soo dejinta';

  @override
  String get settingsDownloadsDesc =>
      'Dhacdooyinka offline, safka iyo qaabka offline';

  @override
  String get downloadsTitle => 'Soo dejinta';

  @override
  String get widgetContinue => 'Sii wad';

  @override
  String get widgetReleases => 'Soo daaya dhawaan';

  @override
  String get widgetMore => 'Sidoo kale waxaa socda';

  @override
  String get widgetNothing => 'Wax wali socda ma jiraan';

  @override
  String get downloadStorageTitle => 'Kaydinta';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count soo dajis',
      one: '1 soo dejiso',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size horay u daawaday ama akhriyay';
  }

  @override
  String get downloadFreeUp => 'Meel bannaan sii';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count daawaday soo dejinta',
      one: '1 daawo download',
    );
    return 'Tirtir $_temp0 iyo bilaash $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'La sii daayay $size';
  }

  @override
  String get downloadDeleteWatched => 'Tirtir la daawaday';

  @override
  String get downloadDeleteAll => 'Tirtir dhammaan';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Ma tirtirtaa soo dejin kasta oo $title ah?';
  }

  @override
  String get downloadNothingWatched => 'Wax aad dhammaysay lama soo dejiyo';

  @override
  String get downloadStorageEmpty =>
      'Wax soo dejisasho ah ma isticmaalayaan meel bannaan';

  @override
  String get downloadsOpenDesc =>
      'Eeg safka iyo wax kasta oo qalabkan ku kaydsan';

  @override
  String get downloadTitle => 'Soo deji';

  @override
  String get downloadMetaOnly => 'Xogta badan oo kaliya';

  @override
  String get downloadMetaFailed => 'Waa la samayn kari waayay galka cinwaanka';

  @override
  String downloadMetaSaved(String path) {
    return 'Badbaadiyay Geli faylashaada $path';
  }

  @override
  String get downloadAlready =>
      'Hore ayaa loo soo dejiyay ama safka ayuu ku jiraa';

  @override
  String get downloadPickStream => 'Stream kee la soo dejiyaa?';

  @override
  String get downloadPickSubtitle => 'Tarjumaad kee la soo dejiyaa?';

  @override
  String get downloadPickAudio => 'Cod kee la soo dejiyaa?';

  @override
  String get downloadNoAudio => 'Cod dheeraad ah ma jiro';

  @override
  String get downloadAudio => 'Cod';

  @override
  String get downloadNoSubtitle => 'Tarjumaad ma jirto';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Stream-kani waa playlist HLS ah. Soo dejintiisu waxay u baahan tahay kordhinta FFmpeg.';

  @override
  String get downloadSourceMissing => 'Isha dhacdadan lama rakibin';

  @override
  String get downloadDashDrm => 'Socodkan waa la ilaaliyay DRM';

  @override
  String get downloadDashNoVideo => 'Muujinta DASH ma laha muuqaal';

  @override
  String get downloadWaitingConnection => 'Isku-xirka waa la sugayaa';

  @override
  String get downloadSubtitles => 'Tarjumaado hoose';

  @override
  String get downloadDownloaded => 'La soo dejiyay';

  @override
  String get downloadOffline => 'offline';

  @override
  String get downloadDelete => 'Tir soo dejinta';

  @override
  String get downloadCancel => 'Jooji';

  @override
  String get downloadPause => 'Hakad';

  @override
  String get downloadPaused => 'La hakiyay';

  @override
  String get downloadResume => 'Sii wad';

  @override
  String get downloadPauseAll => 'Hakadi dhammaan';

  @override
  String get downloadResumeAll => 'Sii wad dhammaan';

  @override
  String get downloadQueuedState => 'Safka ayaa lagu sugayaa';

  @override
  String get downloadResolving => 'Stream-ka waa la helayaa…';

  @override
  String get downloadUsedFallback =>
      'Stream u dhigma ma jiro, kii ugu horreeyay ayaa la isticmaalay';

  @override
  String get downloadTabQueue => 'Safka';

  @override
  String get downloadTabDone => 'Dhammaaday';

  @override
  String get downloadTabFailed => 'Fashilmay';

  @override
  String get downloadEmptyQueue => 'Waxba lama soo dejinayo';

  @override
  String get downloadEmptyDone => 'Weli waxba lama soo dejin';

  @override
  String get downloadEmptyFailed => 'Soo dejin fashilantay ma jirto';

  @override
  String get downloadNext => 'Dhacdada xigta';

  @override
  String downloadNextN(int count) {
    return '$count dhacdo ee xigta';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Dhammaan aan la daawan ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Kooxdan ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Dhammaan dhacdooyinka ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dhacdo ayaa safka ku jira',
      one: '1 dhacdo ayaa safka ku jirta',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name waa la soo dejiyay';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name soo dejintiisu way fashilantay';
  }

  @override
  String downloadStorage(String size) {
    return '$size ayaa isticmaalay soo dejinta';
  }

  @override
  String get downloadQueueHeader => 'Safka';

  @override
  String get downloadParallel => 'Soo dejin isku mar ah';

  @override
  String get downloadParallelDesc => 'Hal mar hal soo deji ama dhowr isku mar';

  @override
  String get downloadOneByOne => 'Midba midka kale';

  @override
  String get downloadNotifications => 'Ogeysiisyada soo dejinta';

  @override
  String get downloadNotificationsDesc =>
      'Horumar toos ah halka nidaamku taageero, haddii kale qoraal marka soo dejintu dhammaato';

  @override
  String get downloadNotifyLive => 'Toos ah';

  @override
  String get downloadNotifyDone => 'Marka la dhammeeyo';

  @override
  String get downloadNotifyOff => 'Dami';

  @override
  String get downloadInfoFile =>
      'Qor fayl macluumaad ah soo dejin kasta agteeda';

  @override
  String get downloadInfoFileDesc =>
      'Wuxuu u keydiyaa stream-ka, tayada, tarjumaadda iyo waqtiyada booditaanka sida fayl .json ah oo yar';

  @override
  String get offlineHeader => 'offline';

  @override
  String get offlineModeDesc =>
      'Toos wuxuu u aadaa offline kaliya marka app-ku bilaabmo isku-xir la\'aan. Mar walba wuxuu ku sii jiraa offline ilaa aad beddesho.';

  @override
  String get offlineModeOff => 'Dami';

  @override
  String get offlineModeAlways => 'Mar walba';

  @override
  String get offlineModeOn =>
      'Qaabka offline waa shidan yahay. Isbeddelada halkan ayaa lagu keydiyaa waxaana la diraa marka aad online ku noqoto.';

  @override
  String get offlineSaved =>
      'Waxay ku kaydsan tahay qalabkan, waxay waafaqi doontaa marka aad online noqoto';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count isbeddel ayaa la waafajiyay',
      one: '1 isbeddel ayaa la waafajiyay',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count isbeddel ayaa sugaya waafajin',
      one: '1 isbeddel ayaa sugaya waafajin',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Isbeddelada sugaya waafajin';

  @override
  String get offlinePendingNone => 'Waxba ma suganayaan';

  @override
  String get offlineSyncNow => 'Hadda waafaji';

  @override
  String get offlineDiscard => 'Tuur';

  @override
  String get downloadNotOffline =>
      'Dhacdadan lama soo dejin, sidaas darteed offline lama heli karo';

  @override
  String get offlineModeChip => 'offline';

  @override
  String get downloadNextChapter => 'Cutubka xiga';

  @override
  String downloadNextChapters(int count) {
    return '$count cutub ee xiga';
  }

  @override
  String downloadUnread(int count) {
    return 'Dhammaan aan la akhrin ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Dhammaan cutubyada ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total bog';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count bog';
  }

  @override
  String get downloadFfmpegTitle => 'Kordhinta FFmpeg ayaa loo baahan yahay';

  @override
  String get downloadFfmpegBody =>
      'Stream-kani waa playlist HLS ah. Kordhinta FFmpeg waxay isku xidhaa qaybihiisa hal fayl mp4 ah. La\'aanteed qaybaha waxaa lagu hayaa galka dhacdada waxaana laga ciyaaraa halkaas.';

  @override
  String get downloadFfmpegInstall => 'Rakib';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg waa la rakibayaa, waxay qaadan kartaa waqti…';

  @override
  String get downloadFinishing => 'Qaybaha waxaa lagu soo biirinayaa hal fayl…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total qaybood';
  }

  @override
  String get downloadTorrentNoFile =>
      'Torrent-ku fayl muuqaal ah oo la soo dejiyo ma laha';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Waxaa la soo dejinayaa $count shay',
      one: 'Waxaa la soo dejinayaa 1 shay',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Tir soo dejinta la daawaday';

  @override
  String get downloadAutoDeleteDesc =>
      'Waxay ka saartaa soo dejinta marka horumarkaagu gaadho dhacdadaas ama cutubkaas';

  @override
  String get downloadConnections => 'Isku-xirrada soo dejin kasta';

  @override
  String get downloadConnectionsDesc =>
      'Fayl weyn wuxuu u kala qaybiyaa qaybo isku mar la soo qaado. Server-yada qaar xad ayay saaraan.';

  @override
  String get downloadPlayChoice => 'Ka ciyaar';

  @override
  String get downloadPlayLocalDesc => 'Faylka ku kaydsan qalabkan';

  @override
  String get downloadPlayStream => 'Ku shub online';

  @override
  String get downloadPlayStreamDesc => 'Ka soo rar dhacdada isha';

  @override
  String get offlineFeedTitle => 'Lagu soo dejiyay qalabkan';

  @override
  String get offlineFeedEmpty =>
      'Wax soo deji marka aad online tahay halkan ayay ka muuqan doonaan';

  @override
  String get offlineEnabled => 'Qaabka offline waa shidan yahay';

  @override
  String get offlineDisabled => 'Qaabka offline waa damsan yahay';

  @override
  String get downloadReadChoice => 'Ka akhri';

  @override
  String get downloadReadLocalDesc => 'Boggaga ku kaydsan qalabkan';

  @override
  String get downloadReadOnline => 'Online akhri';

  @override
  String get downloadReadOnlineDesc => 'Ka soo rar cutubka isha';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Ka tir $name qalabkan?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Jooji soo dejinta $name? Waxa hore loo soo dejiyay waa la tirayaa.';
  }

  @override
  String get downloadFfmpegFolder => 'U hay sida gal';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Tuur $count isbeddel oo aan waligood la dirin? Tan dib looma celin karo.',
      one: 'Tuur isbeddelka aan waligii la dirin? Tan dib looma celin karo.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi ayaa la sugayaa';

  @override
  String get downloadWaitingMetered => 'Waa la hakiyay isku-xir cabbirsan';

  @override
  String get downloadWifiOnly => 'Wi-Fi oo keliya';

  @override
  String get downloadWifiOnlyDesc =>
      'Soo dejintu way sugaysaa marka aad ku jirto xogta moobilka';

  @override
  String get downloadMetered => 'Hakad isku-xirrada cabbirsan';

  @override
  String get downloadMeteredDesc =>
      'Sidoo kale waxay sugtaa Wi-Fi-ga qalabkaagu ku calaamadeeyo cabbirsan';

  @override
  String get downloadSpeedLimit => 'Xadka xawaaraha';

  @override
  String get downloadSpeedLimitDesc =>
      'Waxay xaddidaa xawaaraha soo dejinta guud';

  @override
  String get downloadUnlimited => 'Aan xaddidnayn';

  @override
  String get downloadMoveToTop => 'U guuri kor';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds abuur · $peers asxaabta';
  }

  @override
  String get downloadTorrentFile => 'Fayl kee?';

  @override
  String get downloadTorrentAuto => 'Si toos ah ugu habboonee dhacdada';

  @override
  String get downloadTorrentLoading => 'Torrent-ka waa la akhrinayaa…';

  @override
  String get watchAutoSource => 'Si toos ah ugu beddel isha xigta';

  @override
  String get watchAutoSourceDesc =>
      'Haddii isha ciwaanka aysan heli karin ama soo rari weydo, isku day isha xigta ee la rakibay';

  @override
  String get extensionTest => 'Tijaabi kordhinta';

  @override
  String get extensionTestCopy => 'Koobi fashilaadyada iyo log-yadooda';

  @override
  String get extensionTestQuery => 'Eray raadin';

  @override
  String get extensionTestRun => 'Orod';

  @override
  String get extensionTestStop => 'Jooji';

  @override
  String get extensionTestNone => 'Kordhin la rakibay oo nooca kan ah ma jirto';

  @override
  String get extensionTestNotRun => 'Weli lama tijaabin';

  @override
  String get extensionTestSearch => 'Raadi';

  @override
  String get extensionTestDetail => 'Faahfaahin';

  @override
  String get extensionTestUnits => 'Dhacdooyin / cutubyo';

  @override
  String get extensionTestLinks => 'Stream-yo / bogag';

  @override
  String extensionTestFailedAt(String step) {
    return 'Wuxuu ku fashilmay $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done ka mid ah $total ayaa la tijaabiyay · $passed gudbay · $failed fashilmay';
  }

  @override
  String get extensionTestCopyLogs => 'Koobi wax walba oo log-yo buuxa leh';

  @override
  String get onboardingFeaturesTitle => 'Dhammaan hal meel';

  @override
  String get onboardingFeaturesBody =>
      'Wax kasta oo aad la socoto, daawato iyo akhrido, adigoon app badan is-dhex marin.';

  @override
  String get onboardingFeatureTrack => 'La soco wax walba';

  @override
  String get onboardingFeatureTrackDesc =>
      'Liisaska, horumarka iyo dhibcaha AniList, MyAnimeList, Simkl, Kitsu iyo MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Daawo & akhri';

  @override
  String get onboardingFeatureWatchDesc =>
      'Rakib kordhin oo daawo anime ama akhri manga iyo novel gudaha app-ka.';

  @override
  String get onboardingFeatureOffline => 'U qaado offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Soo deji dhacdooyin iyo cutubyo, oo ku sii wad isku-xir la\'aan.';

  @override
  String get onboardingFeatureSync => 'Ka dhig liisaska kuwo is-waafaqsan';

  @override
  String get onboardingFeatureSyncDesc =>
      'Ku koobi liiskaaga adeegyada oo dhan, ama ha guuleysto kan hore u sii socda.';

  @override
  String get onboardingServices => 'Wuxuu la shaqeeyaa';

  @override
  String sourceNotifyOn(String source) {
    return 'Waxaa laguu sheegi doonaa marka $source hesho wax cusub';
  }

  @override
  String get sourceNotifyOff => 'Ogeysiisyada siideynta waa dansan yihiin';

  @override
  String get sourceNotifyNeedsSource => 'Marka hore dooro il kabriid leh';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Wax walba ($count) mar horeba waa maqan yihiin, ma jiraan wax la sugo';
  }

  @override
  String get sourceNotifyTooltipOn => 'Jooji ogeysiisyada sii deynta';

  @override
  String get sourceNotifyTooltipOff => 'I ogeysii siideynaha cusub';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Dhacdada $number waxay soo baxaysaa $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Qaybaha $from-$to waxay ka baxeen $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Cutubka $number wuxuu soo baxay $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Cutubyada $from–$to waxay ku yaalaan $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count cinwaanadu waxay leeyihiin wax cusub';
  }

  @override
  String get navSources => 'Ilaha';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Ishan waxaa iska leh $manager, oo aan ahayn adeegga fidinta firfircoon';
  }

  @override
  String get sourceAlertsHeader => 'Ogeysiisyada sii daaya';

  @override
  String get sourceAlertsSwitch => 'Hubi cinwaanada la diiwaan galiyay';

  @override
  String get sourceAlertsSwitchDesc =>
      'Mar kasta oo appku furmo, cinwaannada waxaad shiday gambaleelka';

  @override
  String get sourceSkipUnstarted => 'Ka bood cinwaanada aadan bilaabin';

  @override
  String get sourceSkipUnstartedDesc =>
      'Weli ma jiraan wax la daawaday ama la akhriyay, laakiin qaybo hore ayaa jiray';

  @override
  String get sourceSkipUnseen =>
      'Ka bood inta aad leedahay dhacdooyin aan la arkin';

  @override
  String get sourceSkipUnseenDesc =>
      'Wali waxaad sii daysay qaybo si aad ula socoto';

  @override
  String get sourceManage => 'Isdiiwaangelinta';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cinwaano',
      one: '1 ciwaan',
      zero: 'Magacyo ma leh',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Hubi hadda';

  @override
  String get sourceCheckNowDesc =>
      'Waxay iska indha tirtay jadwalka iyo xeerarka ka boodada';

  @override
  String get sourceChecking => 'Hubinta…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cinwaanadu waxay leeyihiin wax cusub',
      one: '1 cinwaan wax cusub buu leeyahay',
      zero: 'Wax cusub ma jiraan',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Wali ma jiro rukunsad';

  @override
  String get sourceEmptyMessage =>
      'Taabo gambaleelka kore ee qaybaha ciwaanka si loogu sheego kuwa cusub';

  @override
  String get sourceAll => 'Dhammaan';

  @override
  String sourceInactive(String manager) {
    return 'Firfircoon: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source laguma rakibin adeegan fidinta';
  }

  @override
  String get sourceUnreachable => 'Isha kama jawaabayso';

  @override
  String get sourceFinished => 'Dhammaatay';

  @override
  String get sourceSkippedCompleted => 'La booday: la dhameeyay';

  @override
  String get sourceSkippedUnstarted => 'La booday: lama bilaabin';

  @override
  String get sourceSkippedUnseen => 'La booday: dhacdooyin aan la arag';

  @override
  String get sourceWaiting => 'Sugaya sii deynta soo socota';

  @override
  String sourceNextCheck(String when) {
    return 'Jeegaga xiga $when';
  }

  @override
  String get sourceSoon => 'dhawaan';

  @override
  String sourceInHours(int count) {
    return 'gudaha ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'gudaha ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Ugu dambeeyay: $number';
  }

  @override
  String get sourceMute => 'aamus';

  @override
  String get sourceUnmute => 'Codka ka qaad';

  @override
  String get sourceMuted => 'la aamusay';

  @override
  String get sourceUnsubscribe => 'Is-diiwaangelinta';

  @override
  String get sourcePickAnother => 'Dooro ilo kale';

  @override
  String get sourceOpenExtensions => 'Kordhinta furan';

  @override
  String get sourceNoticesEmpty =>
      'Weli wax ogeysiis ah oo la sii daayo ma jiraan';

  @override
  String get sourceNoticesEmptyMessage =>
      'Qaybaha cusub iyo cutubyada cinwaanada aad isdiiwaangelisay ayaa halkan ka muuqda';

  @override
  String get sourceOpenTitle => 'Cinwaanka furan';

  @override
  String get extensionsLoading => 'Kordhinta kordhinta…';

  @override
  String get updateWhatsNew => 'Maxaa cusub';

  @override
  String get updateLater => 'Ka dib';

  @override
  String get updateSkipVersion => 'Ka bood noocaan';

  @override
  String get updatePreparing => 'Diyaarinta…';

  @override
  String get updateDownloading => 'Soo dejinta';

  @override
  String get updateInstalling => 'Rakibaya…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done ee $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'La sii daayay $date';
  }

  @override
  String get updateNoAsset =>
      'Siideyntani wax soo dejin ah uma laha qalabkaaga';

  @override
  String get updateUpToDate => 'Waxaad ku jirtaa nooca ugu dambeeyay';

  @override
  String get updateIosHint =>
      'Dhismayaasha iOS kuma jiraan App Store Ka soo qaad .ipa bogga siideynta oo ku dheji AltStore ama SideStore';

  @override
  String get updateOpenedBrowser => 'Hubi browserkaaga';

  @override
  String get updateTryAgain => 'Isku day mar kale';

  @override
  String get settingsNotifications => 'Ogeysiisyada';

  @override
  String get settingsNotificationsDesc =>
      'Ogeysiisyada liisaskaada, cutubyada cusub iyo cutubyada, iyo jawaabaha faallooyinka';

  @override
  String get settingsAboutUpdates => 'Ku saabsan & cusbooneysiinta';

  @override
  String get settingsAboutUpdatesDesc =>
      'Cusboonaysiinta abka, nooca, diiwaanka, xiriirinta iyo taageerada';

  @override
  String get settingsGroupAccount => 'Koontadaada';

  @override
  String get settingsGroupContent => 'Nuxurka';

  @override
  String get settingsGroupApp => 'App-ka';

  @override
  String get settingsAnimeDesc =>
      'Ciyaartoyga, qoraal-hoosaadyada, boodada, liiska dhacdooyinka iyo faahfaahinta dhacdada';

  @override
  String get settingsMangaDesc =>
      'Habka akhristaha, kontaroolada, soo bandhigida iyo dabagalka cutubka';

  @override
  String get settingsNovelDesc =>
      'Qoraal, rogid bogga, tarjumid oo kor u akhri';

  @override
  String get settingsLocalPlay => 'Ciyaarta maxaliga ah';

  @override
  String get settingsLocalPlayDesc =>
      'Daar faylalka, galalka, shabakadaha durdurrada iyo durdurrada, ama fur buug';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Buugaag';

  @override
  String get settingsWatchSections => 'Qaybaha';

  @override
  String get settingsSectionLists => 'Liiska cutubka iyo cutubka';

  @override
  String get settingsSectionProgress => 'Dabagalka horumarka';

  @override
  String get updateChannelDesc =>
      'Deggan waa siidaynta la tijaabiyay. Siideynta ka hor iyo Alpha waxay helayaan sifooyin cusub isla markiiba laakiin way jabi karaan';

  @override
  String get checkNowDesc => 'Isla markiiba raadi nooc cusub';

  @override
  String get generalSectionBasics => 'Luuqadda & dhaqanka';

  @override
  String get generalSectionSecurity => 'Amniga';

  @override
  String get generalSectionPrivacy => 'Qarsoodi';

  @override
  String notificationsOtherService(String service) {
    return 'U beddel $service si aad tan u furto';
  }

  @override
  String get secPlayerPlayback =>
      'Xawaaraha caadiga ah, ciyaarta tooska ah, fiidyaha ku haboon, hanuuninta iyo sawirka sawirka';

  @override
  String get secPlayerSkip =>
      'Si otomaatig ah uga bood furitaanka, dhammaadka iyo soo koobida';

  @override
  String get secPlayerControls =>
      'Tuur, qabo oo taabo dhaqdhaqaaqyada oo raadi dulmar';

  @override
  String get secPlayerSubtitles =>
      'Luuqadaha, muuqaalka iyo samaynta qoraal hoosaadka';

  @override
  String get secPlayerShaders => 'Anime upscaling iyo hadh adiga kuu gaar ah';

  @override
  String get secPlayerEngine =>
      'Decoder, soo saarista muuqaal iyo maqal, kaydin Kaliya beddel kuwan haddii dib-u-ciyaartu ay dhibaato leedahay';

  @override
  String get secPlayerMpv => 'mpv.conf, qoraalo iyo hagaajin horumarsan';

  @override
  String get secAnimeList => 'Qaybaha buuxinta iyo thumbnails aan la daawan';

  @override
  String get secProgress =>
      'Marka horumarkaaga la daawado ama akhriyay lagu kaydiyo liiskaaga';

  @override
  String get secAnimeDetails =>
      'Halka ciwaanada dhacdada, sawir-gacmeedka iyo koobani ay ka yimaadeen';

  @override
  String get secReaderReading =>
      'Habka wax-akhriska, rogid bogga, soo-dhoweynta iyo cutubka xiga';

  @override
  String get secReaderControls =>
      'Taabo aagagga, furayaasha mugga iyo is-rog-rogid otomaatig ah';

  @override
  String get secReaderDisplay =>
      'Dhabarka dambe, dhalaalka, shaashadda buuxda iyo lambarka bogga';

  @override
  String get secNovelText =>
      'Farta, cabbirka, kala dheeraynta, xad-dhaafka iyo bogga rogidda';

  @override
  String get secNovelTranslate => 'Turjun cutubyada markaad wax akhrinayso';

  @override
  String get secNovelSpeech => 'Codka, xawaaraha iyo codka kor loogu akhriyo';

  @override
  String get secNotifyAbout => 'Dooro nooca nashaadaadka soo diri digniinta';

  @override
  String get layoutTitle => 'Qaabka';

  @override
  String get layoutDesc => 'Dooro, dhaqaaq oo qari badhamada baararka';

  @override
  String get layoutHint =>
      'Jiid badhan si aad u dhaqaajiso (marka hore ku qabo shaashadda taabashada). Taabo mid si aad u jarto, u dhaqaaqdo ama u qariso';

  @override
  String layoutDropInto(String zone) {
    return 'Soo geli: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'guuraya $name. Riix badhanka dhejiska si aad u dhigto';
  }

  @override
  String get layoutTitleFixed => 'Ciwaanka';

  @override
  String get layoutZoneTopStart => 'Bar sare, ka hor cinwaanka';

  @override
  String get layoutZoneTopEnd => 'Bar sare, ka dib horyaalka';

  @override
  String get layoutZoneBottomStart => 'Barta hoose, bidix';

  @override
  String get layoutZoneBottomEnd => 'Barta hoose, midig';

  @override
  String get layoutZoneSecondRow =>
      'Qarsoon: safka labaad ee muuqaalka caadiga ah';

  @override
  String get layoutZoneOverflow => 'Qarsoon: menu ka badan';

  @override
  String get layoutEmptyZone => 'Ku rid badhamada halkan';

  @override
  String get layoutCut => 'jar';

  @override
  String get layoutPaste => 'Halkan ku dheji';

  @override
  String get layoutHide => 'Qari';

  @override
  String layoutMoveTo(String zone) {
    return 'U dhaqaaq $zone';
  }

  @override
  String get layoutReset => 'Dib u deji si aan caadi ahayn';

  @override
  String get layoutMore => 'Wax badan';

  @override
  String get sourceWhyAction => 'Waa maxay sababta digtoonaan la\'aan?';

  @override
  String get sourceWhyStatus => 'Xaalada';

  @override
  String get sourceWhyLastCheck => 'Markii u dambaysay ee la hubiyay';

  @override
  String get sourceWhyNever => 'Wali maaha';

  @override
  String get sourceWhyNextCheck => 'Jeegaga xiga';

  @override
  String get sourceWhyNewest => 'Ugu cusub isha';

  @override
  String get sourceWhyProgress => 'Horumarkaaga';

  @override
  String get sourceWhyListStatus => 'Heerka liiska';

  @override
  String get sourceWhyFailures => 'Jeegaga fashilmay ee isku xiga';

  @override
  String get sourceWhyLastRelease =>
      'Siidaynta cusub ee u dambaysay ee la arkay';

  @override
  String get sourceWhyVerdictNew =>
      'Siidaynta cusub ayaa halkan ka soo baxaysa isla marka isha ay taxdo oo jeeggu socdo.';

  @override
  String get sourceWhyVerdictAhead =>
      'Isha ayaa horuumarkaaga ka horraysa, sidaas darteed hal mar ayaa laguu sheegay. Akhri ama u fiirso si aad u hesho digniinta xigta.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Magacan waxaa ka booday xeerarka sare. Ku beddel goobaha ogeysiinta, ama isticmaal Check hadda si aad u socodsiiso si kastaba.';

  @override
  String get sourceWhyVerdictBroken =>
      'Isha lama heli karo ama lama saari karo, markaa waxba lama hubinayo.';

  @override
  String get sourceWhyVerdictMuted => 'Diiwaangelintan waa la damiyay';

  @override
  String get externalPlayerTitle => 'Meel kale ka fur qulqulka';

  @override
  String get externalCopyUrl => 'Nuqul ka samee isku xirka qulqulka';

  @override
  String get externalCopied => 'Isku xirka qulqulka waa la guuriyay';

  @override
  String get externalChooser => 'Ku fur app kale';

  @override
  String get externalVlc => 'Ku fur VLC';

  @override
  String get externalMpv => 'Ku fur mpv';

  @override
  String get externalWebVideoCast => 'Shabakadda Fiidiyowga';

  @override
  String get castViaAppHint => 'U dir qulqulka abka Webka Fiidiyowga';

  @override
  String get externalFailed =>
      'Waa la furi waayay qulqulka Ciyaartoyga ma rakibay?';

  @override
  String get addonInstalled => 'La rakibay';

  @override
  String get loadFailedActivity => 'Ma rari karo hawsha';

  @override
  String get loadFailedFavourites => 'Waa la rari karaaya dookhyada Isku day';

  @override
  String get loadFailedStats => 'Waa la rari waayay xisaabaadka';

  @override
  String get loadFailedReplies => 'Waa la rari waayay jawaabaha';

  @override
  String get cantBeUndone => 'Tan lama celin karo';

  @override
  String get searchTags => 'Raadi tags';

  @override
  String get spoilerTapToView => 'Qaswadayaasha, taabo si aad u aragto';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'Qof';

  @override
  String get notificationATitle => 'cinwaan';

  @override
  String get notificationAddedDetail => 'Waxaa lagu daray AniList';

  @override
  String get updateNoReleases => 'Wax sii dayn ah lama helin';

  @override
  String get updateInvalidResponse => 'Jawaab cusboonaysiin aan sax ahayn';

  @override
  String get commentsRateLimited => 'Qiimaha xaddidan';

  @override
  String get commentsConnectFailed => 'Ku guuldareystay in la isku xiro';

  @override
  String get dnsNoRecords => 'Ma jiro diiwaan A oo soo laabtay';

  @override
  String get importTokenRejected => 'Token waa la diiday';

  @override
  String get developerRoleLead => 'Horumariyaha hogaanka';

  @override
  String get developerRoleModerator => 'Dhexdhexaadiyaha khilaafka';

  @override
  String extensionManagerTitle(String type) {
    return '$type maamulaha';
  }

  @override
  String extensionsOfType(String type) {
    return '$type kordhin';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name dejinta';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name ma bixiso wax dejin';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Qeybta $episode ee $title ayaa la sii daayay';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Dhacdada $episode ayaa la sii daayay';
  }

  @override
  String notificationAdded(String title) {
    return '$title ayaa lagu daray AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Cusbooneysii seerfarku wuu heli waayay sii-deynta: $message';
  }

  @override
  String get installStepJre => 'Java runtime';

  @override
  String get installStepCore => 'Xudunta Runtime';

  @override
  String installStepsProgress(int current, int total) {
    return 'Tallaabada $current ee $total';
  }

  @override
  String get stepWaiting => 'Sugitaanka';

  @override
  String get stepChecking => 'Hubinta…';

  @override
  String get stepUpToDate => 'Ilaa hadda';

  @override
  String stepUpToDateWith(String detail) {
    return 'Ilaa hadda · $detail';
  }

  @override
  String get stepWillInstall => 'waa lagu rakibi doonaa';

  @override
  String get stepWillUpdate => 'waa la cusbooneysiin doonaa';

  @override
  String stepWillUpdateTo(String version) {
    return 'Waxaa loo cusboonaysiin doonaa $version';
  }

  @override
  String get stepInstalled => 'La rakibay';

  @override
  String get stepNotNeeded => 'Looma baahna halkan';

  @override
  String get stepFailed => 'Fashilmay';

  @override
  String stepFailedWith(String reason) {
    return 'Fashilmay: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Waxay ku shaqeysaa wakhtiga runtime Java iyo runtime-ga la wadaago. Marka hore waa la rakibaa, waana la cusboonaysiiyaa haddii ay isbeddelaan.';

  @override
  String get installRuntimeNewer =>
      'Wakhtiga runtime ee maamulahani ku shaqeeyo ayaa leh wax cusub';

  @override
  String get removeJvmTitle => 'Ka saar wakhtiga runtime Java?';

  @override
  String get removeJvmMessage =>
      'Maareeyayaasha fidinta Desktop-ka waxay joojiyaan shaqada ilaa dib loo rakibo. Waa la soo dejisan doonaa mar kale marka xigta ee aad rakibto ama furto mid.';

  @override
  String get runtimePreparing => 'Diyaarinta wakhtiga runtu…';

  @override
  String get calendarAll => 'Dhammaan';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Manga';

  @override
  String get readerCloudflare => 'Ku fur browserka (Cloudflare check)';

  @override
  String get badgeBoardHint =>
      'Ku jiid calaamad gees ka mid ah kaadhka koowaad, ama ku jiid calaamad hore si aad u dhaqaajiso. Calaamaduhu way beddelaan meelo, si aan midna waligiis isu dulmarin. Taabo calaamada hoose si aad u damiso ama u damiso';

  @override
  String get statusAuto => 'Baabuur';

  @override
  String get unreadCounter => 'Miisaanka aan la akhriyin';

  @override
  String get unreadCounterDesc =>
      'Muuji inta qaybood ama cutubyada ku hadhay boodhadhka';

  @override
  String get settingsShortcuts => 'Gaabyada kiiboodhka';

  @override
  String get settingsShortcutsDesc => 'Eeg, beddel oo dami fure kasta';

  @override
  String get shortcutGroupApp => 'App-ka';

  @override
  String get shortcutGroupPlayer => 'Ciyaartoyga fiidiyowga';

  @override
  String get shortcutGroupReader => 'Akhriste';

  @override
  String get shortcutsEnableApp => 'Hababka abka';

  @override
  String get shortcutsEnablePlayer => 'Jidadka gaaban ee ciyaartoyga';

  @override
  String get shortcutsEnableReader => 'Akhristaha gaabin';

  @override
  String get shortcutsEnableDesc => 'Furaha kooxdan daar ama dami';

  @override
  String get shortcutNotSet => 'Lama dejin';

  @override
  String get shortcutAddKey => 'Ku dar furaha';

  @override
  String get shortcutResetOne => 'Dib u deji si aan caadi ahayn';

  @override
  String get shortcutClearKeys => 'Ka saar dhammaan furayaasha';

  @override
  String get shortcutResetAll => 'Dib u habayn dhammaan jid-gooyooyinka';

  @override
  String get shortcutResetAllDesc => 'Fure kasta dib ugu celi asligiisii';

  @override
  String get shortcutPress => 'Riix furaha ama isku dhafka aad rabto';

  @override
  String get shortcutPressHint =>
      'Isku darka kasta wuxuu ka mid noqon karaa hal fal oo kaliya, markaa qaadashada mid ayaa dhaqaaqeysa.';

  @override
  String get shortcutSeekPercent => 'U bood barta muuqaalka';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Ku noqo';

  @override
  String get shortcutAppFullscreen => 'Beddel shaashada buuxda';

  @override
  String get shortcutAppGlass => 'Beddel qaabka dhalada';

  @override
  String get shortcutAppMaterialYou => 'Bedel Adiga';

  @override
  String get shortcutAppDark => 'Beddel qaabka mugdiga';

  @override
  String get shortcutAppOled => 'Bedeli OLED madow';

  @override
  String get shortcutAppSearch => 'Raadin fur';

  @override
  String get shortcutAppSettings => 'Dejinta fur';

  @override
  String get shortcutAppDownloads => 'Fur soo dejinta';

  @override
  String get shortcutAppNotifications => 'Ogeysiisyada fur';

  @override
  String get shortcutAppIncognito => 'Beddel qarsoodiga';

  @override
  String get shortcutAppShortcuts => 'Muuji furayaasha kiiboodhka';

  @override
  String get shortcutPlayerPlayPause => 'Ciyaar ama hakad';

  @override
  String get shortcutPlayerSeekForward => 'Horay u raadi';

  @override
  String get shortcutPlayerSeekBack => 'Dib u raadi';

  @override
  String get shortcutPlayerSeekForwardLong => 'Horay u raadi 30 ilbiriqsi';

  @override
  String get shortcutPlayerSeekBackLong => 'Dib u raadi 30 ilbiriqsi';

  @override
  String get shortcutPlayerFrameForward => 'jir xiga';

  @override
  String get shortcutPlayerFrameBack => 'jir hore';

  @override
  String get shortcutPlayerVolumeUp => 'Kor u qaad';

  @override
  String get shortcutPlayerVolumeDown => 'Hoos u dhig';

  @override
  String get shortcutPlayerMute => 'aamus';

  @override
  String get shortcutPlayerFullscreen => 'Shaashad buuxda';

  @override
  String get shortcutPlayerNext => 'Qaybta xigta';

  @override
  String get shortcutPlayerPrevious => 'Dhacdo hore';

  @override
  String get shortcutPlayerSkip => 'Ka bood horudhaca ama dhammaanaya';

  @override
  String get shortcutPlayerPanel => 'Liiska dhacdooyinka';

  @override
  String get shortcutPlayerSpeedUp => 'Dib u soo celin degdeg ah';

  @override
  String get shortcutPlayerSpeedDown => 'Dib u ciyaar si tartiib ah';

  @override
  String get shortcutPlayerSpeedReset => 'Xawaaraha caadiga ah';

  @override
  String get shortcutPlayerSubtitleToggle =>
      'Qoraal-hoosaadyada waa daaran ama dami';

  @override
  String get shortcutPlayerSubtitleCycle => 'Dabaqa hoose ee xiga';

  @override
  String get shortcutPlayerAudioCycle => 'track audio xiga';

  @override
  String get shortcutPlayerStreamCycle => 'durdurka xiga';

  @override
  String get shortcutPlayerFit => 'Beddel ku habboonaanta muuqaalka';

  @override
  String get shortcutReaderRight => 'Bogga dhanka midig';

  @override
  String get shortcutReaderLeft => 'Bogga bidixda';

  @override
  String get shortcutReaderNextPage => 'Bogga xiga';

  @override
  String get shortcutReaderPreviousPage => 'Boggii hore';

  @override
  String get shortcutReaderControls => 'Muuji ama qari kontaroolada';

  @override
  String get shortcutReaderNextChapter => 'Cutubka Xiga';

  @override
  String get shortcutReaderPreviousChapter => 'Cutubkii hore';

  @override
  String shortcutTaken(String action) {
    return 'Waxaa laga soo qaatay $action';
  }

  @override
  String get incognitoTurnedOn => 'Qaabka qarsoon ayaa shiran';

  @override
  String get incognitoTurnedOff => 'Qaabka qarsoon ayaa dansan';

  @override
  String get onHoldAnime => 'Anime la hayo';

  @override
  String get onHoldManga => 'Manga la hayo';

  @override
  String get droppedAnime => 'Anime la tuuray';

  @override
  String get droppedManga => 'Manga la tuuray';

  @override
  String get generalSectionDesktop => 'Desktop';

  @override
  String get closeAction => 'Markay daaqaddu xidhan tahay';

  @override
  String get closeActionQuit => 'Jooji abka';

  @override
  String get closeActionWhenBusy =>
      'Ku dhex orod saxaaradda inta ay wax socdaan';

  @override
  String get closeActionAlways => 'Had iyo jeer ku sii ordi saxanka';

  @override
  String get closeActionNoTray =>
      'Saxanka nidaamka halkan lagama heli karo, marka abka wuu joogsadaa marka la xidho';

  @override
  String get gamepadNav => 'Gamepad navigation';

  @override
  String get gamepadNavDesc =>
      'Ku wareeg abka oo ku maamul ciyaartoyga leh koontaroolaha ciyaarta';

  @override
  String get trayShow => 'Muuji Dartotsu';

  @override
  String get trayQuit => 'Jooji';

  @override
  String get trayIdle => 'Wax socda ma jiraan';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Soo dejinta $count walxaha',
      one: 'Soo dejinta $count shayga',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Isku-dubarid liiskaaga';

  @override
  String get trayUpdating => 'Cusbooneysiinta abka';

  @override
  String get trayPlaying => 'Ku ciyaarista daaqad yar';

  @override
  String get traySearch => 'Raadi';

  @override
  String get trayPauseDownloads => 'Jooji soo dejinta';

  @override
  String get trayResumeDownloads => 'Dib u bilaw soo dajisyada';

  @override
  String get playerDownloadTitle => 'Soo dejinta ciyaaryahanka';

  @override
  String get playerDownloadBody =>
      'Dartotsu wuxuu soo qaadaa matoorka muuqaalkiisa hal mar. Dib-u-ciyaartu waxay bilaabataa isla marka ay diyaar noqoto.';

  @override
  String get playerDownloadStarting => 'Bilaabida soo dejinta';

  @override
  String get playerDownloadFailedTitle => 'Way heli kari wayday ciyaartoyga';

  @override
  String get playerDownloadFailedBody =>
      'Hubi xidhiidhkaaga oo isku day mar kale. Soodejintu waxay ka qaadaysaa meeshii ay ku joogsatay.';

  @override
  String get playerDownloadRetry => 'Isku day mar kale';

  @override
  String get playerDownloadCopy => 'Koobi faahfaahinta';

  @override
  String get removePlayerTitle => 'Ka saar ciyaaryahanka?';

  @override
  String get removePlayerMessage =>
      'Fiidiyowyadu ma ciyaari karaan ilaa ciyaaryahanka mar kale la soo dejiyo.';

  @override
  String get trailerLoading => 'Soo raraysa trailer-ka…';

  @override
  String get trailerFailed =>
      'Ma awoodin in uu ku ciyaaro trailer-ka halkan, isaga oo ka furay browserka';
}
