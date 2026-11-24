// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'SABUWAR Mafi Kyakkyawar App Don\nBibiyar Anime & Manga';

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
  String get loadMore => 'Ƙara lodawa';

  @override
  String get login => 'Shiga';

  @override
  String get continueAsGuest => 'Ci gaba a matsayin baƙo';

  @override
  String get getStarted => 'Fara';

  @override
  String get loginWithToken => 'Shiga da token';

  @override
  String get pasteTokenHint => 'Manna token ɗin shiga';

  @override
  String loginTo(String service) {
    return 'Shiga $service';
  }

  @override
  String get settings => 'Saituna';

  @override
  String get account => 'Asusu';

  @override
  String get about => 'Game da';

  @override
  String get language => 'Harshe';

  @override
  String get animationSpeed => 'raye-raye';

  @override
  String get animationSpeedDesc =>
      'Saurin sauye-sauye da tasirin shigowa a ko\'ina cikin app';

  @override
  String get animationSpeedOff => 'A kashe';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kari',
      one: 'Tsawaitawa',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Tushen da ba a sani ba';

  @override
  String get install => 'Shigar';

  @override
  String get update => 'Sabunta';

  @override
  String get uninstall => 'Cire';

  @override
  String get updateInstallCancelled =>
      'An soke shigarwar. Idan Android ta ce manhajar tana karo da wadda aka sanya, sa hannun ya bambanta: da farko cire sigar yanzu, sannan ka shigar da sabuntawar';

  @override
  String updateInstallFailed(String error) {
    return 'Sabuntawa ta kasa: $error';
  }

  @override
  String get appLock => 'Makullin manhaja';

  @override
  String get appLockDesc =>
      'Nemi lambar sirri idan an buɗe manhajar ko an dawo bayan ɗan lokaci';

  @override
  String get appLockBiometric => 'Buɗe tare da nazarin halittu';

  @override
  String get appLockBiometricDesc =>
      'Yi amfani da hoton yatsa ko fuskarka maimakon buga lambar wucewa';

  @override
  String get appLockBiometricReason => 'Buɗe Dartotsu';

  @override
  String get appLockDelay => 'Kulle lokacin aiki';

  @override
  String get appLockDelayAlways => 'Koyaushe';

  @override
  String get appLockDelayNever => 'Taba';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mintuna $count',
      one: 'Minti 1',
    );
    return 'Bayan $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Yi amfani da nazarin halittu';

  @override
  String get appLockUnlock => 'Shigar da lambar sirrinka';

  @override
  String get appLockWrong => 'Lambar sirri ba daidai ba ce';

  @override
  String appLockWait(String seconds) {
    return 'An yi ƙoƙari da yawa, jira daƙiƙa $seconds';
  }

  @override
  String get appLockNew => 'Zaɓi lambar sirri';

  @override
  String get appLockNewHint => 'Lambobi 4 zuwa 8';

  @override
  String get appLockConfirm => 'Sake shigar da ita';

  @override
  String get appLockMismatch => 'Lambobin sirrin ba iri ɗaya ba ne';

  @override
  String get appLockOn => 'An saita lambar sirri';

  @override
  String get appLockRemoveTitle =>
      'Shigar da lambar sirrinka don kashe makullin';

  @override
  String get installFailed => 'Shigarwa ta kasa';

  @override
  String get updateFailed => 'Sabuntawa ta kasa';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Akwai sabuntawa $count',
      one: '1 sabuntawa akwai',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Sabunta duka';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done na $total an sabunta su';
  }

  @override
  String get updateConflictTitle => 'Ba a shigar da sabuntawa ba';

  @override
  String updateConflictBody(String names) {
    return 'Ba za a iya shigar da $names akan sigar data kasance ba. Wannan yawanci yana nufin kwafin da aka shigar an sanya hannu daban. Cire shi kuma shigar da sabon sigar?';
  }

  @override
  String get updateConflictAction => 'Cire kuma sake sakawa';

  @override
  String get noSourceSettings => 'Wannan tushen ba shi da saituna';

  @override
  String get addPluginRepository => 'Ƙara wurin ajiyar plugin';

  @override
  String get pluginIndexUrlHint => 'URL ɗin fihirisar plugin';

  @override
  String get addRepository => 'Ƙara wurin ajiya';

  @override
  String get importRepositoryFile => 'Shigo da fayil';

  @override
  String get pluginRepoUpdated => 'An sabunta wurin ajiyar plugin';

  @override
  String get pluginRepoUpdateFailed => 'An kasa sabunta wurin ajiyar plugin';

  @override
  String get ok => 'To';

  @override
  String get cancel => 'Soke';

  @override
  String get yes => 'Eh';

  @override
  String get no => 'A\'a';

  @override
  String get save => 'Ajiye';

  @override
  String get reset => 'Sake saita';

  @override
  String get clear => 'Share';

  @override
  String get test => 'Gwada';

  @override
  String get testing => 'Ana gwadawa…';

  @override
  String get resolving => 'Ana warwarewa…';

  @override
  String get none => 'Babu';

  @override
  String get selectMediaService => 'Zaɓi sabis ɗin media';

  @override
  String get manageServices => 'Ayyukan watsa labarai';

  @override
  String get manageServicesDesc =>
      'Sake tsara sabis ɗin kuma zaɓi waɗanda suke nunawa a cikin mai ɗaukar hoto';

  @override
  String get manageServicesHint =>
      'Ja don sake tsarawa, kashe waɗanda ba ku amfani da su';

  @override
  String get pickColor => 'Zaɓi launi';

  @override
  String get colorPickerCustom => 'Na musamman';

  @override
  String get colorPickerTransparent => 'Mai haske ta cikinsa';

  @override
  String get ltr => 'Hagu zuwa Dama';

  @override
  String get searchSettings => 'Bincika cikin saituna';

  @override
  String nothingMatches(String query) {
    return 'Babu abin da ya dace da \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Bincika $category';
  }

  @override
  String get settingsAppearance => 'Kamanni';

  @override
  String get settingsAppearanceDesc => 'Jigo, launuka, yanayin gilashi';

  @override
  String get settingsGeneral => 'Gabaɗaya';

  @override
  String get settingsGeneralDesc => 'Harshe da halayyar app';

  @override
  String get settingsNetwork => 'Hanyar sadarwa';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

  @override
  String get settingsAccountDesc => 'Sabis ɗin bibiya da shiga';

  @override
  String get settingsUpdates => 'Sabuntawa';

  @override
  String get amoledBlack => 'Baƙi na AMOLED';

  @override
  String get amoledBlackDesc => 'Baƙin tsantsa a yanayin duhu';

  @override
  String get glassMode => 'Yanayin gilashi';

  @override
  String get glassModeDesc =>
      'Fuskoki masu sanyi a kan hotunan ɗakin karatunka';

  @override
  String get shelfFrame => 'Firam kewaye da sassa';

  @override
  String get shelfFrameDesc =>
      'Nuna kati a bayan kowane shiryayye, ko a bar layuka kai tsaye a shafi';

  @override
  String get settingsExtensionsDesc =>
      'Manajojin tushe, wuraren ajiya da zaɓuɓɓukan extension';

  @override
  String get settingsAddons => 'Addons';

  @override
  String get customPath => 'Hanyar ajiya ta musamman';

  @override
  String get stories => 'Labari';

  @override
  String get watchOrder => 'Watch oda';

  @override
  String get watchOrderOpenSite => 'Bude a chiaki.site';

  @override
  String get watchOrderUnavailable => 'Ba a samo odar agogon wannan take ba';

  @override
  String get watchOrderOpenFailed => 'An kasa buɗe wannan take';

  @override
  String get watchOrderCurrent => 'Kuna nan';

  @override
  String get watchOrderCredit => 'Duba oda ta chiaki.site';

  @override
  String get customPathDesc =>
      'Inda ake ajiye bayanan app. Danna ka riƙe don sake saitawa';

  @override
  String get selectDirectory => 'Zaɓi directory';

  @override
  String get differentCacheManager => 'Madadin cache na hotuna';

  @override
  String get differentCacheManagerDesc =>
      'Yi amfani da wani manajan cache na daban don hotuna';

  @override
  String get settingsSync => 'Saitunan daidaitawa';

  @override
  String get settingsSyncDesc =>
      'Rike saitunanku iri ɗaya akan kowace na\'ura. Ana adana su a cikin bayanan sirri a cikin asusun GitHub';

  @override
  String get settingsSyncSwitch => 'Daidaita kan canji';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Shiga tare da GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Ana adana saituna a cikin bayanan sirri a cikin asusun ku';

  @override
  String get settingsSyncToken => 'Yi amfani da alamar shiga ta sirri';

  @override
  String get settingsSyncTokenDesc =>
      'Ƙirƙiri ɗaya a github.com/settings/tokens tare da izinin gist kawai';

  @override
  String get settingsSyncTokenField => 'Alama';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Shiga a matsayin $user';
  }

  @override
  String get settingsSyncSignOut => 'Fita';

  @override
  String settingsSyncCode(Object code) {
    return 'Shigar da $code akan GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'An buɗe shafin GitHub a cikin burauzar ku. Matsa don kwafe lambar, ko matsa ka riƙe don sokewa.';

  @override
  String get settingsSyncSignInFailed => 'An kasa shiga GitHub';

  @override
  String get dcPreview => 'Dubawa';

  @override
  String get dcSampleWatching => 'Kallon';

  @override
  String get dcSampleReading => 'Karatu';

  @override
  String get dcSampleBrowsing => 'Yin lilo';

  @override
  String get dcSampleLive => 'A yanzu haka';

  @override
  String get dcLiveNothing =>
      'Babu wani abu da ke nunawa a yanzu. Bude take, fara wani labari ko babi kuma ya bayyana a nan.';

  @override
  String get dcMemberList => 'A cikin jerin membobin';

  @override
  String get dcAccount => 'Asusu';

  @override
  String get dcSignIn => 'Shiga tare da Discord';

  @override
  String get dcSignOut => 'Fita';

  @override
  String get dcDesktopHint =>
      'Ba tare da haɗawa ba, Discord yana nuna \"Kallon Dartotsu\" ta hanyar aikace-aikacen tebur. Haɗa Discord don suna sunan aikin bayan taken ku, gami da kan wayar hannu.';

  @override
  String get dcMobileHint =>
      'Haɗa Discord don nuna abin da kuke kallo ko karantawa. Yana amfani da shafin izini na Discord, ba alamar asusun ku ba.';

  @override
  String get dcConnect => 'Haɗa Discord';

  @override
  String get dcConnectDesc =>
      'Yana buɗe shafin izini na Discord kuma yana ƙara Dartotsu ƙarƙashin Izini Apps. Discord ya nemi sabunta kasancewar ku. Alamar wartsakewa kawai aka ajiye, ba alamar asusun ku ba.';

  @override
  String get dcConnectFailed => 'An kasa haɗa Discord';

  @override
  String get dcConnectedSnack => 'An haɗa rikici';

  @override
  String get dcDisconnect => 'Cire haɗin';

  @override
  String get dcDisconnectedSnack => 'An katse rikici';

  @override
  String get dcUseToken => 'Yi amfani da alama maimakon';

  @override
  String get dcRouteDesktop => 'Ta hanyar aikace-aikacen tebur Discord';

  @override
  String get dcRouteHeadless => 'Ta hanyar asusunku';

  @override
  String get dcRouteGateway => 'Ta hanyar asusunku, kai tsaye';

  @override
  String get dcRouteLinked => 'Haɗin app';

  @override
  String get dcRouteNone => 'Ba a haɗa';

  @override
  String get dcStatusNeedsToken =>
      'Yana buƙatar alamar Discord. Haɗa ƙa\'idar baya saita matsayin ku akan layi.';

  @override
  String get dcAccountOnly => 'Yana buƙatar asusun shiga';

  @override
  String get dcStatusSection => 'Matsayi';

  @override
  String get dcControlStatus => 'Sarrafa matsayi na';

  @override
  String get dcControlStatusDesc =>
      'Yana kiyaye haɗin kai kai tsaye zuwa Discord yayin da Kasancewar Arziki ke kunne, don haka Dartotsu na iya saita matsayin ku.';

  @override
  String get dcStatusOnline => 'Kan layi';

  @override
  String get dcStatusIdle => 'Rago';

  @override
  String get dcStatusDnd => 'Kada ku dame';

  @override
  String get dcStatusInvisible => 'Ganuwa';

  @override
  String get dcCustomStatus => 'Halin al\'ada';

  @override
  String get dcCustomStatusHint => 'Me kuke ciki?';

  @override
  String get dcActivitySection => 'Ayyuka';

  @override
  String get dcShowWatching => 'Nuna yayin kallo';

  @override
  String get dcShowReading => 'Nuna yayin karatu';

  @override
  String get dcListening => 'Saurara';

  @override
  String get dcCompeting => 'Gasa';

  @override
  String get dcActivityName => 'Sunan aiki';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Take';

  @override
  String get dcNameCustom => 'Custom';

  @override
  String get dcCustomNameHint => 'Sunan da aka nuna bayan \"Kallon\"';

  @override
  String get dcStatusText => 'Rubutun matsayi';

  @override
  String get dcStatusTextDesc =>
      'Abin da jerin membobi ke nunawa kusa da sunan ku';

  @override
  String get dcDisplayName => 'Suna';

  @override
  String get dcDisplayState => 'Jiha';

  @override
  String get dcDisplayDetails => 'Cikakkun bayanai';

  @override
  String get dcTextSection => 'Rubutu';

  @override
  String get dcDetails => 'Babban layi';

  @override
  String get dcState => 'Kasan layi';

  @override
  String get dcTemplateHint => 'Empty yana amfani da tsoho';

  @override
  String get dcVariables => 'Matsa don saka ƙima';

  @override
  String get dcImagesSection => 'Hotuna';

  @override
  String get dcLargeImage => 'Babban hoto';

  @override
  String get dcLargeAuto => 'Mota';

  @override
  String get dcLargeCover => 'Rufewa';

  @override
  String get dcLargeLogo => 'Logo';

  @override
  String get dcSmallImage => 'Ƙananan hoto';

  @override
  String get dcSmallAuto => 'Logo';

  @override
  String get dcSmallNone => 'Babu';

  @override
  String get dcTimerStyle => 'Salon lokaci';

  @override
  String get dcTimerAuto => 'Mota';

  @override
  String get dcTimerElapsed => 'Ya wuce';

  @override
  String get dcTimerRemaining => 'Ya rage';

  @override
  String get dcButtonsSection => 'Buttons';

  @override
  String get dcButtonMedia => 'Hanyar haɗi zuwa take';

  @override
  String get dcButtonApp => 'Hanyar zuwa Dartotsu';

  @override
  String get dcButtonCustom => 'Maɓallin al\'ada';

  @override
  String get dcButtonLabel => 'Lakabi';

  @override
  String get dcButtonUrl => 'mahada';

  @override
  String get dcPrivacySection => 'Keɓantawa';

  @override
  String get dcPrivateText => 'Rubutun sirri';

  @override
  String get dcPrivateHint => 'Wani abu na sirri';

  @override
  String get dcTokenWarning =>
      'Shiga yana amfani da alamar asusun ku. Dokokin Discord sun hana wannan, don haka yi amfani da shi a kan hadarin ku.';

  @override
  String get dcConnected => 'An haɗa';

  @override
  String get dcConnection => 'Haɗin kai';

  @override
  String get dcMethodDesktop => 'Discord tebur app';

  @override
  String get dcMethodDesktopDesc =>
      'Ana amfani dashi ta atomatik lokacin da babu wani abu da aka haɗa. Dole ne a buɗe rashin jituwa akan wannan kwamfutar.';

  @override
  String get dcMethodToken => 'Alamar lissafi';

  @override
  String get dcInUse => 'A amfani';

  @override
  String get dcRecommended => 'Nasiha';

  @override
  String get dcConnecting => 'Ana haɗawa…';

  @override
  String get dcDisconnected => 'Ba a haɗa';

  @override
  String dcSignedInAs(String name) {
    return 'Shiga a matsayin $name';
  }

  @override
  String get settingsSyncOn => 'Kunna';

  @override
  String get settingsSyncCustom => 'Custom';

  @override
  String get settingsSyncChangedHeader => 'Canja saituna';

  @override
  String get settingsSyncNoneChanged =>
      'Ba ku canza ko ɗaya daga cikin waɗannan ba tukuna, don haka babu abin da za ku daidaita.';

  @override
  String get settingsSyncChangedOnly =>
      'Saitunan da kuka canza kawai ana adana su. Komai yana amfani da tsohowar sa akan kowace na\'ura. Alamar girgije tana nuna abin da ke kan sabar.';

  @override
  String get settingsSyncOffCategory =>
      'Ba daidaitawa ba. Waɗannan suna kan wannan na\'urar kuma an bar kwafin uwar garken kamar yadda yake.';

  @override
  String get settingsSyncPartsNote =>
      'Kowane na\'ura. A kashe yana kiyaye ƙimar kowace na\'ura, don haka waya da TV na iya bambanta.';

  @override
  String get settingsSyncPartSubtitles => 'Girman taken da launuka';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Girma, nauyi, launuka da matsayi';

  @override
  String get settingsSyncPartPictureColors => 'Launukan hoto';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Haske, bambanci, jikewa, gamma, hue da HDR';

  @override
  String get settingsSyncPartPalette => 'Launukan jigo';

  @override
  String get settingsSyncPartPaletteDesc =>
      'Jigo, launi na lafazi da baki OLED';

  @override
  String get settingsSyncCatOther => 'Kalli, karantawa da sabis';

  @override
  String get settingsSyncTitles => 'Kalli ci gaba da lakabi';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records lakabi da $resume suna ci gaba da shigarwa akan sabar';
  }

  @override
  String get settingsSyncTitlesNone => 'Babu wani abu da aka loda tukuna';

  @override
  String get settingsSyncTitlesNote =>
      'Duba ku karanta matsayi, shiryayye na ci gaba, lissafin gida, alamun shafi, manyan bayanai da zaɓin kowane take. Matches na tushe da rafuffuka suna tsayawa akan kowace na\'ura saboda sun dogara da haɓakar ku. Ana loda taken a mafi yawan kowane sakan 45.';

  @override
  String get settingsSyncConnect => 'Ba a haɗa';

  @override
  String get settingsSyncConnectDesc =>
      'Shiga tare da GitHub don kiyaye saitunanku iri ɗaya akan kowace na\'ura.';

  @override
  String get settingsSyncFailedTitle => 'An gaza daidaitawa';

  @override
  String get settingsSyncPaused => 'An dakata';

  @override
  String get settingsSyncPausedDesc =>
      'Babu wani abu da aka loda ko zazzagewa yayin da wannan ke kashe.';

  @override
  String get settingsSyncUpToDate => 'Na zamani';

  @override
  String get settingsSyncRetry => 'Sake gwadawa';

  @override
  String get settingsSyncAccount => 'GitHub lissafi';

  @override
  String get settingsSyncAccountDesc =>
      'Bayanan ku yana zuwa ga bayanan sirri a cikin asusun ku.';

  @override
  String get settingsSyncWaiting => 'Ana jiran ku don amincewa akan GitHub';

  @override
  String get settingsSyncCopyCode => 'Matsa lambar don kwafe shi';

  @override
  String get settingsSyncCancel => 'Soke';

  @override
  String get settingsSyncStatSettings => 'Saituna';

  @override
  String get settingsSyncStatTitles => 'Lakabi';

  @override
  String get settingsSyncStatShelf => 'Ci gaba';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'An ɗora $time daga $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ya canza',
      one: '1 ya canza',
      zero: 'Babu wani abu da ya canza tukuna',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Asusu da kalmomin shiga';

  @override
  String get settingsSyncSecretsDesc =>
      'Daidaita shigar-hannunku (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), maɓallan API da kulle aikace-aikace tsakanin na\'urorinku. An rufaffen su da kalmar wucewar da ke kan na\'urorinku, don haka GitHub ba ya ganin su.';

  @override
  String get settingsSyncSecretsOn => 'Ana daidaita asusu kuma an rufaffen su';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Fita akan na\'ura ɗaya baya fitar da kai akan sauran.';

  @override
  String get settingsSyncSecretsBroken =>
      'Kalmar wucewa ba ta dace da wacce ke kan uwar garken ba. Shigar da shi don ci gaba da daidaita asusun.';

  @override
  String get settingsSyncPassphraseSet => 'Saita kalmar wucewa';

  @override
  String get settingsSyncPassphraseEnter => 'Shigar da kalmar wucewar ku';

  @override
  String get settingsSyncPassphraseField => 'Kalmar wucewa';

  @override
  String get settingsSyncPassphraseConfirm => 'Maimaita kalmar wucewa';

  @override
  String get settingsSyncPassphraseNew =>
      'Zaɓi kalmar wucewa ta aƙalla haruffa 6. Ba a adana shi a ko\'ina sai na\'urorin ku kuma ba za a iya dawo da shi ba. Idan kun manta shi, share kwafin uwar garken kuma sake farawa.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Shigar da kalmar wucewar da kuka zaɓa akan ɗayan na\'urar ku. Za a maye gurbin asusun kan wannan na\'urar da waɗanda aka daidaita.';

  @override
  String get settingsSyncPassphraseWrong => 'Kalmar wucewa mara kyau';

  @override
  String get settingsSyncPassphraseMismatch => 'Kalmomin wucewar ba su dace ba';

  @override
  String get settingsSyncPassphraseShort => 'Yi amfani da aƙalla haruffa 6';

  @override
  String get settingsSyncSecretsStop => 'Dakatar da daidaita asusun';

  @override
  String get settingsSyncSecretsDelete => 'Share daga GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Wannan yana cire ɓoyayyen fayil ɗin asusun daga gist ɗin ku. Wasu na\'urori suna kiyaye sa hannu kuma suna iya saita sabon kalmar wucewa.';

  @override
  String get settingsSyncWhat => 'Abin da za a daidaita';

  @override
  String get settingsSyncServer => 'Akan uwar garken';

  @override
  String get settingsSyncServerEmpty => 'Babu wani abu da aka loda tukuna';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count saituna, an ɗora $time daga $device';
  }

  @override
  String get settingsSyncThisDevice => 'wannan na\'urar';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Saitunan $count akan uwar garken',
      one: '1 saitin akan uwar garken',
      zero: 'Babu komai akan sabar',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Daidaita yanzu';

  @override
  String get settingsSyncRunning => 'Ana daidaitawa…';

  @override
  String get settingsSyncNever => 'Ba a daidaita shi ba tukuna';

  @override
  String settingsSyncLast(Object time) {
    return 'Ƙarshe da aka daidaita $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'An gaza daidaitawa: $error';
  }

  @override
  String get settingsSyncScope =>
      'Saitunan da ke aiki iri ɗaya a ko\'ina kawai ana daidaita su. Asusu, alamomi, manyan fayiloli, kari, sanarwa, Discord, sabuntawa da girman taga suna tsayawa akan kowace na\'ura.';

  @override
  String get backupAndRestore => 'Ajiyar baya da maidowa';

  @override
  String get backupAndRestoreDesc => 'Ajiye ko ɗora abubuwan da ka zaɓa';

  @override
  String get backup => 'Ajiyar baya';

  @override
  String get restore => 'Maido';

  @override
  String get loadExtensionsIcon => 'Ɗora gumakan extension';

  @override
  String get autoUpdateRuntimes => 'Sabunta tsawaita lokacin gudu ta atomatik';

  @override
  String get autoUpdateRuntimesDesc =>
      'Zazzage sabon Aniyomi, CloudStream da sauran nau\'ikan lokacin aiki a bango. A kashe, gunkin ɗaukaka yana bayyana kusa da mai sarrafa maimakon.';

  @override
  String get loadExtensionsIconDesc => 'Nuna gumakan tushe a jerin extension';

  @override
  String get sectionStorage => 'Ajiya';

  @override
  String get sectionManagers => 'Manajoji';

  @override
  String get sectionOptions => 'Zaɓuɓɓuka';

  @override
  String get backupTabBackup => 'Yi ajiyar baya';

  @override
  String get backupTabRestore => 'Maido';

  @override
  String backupSummary(Object keys, Object categories) {
    return 'Saituna $keys a rukunai $categories';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Ajiyar baya ta ƙarshe $time';
  }

  @override
  String get backupNever => 'Babu ajiyar baya tukuna';

  @override
  String get backupSelectAll => 'Zaɓi duka';

  @override
  String get backupClearAll => 'Share';

  @override
  String backupKeys(Object count) {
    return 'Saituna $count';
  }

  @override
  String get backupPasswordRequired =>
      'Kalmar wucewa (an buƙata don bayanan asusu)';

  @override
  String get backupProtectedNeedsPassword =>
      'Saita kalmar sirri don adana bayanan asusu, ko cire shi';

  @override
  String get backupProtectedSkipped =>
      'Wannan madadin ba shi da kalmar sirri, don haka an tsallake bayanan asusun sa';

  @override
  String get backupPassword => 'Kalmar sirri (zaɓi)';

  @override
  String get backupPasswordHint => 'A bar fanko don amfani da tsoho';

  @override
  String get backupSensitive =>
      'Ya haɗa da token ɗin shiga. A kiyaye wannan fayil a asirce';

  @override
  String get backupCreate => 'Ƙirƙiri ajiyar baya';

  @override
  String backupSaved(Object name) {
    return 'An ajiye ajiyar baya a $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Ajiyar baya ta kasa: $error';
  }

  @override
  String get backupPickFile => 'Zaɓi fayil ɗin ajiyar baya';

  @override
  String get backupPickFileDesc => 'Zaɓi fayil .json da Dartotsu ya yi';

  @override
  String get backupChooseAnother => 'Zaɓi wani fayil';

  @override
  String get backupCreatedAt => 'An ƙirƙira';

  @override
  String get backupAppVersion => 'Sigar app';

  @override
  String get backupDevice => 'Na\'ura';

  @override
  String get backupAccounts => 'Asusu';

  @override
  String get backupSize => 'Girma';

  @override
  String get backupEncrypted => 'Mai kalmar sirri';

  @override
  String get backupUnlock => 'Buɗe';

  @override
  String get backupWrongPassword =>
      'Ba a iya karanta wannan fayil ba. Duba kalmar sirri';

  @override
  String get backupRestoreSelected => 'Maido da waɗanda aka zaɓa';

  @override
  String backupRestoreConfirm(Object count) {
    return 'A maido saituna $count? Za a maye gurbin ƙimomin da ke cikin waɗannan rukunai.';
  }

  @override
  String get backupRestored => 'An maido. Sake buɗe app don aiwatar da komai';

  @override
  String backupRestoreFailed(Object error) {
    return 'Maidowa ta kasa: $error';
  }

  @override
  String get backupSelectOne => 'Zaɓi aƙalla rukuni ɗaya';

  @override
  String get backupCatTheme => 'Kamanni';

  @override
  String get backupCatThemeDesc =>
      'Jigo, launuka, gilashi, rubutu da salon kati';

  @override
  String get backupCatCommon => 'Gabaɗaya';

  @override
  String get backupCatCommonDesc =>
      'Harshe, ajiya, network da zaɓuɓɓukan extension';

  @override
  String get backupCatPlayer => 'Mai kunnawa';

  @override
  String get backupCatPlayerDesc => 'Abubuwan da aka zaɓa na mai kunnawa';

  @override
  String get backupCatReader => 'Mai karatu';

  @override
  String get backupCatReaderDesc => 'Abubuwan da aka zaɓa na mai karatu';

  @override
  String get backupCatProtected => 'Asusu';

  @override
  String get backupCatProtectedDesc => 'Token ɗin shiga da bayanan shiga';

  @override
  String get backupCatOther => 'Sabis-sabis da feed';

  @override
  String get backupCatOtherDesc =>
      'Tsarin feed, jerin sunaye da zaɓuɓɓukan sabis';

  @override
  String get logFile => 'Fayil ɗin log';

  @override
  String get logFileDesc => 'Raba log ɗin app, ko kwafi hanyarsa a Linux';

  @override
  String get logDelete => 'Share fayilolin log';

  @override
  String get logDeleteDesc =>
      'Share rajistan ayyukan app don \'yantar da sarari';

  @override
  String logDeleted(String size) {
    return 'An share $size na rajistan ayyukan';
  }

  @override
  String get missingSequel => 'Bace Mabiyi';

  @override
  String get rising => 'Tashi';

  @override
  String get stacks => 'Tari';

  @override
  String get stacksAll => 'Duka';

  @override
  String get stacksFeatured => 'Fitattu';

  @override
  String get stacksMine => 'Naku';

  @override
  String get stacksSaved => 'Ajiye';

  @override
  String get stacksFollowing => 'Masu bi';

  @override
  String get stacksEmpty => 'Har yanzu babu tari a nan';

  @override
  String get stacksSignIn => 'Shiga zuwa MangaBaka don ganin tarin ku';

  @override
  String get stacksScopeNeeded =>
      'Jigon ku na buƙatar sabon izini. Sake shiga MangaBaka don ba da izini.';

  @override
  String get stacksSignInAgain => 'Sake shiga';

  @override
  String get stacksCouldntLoad => 'An kasa loda makin';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jerin',
      one: '1 jerin',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count yana adanawa',
      one: '1 ajiyewa',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'ta $name';
  }

  @override
  String get stackSpoilers => 'Masu lalata';

  @override
  String get stackEmptyEntries => 'Wannan tari babu komai';

  @override
  String get stackSave => 'Ajiye tari';

  @override
  String get stackUnsave => 'Cire daga adanawa';

  @override
  String get stackSavedToast => 'Ajiye zuwa tarin ku';

  @override
  String get stackRemovedToast => 'An cire daga ajiyar ku';

  @override
  String userStacks(String name) {
    return 'Tari ta $name';
  }

  @override
  String get newsTitle => 'Labarai';

  @override
  String get newsEmpty => 'Babu labari a yanzu';

  @override
  String get newsCouldntLoad => 'An kasa loda labarai';

  @override
  String get logFileCopied => 'An kwafi hanyar log';

  @override
  String get donateSheetTitle => 'Kana jin daɗin Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Mutum ɗaya ne ke ginawa da kula da Dartotsu. Idan yana da amfani a gare ka, ka yi tunanin tallafa wa ci gabansa.';

  @override
  String get donateLater => 'Daga baya';

  @override
  String get glassBackground => 'Bangon gilashi';

  @override
  String get glassBackgroundDesc =>
      'Banner ɗin profile naka sai dai idan ka saka hanyar hoto';

  @override
  String get glassBackgroundHint =>
      'Hanyar hoto (a bar fanko don banner ɗinka)';

  @override
  String get followCover => 'Bi cover';

  @override
  String get followCoverDesc =>
      'Launuka suna bin bango, da cover a shafukan bayani';

  @override
  String get followCoverMediaOnly => 'Don kafofin watsa labarai kawai';

  @override
  String get followCoverMediaOnlyDesc =>
      'Bi murfin kawai akan shafukan watsa labarai, ko\'ina kuma yana kiyaye launuka na yau da kullun';

  @override
  String get cardStyle => 'Salon kati';

  @override
  String get cardStyleDesc => 'Wurin take, girma, ci gaba da alamomi';

  @override
  String get customFont => 'Rubutu';

  @override
  String get customFontDesc => 'Tsoho, fayil daga na\'urarka, ko Google Fonts';

  @override
  String get customFontError => 'An kasa ɗora wannan fayil ɗin rubutu';

  @override
  String get googleFontError => 'An kasa zazzage wannan rubutu';

  @override
  String get yourFonts => 'Rubutunka';

  @override
  String get addFontFile => 'Ƙara fayil ɗin rubutu…';

  @override
  String get browseGoogleFonts => 'Bincika Google Fonts…';

  @override
  String get searchGoogleFonts => 'Bincika Google Fonts';

  @override
  String get defaultFont => 'Tsoho';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Launi mai canzawa daga system';

  @override
  String get jsonTheme => 'Fayil ɗin jigo na musamman';

  @override
  String get jsonThemeDesc =>
      'Launuka kai tsaye daga ~/.config/dartotsu/theme.json (script na musamman, ko gyare-gyarenka)';

  @override
  String get themeMode => 'Yanayin jigo';

  @override
  String get mode => 'Yanayi';

  @override
  String get trackingService => 'Sabis ɗin bibiya';

  @override
  String get signOut => 'Fita';

  @override
  String get signIn => 'Shiga';

  @override
  String get notSignedIn => 'Ba ka shiga ba';

  @override
  String signOutOf(String service) {
    return 'Fita daga $service?';
  }

  @override
  String get checkForUpdates => 'Duba sabuntawa';

  @override
  String get checkForUpdatesDesc =>
      'A sanar da ni idan sabon GitHub release ya fito';

  @override
  String get updateChannel => 'Tashar sabuntawa';

  @override
  String get channel => 'Tasha';

  @override
  String get stable => 'Tabbatacce';

  @override
  String get preRelease => 'Kafin fitarwa';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Duba yanzu';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Tsoho';

  @override
  String currentlyUsing(String value) {
    return 'Yanzu: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Tsoho (Cloudflare)';

  @override
  String get proxy => 'Wakili';

  @override
  String get proxyProtocol => 'Nau\'i';

  @override
  String get proxyHost => 'Mai watsa shiri';

  @override
  String get proxyPort => 'Port';

  @override
  String get proxyUsername => 'Sunan mai amfani';

  @override
  String get proxyPassword => 'Kalmar sirri';

  @override
  String get optional => 'Zaɓi';

  @override
  String get clearCookies => 'Share cookies';

  @override
  String get clearCookiesDesc => 'Cire duk cookies da aka adana';

  @override
  String notImplementedArea(String area) {
    return '$area — nan ba da daɗewa ba';
  }

  @override
  String notImplementedService(String service) {
    return '$service bai goyi bayan wannan ba tukuna.';
  }

  @override
  String get couldNotLoadResults => 'An kasa ɗora sakamako';

  @override
  String get updateCheckFailed => 'An kasa duba sabuntawa';

  @override
  String get highRefreshRate => 'Babban refresh rate';

  @override
  String get highRefreshRateDesc =>
      'Yi amfani da mafi girman refresh rate da allonka ke goyi';

  @override
  String get imageSave => 'Ajiye hoto';

  @override
  String imageSavedTo(String path) {
    return 'An ajiye a $path';
  }

  @override
  String get imageActionFailed => 'An kasa zazzage hoton';

  @override
  String get imageTitleCover => 'Rufewa';

  @override
  String get imageTitlePage => 'Shafi';

  @override
  String get imageTitleBanner => 'Tuta';

  @override
  String get imageTitleAvatar => 'Hoton profile';

  @override
  String get verifyTls => 'Tabbatar da certificates';

  @override
  String get verifyTlsDesc =>
      'Ƙi sabobin da ke da HTTPS certificate mara inganci. A kashe kawai don tushen da ke amfani da na kansa';

  @override
  String get clearCookiesConfirm =>
      'A cire duk cookies da aka adana? Wannan na iya fitar da kai daga wasu tushe.';

  @override
  String get version => 'Sigar';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Source, issues da releases';

  @override
  String get discordDesc => 'Al\'umma da taimako';

  @override
  String get supportDeveloper => 'Goyi bayan mai haɓakawa';

  @override
  String get buyMeCoffee => 'Sayi min kofi';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID an kwafi';

  @override
  String get donateDesc => 'Tallafa wa ci gaba';

  @override
  String get contributors => 'Masu bayar da gudunmawa';

  @override
  String get contributorsDesc => 'Mutanen da suka gina Dartotsu';

  @override
  String get contributorsLoadFailed => 'An kasa ɗora masu bayar da gudunmawa';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Ayyukan da aka gina a kan Dartotsu';

  @override
  String get forksEmpty => 'Ba a sami fork ba';

  @override
  String get sectionColors => 'Launuka';

  @override
  String get sectionDisplay => 'Nuni';

  @override
  String get sectionStyle => 'Salo';

  @override
  String get sectionCommunity => 'Al\'umma';

  @override
  String get sectionAppInfo => 'Bayanin app';

  @override
  String get sectionRequests => 'Buƙatu';

  @override
  String get sectionDnsProxy => 'DNS & Proxy';

  @override
  String get onboardingBack => 'Baya';

  @override
  String get onboardingNext => 'Na gaba';

  @override
  String get onboardingSkip => 'Tsallake';

  @override
  String get onboardingLanguageBody =>
      'Zaɓi harshen Dartotsu da aka nuna a ciki. Kuna iya canza shi daga baya a cikin Saituna.';

  @override
  String get onboardingPaletteTitle => 'Mai da shi naka';

  @override
  String get onboardingPaletteBody =>
      'Zaɓi palette. Kowane launi, daga kati zuwa mai kunnawa, zai bi shi.';

  @override
  String get themeModeAuto => 'Kai tsaye';

  @override
  String get themeModeLight => 'Haske';

  @override
  String get themeModeDark => 'Duhu';

  @override
  String get onboardingSyncTitle => 'Daidaita ɗakin karatunka';

  @override
  String get onboardingSyncBody =>
      'Shiga da AniList don kawo jerin sunayenka, ci gaba da maki. Ko ka tsallake ka yi bincike a matsayin baƙo.';

  @override
  String get onboardingOpenLinks => 'Buɗe hanyoyin AniList da repo a Dartotsu';

  @override
  String get onboardingPermsTitle => 'Izini';

  @override
  String get onboardingPermsBody =>
      'A ba da su yanzu don zazzagewa, sabuntawa da faɗakarwa su yi aiki ba tare da tsangwama ba. Za ka iya canza su daga baya a saitunan system.';

  @override
  String get permNotifications => 'Sanarwa';

  @override
  String get permNotificationsDesc =>
      'Ci gaban zazzagewa, sabbin episode da amsoshi';

  @override
  String get permStorage => 'Samun duk fayiloli';

  @override
  String get permStorageDesc =>
      'Ajiye abubuwan da aka zazzage a folder ɗin Dartotsu na jama\'a';

  @override
  String get permInstall => 'Shigar da sabuntawa';

  @override
  String get permInstallDesc => 'A bar Dartotsu ya shigar da sabuntawar kansa';

  @override
  String get permBattery => 'Baturi mara iyaka';

  @override
  String get permBatteryDesc => 'A ci gaba da dogayen zazzagewa a bango';

  @override
  String get permGrant => 'Bada izini';

  @override
  String get linkOpenInApp => 'Buɗe hanyoyin haɗi a Dartotsu';

  @override
  String get linkOpenInAppDesc => 'A bar hanyoyin AniList da repo su buɗe app';

  @override
  String get reviewsTitle => 'Bita';

  @override
  String get reviewsEmpty => 'Babu bita tukuna';

  @override
  String get reviewsFailed => 'An kasa ɗora bita';

  @override
  String get reviewHelpfulQuestion => 'Wannan bita ya taimaka?';

  @override
  String get reviewVoteFailed => 'An kasa ajiye kuri\'arka';

  @override
  String reviewHelpful(int n, int total) {
    return '$n cikin $total sun ga yana da amfani';
  }

  @override
  String get calendarTitle => 'Jadawalin fitowa';

  @override
  String get calendarToday => 'Yau';

  @override
  String get calendarEmpty => 'Babu abin da ke fitowa a wannan ranar';

  @override
  String get calendarFailed => 'An kasa ɗora jadawalin';

  @override
  String calendarChapter(int n) {
    return 'Babi na $n';
  }

  @override
  String get calendarExpected => 'Wanda ake tsammani';

  @override
  String get castReceiverFailed => 'Chromecast bai fara mai kunnawa ba';

  @override
  String get castPlaybackFailed => 'Na\'urar ba ta iya kunna wannan rafi';

  @override
  String get shortcutNothingToContinue => 'Ba abin da zai ci gaba har yanzu';

  @override
  String shortcutNoCalendar(String service) {
    return '$service bashi da kalanda';
  }

  @override
  String calendarEpisode(int n) {
    return 'Episode $n';
  }

  @override
  String get shareAnalytics => 'Raba bayanan amfani da ba a bayyana ba';

  @override
  String get shareAnalyticsDesc =>
      'Adadin masu amfani da rahoton lalacewa ba tare da suna ba. Babu asusu ko bayanan sirri';

  @override
  String get linkOpenAnilist => 'Buɗe hanyoyin AniList a Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Kunna sarrafa hanyoyin haɗi don anilist.co ya buɗe app';

  @override
  String get linkSettingsFailed => 'Ba a iya buɗe saitunan system ba';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Nuna abin da kake yi a profile ɗin Discord. Yana buƙatar token ɗin Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Nuna abin da kake yi a profile ɗin Discord. Yana buƙatar Discord desktop app ya kasance a buɗe.';

  @override
  String get discordBrowsing => 'Nuna ayyukan bincike';

  @override
  String get discordBrowsingDesc =>
      'Nuna tab, shafi ko profile da kake kallo, ba kawai abin da kake kallo ko karantawa ba.';

  @override
  String get discordLookHeader => 'Kamannin presence';

  @override
  String get discordActivityType => 'Nau\'in aiki';

  @override
  String get discordActivityTypeDesc =>
      'Yadda Discord ke rubuta shi: \"Watching …\" ko \"Playing …\". Kai tsaye yana amfani da Watching don anime da Playing ga sauran.';

  @override
  String get discordWatching => 'Kallon';

  @override
  String get discordPlaying => 'Yin wasa';

  @override
  String get discordCovers => 'Nuna covers';

  @override
  String get discordCoversDesc => 'Hoton cover da alamar Dartotsu a kan kati.';

  @override
  String get discordTimer => 'Nuna lokaci';

  @override
  String get discordTimerDesc =>
      'Lokacin da ya wuce ko ya rage a ƙarƙashin take.';

  @override
  String get discordButtons => 'Nuna maɓallai';

  @override
  String get discordButtonsDesc =>
      'Maɓallan \"View anime / manga\" da \"Open Dartotsu\".';

  @override
  String get discordHideTitles => 'Ɓoye take';

  @override
  String get discordHideTitlesDesc =>
      'Maye gurbin sunayen anime da manga (da cover da hanyar haɗinsu) da \"Something private\".';

  @override
  String get discordConnectionHeader => 'Haɗi';

  @override
  String get listSearchHint => 'Bincika wannan jeri';

  @override
  String get listSort => 'Tsara';

  @override
  String get listFilter => 'Tace';

  @override
  String get listRandom => 'Take na bazuwar';

  @override
  String get listReverse => 'Juyar da tsari';

  @override
  String get listSortDefault => 'Tsarin jeri';

  @override
  String get listSortScore => 'Makin ka';

  @override
  String get listSortTitle => 'Take';

  @override
  String get listSortUpdated => 'Sabuntawa ta ƙarshe';

  @override
  String get listSortProgress => 'Ci gaba';

  @override
  String get listSortReleased => 'Ranar fitarwa';

  @override
  String get listSortAverage => 'Matsakaicin maki';

  @override
  String get listFilterFormat => 'Tsari';

  @override
  String get listFilterStatus => 'Matsayi';

  @override
  String get listFilterGenres => 'Nau\'ikan labari';

  @override
  String get listFilterClear => 'Share tacewa';

  @override
  String get listNoMatches => 'Babu abin da ya dace a wannan jeri';

  @override
  String get discordLogin => 'Shiga Discord';

  @override
  String get discordToken => 'Token ɗin Discord';

  @override
  String get discordTokenSaved =>
      'An ajiye. Danna don maye gurbin, danna ka riƙe don cirewa.';

  @override
  String get discordTokenNotSet => 'Ba a saita ba. Danna don ƙarawa.';

  @override
  String get discordTokenSavedSnack => 'An ajiye token ɗin Discord';

  @override
  String get discordTokenRemovedSnack => 'An cire token ɗin Discord';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'A kunne · danna don canza kamanninsa';

  @override
  String get discordRichPresenceRowOff =>
      'Nuna abin da kake yi a profile ɗin Discord';

  @override
  String get loginCancelled => 'An soke shiga';

  @override
  String get invalidToken => 'Token mara inganci';

  @override
  String loginFailed(String error) {
    return 'Shiga ya kasa: $error';
  }

  @override
  String get malLoginFailed => 'Shiga MyAnimeList ya kasa';

  @override
  String get kitsuLoginFailed =>
      'Shiga Kitsu ya kasa. Duba imel da kalmar sirrinka.';

  @override
  String get kitsuLoginTitle => 'Shiga Kitsu';

  @override
  String get emailOrUsername => 'Imel ko sunan mai amfani';

  @override
  String get password => 'Kalmar sirri';

  @override
  String get kitsuProfile => 'Profile ɗin Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Shiga MangaBaka ya kasa';

  @override
  String get comickLoginFailed => 'Shigar comick ya kasa';

  @override
  String get tagline => 'Tagline';

  @override
  String get trending => 'Trending';

  @override
  String get anticipated => 'Wanda ake tsammani';

  @override
  String get watchlist => 'Jerin kallo';

  @override
  String get recommendedShows => 'Nunin Shawarwari';

  @override
  String get recommendedMovies => 'Fina-finan da aka Shawarta';

  @override
  String get boxOffice => 'Akwatin Ofishin';

  @override
  String get popularMovies => 'Shahararrun Fina-finai';

  @override
  String get popularShows => 'Shahararrun Nuni';

  @override
  String get anticipatedMovies => 'Fina-finan da ake tsammani';

  @override
  String get anticipatedShows => 'Nunin da ake tsammani';

  @override
  String get trendingShows => 'Shirye-shirye masu tasowa';

  @override
  String get mostWatchedThisWeek => 'Mafi Yawan Kallon Wannan Makon';

  @override
  String get sortMostViewed => 'Mafi yawan kallo';

  @override
  String get sortMostFollowed => 'Yawancin suka biyo baya';

  @override
  String get sortLatestUpdates => 'Sabbin sabuntawa';

  @override
  String get translationStatusLabel => 'Fassara';

  @override
  String get weeklySchedule => 'Jadawalin mako-mako';

  @override
  String get mostFollowed => 'Mafi Biyu';

  @override
  String get latestUpdates => 'Sabbin Sabuntawa';

  @override
  String get trendingAnime => 'Anime Trending';

  @override
  String get topRatedAnime => 'Anime Mafi Girma';

  @override
  String get mostFollowedAnime => 'Anime Mafi Biyu';

  @override
  String get comickProfile => 'Bayanan martaba';

  @override
  String get refreshFromComick => 'Sake sabuntawa daga Comick';

  @override
  String get mangaBakaProfile => 'Profile ɗin MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Sabunta daga MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Shiga zuwa MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'Bayanan martaba MangaUpdates';

  @override
  String get mangaUpdatesAnimeStart => 'An fara daidaitawa anime';

  @override
  String get mangaUpdatesAnimeEnd => 'Anime karbuwa ya ƙare';

  @override
  String get refreshFromMangaUpdates => 'Sake sabuntawa daga MangaUpdates';

  @override
  String get usernameOnly => 'Sunan mai amfani';

  @override
  String get releases => 'Fitowa';

  @override
  String get artistsLabel => 'Masu zane';

  @override
  String get authorsLabel => 'Marubuta';

  @override
  String get publishersLabel => 'Masu wallafawa';

  @override
  String get licensedLabel => 'Mai lasisi';

  @override
  String get contentRatingLabel => 'Ƙimar abun ciki';

  @override
  String get yesLabel => 'Eh';

  @override
  String get noLabel => 'A\'a';

  @override
  String get ratingSteps => 'Matakan ƙima';

  @override
  String get hideNsfw => 'Ɓoye NSFW';

  @override
  String get hideNsfwSourcesDesc =>
      'Ɓoye hanyoyin da aka yiwa alama sama da 18+ daga ciyarwar da mai zaɓin tushe. Suna tsayawa a girka.';

  @override
  String get hideNsfwDesc =>
      'Kiyaye take na manya daga feed da bincike, kuma lissafa shigarwar manya naka a Hidden Media.';

  @override
  String get kitsuAccountOptions => 'Zaɓuɓɓukan asusun Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Zaɓuɓɓukan asusun MangaBaka';

  @override
  String get comickAccountOptions => 'Zaɓuɓɓukan asusu na Comick';

  @override
  String get comickClientId => 'Comick Client ID';

  @override
  String get comickClientIdDesc =>
      'ID na abokin ciniki na al\'ada yayi rijista akan comick.dev';

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
      'An kasa sabunta saitunan Kitsu naka';

  @override
  String get titleCanonical => 'Na asali';

  @override
  String get titleRomanized => 'Romanized';

  @override
  String get titleLocalized => 'Na gida';

  @override
  String get ratingSystem => 'Tsarin ƙima';

  @override
  String get ratingSimple => 'Mai sauƙi (fuska 3)';

  @override
  String get ratingRegular => 'Na yau da kullum (taurari 5)';

  @override
  String get ratingAdvanced => 'Na ci gaba (maki 10)';

  @override
  String get contentFilter => 'Tacewar abun ciki';

  @override
  String get contentSfw => 'Mai aminci kawai';

  @override
  String get contentSometimes => 'Abun ciki na manya a bincike';

  @override
  String get contentEverywhere => 'Abun ciki na manya a ko\'ina';

  @override
  String get shareToGlobal => 'Raba zuwa feed na duniya';

  @override
  String get shareToGlobalDesc =>
      'A bar ayyukanka su bayyana a feed na duniya na Kitsu.';

  @override
  String get memberSince => 'Memba tun';

  @override
  String get location => 'Wuri';

  @override
  String get accountType => 'Nau\'in asusu';

  @override
  String get accountSupporter => 'Mai tallafa wa';

  @override
  String get accountFree => 'Kyauta';

  @override
  String get accountDetails => 'Bayanan asusu';

  @override
  String get refreshFromKitsu => 'Sabunta daga Kitsu';

  @override
  String get simklReadOnly => 'Simkl ya ba da damar karantawa kawai';

  @override
  String get traktReadOnly => 'Trakt ya ba da damar karantawa kawai';

  @override
  String get incognitoEditsBlocked => 'Incognito: an hana gyaran jeri';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Incognito: ba a ajiye ci gaba ba';

  @override
  String progressSet(int progress) {
    return 'An saita ci gaba zuwa $progress';
  }

  @override
  String removedFromList(String title) {
    return 'An cire $title daga jerinka';
  }

  @override
  String get following => 'Masu bi';

  @override
  String get followsMutual => 'Mutu\'a';

  @override
  String get followsNotMutual => 'Ba juna ba';

  @override
  String get homeSections => 'Sassan Home';

  @override
  String get homeSectionsHint =>
      'Ja don sake tsarawa. Ba a taɓa ɗaukar sassan da aka ɓoye ba.';

  @override
  String get customListDeleteFailed => 'An kasa share jeri na musamman';

  @override
  String get customListsSaveFailed => 'An kasa ajiye jerin na musamman';

  @override
  String get customListsSaved => 'An ajiye jerin na musamman';

  @override
  String get listName => 'Sunan jeri';

  @override
  String get addList => 'Ƙara jeri';

  @override
  String get voiceActors => '\'Yan wasan murya';

  @override
  String voiceActorsIn(String name) {
    return 'Masu ba da murya · $name';
  }

  @override
  String get animeAppearances => 'Bayyanuwa a anime';

  @override
  String get mangaAppearances => 'Bayyanuwa a manga';

  @override
  String get voicedCharacters => 'Haruffan da aka ba murya';

  @override
  String get animeCredits => 'Ayyukan anime';

  @override
  String get mangaCredits => 'Ayyukan manga';

  @override
  String get mainProductions => 'Manyan shirye-shirye';

  @override
  String get otherWorks => 'Sauran ayyuka';

  @override
  String get prequelSequel => 'Prequel & Mabiyi';

  @override
  String get prequel => 'Prequel';

  @override
  String get sequel => 'Mabiyi';

  @override
  String get previousSeason => 'Kakar da ta gabata';

  @override
  String get thisSeason => 'Wannan kaka';

  @override
  String get nextSeason => 'Kaka mai zuwa';

  @override
  String get voiceRoles => 'Matsayin murya';

  @override
  String get staffPositions => 'Matsayin ma\'aikata';

  @override
  String get mangaWorks => 'Ayyukan manga';

  @override
  String get malProfile => 'Profile ɗin MyAnimeList';

  @override
  String get refreshFromMal => 'Sabunta daga MyAnimeList';

  @override
  String get repullProfileCounts => 'A sake ɗaukar profile da ƙididdigarka';

  @override
  String get refreshed => 'An sabunta';

  @override
  String get simklProfile => 'Profile ɗin Simkl';

  @override
  String get traktProfile => 'Trakt profile';

  @override
  String get refreshFromSimkl => 'Sabunta daga Simkl';

  @override
  String get refreshFromTrakt => 'Wartsake daga Trakt';

  @override
  String get repullProfileLibrary => 'A sake ɗaukar profile da ɗakin karatunka';

  @override
  String get simklSignInToSearch => 'Shiga Simkl don bincike';

  @override
  String get dropRate => 'Adadin barin kallo';

  @override
  String get simklAttribution => 'Bayanai da zane daga Simkl. Duba a Simkl';

  @override
  String get traktAttribution =>
      'Bayanai da zane-zane na Trakt. Duba kan Trakt';

  @override
  String get listsLiked => 'Ana so';

  @override
  String get listsYours => 'Naku';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Trakt VIP Member';

  @override
  String get onHold => 'A dakata';

  @override
  String get scoredBy => 'Waɗanda suka ba da maki';

  @override
  String get planToWatch => 'Ina shirin kallo';

  @override
  String get planToRead => 'Ina shirin karantawa';

  @override
  String get timesRewatched => 'Sau nawa aka sake kallo';

  @override
  String get timesReread => 'Sau nawa aka sake karantawa';

  @override
  String get comments => 'Sharhi';

  @override
  String get moviesAndSeries => 'Fina-finai & Jerin shirye-shirye';

  @override
  String get simklMoviesOnly => 'Fina-finai & jerin kawai';

  @override
  String get simklMoviesOnlyDesc =>
      'Yana maye gurbin shafin Anime: Fina-finai da farko, sannan Nunawa tare da layuka biyu na anime';

  @override
  String get trackingOnly => 'Bibiya kawai';

  @override
  String get signedIn => 'An shiga';

  @override
  String get searchLanguage => 'Harshen bincike';

  @override
  String get savedToList => 'An ajiye a jerinka';

  @override
  String get removedFromYourList => 'An cire daga jerinka';

  @override
  String get retry => 'Sake gwadawa';

  @override
  String get synopsis => 'Taƙaitaccen labari';

  @override
  String get details => 'Bayani';

  @override
  String get addToList => 'Ƙara a jeri';

  @override
  String get trailer => 'Trailer';

  @override
  String get trailerQuality => 'Trailer ingancin';

  @override
  String get titleCopied => 'An kwafi take';

  @override
  String get linkCopied => 'An kwafi hanyar haɗi';

  @override
  String get watchTrailer => 'Kalli trailer';

  @override
  String get copyTitle => 'Kwafi take';

  @override
  String get detailStale =>
      'An kasa samun AniList. Wannan an adana bayanan kuma yana iya zama tsoho.';

  @override
  String get copyLink => 'Kwafi hanyar haɗi';

  @override
  String get openInBrowser => 'Buɗe a browser';

  @override
  String viewOnSource(String source) {
    return 'Duba a $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Episode $ep zai fito nan da $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Episode na gaba nan da $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Ana sa ran babi na $chapter nan da kusan $time';
  }

  @override
  String get logPathCopied => 'An kwafi hanyar fayil ɗin log zuwa clipboard';

  @override
  String get animeSource => 'Tushen anime';

  @override
  String get mangaSource => 'Tushen manga';

  @override
  String get popular => 'Mashahuri';

  @override
  String get allCustomLists => 'Duk lissafin al\'ada';

  @override
  String get simklTitleLanguage => 'Harshen taken Anime';

  @override
  String get titleLanguageEnglish => 'Turanci';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Trending';

  @override
  String get simklListsMostLiked => 'Mafi so';

  @override
  String get simklListsMostFollowed => 'Yawancin suka biyo baya';

  @override
  String get simklListsOfficial => 'Na hukuma';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lakabi',
      one: '1 take',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Mutane';

  @override
  String get mostComments => 'Yawancin sharhi';

  @override
  String get alphabetical => 'Harafi';

  @override
  String get latest => 'Sabbi';

  @override
  String get saved => 'Waɗanda aka ajiye';

  @override
  String get nothingMatched => 'Babu abin da ya dace';

  @override
  String get nothingSavedFromSource =>
      'Babu abin da aka ajiye daga wannan tushen tukuna';

  @override
  String get sourceReturnedNothing => 'Wannan tushen bai dawo da komai ba';

  @override
  String get checkConnectionOrSource => 'Duba haɗinka ko ka gwada wani tushe.';

  @override
  String get tryDifferentSearch => 'Gwada wata kalmar bincike.';

  @override
  String get savedTitlesAppearHere =>
      'Take da ka ƙara a jerinka za su bayyana a nan.';

  @override
  String get tryOtherFeed => 'Gwada ɗayan feed ɗin ko bincike maimakon haka.';

  @override
  String searchSource(String source) {
    return 'Bincika $source';
  }

  @override
  String get animeExtensions => 'Extensions na anime';

  @override
  String get mangaExtensions => 'Extensions na manga';

  @override
  String get nothingHereYet => 'Babu komai a nan tukuna';

  @override
  String get savedOnDeviceUntilLogin =>
      'Duk abin da ke ƙasa yana ajiye a wannan na\'ura har sai ka yi hakan.';

  @override
  String get yourProfile => 'Profile ɗinka';

  @override
  String get activity => 'Ayyuka';

  @override
  String get extensions => 'kari';

  @override
  String get logOut => 'Fita';

  @override
  String get logIn => 'Shiga';

  @override
  String get logOutConfirm => 'Ka tabbata kana so ka fita?';

  @override
  String get incognitoMode => 'Yanayin incognito';

  @override
  String get alsoBlockListEdits => 'A kuma toshe gyaran jeri';

  @override
  String get offlineMode => 'Yanayin offline';

  @override
  String get switchService => 'Canza sabis';

  @override
  String logOutOf(String name) {
    return 'Fita daga $name';
  }

  @override
  String get loggedIn => 'An shiga';

  @override
  String get notifications => 'Sanarwa';

  @override
  String get nothingNew => 'Babu sabon abu';

  @override
  String get thisWeek => 'Wannan mako';

  @override
  String get listOnly => 'Jeri kawai';

  @override
  String get notInList => 'Ba A cikin Lissafi ba';

  @override
  String get filter => 'Tace';

  @override
  String get searchResults => 'Sakamakon bincike';

  @override
  String get recentSearches => 'Binciken kwanan nan';

  @override
  String get searchOrSetFilter => 'Bincika ko saita tacewa';

  @override
  String get filters => 'Tacewa';

  @override
  String get showLess => 'Nuna ƙasa';

  @override
  String get showAll => 'Nuna duka';

  @override
  String get apply => 'Aiwatar';

  @override
  String get preview => 'Samfoti';

  @override
  String get preset => 'Saitin da aka shirya';

  @override
  String get cardNormal => 'Na yau da kullum';

  @override
  String get cardOnCard => 'A kan kati';

  @override
  String get cardInCard => 'A cikin kati';

  @override
  String get size => 'Girma';

  @override
  String get cardWidth => 'Faɗin kati';

  @override
  String get compact => 'Ƙarami';

  @override
  String get coverAndTitleOnly => 'Cover da take kawai';

  @override
  String get titleLines => 'Layukan take';

  @override
  String get shape => 'Siffa';

  @override
  String get posterShape => 'Siffar poster';

  @override
  String get cornerRadius => 'Zagayen kusurwa';

  @override
  String get off => 'A kashe';

  @override
  String get topLeft => 'Sama hagu';

  @override
  String get topRight => 'Sama dama';

  @override
  String get bottomLeft => 'Ƙasa hagu';

  @override
  String get bottomRight => 'Ƙasa dama';

  @override
  String get overlays => 'Litattafai';

  @override
  String get progressCount => 'Ci gaba / ƙidaya';

  @override
  String get pill => 'Kwaya';

  @override
  String get bar => 'Bar';

  @override
  String get outside => 'A waje';

  @override
  String get scoreBadge => 'Alamar maki';

  @override
  String get airingDot => 'Digon fitowa';

  @override
  String get updateAvailable => 'Akwai sabuntawa';

  @override
  String get notInstalled => 'Ba a shigar ba';

  @override
  String get done => 'An gama';

  @override
  String get searchOrEnterUrl => 'Bincika ko shigar da URL';

  @override
  String get refresh => 'Sabunta';

  @override
  String get animePlanetRank => 'Daraja';

  @override
  String get animePlanetMagazine => 'Mujallar';

  @override
  String get animePlanetRefreshLists => 'Sake sabunta lissafin ku';

  @override
  String get animePlanetRefreshListsDesc =>
      'Karanta jerin Anime-Planet ɗin ku kuma';

  @override
  String get animePlanetLocalNote =>
      'Shiga don adana canje-canje a asusun ku na Anime-Planet. Har sai lokacin sun tsaya akan wannan na\'urar';

  @override
  String get share => 'Raba';

  @override
  String get characters => 'Haruffa';

  @override
  String get staff => 'Ma\'aikata';

  @override
  String get readMore => 'Karanta ƙari';

  @override
  String get couldNotLoadList => 'An kasa ɗora jeri';

  @override
  String get logInToFavourite => 'Shiga don ƙara waɗanda kake so';

  @override
  String get alsoKnownAs => 'Wanda aka fi sani da';

  @override
  String get hideSpoilerNames => 'Ɓoye sunayen masu bayyana labari';

  @override
  String get showSpoilerNames => 'Nuna sunayen masu bayyana labari';

  @override
  String get favourited => 'An ƙara cikin waɗanda ake so';

  @override
  String get favourite => 'Abin so';

  @override
  String get couldNotOpenTitle => 'Ba a iya buɗe wannan take ba';

  @override
  String get nobodyHereYet => 'Babu kowa a nan tukuna';

  @override
  String get noMatches => 'Babu abin da ya dace';

  @override
  String get gridView => 'Nunin grid';

  @override
  String get fullWidth => 'Cikakken faɗi';

  @override
  String get userNotFound => 'Ba a sami mai amfani ba';

  @override
  String get couldNotUpdateFollow => 'An kasa sabunta bi';

  @override
  String followedUser(String name) {
    return 'Ka bi $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Ka daina bin $name';
  }

  @override
  String get messages => 'Saƙonni';

  @override
  String get logInToSeeMessages => 'Shiga don ganin saƙonninka';

  @override
  String get editActivity => 'Gyara aiki';

  @override
  String get newActivity => 'Sabon aiki';

  @override
  String get editMessage => 'Gyara saƙo';

  @override
  String get writeMessage => 'Rubuta saƙo';

  @override
  String get editReply => 'Gyara amsa';

  @override
  String get posted => 'An saka';

  @override
  String get couldNotPost => 'An kasa saka';

  @override
  String get nothingToPreview => 'Babu abin da za a yi samfoti';

  @override
  String get writeSomethingHint =>
      'Rubuta wani abu… AniList markdown yana aiki a nan';

  @override
  String get privateMessage => 'Saƙo na sirri';

  @override
  String get post => 'Saka';

  @override
  String get nothingHere => 'Babu komai a nan';

  @override
  String get noAnimeProgress => 'Babu ci gaban anime';

  @override
  String get noMangaProgress => 'Babu ci gaban manga';

  @override
  String get noMessages => 'Babu saƙonni';

  @override
  String get writeMessageHint => 'Rubuta saƙo…';

  @override
  String get shareSomethingHint => 'Raba wani abu…';

  @override
  String get all => 'Duka';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Ƙidaya';

  @override
  String get hoursWatched => 'Sa\'o\'in kallo';

  @override
  String get chaptersRead => 'Babin da aka karanta';

  @override
  String get meanScore => 'Matsakaicin maki';

  @override
  String get noStatsYet => 'Babu ƙididdiga tukuna';

  @override
  String get totalEntries => 'Jimillar shigarwa';

  @override
  String get episodesWatched => 'Episode da aka kalla';

  @override
  String get daysWatched => 'Kwanakin kallo';

  @override
  String get volumesRead => 'Juzu\'in da aka karanta';

  @override
  String get standardDeviation => 'Daidaitaccen karkata';

  @override
  String get showMore => 'Nuna ƙari';

  @override
  String get followsYou => 'Yana bin ka';

  @override
  String get nobodyYet => 'Babu kowa tukuna';

  @override
  String get logInToLike => 'Shiga don yin like';

  @override
  String get failedToLikeActivity => 'An kasa yin like na aikin';

  @override
  String get deleteActivityConfirm => 'Share aikin?';

  @override
  String get deletedActivity => 'An share aikin';

  @override
  String get failedToDeleteActivity => 'An kasa share aikin';

  @override
  String get subscribed => 'An yi subscribe';

  @override
  String get unsubscribed => 'An cire subscribe';

  @override
  String get failedToUpdateSubscription => 'An kasa sabunta subscription';

  @override
  String get edit => 'Gyara';

  @override
  String get delete => 'Share';

  @override
  String get likedBy => 'Waɗanda suka yi like';

  @override
  String get follow => 'Bi';

  @override
  String get nameCopied => 'An kwafi suna';

  @override
  String get followsEachOther => 'Kuna bin juna';

  @override
  String get unfollow => 'Daina bi';

  @override
  String get userIdCopied => 'An kwafi ID ɗin mai amfani';

  @override
  String get shareProfile => 'Raba profile';

  @override
  String get copyUserId => 'Kwafi ID ɗin mai amfani';

  @override
  String get failedToDelete => 'An kasa sharewa';

  @override
  String get failedToLike => 'An kasa yin like';

  @override
  String get replies => 'Amsoshi';

  @override
  String get reply => 'Amsa';

  @override
  String get noRepliesYet => 'Babu amsoshi tukuna';

  @override
  String get favouriteAnime => 'Anime ɗin da ake so';

  @override
  String get favouriteManga => 'Manga ɗin da ake so';

  @override
  String get favouriteCharacters => 'Haruffan da ake so';

  @override
  String get favouriteStaff => 'Ma\'aikatan da ake so';

  @override
  String get favouriteStudios => 'Studios ɗin da ake so';

  @override
  String get noFavouritesYet => 'Babu abubuwan so tukuna';

  @override
  String get yourStory => 'Labarinka';

  @override
  String get copiedToClipboard => 'An kwafi zuwa clipboard';

  @override
  String get justNow => 'Yanzu-yanzu';

  @override
  String get openImage => 'Buɗe hoto';

  @override
  String get hideSpoiler => 'Ɓoye spoiler';

  @override
  String get showSpoiler => 'Nuna spoiler';

  @override
  String get status => 'Matsayi';

  @override
  String get score => 'Maki';

  @override
  String get started => 'An fara';

  @override
  String get completed => 'An kammala';

  @override
  String get private => 'Na sirri';

  @override
  String get hideFromStatusLists => 'Ɓoye daga jerin matsayi';

  @override
  String get totalRepeats => 'Jimillar maimaitawa';

  @override
  String get other => 'Sauran';

  @override
  String get customLists => 'Jerin na musamman';

  @override
  String get activeDays => 'Kwanakin aiki';

  @override
  String get longestStreak => 'Mafi tsawon jere';

  @override
  String get currentStreak => 'Jere na yanzu';

  @override
  String get tapOrHoverDay => 'Danna ko sa linzamin kwamfuta a kan rana';

  @override
  String get less => 'Ƙasa';

  @override
  String get more => 'Fiye';

  @override
  String epIn(int ep, String time) {
    return 'Ep $ep nan da $time';
  }

  @override
  String get sectionLoading => 'Ana lodawa';

  @override
  String get querySize => 'Girman query';

  @override
  String get querySizeDesc =>
      'Babban query ɗaya yana ɗora kowane layi (da cikakken profile) a buƙata ɗaya. Rarrabe queries suna aika ƙaramar buƙata ga kowane layi ko ɓangaren profile: kowanne yana da sauri kuma ɓangarorin suna bayyana yayin da suke zuwa.';

  @override
  String get oneBig => 'Babba ɗaya';

  @override
  String get split => 'Rarrabe';

  @override
  String get sectionSocial => 'Zamantakewa';

  @override
  String get systemNotifications => 'Sanarwar system';

  @override
  String get feedLayout => 'Tsarin feed';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown cikin $total ake nunawa — danna don zaɓa da sake tsarawa';
  }

  @override
  String labelSections(String label) {
    return 'Sassan $label';
  }

  @override
  String get accountOptions => 'Zaɓuɓɓukan asusu';

  @override
  String get anilistAccountOptions => 'Zaɓuɓɓukan asusun AniList';

  @override
  String get sectionPrivacy => 'Sirri';

  @override
  String get hidePrivateEntries => 'Ɓoye shigarwa na sirri';

  @override
  String get hidePrivateEntriesDesc =>
      'Kiyaye shigarwar da aka yi wa alama ta sirri a AniList daga feed';

  @override
  String get anilistExcludeList => 'Cire jerinka';

  @override
  String get anilistExcludeListDesc =>
      'Ka da a nuna taken da ke cikin AniList ɗinka a shafukan anime da manga';

  @override
  String get anilistProfile => 'Profile ɗin AniList';

  @override
  String get refreshFromAnilist => 'Sabunta daga AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'An kasa sabunta saitunan AniList';

  @override
  String get sectionNames => 'Sunaye';

  @override
  String get titleLanguage => 'Harshen take';

  @override
  String get titleLanguageDesc =>
      'Yadda ake rubuta take a ko\'ina, misali Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Sunayen ma\'aikata da haruffa';

  @override
  String get sectionLists => 'Jerin sunaye';

  @override
  String get scoreFormat => 'Tsarin maki';

  @override
  String get sortListsBy => 'Tsara jeri bisa';

  @override
  String labelCustomLists(String label) {
    return 'Jerin na musamman na $label';
  }

  @override
  String customListsCount(int count) {
    return 'Jeri $count — danna don ƙarawa ko cirewa';
  }

  @override
  String get mergeActivities => 'Haɗa ayyuka';

  @override
  String minutesCount(int count) {
    return 'Minti $count';
  }

  @override
  String get timezone => 'Yankin lokaci';

  @override
  String get notSet => 'Ba a saita ba';

  @override
  String get airingNotifications => 'Sanarwar fitowa';

  @override
  String get airingNotificationsDesc =>
      'A sanar da kai idan episode na shirin da kake bi ya fito';

  @override
  String get displayAdultContent => 'Nuna abun ciki na manya';

  @override
  String get displayAdultContentDesc => 'Haɗa take na 18+ a bincike da feed';

  @override
  String get restrictMessages => 'Taƙaita saƙonni ga waɗanda kake bi';

  @override
  String get restrictMessagesDesc =>
      'Waɗanda kake bi ne kawai za su iya yi maka saƙo';

  @override
  String get sectionServices => 'Sabis-sabis';

  @override
  String get novel => 'Novel';

  @override
  String labelService(String label) {
    return 'Sabis ɗin $label';
  }

  @override
  String nameSettings(String name) {
    return 'Saitunan $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Zaɓuɓɓuka daga extension bridge na $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name ya kasa farawa: $error';
  }

  @override
  String get importLists => 'Shigo da jerin sunaye';

  @override
  String get importListsDesc =>
      'Daga ajiyar baya ta Aniyomi, Mihon / Tachiyomi ko Kotatsu';

  @override
  String get exportLists => 'Fitar da jerin sunaye';

  @override
  String get exportListsDesc => 'Zuwa ajiyar baya ta Aniyomi, Mihon ko Kotatsu';

  @override
  String get sectionBrowse => 'Bincike';

  @override
  String get readingTab => 'Tab ɗin karatu';

  @override
  String get readingTabDesc => 'Waɗanne extensions ne tab na uku zai nuna';

  @override
  String get firstTab => 'Shafin farko';

  @override
  String get firstTabDesc =>
      'Wanne kari na farko shafin ya nuna. Zaɓi manga anan da labari akan shafin karatu don sauke anime daga mashaya';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Feed na tsoho';

  @override
  String get defaultFeedDesc => 'Wane jeri ne tushe zai buɗe da shi';

  @override
  String noServiceSupports(String type) {
    return 'Babu sabis da ke goyon bayan $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · tushe $loaded cikin $installed ana lodawa';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Babu sabis na extension da ke goyon bayan $type a nan.';
  }

  @override
  String get loadDataFrom => 'Ɗora bayanai daga';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Babu tushen $type da aka shigar tukuna.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Ba a shigar da extension na $name ba';
  }

  @override
  String get thisSource => 'wannan tushen';

  @override
  String failedToAddRepository(String error) {
    return 'An kasa ƙara wurin ajiya: $error';
  }

  @override
  String installedType(String type) {
    return '$type da aka shigar';
  }

  @override
  String availableType(String type) {
    return '$type da ake da su';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Babu extensions na $type da aka shigar';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Babu extensions na $type da ake da su';
  }

  @override
  String get nothingToShowYet => 'Babu abin nunawa tukuna';

  @override
  String get addTitlesHint => 'Ƙara wasu take a jerinka za su bayyana a nan.';

  @override
  String get couldntLoad => 'An kasa ɗorawa';

  @override
  String get progressStyleHint =>
      'Pill da bar suna kan poster; a waje yana nuna ƙidayar a matsayin rubutu kawai — zaɓi ɗaya.';

  @override
  String get nixManagedUpdate =>
      'Nix ne ke sarrafa wannan build — gudanar da \"nix flake update\" a flake ɗinka ka sake build maimakon sabuntawa daga nan';

  @override
  String autoUpdateFailed(String error) {
    return 'Sabuntawa ta kai tsaye ta kasa ($error) — ana buɗe shafin zazzagewa maimakon haka';
  }

  @override
  String get unknownPreference => 'Zaɓi da ba a sani ba';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Nau\'in zaɓi da ba a goyi ba: $type';
  }

  @override
  String get notYetReleased => 'Ba a fitar ba tukuna';

  @override
  String get notStarted => 'Ba a fara ba';

  @override
  String get country => 'Ƙasa';

  @override
  String get sort => 'Tsara';

  @override
  String get chooseBackupDialog =>
      'Zaɓi ajiyar baya ta Aniyomi, Mihon ko Kotatsu';

  @override
  String get importListsHint =>
      'Kawo ɗakin karatu daga Aniyomi, Mihon / Tachiyomi ko Kotatsu. Ana kiyaye take, covers, ci gaba da rukunai.';

  @override
  String get chooseBackupFile => 'Zaɓi fayil ɗin ajiyar baya';

  @override
  String importAnimeCount(int count) {
    return 'Shigo da anime $count';
  }

  @override
  String importMangaCount(int count) {
    return 'Shigo da manga $count';
  }

  @override
  String get mergeWithExisting => 'Haɗa da jerin da ke akwai';

  @override
  String get mergeWithExistingDesc =>
      'Yana kiyaye abin da kake da shi; idan a kashe, yana maye gurbin take masu dacewa';

  @override
  String get chooseAnother => 'Zaɓi wani';

  @override
  String get import => 'Shigo da';

  @override
  String animeCount(int count) {
    return 'Anime $count';
  }

  @override
  String mangaCount(int count) {
    return 'Manga $count';
  }

  @override
  String get chooseSaveLocation => 'Zaɓi inda za a ajiye ajiyar baya';

  @override
  String savedPath(String path) {
    return 'An ajiye $path';
  }

  @override
  String exportFailed(String error) {
    return 'Fitarwa ta kasa: $error';
  }

  @override
  String get nothingInLocalLists =>
      'Babu komai a jerin sunayenka na gida tukuna.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Yana fitar da anime $anime da manga $manga daga jerin sunayenka na gida. Kotatsu yana goyon bayan manga kawai.';
  }

  @override
  String get saveToFolder => 'Ajiye a folder';

  @override
  String get formatAnimeManga => 'Anime da manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Manga kawai · .tachibk';

  @override
  String get formatMangaZip => 'Manga kawai · .zip';

  @override
  String get genres => 'Nau\'ikan labari';

  @override
  String get relations => 'Dangantaka';

  @override
  String get recommendations => 'Shawarwari';

  @override
  String get openings => 'Budewa';

  @override
  String get endings => 'Ƙarshe';

  @override
  String get background => 'Bayanan baya';

  @override
  String get links => 'Hanyoyin haɗi';

  @override
  String get rank => 'Daraja';

  @override
  String get members => 'Mambobi';

  @override
  String get favorites => 'Abubuwan so';

  @override
  String get episodes => 'Fitowa';

  @override
  String get chapters => 'Babuka';

  @override
  String get volumes => 'Juzu\'i';

  @override
  String get format => 'Tsari';

  @override
  String get source => 'Tushe';

  @override
  String get duration => 'Tsawon lokaci';

  @override
  String minutesPerEpisode(int minutes) {
    return 'Minti $minutes a kowane ep';
  }

  @override
  String get rating => 'Ƙima';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Serialization';

  @override
  String get season => 'Kaka';

  @override
  String get year => 'Shekara';

  @override
  String get filterAny => 'Kowa';

  @override
  String get broadcast => 'Watsawa';

  @override
  String get aired => 'An watsa';

  @override
  String get published => 'An wallafa';

  @override
  String get popularity => 'Shahara';

  @override
  String get community => 'Al\'umma';

  @override
  String get watching => 'Ana kallo';

  @override
  String get reading => 'Ana karantawa';

  @override
  String get dropped => 'An bar';

  @override
  String get unfinished => 'Ba a gama ba';

  @override
  String get planned => 'A shirye';

  @override
  String get trailers => 'Trailers';

  @override
  String get ratings => 'Ƙimomi';

  @override
  String get originalTitle => 'Na asali';

  @override
  String get titleLabel => 'Take';

  @override
  String get votes => 'Kuri\'u';

  @override
  String get watchedStat => 'An kalla';

  @override
  String get runtime => 'Tsawon lokaci';

  @override
  String get director => 'Daraktan';

  @override
  String get network => 'Cibiyar sadarwa';

  @override
  String get certification => 'Takardar shaida';

  @override
  String get airs => 'Ana watsawa';

  @override
  String get budget => 'Kasafin kuɗi';

  @override
  String get revenue => 'Kuɗin shiga';

  @override
  String get released => 'An fitar';

  @override
  String get tags => 'Alamomi';

  @override
  String get author => 'Marubuci';

  @override
  String get born => 'An haife';

  @override
  String get died => 'Ya mutu';

  @override
  String get birthplace => 'Wurin Haihuwa';

  @override
  String get department => 'Sashen';

  @override
  String get website => 'Yanar Gizo';

  @override
  String get established => 'An kafa';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Littattafai';

  @override
  String get thisMonth => 'Wannan wata';

  @override
  String get movies => 'Fina-finai';

  @override
  String get shows => 'Shirye-shirye';

  @override
  String get moviesWatched => 'Fina-finan Kallon';

  @override
  String get showsWatched => 'Ana Kallon Nuni';

  @override
  String get moviesCollected => 'An tattara fina-finai';

  @override
  String get showsCollected => 'An Tattara Nuni';

  @override
  String get rewatching => 'Ana sake kallo';

  @override
  String get rereading => 'Ana sake karantawa';

  @override
  String get watchedStatus => 'An kalla';

  @override
  String get planning => 'A shirye';

  @override
  String get paused => 'An dakata';

  @override
  String get watch => 'Kalla';

  @override
  String get read => 'Karanta';

  @override
  String get finished => 'An gama';

  @override
  String get releasing => 'Ana fitarwa';

  @override
  String get cancelled => 'An soke';

  @override
  String get hiatus => 'Hiatus';

  @override
  String get remove => 'Cire';

  @override
  String syncToService(String service) {
    return 'Daidaita zuwa $service';
  }

  @override
  String syncedToService(String service) {
    return 'An daidaita zuwa $service';
  }

  @override
  String get latestReleases => 'Sabbin fitarwa';

  @override
  String get topRated => 'Mafi girman maki';

  @override
  String localSection(String title) {
    return '$title · Na gida';
  }

  @override
  String get localEntryNote =>
      'Wannan take yana jerin gidanka ne kawai a wannan na\'ura. An kashe gyara a nan saboda yana iya karo da jerin asusunka; amma har yanzu za ka iya cire shi.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Kati';

  @override
  String get cardPresetCozy => 'Jin dadi';

  @override
  String get sortTopRated => 'Mafi girman maki';

  @override
  String get sortMostPopular => 'Mafi shahara';

  @override
  String get sortTrending => 'Mai tashe';

  @override
  String get sortNewest => 'Mafi sabo';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Mafi yawan so';

  @override
  String get anyCountry => 'Kowace ƙasa';

  @override
  String get orderScore => 'Maki';

  @override
  String get orderTitle => 'Take';

  @override
  String get orderLastUpdated => 'Sabuntawa ta ƙarshe';

  @override
  String get orderLastAdded => 'Ƙari na ƙarshe';

  @override
  String get never => 'Ba a taɓa ba';

  @override
  String get always => 'Kullum';

  @override
  String get scorePoint100 => 'Maki 100';

  @override
  String get scorePoint10Decimal => 'Maki 10 da ɓangaren goma';

  @override
  String get scorePoint10 => 'Maki 10';

  @override
  String get scorePoint5 => 'Taurari 5';

  @override
  String get scorePoint3 => 'Maki 3 na fuska';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'awa $count',
      one: 'awa 1',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kwana $count',
      one: 'rana 1',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mako $count',
      one: 'mako 1',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Ci gaba';

  @override
  String get resumeSourceMissing => 'Shigar da tushen wannan take don ci gaba';

  @override
  String get resumeRemove => 'Cire daga ci gaba';

  @override
  String resumeAt(String time) {
    return '$time ya rage';
  }

  @override
  String resumePage(int page, int total) {
    return 'Shafi $page cikin $total';
  }

  @override
  String get continueWatching => 'Ci gaba da kallo';

  @override
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

  @override
  String get continueReading => 'Ci gaba da karantawa';

  @override
  String get favouriteAnimeSection => 'Anime ɗin da ake so';

  @override
  String get favouriteMangaSection => 'Manga ɗin da ake so';

  @override
  String get plannedAnime => 'Anime a shirye';

  @override
  String get plannedManga => 'Manga a shirye';

  @override
  String get completedAnime => 'Anime da aka kammala';

  @override
  String get completedManga => 'Manga da aka kammala';

  @override
  String get hiddenMedia => 'Hidden Media';

  @override
  String get recentUpdates => 'Sabuntawa na kwanan nan';

  @override
  String get trendingNow => 'Masu tashe yanzu';

  @override
  String get popularThisSeason => 'Mashahuri a wannan kaka';

  @override
  String get trendingMovies => 'Fina-finai masu tashe';

  @override
  String get topRatedSeries => 'Shirye-shirye mafi girman maki';

  @override
  String get mostFavouriteSeries => 'Shirye-shirye mafi yawan so';

  @override
  String get popularAnime => 'Anime mashahuri';

  @override
  String get trendingManhwa => 'Manhwa mai tashe';

  @override
  String get trendingNovels => 'Novels masu tashe';

  @override
  String get topRatedManga => 'Manga mafi girman maki';

  @override
  String get mostFavouriteManga => 'Manga mafi yawan so';

  @override
  String get popularManga => 'Manga mashahuri';

  @override
  String get topMovies => 'Mafi kyawun fina-finai';

  @override
  String get topOna => 'Mafi kyawun ONA';

  @override
  String get topOva => 'Mafi kyawun OVA';

  @override
  String get mostPopular => 'Mafi shahara';

  @override
  String get mostFavourite => 'Mafi yawan so';

  @override
  String get upcoming => 'Masu zuwa';

  @override
  String get topManga => 'Mafi kyawun manga';

  @override
  String get topManhwa => 'Mafi kyawun manhwa';

  @override
  String get topManhua => 'Mafi kyawun manhua';

  @override
  String get topNovels => 'Mafi kyawun novels';

  @override
  String get topOneShots => 'Mafi kyawun one-shots';

  @override
  String get trendingMoviesToday => 'Fina-finai masu tashe yau';

  @override
  String get trendingShowsToday => 'Shirye-shirye masu tashe yau';

  @override
  String get trendingMoviesWeek => 'Fina-finai masu tashe a wannan mako';

  @override
  String get trendingShowsWeek => 'Shirye-shirye masu tashe a wannan mako';

  @override
  String get mostWatchedMoviesMonth =>
      'Fina-finan da aka fi kallo a wannan wata';

  @override
  String get mostWatchedShowsMonth =>
      'Shirye-shiryen da aka fi kallo a wannan wata';

  @override
  String get trendingThisWeek => 'Masu tashe a wannan mako';

  @override
  String get mostWatchedThisMonth => 'Waɗanda aka fi kallo a wannan wata';

  @override
  String get repoLinksAdded => 'An ƙara hanyoyin repo cikin nasara!';

  @override
  String repoLinkConfirm(String url) {
    return 'Ƙara wannan ma\'ajiyar?\n\n$url\n\nƘara ma\'ajiyar bayanai kawai daga tushen da ka amince da su.';
  }

  @override
  String get errorGettingAnilistData =>
      'Kuskure wajen samun bayanai daga AniList.';

  @override
  String get navInfo => 'BAYANI';

  @override
  String get navComments => 'SHARHI';

  @override
  String get playerNotAvailable => 'Mai kunnawa bai samu ba tukuna';

  @override
  String deepLinkInitialError(String error) {
    return 'Kuskure wajen samun deep link na farko: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Kuskure wajen buɗe hanyar haɗi: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Ba za a iya buɗe wannan hanyar haɗi ba: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Kuskure wajen buɗe hanyar haɗi: $error';
  }

  @override
  String get forReleasingTitles => 'ga take da ake fitarwa yanzu';

  @override
  String get progress => 'Ci gaba';

  @override
  String get notes => 'Bayanan kula';

  @override
  String serviceNotFound(String id) {
    return 'Ba a sami sabis \"$id\" ba';
  }

  @override
  String get glassEffectEnabled => 'An kunna tasirin gilashi';

  @override
  String get glassEffectDisabled => 'An kashe tasirin gilashi';

  @override
  String get materialYouEnabled => 'An kunna Material You';

  @override
  String get materialYouDisabled => 'An kashe Material You';

  @override
  String get darkModeEnabled => 'An kunna yanayin duhu';

  @override
  String get darkModeDisabled => 'An kashe yanayin duhu';

  @override
  String get animeList => 'Jerin anime';

  @override
  String get mangaList => 'Jerin manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Jerin anime na $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Jerin manga na $owner';
  }

  @override
  String get loadingList => 'Ana lodin jeri';

  @override
  String get earlier => 'Da farko';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'kwana $count da suka wuce',
      one: 'kwana 1 da ya wuce',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'awa $count da suka wuce',
      one: 'awa 1 da ta wuce',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'minti $count da suka wuce',
      one: 'minti 1 da ya wuce',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'min $count da ya wuce';
  }

  @override
  String hoursAgoShort(int count) {
    return 'awa $count da ta wuce';
  }

  @override
  String daysAgoShort(int count) {
    return 'kwana $count da suka wuce';
  }

  @override
  String weeksAgoShort(int count) {
    return 'mako $count da suka wuce';
  }

  @override
  String get couldntLoadSource => 'An kasa ɗora wannan tushe';

  @override
  String get followers => 'Masu bi';

  @override
  String couldntLoadTitle(String title) {
    return 'An kasa ɗora $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'An kasa ɗora wannan profile';

  @override
  String get profile => 'Bayanan martaba';

  @override
  String get feed => 'Ciyarwa';

  @override
  String get stats => 'Ƙididdiga';

  @override
  String get received => 'Waɗanda aka karɓa';

  @override
  String get sent => 'Waɗanda aka aika';

  @override
  String get global => 'Na duniya';

  @override
  String get couldntLoadPage => 'An kasa ɗora wannan shafi';

  @override
  String get couldntLoadAllDetails => 'An kasa ɗora duk bayanai';

  @override
  String get series => 'Shirye-shirye';

  @override
  String get studios => 'Studios';

  @override
  String get users => 'Masu amfani';

  @override
  String repositoriesTitle(String type) {
    return 'Wuraren ajiya na $type';
  }

  @override
  String get repositoryUrl => 'URL ɗin wurin ajiya';

  @override
  String get downloadingRepository => 'Ana zazzage wurin ajiya…';

  @override
  String get noRepositories => 'Ba a ƙara wurin ajiya ba';

  @override
  String repoExtensionsCount(String count) {
    return 'Extensions $count';
  }

  @override
  String get searchExtensions => 'Bincika extensions...';

  @override
  String deletePluginTitle(String name) {
    return 'A share $name?';
  }

  @override
  String get deletePluginMessage =>
      'Ka tabbata kana so ka share wannan plugin?';

  @override
  String pluginDeleted(String name) {
    return 'An share $name';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name ba ya cikin wurin ajiyar da aka saita';
  }

  @override
  String get pluginFetchFailed => 'An kasa samun bayanan plugin';

  @override
  String installPluginTitle(String name) {
    return 'Shigar da $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Girma: $size';
  }

  @override
  String get installedState => 'An shigar';

  @override
  String updatePluginTitle(String name) {
    return 'Sabunta $name';
  }

  @override
  String get errorLabel => 'Kuskure:';

  @override
  String get stackTraceDetails => 'Cikakkun bayanai (Stack Trace)';

  @override
  String get shareLogFile => 'Raba fayil ɗin log';

  @override
  String get copyLogs => 'Kwafi logs';

  @override
  String noListToEdit(String service) {
    return '$service ba shi da jerin da za a gyara';
  }

  @override
  String get couldNotReadFile => 'Ba a iya karanta wannan fayil ba';

  @override
  String importedSummary(int anime, int manga) {
    return 'An shigo da anime $anime da manga $manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count sun riga sun kasance';
  }

  @override
  String get airingNow => 'Ana watsawa yanzu';

  @override
  String get topRatedMovies => 'Fina-finai mafi girman maki';

  @override
  String get koreanDramas => 'Wasan kwaikwayo na Koriya';

  @override
  String get chineseDramas => 'Wasan kwaikwayo na China';

  @override
  String get japaneseDramas => 'Wasan kwaikwayo na Japan';

  @override
  String get thaiDramas => 'Wasan kwaikwayo na Thailand';

  @override
  String get turkishDramas => 'Wasan kwaikwayo na Turkiyya';

  @override
  String get miniSeries => 'Gajeren jerin shirye-shirye';

  @override
  String get topRatedShows => 'Shirye-shirye mafi girman maki';

  @override
  String get recommendedSection => 'Shawarwari';

  @override
  String get syncRow => 'Daidaita jerin sunaye';

  @override
  String get syncRowDesc => 'Kwafi jerin sabis ɗaya zuwa sauran asusunka';

  @override
  String get syncTitle => 'Daidaita';

  @override
  String get syncMainService => 'Babban sabis';

  @override
  String get syncMainServiceDesc =>
      'Jerinsa ne tushen gaskiya; ana sabunta kowane sabis da ka shiga don ya yi daidai';

  @override
  String get syncAuto => 'Daidaitawa ta kai tsaye';

  @override
  String get syncAutoDesc =>
      'Ɗauko da daidaita a bango lokacin da app ya buɗe da kowane minti 30';

  @override
  String get syncAddMissing => 'Ƙara shigarwar da suka ɓace';

  @override
  String get syncAddMissingDesc =>
      'Ƙara kuma shigarwar da ɗayan sabis ɗin ba shi da su tukuna';

  @override
  String syncServiceOn(String name) {
    return 'Aiki tare da $name';
  }

  @override
  String get syncDelete => 'Share abin da babban sabis ɗin bashi da shi';

  @override
  String get syncDeleteDesc =>
      'Cire shigarwar daga sauran ayyukan da basa cikin babban jeri. Ana cire shigarwar da za a iya daidaitawa da take kawai, don haka abubuwa kamar fina-finai na Simkl da jerin abubuwan suna tsayawa';

  @override
  String get syncDeleteTitle => 'Share shigarwar?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count shigarwar',
      one: '1 shiga',
    );
    return '$_temp0 waɗanda ba a cikin babban jerinku za a share su daga sauran ayyukan. Ba za a iya soke wannan ba.';
  }

  @override
  String get syncDeleteAction => 'Share';

  @override
  String get syncToDelete => 'Don sharewa';

  @override
  String get syncDeletedNote => 'Za a share';

  @override
  String syncWillRemove(int count, String name) {
    return '$count za a share daga $name';
  }

  @override
  String get syncOnlyForward => 'Kiyaye ci gaba mafi nisa';

  @override
  String get syncOnlyForwardDesc =>
      'Kar a rage ci gaban sabis da ya riga ya wuce';

  @override
  String get animePlanetWontWatch => 'Ba za a kalla ba';

  @override
  String get animePlanetWontRead => 'Ba zai karanta ba';

  @override
  String get animePlanetAlreadyOnList => 'Tuni akan wannan jerin';

  @override
  String get animePlanetNewList => 'Sabon jerin suna';

  @override
  String get syncPrivate => 'shigarwar sirri';

  @override
  String get syncPrivateDesc =>
      'Abin da za ku yi da shigarwar da kuke kiyaye sirri. Sabis tare da zaɓi na sirri yana samun masu zaman kansu; wasu za su nuna su a fili';

  @override
  String get syncPrivateModeAsk => 'Tambayi';

  @override
  String get syncPrivateModeSync => 'Daidaita su';

  @override
  String get syncPrivateModeSkip => 'Tsallake su';

  @override
  String get syncPrivateTitle => 'shigarwar sirri';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count abubuwan shigarwa na sirri ne',
      one: 'Shigar 1 na sirri ne',
    );
    return '$_temp0. Ayyuka tare da zaɓi na sirri (AniList, Kitsu, MangaBaka) zai same su azaman masu zaman kansu; sauran ayyukan ba su da wani zaɓi na sirri kuma za su nuna su a bainar jama\'a. Daidaita su? Ana tuna amsar ku; canza shi ƙarƙashin zaɓuɓɓukan Aiki tare.';
  }

  @override
  String get syncPrivateInclude => 'Daidaita su';

  @override
  String get syncPrivateSkip => 'Tsallake su';

  @override
  String get syncFetch => 'Ɗauko';

  @override
  String get syncFetchAgain => 'Sake ɗauko';

  @override
  String get syncAll => 'Daidaita duka';

  @override
  String get syncStop => 'Tsaya';

  @override
  String get syncResume => 'Ci gaba';

  @override
  String get syncNothingToSync =>
      'Ba za a iya daidaita wannan sabis ɗin ba don wannan nau\'in';

  @override
  String get syncNoTargets => 'Shiga wani sabis don daidaitawa da shi';

  @override
  String get syncLoadingMap => 'Ana lodin taswirar ID';

  @override
  String get syncComparing => 'Ana kwatanta jerin sunaye';

  @override
  String get syncIntro =>
      'Zaɓi babban sabis ka danna Ɗauko. Ana tambayar kowane sabis sau ɗaya don jerinka, sannan a kwatanta da babban.';

  @override
  String get syncStateSynced => 'An daidaita';

  @override
  String get syncStateOutdated => 'Ba a daidaita ba';

  @override
  String get syncStateMissing => 'Ba ya cikin jeri';

  @override
  String get syncStateUnmapped => 'Babu daidaito';

  @override
  String syncPaused(String time) {
    return 'Ana jiran iyakar buƙatu, zai ci gaba nan da $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count suna a $name kawai, ba a taɓa su ba';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done cikin $total';
  }

  @override
  String get syncNothingHere => 'Babu abin nunawa';

  @override
  String syncLimits(int used, int max, String window) {
    return 'An yi amfani da buƙatu $used cikin $max a kowane $window';
  }

  @override
  String get syncMinute => 'minti';

  @override
  String get syncDay => 'rana';

  @override
  String get syncNotInList => 'Ba ya cikin jeri tukuna';

  @override
  String get syncCleared => 'An share shirin';

  @override
  String get syncClear => 'Share';

  @override
  String get syncOptions => 'Zaɓuɓɓuka';

  @override
  String get syncShared => 'Yana raba shigarwarsa da wani abu';

  @override
  String syncNotFound(String service) {
    return 'Ba a samu a $service ba';
  }

  @override
  String syncService(String service, int count) {
    return 'Daidaita $service ($count)';
  }

  @override
  String get syncOnEdit => 'Daidaita canje-canje nan take';

  @override
  String get syncOnEditDesc =>
      'Aika kowane sabuntawar ci gaba da gyaran jeri zuwa sauran sabis ɗinka da kake ciki nan take';

  @override
  String syncRemoved(String services) {
    return 'An cire daga $services';
  }

  @override
  String syncPushed(String services) {
    return 'An daidaita zuwa $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'An iyakance buƙatu, a sake gwadawa nan da ɗan lokaci';

  @override
  String get syncAhead => 'Duk wanda ya riga';

  @override
  String get syncAheadDesc =>
      'Ta bangarori biyu: ga kowane take, shigarwar da ta fi nisa ce ke nasara kuma a kwafe ta zuwa sauran sabis ɗinka';

  @override
  String syncAheadFrom(String service) {
    return 'Daga $service';
  }

  @override
  String get syncConfirm => 'Duba kafin daidaitawa';

  @override
  String get syncConfirmDesc =>
      'Nuna abin da Daidaita duka zai canza da buƙatu nawa yake bukata';

  @override
  String get syncPreviewTitle => 'A shirye don daidaitawa';

  @override
  String syncPreviewLine(int updates, int adds) {
    return 'Sabuntawa $updates, ƙari $adds';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Kimanin buƙatu $count';
  }

  @override
  String syncPreviewLookups(int count) {
    return 'ID $count na buƙatar bincike tukuna';
  }

  @override
  String get syncPreviewNothing => 'Babu abin da za a canza';

  @override
  String get syncStart => 'Fara';

  @override
  String get syncRetry => 'Sake gwadawa';

  @override
  String get syncSkip => 'Tsallake wannan abu';

  @override
  String get syncInclude => 'Sake haɗa wannan abu';

  @override
  String get syncSkippedLabel => 'An tsallake';

  @override
  String get syncChanges => 'Bambance-bambance';

  @override
  String get syncChangeStatus => 'Matsayi';

  @override
  String get syncChangeProgress => 'Ci gaba';

  @override
  String get syncChangeScore => 'Maki';

  @override
  String get syncChangeDates => 'Kwanakin wata';

  @override
  String get syncChangeRepeat => 'Adadin sake kallo';

  @override
  String get syncFailedReason => 'Dalilin gazawa';

  @override
  String get syncSkippedHint =>
      'Ana barin abubuwan da aka tsallake, ko bayan an sake ɗauko';

  @override
  String get commentsRules => 'Dokokin yin sharhi';

  @override
  String get commentsRulesBody =>
      'DUK WANDA YA KARYA KOWACE DOKA = A KORE SHI\n\n1. Babu wariyar launin fata, nuna bambanci ko maganganun ƙiyayya\n2. Babu spam ko tallata kai\n3. Babu abun ciki na NSFW kwata-kwata\n4. Turanci kawai, babu togaciya\n5. Babu kwaikwayon wani, cin zarafi ko zagi\n6. Babu abun ciki na haram ko rashin mutunci mai tsanani ga kowace fandom\n7. Kar ka nema ko ka raba wuraren ajiya ko extensions\n8. Spoilers kawai da alamar spoiler da gargaɗi\n9. Babu maganganun lalata ko marasa dacewa game da haruffa ƙananan yara\n10. Idan ba daidai ba ne, kar ka saka shi!';

  @override
  String get commentsRulesAccept => 'Na gane';

  @override
  String get commentsSortNewest => 'Mafi sabo';

  @override
  String get commentsSortOldest => 'Mafi tsufa';

  @override
  String get commentsSortHighest => 'Mafi girman maki';

  @override
  String get commentsSortLowest => 'Mafi ƙarancin maki';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Babi $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Tace ta episode';

  @override
  String get commentsFilterChapterTitle => 'Tace ta babi';

  @override
  String get commentsFilterTagTitle => 'Shigar da lambar episode ko babi';

  @override
  String get commentsFilterHint => 'Lamba';

  @override
  String get commentsFilterApply => 'Tace';

  @override
  String get commentsFilterClear => 'Nuna duka';

  @override
  String get commentsPlaceholder => 'Ƙara sharhi…';

  @override
  String commentsReplyingTo(String name) {
    return 'Ana amsa wa $name';
  }

  @override
  String get commentsSend => 'Aika';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag na $label (zaɓi)';
  }

  @override
  String get commentsTagEpisode => 'episode';

  @override
  String get commentsTagChapter => 'babi';

  @override
  String commentsTagRange(int total) {
    return '1-$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Lambar $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Tag ba zai wuce jimilla ($total) ba';
  }

  @override
  String get commentsNoTag => 'Babu tag';

  @override
  String get commentsSpoiler => 'Mai ɓarna';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Bincika GIFs';

  @override
  String get commentsGifEmpty => 'Ba a sami GIF ba';

  @override
  String get commentsEmptyText => 'Sharhi ba zai iya zama fanko ba';

  @override
  String get commentsBannedYou => 'An hana ka yin sharhi';

  @override
  String get commentsEdited => 'An gyara sharhi';

  @override
  String get commentsDeleted => 'An share sharhi';

  @override
  String get commentsDeletedPlaceholder => '[an share]';

  @override
  String get commentsReported => 'An kai rahoton sharhi';

  @override
  String get commentsUserBanned => 'An hana mai amfani';

  @override
  String get commentsReport => 'Kai rahoto';

  @override
  String get commentsReportAsk => 'A kai rahoton wannan sharhi ga masu sa ido?';

  @override
  String get commentsDelete => 'Share';

  @override
  String get commentsDeleteAsk => 'Za a cire wannan sharhi ga kowa.';

  @override
  String get commentsBan => 'Hana';

  @override
  String get commentsBanAsk => 'A hana wannan mai amfani yin sharhi?';

  @override
  String get commentsCopy => 'Kwafi';

  @override
  String get commentsViewReply => 'Duba amsa 1';

  @override
  String commentsViewReplies(int count) {
    return 'Duba amsoshi $count';
  }

  @override
  String get commentsHideReplies => 'Ɓoye amsoshi';

  @override
  String get commentsLoadMore => 'Ɗora ƙarin sharhi';

  @override
  String get commentsEmpty => 'Babu sharhi tukuna. Ka zama na farko!';

  @override
  String get commentsEmptyFiltered => 'Babu sharhi ga wannan tacewa';

  @override
  String get commentsSignIn => 'Shiga AniList don karantawa da rubuta sharhi';

  @override
  String get commentsSignInMessage =>
      'Ana raba sharhi tsakanin kowane sabis kuma suna amfani da asusun AniList naka.';

  @override
  String get commentsUnavailable => 'Babu sharhi ga wannan take';

  @override
  String get commentsUnavailableMessage =>
      'Ba a iya daidaita shi da shigarwar AniList ba.';

  @override
  String get commentsDisabled => 'An kashe sharhi';

  @override
  String get commentsDisabledMessage =>
      'Za ka iya sake kunna su a Saituna › Gabaɗaya.';

  @override
  String get commentsOffline => 'An kasa ɗora sharhi';

  @override
  String get commentsSingleTitle => 'Ana nuna sharhi ɗaya';

  @override
  String get commentsShowAll => 'Nuna duk sharhi';

  @override
  String get commentsSettingsHeader => 'Sharhi';

  @override
  String get commentsSettingEnabled => 'Sharhi';

  @override
  String get commentsSettingEnabledDesc =>
      'Nuna tab ɗin Sharhi a take kuma shiga sabar sharhi da asusun AniList naka';

  @override
  String get commentsSettingAlerts => 'Sanarwar amsa';

  @override
  String get commentsSettingAlertsDesc =>
      'A sanar da ni idan wani ya amsa sharhina';

  @override
  String get commentsNoticeReplyTitle => 'Sabuwar amsa ga sharhi';

  @override
  String commentsNoticeReply(String name) {
    return '$name ya amsa sharhinka';
  }

  @override
  String get commentsNoticeWarningTitle => 'Ka sami gargaɗi';

  @override
  String get commentsNoticeWarning => 'Ka kasance mai tunani a sharhinka';

  @override
  String get commentsNoticeUpdateTitle => 'Sabuntawa daga Dantotsu';

  @override
  String get barcodeTitle => 'Duba barcode';

  @override
  String get barcodeTooltip => 'Nemo manga ko novel ta barcode ɗinsa';

  @override
  String get barcodeIntro =>
      'Nuna kyamara ga barcode a bayan juzu\'i, ko rubuta ISBN ɗinsa.';

  @override
  String get barcodeIntroManual =>
      'Rubuta ISBN da aka buga a sama da barcode a bayan juzu\'i.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Wannan ba ISBN mai inganci ba ne';

  @override
  String barcodeNotFound(String isbn) {
    return 'Ba a sami littafi ga $isbn ba';
  }

  @override
  String get barcodeCameraDenied =>
      'Kyamara ba ta samu ba. A ba da izinin kyamara ko a rubuta ISBN maimakon haka.';

  @override
  String get themesTitle => 'Budewa & ƙarewa';

  @override
  String get themesPlayVideo => 'Kunna bidiyo';

  @override
  String get themesPlayAudio => 'Kunna sauti kawai';

  @override
  String get themesOpenSite => 'Buɗe a AnimeThemes';

  @override
  String get themesCredit => 'Themes daga AnimeThemes';

  @override
  String get themesVersions => 'Nau\'o\'i';

  @override
  String get sauceTitle => 'Nemo tushe';

  @override
  String get sauceIntro =>
      'Ɗora shafin manga ko zane, ko manna hanyar haɗinsa, don gano daga ina ya fito.';

  @override
  String get sauceKeyTitle => 'SauceNAO API key';

  @override
  String get sauceKeyHint => 'Zaɓi, yana ɗaga iyakar bincike na yau da kullum';

  @override
  String get sauceKeyDesc => 'Samu key kyauta a saucenao.com/user.php';

  @override
  String get sauceOpen => 'Buɗe tushe';

  @override
  String get sauceCredit => 'Binciken hoto ta SauceNAO';

  @override
  String get sauceEmpty => 'Ba a sami daidai ba';

  @override
  String get sauceTooltip => 'Nemo tushen shafin manga ko zane';

  @override
  String get trendzTitle => 'Charts na anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Haruffan mata';

  @override
  String get trendzMale => 'Haruffan maza';

  @override
  String get trendzCouple => 'Ma\'aurata';

  @override
  String get trendzCredit => 'Charts na mako-mako daga AniTrendz';

  @override
  String get trendzNew => 'SABO';

  @override
  String get trendzEmpty => 'Chart ɗin fanko ne';

  @override
  String get shareCard => 'Katin raba';

  @override
  String get shareCardList => 'Raba katin jeri';

  @override
  String get shareCardSaved => 'An ajiye kati';

  @override
  String get shareCardFailed => 'An kasa yin kati';

  @override
  String get shareCardListEmpty => 'Babu abin da za a raba a jerinka tukuna';

  @override
  String get shareCardTop => 'Zaɓuɓɓukana mafi kyau';

  @override
  String themesEpisodes(String eps) {
    return 'Fitowa $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return 'Daidaito $percent%';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Mako $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return 'Kuri\'u $count';
  }

  @override
  String trendzPeak(String rank) {
    return 'Kololuwa #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'Mako $count a cikin goma na sama';
  }

  @override
  String get imageSearchTitle => 'Bincike da hoto';

  @override
  String get imageSearchTooltip => 'Nemo anime daga screenshot';

  @override
  String get imageSearchIntro =>
      'Zaɓi screenshot ko manna hanyar hoto kuma trace.moe zai nemo episode da lokacin da ya fito.';

  @override
  String get imageSearchPick => 'Zaɓi hoto';

  @override
  String get imageSearchLinkHint => 'Manna hanyar hoto';

  @override
  String get imageSearchGo => 'Bincika';

  @override
  String get imageSearchEmpty => 'Ba a sami daidai ba';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Episode $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'a $time';
  }

  @override
  String get imageSearchPreview => 'Samfotin clip';

  @override
  String imageSearchSimilarity(int percent) {
    return 'Daidaito $percent%';
  }

  @override
  String get imageSearchCredit => 'Ƙarfin trace.moe';

  @override
  String get imageSearchOpenFailed => 'Ba a iya buɗe wannan take ba';

  @override
  String get groups => 'Ƙungiyoyi';

  @override
  String get groupsYours => 'Ƙungiyoyinka';

  @override
  String get groupsPopular => 'Mashahuri';

  @override
  String get groupsNew => 'Sabo';

  @override
  String get groupsFeatured => 'Na musamman';

  @override
  String get groupsSearch => 'Bincika ƙungiyoyi';

  @override
  String get groupsAll => 'Duka';

  @override
  String get groupsEmpty => 'Ba a sami ƙungiya ba';

  @override
  String get groupsEmptyYours => 'Ba ka shiga kowace ƙungiya ba tukuna';

  @override
  String get groupsSignIn => 'Shiga don ganin ƙungiyoyin da ka shiga';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mambobi $count',
      one: 'memba 1',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Shiga';

  @override
  String get groupsJoined => 'An shiga';

  @override
  String get groupsLeave => 'Bar ƙungiya';

  @override
  String get groupsLeaveAsk =>
      'Ba za ka ƙara ganin saƙonnin wannan ƙungiya a feed ɗinka ba.';

  @override
  String get groupsJoinFailed =>
      'An kasa shiga wannan ƙungiya, mai yiwuwa da gayyata kawai ake shiga';

  @override
  String get groupsLeaveFailed => 'An kasa barin wannan ƙungiya';

  @override
  String get groupsPosts => 'Saƙonni';

  @override
  String get groupsMembersTab => 'Mambobi';

  @override
  String get groupsAbout => 'Game da';

  @override
  String get groupsRules => 'Dokoki';

  @override
  String get groupsPrivacyOpen => 'A buɗe';

  @override
  String get groupsPrivacyRestricted => 'Mai iyaka';

  @override
  String get groupsPrivacyClosed => 'A rufe';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'An kasa ɗora wannan ƙungiya';

  @override
  String get groupsNewPost => 'Saka a ƙungiya';

  @override
  String get groupsPostHint => 'Raba wani abu da ƙungiya';

  @override
  String get groupsOpenInBrowser => 'Buɗe a browser';

  @override
  String get groupsCategory => 'Rukuni';

  @override
  String get groupsLanguage => 'Harshe';

  @override
  String get groupsCreated => 'An ƙirƙira';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'shugabanni $count',
      one: 'shugaba 1',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Sirri';

  @override
  String get notificationsAll => 'Duka';

  @override
  String get notificationsAiring => 'Ana watsawa';

  @override
  String get notificationsMedia => 'Sabbin take';

  @override
  String get notificationsReplies => 'Amsoshi';

  @override
  String get notificationsMentions => 'Ambato';

  @override
  String get notificationsMessages => 'Saƙonni';

  @override
  String get notificationsLikes => 'Likes';

  @override
  String get notificationsFollows => 'Masu bi';

  @override
  String get notificationsNoServices => 'Babu sabis da ka shiga mai sanarwa';

  @override
  String get notificationsNoServicesMessage =>
      'Shiga sabis da ke aika sanarwa kuma za su bayyana a nan.';

  @override
  String get notificationsEmptyKind => 'Babu komai a wannan rukuni tukuna';

  @override
  String get notificationsCommentsEmpty => 'Babu sanarwar sharhi';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Amsoshi ga sharhinka da sanarwa daga Dantotsu suna bayyana a nan.';

  @override
  String get notificationsSettings => 'Saitunan sanarwa';

  @override
  String get notificationsPollTitle => 'Duba sabbin sanarwa';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Kowane minti $minutes yayin da app ke buɗe';
  }

  @override
  String get notificationsNotifyAbout => 'A sanar da ni game da';

  @override
  String get notificationsCommentsHeader => 'Sanarwar sharhi';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Nuna sanarwar system ga kowace sanarwar $service da ba a karanta ba yayin da app ke gudana.';
  }

  @override
  String get notificationsTestSent => 'An aika sanarwar gwaji';

  @override
  String get notificationsTestDenied =>
      'Ba a yarda da sanarwa ga Dartotsu ba. Kunna su a saitunan system.';

  @override
  String get notificationsTestHint => 'Danna ka riƙe don aika sanarwar gwaji';

  @override
  String get notificationsTestSample => 'Wannan sanarwar gwaji ce';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name ya amsa sharhinka a $media';
  }

  @override
  String get imageSearchNotLink => 'Wannan bai yi kama da hanyar haɗi ba';

  @override
  String get imageSearchQuota => 'Iyakar bincike ta ƙare';

  @override
  String get imageSearchBusy =>
      'Buƙatu da yawa, a sake gwadawa nan da ɗan lokaci';

  @override
  String imageSearchFailed(int code) {
    return 'Bincike ya kasa ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return 'Sabbin sanarwa $count';
  }

  @override
  String get reactionsTitle => 'Martani';

  @override
  String get reactionsNeedEntry =>
      'Ƙara wannan take a jerinka kafin yin martani';

  @override
  String get reactionsAdd => 'Ƙara martani';

  @override
  String get reactionsHint => 'Me ka gani? (a taƙaice kuma ba spoiler)';

  @override
  String get reactionsPost => 'Saka';

  @override
  String get reactionsFailed => 'An kasa sabunta martani';

  @override
  String get settingsWatch => 'Kalla & karanta';

  @override
  String get settingsWatchDesc =>
      'Jerin episode, daidaita tushe da bayanan episode';

  @override
  String get watchSettingsLayout => 'Jerin episode';

  @override
  String get watchSettingsSources => 'Tushe';

  @override
  String get watchSettingsMetadata => 'Bayanan episode';

  @override
  String get watchLayout => 'Tsari';

  @override
  String get watchListView => 'Jeri';

  @override
  String get watchGridView => 'Grid';

  @override
  String get watchCompactView => 'Ƙarami';

  @override
  String get watchDefaultLayoutDesc =>
      'Yadda ake tsara episodes da babuka har sai ka canza shi ga wani take';

  @override
  String get watchChunkSize => 'Girman kewayo';

  @override
  String get watchChunkSizeDesc =>
      'Episodes ko babuka nawa kowane tab na kewayo ke ɗauka';

  @override
  String get watchShowDescription => 'Nuna bayani';

  @override
  String get watchShowDescriptionDesc =>
      'Nuna taƙaicin episode a ƙarƙashin kowane take a tsarin jeri';

  @override
  String get watchShowFiller => 'Nuna episodes na filler';

  @override
  String get watchShowFillerDesc =>
      'A kashe don ɓoye episodes da aka yi wa alama filler';

  @override
  String get watchBlurUnwatched => 'Ɓoye hotunan spoiler';

  @override
  String get watchBlurUnwatchedDesc =>
      'Dusashe hoton episodes da ba ka kalla ba tukuna';

  @override
  String get watchResumeShelf => 'Shiryayyen ci gaba';

  @override
  String get watchResumeShelfDesc => 'Nuna layin Ci gaba a Home';

  @override
  String get watchMarkOnLongPress => 'Dogon danna yana yi wa ci gaba alama';

  @override
  String get watchMarkOnLongPressDesc =>
      'Danna ka riƙe episode ko babi don yi masa alama an kalla ko ba a kalla ba';

  @override
  String get watchMatching => 'Daidaita tushe';

  @override
  String get watchMatchingDesc =>
      'Mafi kusa yana ɗaukar mafi kyawun sakamakon bincike. Daidai kawai yana karɓar take mai kama da juna kuma ya bar sauran ka zaɓa.';

  @override
  String get watchMatchClosest => 'Mafi kusa';

  @override
  String get watchMatchExact => 'Daidai kawai';

  @override
  String get watchMetadataDesc =>
      'Daga ina take na episode, taƙaici, hotuna, ranakun fitowa da alamun filler suke zuwa. Ja don saita fifiko; tushen farko mai ƙima shi ne yake nasara.';

  @override
  String get watchMetaAniZipDesc =>
      'Take na episode, taƙaici, hotuna da ranakun fitowa';

  @override
  String get watchMetaKitsuDesc => 'Take na episode, bayani da hotuna';

  @override
  String get watchMetaSimklDesc =>
      'Take na episode, bayani, hotuna da ranakun fitowa';

  @override
  String get watchMetaAniListDesc =>
      'Take na episodes na streaming, hotuna da jadawalin fitowa';

  @override
  String get watchMetaTenraiDesc =>
      'Take na episodes na MyAnimeList, ranakun fitowa, alamun filler da recap ta Tenrai';

  @override
  String get watchClearMetadata => 'Sabunta bayanan episode';

  @override
  String get watchClearMetadataDesc =>
      'Manta bayanan episode da aka adana don a sake ɗauko su';

  @override
  String get watchMetadataCleared => 'Za a sake ɗauko bayanan episode';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episodes $count',
      one: 'Episode 1',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Babuka $count',
      one: 'Babi 1',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Episode $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Babi $number';
  }

  @override
  String get watchSearching => 'Ana bincike…';

  @override
  String watchSearchingFor(String term) {
    return 'Ana bincike: $term';
  }

  @override
  String watchSelected(String title) {
    return 'An zaɓa: $title';
  }

  @override
  String watchFound(String title) {
    return 'An samu: $title';
  }

  @override
  String get watchNothingFound => 'Ba a sami komai a wannan tushen ba';

  @override
  String get watchSearchFailed => 'Binciken tushe ya kasa';

  @override
  String get watchLoadFailed => 'An kasa ɗora jeri';

  @override
  String get watchSignInToTrack => 'Shiga don bibiyar ci gabanka';

  @override
  String watchInstallSource(String action) {
    return 'Shigar da extension don fara $action';
  }

  @override
  String get watchSourceMissing => 'Ba a shigar da wannan tushen ba';

  @override
  String get watchWrongTitle => 'Take mara kyau?';

  @override
  String get watchSearchAgain => 'Sake bincike';

  @override
  String watchSearchSource(String source) {
    return 'Bincika $source';
  }

  @override
  String get watchSource => 'Tushe';

  @override
  String get sourceTags => 'Tags';

  @override
  String get sourceTagsHint =>
      'Yi alama ga abin da wannan tushen yake. Take yana lissafin hanyoyin da aka yiwa alama da farko, sannan waɗanda ba a yiwa alama ba. 18+ kafofin suna nunawa kawai don taken manya.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Fina-finai & Jerin';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Boye ta tags';

  @override
  String get watchOptions => 'Zaɓuɓɓuka';

  @override
  String get watchSelect => 'Select';

  @override
  String get watchSelectAll => 'Select all';

  @override
  String watchSelectedCount(int count) {
    return '$count selected';
  }

  @override
  String get watchNoneDownloaded => 'None of the selected items are downloaded';

  @override
  String get watchReverse => 'Juyar da tsari';

  @override
  String get watchScanlators => 'Ƙungiyoyi';

  @override
  String get watchResetOptions => 'Sake saita waɗannan zaɓuɓɓuka';

  @override
  String get watchContinue => 'Ci gaba';

  @override
  String get watchStart => 'Fara';

  @override
  String get watchPlay => 'Kunna';

  @override
  String get watchRead => 'Karanta';

  @override
  String get watchMarkWatched => 'Yi alamar an kalla';

  @override
  String get watchMarkUnwatched => 'Yi alamar ba a kalla ba';

  @override
  String get watchMarkRead => 'Yi alamar an karanta';

  @override
  String get watchMarkUnread => 'Yi alamar ba a karanta ba';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Maimaita';

  @override
  String get watchNoEpisodes => 'Ba a sami episode ba';

  @override
  String get watchNoChapters => 'Ba a sami babi ba';

  @override
  String get watchSourceTools => 'Kayan aikin tushe';

  @override
  String get watchSourceSettings => 'Saitunan tushe';

  @override
  String get watchOpenWebView => 'Buɗe a web view';

  @override
  String get watchOpenWebViewDesc =>
      'Warware binciken Cloudflare ko shiga; ana raba cookies da buƙatun tushe';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cookies $count da aka adana ga $host',
      one: 'Cookie 1 da aka adana ga $host',
      zero: 'Babu cookies da aka adana ga $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Izinin Cloudflare yana aiki, $time';
  }

  @override
  String get watchClearanceMissing => 'Babu cookie na izinin Cloudflare';

  @override
  String get watchClearanceSession => 'yana dawwama har app ya rufe';

  @override
  String get watchAgentShared =>
      'Buƙatu suna amfani da user agent na web view, wanda Cloudflare ke dubawa';

  @override
  String get watchAgentCustom =>
      'An saita user agent na musamman, don haka izinin Cloudflare daga web view na iya a ƙi shi';

  @override
  String get watchTestConnection => 'Gwada haɗi';

  @override
  String get watchSolveChallenge => 'Warware shi';

  @override
  String watchProbeOk(int code) {
    return 'Ana iya isa (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare yana neman bincike har yanzu';

  @override
  String watchProbeBlocked(int code) {
    return 'Shafin ya toshe (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Ba a iya isa shafin ba';

  @override
  String get watchClearCookies => 'Share cookies na wannan shafi';

  @override
  String get watchCookiesCleared => 'An share cookies';

  @override
  String get watchFailTimeout => 'cak din bai kare kan lokaci ba';

  @override
  String get watchFailBlocked =>
      'Shafin ya toshe wannan na\'urar (an hana shiga). Dubawa ba zai taimaka ba';

  @override
  String get watchFailTurnstile =>
      'Wannan cak ɗin yana buƙatar famfo wanda mai warware matsalar baya iya yi';

  @override
  String get watchFailLoad =>
      'Shafin bai loda ba. Duba haɗin da adireshin rukunin yanar gizon';

  @override
  String get watchFailRejected =>
      'Shafin ya yi watsi da izinin da ya bayar. A sake gwadawa ko share kukis';

  @override
  String get watchFailDismissed => 'An rufe cak kafin ya gama';

  @override
  String get watchFailCooldown =>
      'Kun rufe cak ɗin kwanan baya. Latsa Warware shi don sake gwadawa';

  @override
  String get watchFailQuiet =>
      'Duban yana buƙatar ku, kuma app ɗin yana aiki da kansa';

  @override
  String get watchFailWebView => 'Duban gidan yanar gizon baya ya kasa farawa';

  @override
  String get watchFailUnavailable => 'Babu allon da zai nuna cak ɗin';

  @override
  String get watchStatusReady => 'Shirya';

  @override
  String get watchStatusChallenge => 'Ana buƙatar duba Cloudflare';

  @override
  String get watchStatusBlocked => 'An katange ta wurin';

  @override
  String get watchStatusOffline => 'Ba za a iya isa wurin ba';

  @override
  String get watchStatusUntested => 'Ba a gwada shi ba tukuna';

  @override
  String get watchStatusTesting => 'Ana gwada haɗin…';

  @override
  String get watchStatusSolving => 'Ana wucewa rajistan Cloudflare…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Binciken Cloudflare ya wuce a bango ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare rajistan shiga ya wuce';

  @override
  String watchClearanceIssued(String time) {
    return 'ya samu $time';
  }

  @override
  String get watchClearanceStale =>
      'An sami izini tare da wani wakilin mai amfani, don haka ba a aika shi ba. Gwada haɗin don samun sabuwa';

  @override
  String get watchSectionConnection => 'Haɗin kai';

  @override
  String get watchSectionSession => 'Zama';

  @override
  String get watchSectionTools => 'Kayan aiki';

  @override
  String get watchMetaSource => 'Bayanan episode daga';

  @override
  String get watchMetaAuto => 'Kai tsaye';

  @override
  String get watchMetaOff => 'A kashe';

  @override
  String get playerSettingsTitle => 'Saitunan mai kunnawa';

  @override
  String get playerSectionPlayback => 'Kunnawa';

  @override
  String get playerSectionSkip => 'Tsallakewa';

  @override
  String get playerSectionGestures => 'Sarrafawa';

  @override
  String get playerSectionSubtitles => 'Subtitles';

  @override
  String get playerSectionShaders => 'Shaders';

  @override
  String get playerSectionEngine => 'Injin';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Saurin kunnawa';

  @override
  String get localSource => 'Fayilolin gida';

  @override
  String get localMissing =>
      'Wannan fayil ko babban fayil ɗin baya cikin babban fayil ɗin ku';

  @override
  String get playerStickyStage => 'Bidiyo mai ɗaure';

  @override
  String get playerStickyStageDesc =>
      'Ci gaba da gyara bidiyon a saman yayin da kuke gungurawa da sharhin da ke ƙasa';

  @override
  String get playerCursedSpeed => 'Ƙarin gudu';

  @override
  String get playerCursedSpeedDesc => 'Ƙara gudu har zuwa 10x a jeri';

  @override
  String get playerResize => 'Yanayin sake girma';

  @override
  String get playerFitFit => 'Dacewa';

  @override
  String get playerFitCover => 'Rufewa';

  @override
  String get playerFitStretch => 'Miƙewa';

  @override
  String get playerSkipDuration => 'Tsawon maɓallin tsallakewa';

  @override
  String get playerSkipDurationDesc =>
      'Daƙiƙun da maɓallin tsallakewa ke tsalle a wajen openings da endings';

  @override
  String get playerSeekDuration => 'Danna sau biyu don tsalle';

  @override
  String get playerSeekDurationDesc =>
      'Daƙiƙun tsalle idan an danna sau biyu ko maɓallin kibiya';

  @override
  String get playerAutoPlay => 'Kunna na gaba kai tsaye';

  @override
  String get playerAutoPlayDesc => 'Fara episode na gaba idan wannan ya ƙare';

  @override
  String get playerResume => 'Ci gaba daga inda ka tsaya';

  @override
  String get playerResumeDesc => 'Ci gaba da episode daga matsayinsa na ƙarshe';

  @override
  String get playerOrientation => 'Yanayin allo';

  @override
  String get playerOrientationAuto => 'Bi na\'ura';

  @override
  String get playerOrientationLandscape => 'Tsarin ƙasa';

  @override
  String get playerOrientationPortrait => 'Hoton hoto';

  @override
  String get playerAutoSkipOpening => 'Tsallake openings';

  @override
  String get playerAutoSkipEnding => 'Tsallake endings';

  @override
  String get playerAutoSkipRecap => 'Tsallake recaps';

  @override
  String get playerAutoSkipDesc =>
      'Tsallake nan take da ya fara, ta amfani da AniSkip da timestamps na stream';

  @override
  String get playerDisableSkips => 'Kashe tsalle-tsalle';

  @override
  String get playerDisableSkipsDesc =>
      'Babu AniSkip ko jera tambura, alamomin babi ko tsallake ƙaddamarwa a cikin mai kunnawa';

  @override
  String get playerSkipOnce => 'Tsallake sau ɗaya kawai';

  @override
  String get playerSkipOnceDesc =>
      'Kar a sake tsallake sashe ɗaya idan ka koma cikinsa';

  @override
  String get playerAdjustBrightness => 'Alamar haske';

  @override
  String get playerAdjustBrightnessDesc =>
      'Zazzage sama da ƙasa a rabin allon na dama';

  @override
  String get playerAdjustVolume => 'Alamar ƙarar sauti';

  @override
  String get playerAdjustVolumeDesc =>
      'Zazzage sama da ƙasa a rabin allon na hagu';

  @override
  String get playerHoldToSpeed => 'Riƙe don ƙara gudu';

  @override
  String get playerHoldToSpeedDesc =>
      'Danna ka riƙe bidiyo don kunna da sauri, ja a gefe don canza gudu';

  @override
  String get playerThumbless => 'Seek bar mai kauri';

  @override
  String get playerThumblessDesc => 'Bar mai kauri ba tare da ɗan yatsa ba';

  @override
  String get playerShowSubtitles => 'Nuna subtitles';

  @override
  String get playerShowSubtitlesDesc =>
      'A kashe don ɓoye duk hanyoyin subtitle';

  @override
  String get playerSubtitleLanguage => 'Harshen subtitle da aka fi so';

  @override
  String get playerSubtitleSize => 'Girman subtitle';

  @override
  String get playerSubtitleWeight => 'Kaurin subtitle';

  @override
  String get playerSubtitleBottom => 'Padding na ƙasa na subtitle';

  @override
  String get playerSubtitleFont => 'Rubutun subtitle';

  @override
  String get playerSubtitleColor => 'Launin subtitle';

  @override
  String get playerSubtitleBackground => 'Bangon subtitle';

  @override
  String get playerSubtitleOutline => 'Layin waje na subtitle';

  @override
  String get playerSubtitleOutlineWidth => 'Faɗin faɗuwar taken taken';

  @override
  String get playerSubtitlePreview => 'Duban taken taken';

  @override
  String get playerSubtitlePreviewText => 'Rubutun preview subtitle';

  @override
  String get playerLibass => 'Yi amfani da libass';

  @override
  String get playerLibassDesc =>
      'Nuna subtitles na .ass masu salo. Girma, launi da rubutun da ke sama ba za su yi aiki ba';

  @override
  String get playerShaders => 'Shaders';

  @override
  String get playerShadersEnable => 'Kunna shaders';

  @override
  String get playerShadersEnableDesc =>
      'Ƙara inganci da tsabtace hoto da shaders na GLSL kamar Anime4K';

  @override
  String get playerShadersOff => 'An kashe shaders';

  @override
  String get playerShadersMissing => 'Ba a shigar da Anime4K ba';

  @override
  String get playerShadersMissingDesc =>
      'Zazzage fakitin shader na Anime4K (kusan 0.8 MB) don amfani da yanayin da aka gina.';

  @override
  String get playerShadersDownload => 'Zazzage Anime4K';

  @override
  String get playerPictureSave => 'Ajiye wannan firam';

  @override
  String get playerPictureOriginal => 'Na asali';

  @override
  String get playerPictureOriginalDesc =>
      'Firam kamar yadda bidiyon ke da shi, ba tare da inuwa ko launuka ba';

  @override
  String get playerPictureProcessed => 'Tare da shaders da launuka';

  @override
  String get playerPictureProcessedDesc =>
      'Firam ɗin kamar yadda kuke gani yanzu';

  @override
  String get playerPictureSaved => 'Ajiye firam';

  @override
  String get playerPictureSaveFailed => 'An kasa ajiye firam ɗin';

  @override
  String get playerShadersPreview => 'Samfoti a wannan frame';

  @override
  String get playerShadersUse => 'Yi amfani da wannan';

  @override
  String get playerPicture => 'Hoto';

  @override
  String get playerColors => 'Launuka';

  @override
  String get playerColorDefault => 'Tsoho';

  @override
  String get playerColorVivid => 'Mai haske';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Mai laushi';

  @override
  String get playerColorCinematic => 'Cinematic';

  @override
  String get playerColorBright => 'Haske';

  @override
  String get playerColorNight => 'Dare';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Na musamman';

  @override
  String get playerColorBrightness => 'Haske';

  @override
  String get playerColorContrast => 'Kwatancen';

  @override
  String get playerColorSaturation => 'Jikewa';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Hue';

  @override
  String get playerColorReset => 'Sake saita';

  @override
  String get playerColorAdjust => 'Daidaita';

  @override
  String get playerShadersOriginal => 'Na asali';

  @override
  String get playerShadersPreviewFailed => 'An kasa ɗaukar frame don samfoti';

  @override
  String get playerShadersSoftware =>
      'Shaders suna buƙatar ƙirar kayan aiki, kuma mai kunnawa yana amfani da ma\'anar software. Kashe aikin software a cikin saitunan mai kunnawa.';

  @override
  String get playerSoftwareRender => 'Mayar da software';

  @override
  String get playerSoftwareRenderDesc =>
      'Kawai don baƙar fata bidiyo. Shaders ba sa aiki da shi. Ana nema a gaba lokacin da mai kunnawa ya buɗe';

  @override
  String get playerShadersCustomFiles => 'Shaders ɗinka';

  @override
  String get playerShadersCustom => 'Shaders na musamman';

  @override
  String get playerShadersImport => 'Shigo da .glsl';

  @override
  String get playerShadersNone =>
      'Shigo da fayilolin .glsl ko .hook naka kuma yi musu alama don haɗa su';

  @override
  String get playerShadersBadFile => 'Zaɓi fayil ɗin shader na .glsl ko .hook';

  @override
  String get playerDecoder => 'Decoder';

  @override
  String get playerDecoderAuto => 'Kai tsaye';

  @override
  String get playerDecoderAutoSafe => 'Kai tsaye (amintacce)';

  @override
  String get playerDecoderSoftware => 'Software';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware +';

  @override
  String get playerVideoOutput => 'Fitarwar bidiyo';

  @override
  String get playerAudioChannels => 'Tashoshin sauti';

  @override
  String get playerBuffer => 'Girman buffer (MB)';

  @override
  String get playerBufferDesc =>
      'Memory da mai kunnawa zai iya amfani da shi don buffer na stream';

  @override
  String get playerUseMpvConf => 'Yi amfani da mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Aiwatar da zaɓuɓɓukan mpv.conf naka idan kunnawa ta fara';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Gyara tsarin mpv';

  @override
  String get playerMpvConfDesc =>
      'Zaɓi ɗaya a kowane layi, kamar --hwdec=auto a mpv.conf na yau da kullum. Ana yin watsi da profiles da ke cikin [brackets].';

  @override
  String get playerMpvConfSaved => 'An ajiye mpv.conf';

  @override
  String get playerUseScripts => 'Yi amfani da scripts na mpv';

  @override
  String get playerUseScriptsDesc =>
      'Ɗora plugins daga folder na scripts. Suna buƙatar libmpv build mai goyon bayan Lua ko JavaScript';

  @override
  String get playerScripts => 'Scripts na mpv';

  @override
  String get playerScriptsManage => 'Ƙara, cire da sauya plugins';

  @override
  String get playerScriptsAdd => 'Ƙara script';

  @override
  String get playerScriptsDesc =>
      'Ana ɗora plugins na Lua, JavaScript da na asali da aka sa a nan idan kunnawa ta fara.';

  @override
  String get playerScriptsNone => 'Babu scripts tukuna';

  @override
  String get playerScriptsBadFile =>
      'Zaɓi fayil ɗin .lua, .js ko plugin na asali';

  @override
  String get playerTuning => 'Gyaran bidiyo na ci gaba';

  @override
  String get playerTuningDesc =>
      'Soke sync, caching, scaling da tone mapping. Ƙimar da ba daidai ba na iya lalata kunnawa';

  @override
  String get playerVideoSync => 'Sync na bidiyo';

  @override
  String get playerInterpolation => 'Tsarin tsaka-tsaki';

  @override
  String get playerInterpolationDesc =>
      'Motsi mai santsi, yana buƙatar display-resample sync';

  @override
  String get playerPitch => 'Gyaran pitch';

  @override
  String get playerPitchDesc => 'Kiyaye muryoyi na halitta a wasu gudu';

  @override
  String get playerCacheSeconds => 'Cache (daƙiƙu)';

  @override
  String get playerReadahead => 'Karanta gaba (daƙiƙu)';

  @override
  String get playerThreads => 'Zaren ƙira';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Rage banding na launi a gradients';

  @override
  String get playerDebandIterations => 'Iterations na deband';

  @override
  String get playerDebandThreshold => 'Threshold na deband';

  @override
  String get playerCorrectDownscaling => 'Downscaling daidai';

  @override
  String get playerSigmoid => 'Sigmoid yana haɓakawa';

  @override
  String get playerScale => 'Upscaler';

  @override
  String get playerCscale => 'Chroma upscaler';

  @override
  String get playerDscale => 'Downscaler';

  @override
  String get playerToneMapping => 'Taswirar sautin';

  @override
  String get playerTargetPeak => 'Kololuwar manufa';

  @override
  String get playerOpenFiles => 'Buɗe fayilolin bidiyo';

  @override
  String get playerOpenFilesDesc => 'Kunna fayiloli daga wannan na\'ura';

  @override
  String get playerOpenFolder => 'Buɗe folder';

  @override
  String get playerOpenFolderDesc =>
      'Kunna kowane bidiyo a folder a matsayin playlist';

  @override
  String get playerNetworkStream => 'Ramin hanyar sadarwa';

  @override
  String get playerNetworkStreamDesc => 'Buɗe hanyar bidiyo kai tsaye ko HLS';

  @override
  String get playerStreamUrl => 'URL na stream';

  @override
  String get playerStreamReferer => 'Referer (zaɓi)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc =>
      'Yi stream na magnet link ko fayil ɗin .torrent';

  @override
  String get playerMagnetLink => 'Magnet link ko URL na torrent';

  @override
  String get playerPickTorrent => 'Zaɓi fayil ɗin .torrent';

  @override
  String get playerTorrentMissing =>
      'Shigar da torrent addon daga Saituna > Addons tukuna';

  @override
  String get playerNoVideos => 'Ba a sami bidiyon da za a iya kunnawa ba';

  @override
  String get playerReset => 'Sake saita saitunan mai kunnawa';

  @override
  String get playerResetDesc =>
      'Mayar da kowane zaɓi na mai kunnawa zuwa tsoho';

  @override
  String get playerResetConfirm => 'A sake saita duk saitunan mai kunnawa?';

  @override
  String get playerResetDone => 'An sake saita saitunan mai kunnawa';

  @override
  String get playerQuality => 'Inganci';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Hard Sub';

  @override
  String get streamGroupSoftSub => 'Mai laushi Sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Danye';

  @override
  String get streamGroupOther => 'Sauran';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count koguna',
      one: '1 rafi',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Rafukan ruwa';

  @override
  String get playerStreamFailedNext =>
      'Wannan rafi ba zai yi wasa ba, gwada na gaba';

  @override
  String get playerAutoSelect => 'Zaɓin stream kai tsaye';

  @override
  String get playerAutoSelectDesc =>
      'Zaɓi stream ɗin da ya fi kama da zaɓinka na ƙarshe ga wannan take';

  @override
  String get playerLoadingStreams => 'Ana neman streams…';

  @override
  String get playerNoStreams => 'Wannan episode ba shi da stream';

  @override
  String get playerNoStreamsTitle => 'Ba a sami stream ba';

  @override
  String get playerFailed => 'Kunnawa ta kasa';

  @override
  String get playerTorrentNeeded => 'Wannan stream torrent ne';

  @override
  String get playerTorrentNeededDesc =>
      'Shigar da torrent addon don kunna magnet links da fayilolin .torrent';

  @override
  String get playerOpenAddons => 'Buɗe addons';

  @override
  String get playerTryAnotherStream => 'Gwada wani stream';

  @override
  String get playerEpisodes => 'Fitowa';

  @override
  String get playerLock => 'Kulle sarrafawa';

  @override
  String get playerFullscreen => 'Cikakken allo';

  @override
  String get readerChapters => 'Babuka';

  @override
  String get readerSettingsTitle => 'Saitunan mai karatu';

  @override
  String get readerPreviousChapter => 'Babin da ya gabata';

  @override
  String get readerNextChapter => 'Babi na gaba';

  @override
  String get readerFirstChapter => 'Wannan shi ne babi na farko';

  @override
  String get readerLastChapter => 'Ka cim ma duka';

  @override
  String get readerFailed => 'Ba a iya buɗe wannan babi ba';

  @override
  String get readerOpenBook => 'Bude littafi';

  @override
  String get readerOpenBookDesc =>
      'Karanta epub (mai karanta labari) ko PDF (mai karanta manga) daga fayilolinku';

  @override
  String get readerNoText => 'Wannan babi ba shi da rubutu';

  @override
  String get readerPerTitle => 'Wannan take kawai';

  @override
  String get readerPerTitleDesc =>
      'Kiyaye waɗannan saitunan mai karatu don wannan take kawai';

  @override
  String get readerSectionReading => 'Karatu';

  @override
  String get readerSectionControls => 'Sarrafawa';

  @override
  String get readerSectionDisplay => 'Nuni';

  @override
  String get readerSectionNovel => 'Novel';

  @override
  String get readerMode => 'Yanayin karatu';

  @override
  String get readerModeAuto => 'Auto (ta jerin nau\'in)';

  @override
  String get readerModeRtl => 'Dama zuwa hagu';

  @override
  String get readerModeLtr => 'Hagu zuwa dama';

  @override
  String get readerModeVertical => 'Shafuka a tsaye';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Gungurawa mai ci gaba';

  @override
  String get readerScale => 'Sikelin hoto';

  @override
  String get readerScaleFit => 'Dacewa da allo';

  @override
  String get readerScaleWidth => 'Dacewa da faɗi';

  @override
  String get readerScaleHeight => 'Dacewa da tsawo';

  @override
  String get readerScaleOriginal => 'Girman asali';

  @override
  String get readerScaleSmart => 'Fit mai hankali';

  @override
  String get readerDoublePage => 'Shafuka biyu';

  @override
  String get readerDoublePageDesc =>
      'Nuna shafuka biyu gefe da gefe a landscape';

  @override
  String get readerDoubleTapZoom => 'Danna sau biyu don zuƙowa';

  @override
  String get readerDoubleTapZoomDesc =>
      'Zuƙowa shafi ciki da waje da danna sau biyu';

  @override
  String get readerAnimate => 'Animation na shafi';

  @override
  String get readerAnimateDesc => 'Yi animation wajen juya shafi';

  @override
  String get readerSidePadding => 'Padding na gefe';

  @override
  String get readerSidePaddingDesc => 'Sarari a gefen shafuka a kashi dari';

  @override
  String get readerPageGap => 'Tazarar shafi';

  @override
  String get readerPageGapDesc => 'Sarari tsakanin shafuka';

  @override
  String get readerAutoNext => 'Ci gaba zuwa babi na gaba';

  @override
  String get readerAutoNextDesc =>
      'Ɗora babi na gaba yayin da kake karanta ƙarshen wannan';

  @override
  String get readerPreload => 'Preload shafuka';

  @override
  String get readerPreloadDesc => 'Shafuka nawa za a zazzage a gaba';

  @override
  String get readerTapZones => 'Wuraren taɓawa';

  @override
  String get readerTapDefault => 'Tsoho';

  @override
  String get readerTapLShaped => 'Siffar L';

  @override
  String get readerTapKindle => 'Kamar Kindle';

  @override
  String get readerTapEdge => 'Gefuna kawai';

  @override
  String get readerTapOff => 'An kashe';

  @override
  String get readerInvertTaps => 'Juyar da wuraren taɓawa';

  @override
  String get readerInvertTapsDesc => 'Musanya wuraren na baya da na gaba';

  @override
  String get readerBackground => 'Bango';

  @override
  String get readerBackgroundBlack => 'Baƙi';

  @override
  String get readerBackgroundGray => 'Toka';

  @override
  String get readerBackgroundWhite => 'Fari';

  @override
  String get readerBackgroundTheme => 'Jigon app';

  @override
  String get readerFilter => 'Tace launi';

  @override
  String get readerFilterNone => 'Babu';

  @override
  String get readerFilterGrayscale => 'Girman launin toka';

  @override
  String get readerFilterInvert => 'Juyawa';

  @override
  String get readerFilterSepia => 'Sepia';

  @override
  String get readerFilterQuality => 'Ingancin tace hoto';

  @override
  String get readerFilterQualityNone => 'Babu (Makwabci mafi kusa)';

  @override
  String get readerFilterQualityLow => 'Ƙananan (Bilinear)';

  @override
  String get readerFilterQualityMedium => 'Matsakaici (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'Babban (Bicubic)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (tsatsa mai inganci)';

  @override
  String get readerDim => 'Dusashe';

  @override
  String get readerDimDesc => 'Duhunta shafuka';

  @override
  String get readerPageNumber => 'Lambar shafi';

  @override
  String get readerPageNumberDesc => 'Nuna lambar shafi yayin karatu';

  @override
  String get readerFullscreen => 'Cikakken allo';

  @override
  String get readerFullscreenDesc => 'Ɓoye sandunan system';

  @override
  String get readerCropBorders => 'Yanke gefuna';

  @override
  String get readerCropBordersDesc => 'Cire fanko fari ko baƙi a gefen shafuka';

  @override
  String get readerLongPressSave => 'Riƙe shafi don adana shi';

  @override
  String get readerLongPressSaveDesc =>
      'Dogon danna shafi don buɗe ajiya, raba da kwafi zaɓuɓɓuka';

  @override
  String get readerVolumeKeys => 'Maɓallan ƙara suna juya shafi';

  @override
  String get readerVolumeKeysDesc => 'Rage ƙara yana gaba, ƙara ƙara yana baya';

  @override
  String get readerBookmarks => 'Alamomin shafi';

  @override
  String get readerBookmarkAdd => 'Ƙara alamar shafi';

  @override
  String get readerBookmarkRemove => 'Cire alamar shafi';

  @override
  String get readerBookmarksEmpty => 'Babu alamomin shafi tukuna';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Shafi $page cikin $total';
  }

  @override
  String get readerAutoScroll => 'Gungurawa kai tsaye';

  @override
  String get readerAutoScrollStop => 'Dakatar da gungurawa kai tsaye';

  @override
  String get readerAutoScrollSpeed => 'Saurin gungurawa kai tsaye';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Yadda shafuka ke gungurawa ko juyawa da kansu';

  @override
  String get readerKeepOn => 'Ci gaba da kunna allo';

  @override
  String get readerKeepOnDesc => 'Hana allo kashewa yayin karatu';

  @override
  String get readerOrientation => 'Yanayin allo';

  @override
  String get readerOrientationFree => 'Kyauta';

  @override
  String get readerOrientationPortrait => 'Hoton hoto';

  @override
  String get readerOrientationLandscape => 'Tsarin ƙasa';

  @override
  String get readerSaveProgress => 'Ajiye ci gaba';

  @override
  String get readerSaveProgressDesc =>
      'Tuna shafinka kuma yi wa babuka alamar an karanta';

  @override
  String get readerReset => 'Sake saita saitunan mai karatu';

  @override
  String get readerResetDesc => 'Koma zuwa tsoho';

  @override
  String get readerResetConfirm =>
      'Sake saita kowane saitin mai karatu zuwa tsohonsa?';

  @override
  String get novelSize => 'Girman rubutu';

  @override
  String get novelFont => 'Rubutu';

  @override
  String get novelLineHeight => 'Tsawon layi';

  @override
  String get novelParagraph => 'Tazarar sakin layi';

  @override
  String get novelMargin => 'Margin';

  @override
  String get novelTheme => 'Jigon mai karatu';

  @override
  String get novelThemeApp => 'Jigon app';

  @override
  String get novelThemeLight => 'Haske';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Duhu';

  @override
  String get novelThemeBlack => 'Baƙi';

  @override
  String get novelJustify => 'Daidaita rubutu';

  @override
  String get novelJustifyDesc => 'Daidaita rubutu a gefuna biyu';

  @override
  String get trackProgressTitle => 'Ajiye ci gaba?';

  @override
  String trackProgressAnime(String name) {
    return 'A bibiyi $name a jerinka yayin da kake kallo? Zaɓi \"A wannan na\'ura kawai\" don kiyaye shi a gida, ko A\'a don kada a ajiye komai.';
  }

  @override
  String trackProgressManga(String name) {
    return 'A bibiyi $name a jerinka idan ka gama babi? Zaɓi \"A wannan na\'ura kawai\" don kiyaye shi a gida, ko A\'a don kada a ajiye komai.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Ajiye ci gaban ku akan $name zuwa lissafin ku akan wannan na\'urar yayin da kuke kallo?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Ajiye ci gaban ku akan $name zuwa lissafin ku akan wannan na\'urar idan kun gama babi?';
  }

  @override
  String get downloadClearQueue => 'Share jerin gwano';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Soke duk zazzagewar $count a cikin layi? An share abin da aka riga aka sauke.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count an zaba';
  }

  @override
  String get downloadSelectAll => 'Zaɓi duka';

  @override
  String get downloadDeleteSelected => 'Share zaba';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Share $count zazzagewa? Ana cire fayilolinsu daga na\'urar.';
  }

  @override
  String get castTitle => 'Jefa zuwa na\'ura';

  @override
  String get castSearching => 'Neman na\'urori akan hanyar sadarwar ku…';

  @override
  String get castNoDevices =>
      'Babu na\'urori da aka samo. Tabbatar cewa TV ko Chromecast suna kan Wi-Fi iri ɗaya, sannan a sake bincika.';

  @override
  String get castRefresh => 'Bincika kuma';

  @override
  String get castFailed => 'An kasa fara yin simintin gyare-gyare';

  @override
  String get castStop => 'Dakatar da jefa';

  @override
  String castNowCasting(String name) {
    return 'Yin jefawa zuwa $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote =>
      'Roku ba zai iya bayar da rahoto ko canza matsayin ba';

  @override
  String get castControls => 'Sarrafa';

  @override
  String get castVolume => 'Girman TV';

  @override
  String castSkipPart(String name) {
    return 'Tsallake $name';
  }

  @override
  String get trackProgressRememberSeries => 'Ka tuna don wannan jerin';

  @override
  String get trackProgressYes => 'Ajiye';

  @override
  String get trackProgressReset =>
      'An sake saita tambayar ajiye ci gaba ga wannan nau\'i, za ta sake tambaya';

  @override
  String get trackProgressNo => 'A\'a';

  @override
  String get trackProgressOff => 'A kashe';

  @override
  String get trackProgressLocal => 'A wannan na\'ura kawai';

  @override
  String get trackProgressSettingAnime => 'Bibiyar ci gaban anime';

  @override
  String get trackProgressSettingManga => 'Bibiyar ci gaban manga da novel';

  @override
  String get trackProgressSettingDesc =>
      'Abin da za a yi idan ka buɗe episode ko ka gama babi';

  @override
  String get trackProgressAsk => 'Tambaya';

  @override
  String get trackProgressAlways => 'Kullum';

  @override
  String get dantotsuImport => 'Shigo da daga Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Karanta ajiyar saitunan Dantotsu (.ani, ko .sani mai rufin asiri)';

  @override
  String get dantotsuPick => 'Zaɓi ajiyar baya ta Dantotsu';

  @override
  String get dantotsuNothing =>
      'Babu abin da za a iya shigowa da shi a wannan fayil';

  @override
  String get dantotsuApply => 'Shigo da waɗanda aka zaɓa';

  @override
  String dantotsuDone(int done, int total) {
    return 'An shigo da $done cikin $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Asusu';

  @override
  String get dantotsuGroupAppearance => 'Kamanni';

  @override
  String get dantotsuGroupExtensions => 'kari';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Mai kunnawa';

  @override
  String get dantotsuAnilist => 'Shigar AniList';

  @override
  String get dantotsuMal => 'Shigar MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token ɗin Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Jigo';

  @override
  String get themePickerTitle => 'Jigo';

  @override
  String get dantotsuReposAnime => 'Wuraren ajiyar extension na anime';

  @override
  String get dantotsuReposManga => 'Wuraren ajiyar extension na manga';

  @override
  String get dantotsuReposNovel => 'Wuraren ajiyar extension na novel';

  @override
  String get dantotsuUpdates => 'Duba sabuntawa';

  @override
  String get dantotsuComments => 'Sharhi';

  @override
  String get dantotsuActivity => 'Duba sanarwar AniList lokaci-lokaci';

  @override
  String get dantotsuDns => 'Mai samar da DNS';

  @override
  String get dantotsuPlayer => 'Saurin mai kunnawa da launukan subtitle';

  @override
  String get dantotsuWarning =>
      'Wannan fayil yana ɗauke da token ɗin shiga. A kiyaye shi a asirce.';

  @override
  String get novelIndent => 'Shigar da sakin layi';

  @override
  String get novelIndentDesc =>
      'Fara kowane sakin layi da indent na layin farko';

  @override
  String get novelLetterSpacing => 'Tazarar haruffa';

  @override
  String get novelSectionTranslate => 'Fassara';

  @override
  String get sectionExperimental => 'Na gwaji';

  @override
  String get kitsuGraphqlDetail => 'Shafukan bayani masu sauri (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Ɗora take tare da haruffansa, ma\'aikata da shigarwarka a buƙata ɗaya';

  @override
  String get togetherTitle => 'Kallo tare';

  @override
  String get togetherIntro =>
      'Manna hanyar ɗakin da abokinka ya aiko. Za ka shiga nan take kuma mai kunnawa zai buɗe idan sun fara kallo.';

  @override
  String togetherLinkConfirm(String room) {
    return 'Shiga dakin $room? Mai watsa shiri ya zaɓi abin da ke wasa kuma mai kunnawa ya buɗe da kansa lokacin da suka fara kallo.';
  }

  @override
  String get togetherJoin => 'Shiga';

  @override
  String get togetherName => 'Sunanka';

  @override
  String get togetherConnecting => 'Ana haɗawa…';

  @override
  String get togetherLeave => 'Bar ɗaki';

  @override
  String get togetherYou => 'Kai';

  @override
  String get togetherNoChat => 'Babu saƙonni tukuna';

  @override
  String get togetherChatHint => 'Saƙo';

  @override
  String get togetherCopyInvite => 'Kwafi gayyata';

  @override
  String get togetherShareInvite => 'Raba gayyata';

  @override
  String togetherShareText(String link) {
    return 'Kalli tare da ni akan Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'An kwafi sabar da ɗaki';

  @override
  String get togetherConnectionLost => 'Haɗi ya ɓace';

  @override
  String togetherConnectedTo(String room) {
    return 'An haɗa da $room';
  }

  @override
  String togetherFailed(String error) {
    return 'An kasa haɗawa: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ya shiga';
  }

  @override
  String togetherLeft(String name) {
    return '$name ya fita';
  }

  @override
  String togetherPaused(String name) {
    return '$name ya dakata';
  }

  @override
  String togetherResumed(String name) {
    return '$name ya ci gaba';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name ya tsallake zuwa $time';
  }

  @override
  String get togetherFollowFailed =>
      'An kasa buɗe episode na mai masauki. Buɗe da kanka.';

  @override
  String get togetherJoinRole => 'Shiga ɗaki';

  @override
  String get togetherOpenHost => 'Buɗe episode na mai masauki';

  @override
  String get togetherShowChat => 'Nuna hira kai tsaye';

  @override
  String get togetherWaitingHost => 'Ana jiran mai masauki ya fara episode';

  @override
  String get togetherRoomLink => 'Hanyar ɗaki';

  @override
  String get togetherBadLink => 'Wannan ba hanyar ɗaki ba ce';

  @override
  String get togetherHostClosed => 'Mai masauki ya rufe ɗakin';

  @override
  String get togetherNowPlaying => 'Ana kunnawa yanzu';

  @override
  String togetherWatchingCount(int count) {
    return '$count suna kallo';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user yana son dakatarwa';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user yana son ci gaba';
  }

  @override
  String get togetherChip => 'Tare';

  @override
  String get togetherSettingsDesc => 'Shiga ɗakin aboki da hanyar haɗi';

  @override
  String get novelBilingual => 'Nuna na asali da fassara';

  @override
  String get novelBilingualDesc =>
      'Kowane sakin layi yana nuna rubutun asali da fassararsa a ƙasa';

  @override
  String get novelTranslateTo => 'Fassara zuwa';

  @override
  String get novelTranslateOff => 'A kashe';

  @override
  String get novelSectionSpeech => 'Rubutu zuwa magana';

  @override
  String get novelSpeechRate => 'Saurin magana';

  @override
  String get novelSpeechPitch => 'Pitch na magana';

  @override
  String get novelSpeak => 'Karanta da ƙarfi';

  @override
  String get novelSpeakStop => 'Dakatar da karantawa da ƙarfi';

  @override
  String get novelTranslate => 'Fassara babi';

  @override
  String get novelTranslateShowOriginal => 'Nuna na asali';

  @override
  String novelTranslateFailed(String error) {
    return 'Fassara ta kasa: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Rubutu zuwa magana ba ya samuwa a wannan na\'ura';

  @override
  String get novelSpeechVoice => 'Murya';

  @override
  String get novelSpeechVoiceDefault => 'Tsohon system';

  @override
  String get novelSpeakPrevious => 'Layin da ya gabata';

  @override
  String get novelSpeakNext => 'Layi na gaba';

  @override
  String get novelTapPaging => 'Taɓa gefuna don juya shafi';

  @override
  String get novelTapPagingDesc =>
      'Taɓa gefen hagu ko dama don gungurawa shafi, tsakiya yana nuna sarrafawa';

  @override
  String get novelPaged => 'Juyawa shafi';

  @override
  String get novelPagedDesc =>
      'Raba babin zuwa shafuka kuma danna ko matsa don juya su maimakon gungurawa';

  @override
  String novelPageOf(int current, int total) {
    return 'Shafi na $current na $total';
  }

  @override
  String get novelPaginating => 'Shirya shafuka';

  @override
  String get novelTools => 'Abubuwan ciki, bincike da karin bayanai';

  @override
  String get novelContents => 'Abubuwan da ke ciki';

  @override
  String get novelContentsEmpty => 'Wannan babin ba shi da taken';

  @override
  String get novelSearch => 'Bincika';

  @override
  String get novelSearchHint => 'Bincika a cikin wannan babin';

  @override
  String get novelSearchNone => 'Babu ashana';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count matches',
      one: '1 wasa',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Karin bayanai';

  @override
  String get novelHighlightsEmpty =>
      'Zaɓi wani rubutu kuma matsa Haskaka don adana shi anan';

  @override
  String get novelHighlight => 'Haskakawa';

  @override
  String get novelHighlightNote => 'Lura';

  @override
  String get novelHighlightNoteHint => 'Ƙara bayanin kula';

  @override
  String get novelHighlightRemove => 'Cire haske';

  @override
  String get novelHighlightFailed => 'An kasa daidaita wancan zaɓin da rubutu';

  @override
  String novelMinutesLeft(int count) {
    return 'Minti $count ya rage';
  }

  @override
  String get novelBold => 'Rubutu mai kauri';

  @override
  String get novelBoldDesc => 'Yi amfani da kauri mafi nauyi';

  @override
  String readerFinishedChapter(String chapter) {
    return 'An gama $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Na gaba: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Na baya: $chapter';
  }

  @override
  String get readerNoPages => 'Wannan babi ba shi da shafuka';

  @override
  String get readerLoadingPages => 'Ana lodin shafuka…';

  @override
  String get readerSlowPage => 'Har yanzu ana lodin wannan shafi…';

  @override
  String get readerPageFailed => 'An kasa ɗora wannan shafi';

  @override
  String get playerShowComments => 'Nuna sharhi';

  @override
  String get playerHideComments => 'Ɓoye sharhi';

  @override
  String get playerSubtitles => 'Subtitles';

  @override
  String get playerSubtitlesOff => 'An kashe subtitles';

  @override
  String get playerAudio => 'Sauti';

  @override
  String get playerAddSubtitle => 'Ƙara fayil ɗin subtitle';

  @override
  String get playerAddAudio => 'Ƙara fayil ɗin sauti';

  @override
  String get playerChapters => 'Babuka';

  @override
  String get playerSkipSubmit => 'Ƙaddamar da lokutan tsallakewa';

  @override
  String get playerSkipSubmitDesc =>
      'Alama inda buɗewa, ƙarewa ko sake maimaitawa ya fara da ƙare a cikin wannan jigon kuma raba shi tare da AniSkip, don haka kowa ya sami maɓallin tsallakewa.';

  @override
  String get playerSkipStart => 'Fara';

  @override
  String get playerSkipEnd => 'Ƙarshe';

  @override
  String get playerSkipUseNow => 'Yi amfani da matsayi na yanzu';

  @override
  String get playerSkipSend => 'Mika zuwa AniSkip';

  @override
  String get playerSkipSent => 'Lokacin tsallakewa zuwa AniSkip, na gode';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip ya ƙi lokacin tsallakewa: $error';
  }

  @override
  String get playerUnsupported =>
      'Mai kunna bidiyo ba zai iya aiki akan wannan na\'urar ba ( sigar Android ɗinsa ta tsufa sosai don ɗakin ɗakin karatu da aka haɗa). Matsa don kwafi cikakkun bayanai.';

  @override
  String get playerSkipNoMal =>
      'Wannan take ba shi da ID na MyAnimeList, AniSkip ba zai iya ɗauka ba';

  @override
  String get playerNoChapters => 'Babu babuka';

  @override
  String get playerTimestamp => 'Tambarin lokaci';

  @override
  String get playerAutoPlayDelay => 'Ƙirgen episode na gaba';

  @override
  String get playerWatchedAt => 'Ƙidaya a matsayin an kalla a';

  @override
  String playerNextIn(int seconds) {
    return 'Episode na gaba nan da daƙiƙa $seconds';
  }

  @override
  String get playerPlayNow => 'Kunna yanzu';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: za a tsallake kai tsaye ga wannan take';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: ba za a tsallake kai tsaye ga wannan take ba';
  }

  @override
  String get playerAudioLanguage => 'Harshen sauti da aka fi so';

  @override
  String get playerLanguageOrderHint =>
      'Raba harsuna da waƙafi. Ana amfani da na farko da aka samu.';

  @override
  String get playerPip => 'Hoto cikin hoto';

  @override
  String get playerAutoPip => 'Hoto cikin hoto idan an fita';

  @override
  String get playerAutoPipDesc =>
      'Ci gaba da kunnawa a ƙaramar taga idan ka bar app';

  @override
  String get playerPipPlay => 'Wasa';

  @override
  String get playerPipPause => 'Dakata';

  @override
  String get playerPipBack => 'Komawa';

  @override
  String get playerPipForward => 'Gaba';

  @override
  String get playerPipRestore => 'Komawa ga mai kunnawa';

  @override
  String get playerPipActive => 'Yin wasa a cikin ƙaramin taga';

  @override
  String get listDateAdded => 'Ƙara zuwa jeri';

  @override
  String get listDateLastWatched => 'Kallo na ƙarshe';

  @override
  String playerAutoPlaying(String title) {
    return 'Ana kunna $title na gaba…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'An kasa shigar da shaders: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Babi $number';
  }

  @override
  String get playerPerTitle => 'Wannan take kawai';

  @override
  String get playerPerTitleDesc =>
      'Kiyaye waɗannan zaɓuɓɓuka ga wannan take kuma bar tsoffinka';

  @override
  String get playerSwapGestures => 'Musanya bangarorin swipe';

  @override
  String get playerSwapGesturesDesc => 'Haske a hagu, sauti a dama';

  @override
  String get playerOpenBig => 'Buɗe a babban gani';

  @override
  String get playerOpenBigDesc =>
      'Fara na\'urar kunnawa a cikakken allo maimakon jerin sassa';

  @override
  String get playerPauseOnBlur => 'Dakata idan an bar manhajar';

  @override
  String get playerPauseOnBlurDesc =>
      'Dakata idan wani abu ya rufe manhajar, kamar allon sanarwa, sai a ci gaba idan ka dawo';

  @override
  String get playerAudioOutput => 'Fitarwar sauti';

  @override
  String get fontAppDefault => 'Rubutun app';

  @override
  String get fontImport => 'Shigo da rubutu';

  @override
  String get fontSample =>
      'Ɗan kyanwa mai ruwan kasa yana tsallake kare mai kasala';

  @override
  String get playerSubtitleDelay => 'Jinkirin subtitle';

  @override
  String get playerAudioDelay => 'Jinkirin sauti';

  @override
  String get playerDelayReset => 'Sake saita';

  @override
  String get playerOnlineSubtitles => 'Subtitles na online';

  @override
  String get playerOnlineSearchHint => 'Take da episode';

  @override
  String get playerOnlineNone => 'Ba a sami subtitles ba';

  @override
  String playerOnlineFailed(String error) {
    return 'Binciken subtitle ya kasa: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'An kasa zazzage wannan subtitle: $error';
  }

  @override
  String get playerOnlineMatch => 'Ya dace da wannan fayil';

  @override
  String get playerOnlineEpisode => 'Daidaiton episode';

  @override
  String playerOnlineDownloads(int count) {
    return 'Zazzagewa $count';
  }

  @override
  String get playerSeekPreview => 'Samfotin seek';

  @override
  String get playerSeekPreviewDesc =>
      'Nuna ƙaramin samfotin frame a sama da seek bar yayin jan. Yana buɗe decoder na biyu mai ƙaramin resolution, don haka yana amfani da ƙarin data a streams.';

  @override
  String get playerSettingsChip => 'Saituna';

  @override
  String get playerAudioDevice => 'Na\'urar sauti';

  @override
  String get settingsDownloads => 'Zazzagewa';

  @override
  String get settingsDownloadsDesc =>
      'Episodes na offline, jerin gwano da yanayin offline';

  @override
  String get downloadsTitle => 'Zazzagewa';

  @override
  String get widgetContinue => 'Ci gaba';

  @override
  String get widgetReleases => 'Ana fitowa nan ba da jimawa ba';

  @override
  String get widgetMore => 'Hakanan ana ci gaba';

  @override
  String get widgetNothing => 'Ba abin da zai ci gaba har yanzu';

  @override
  String get downloadStorageTitle => 'Adana';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zazzagewa',
      one: '1 saukewa',
    );
    return '$_temp0 $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size an riga an kallo ko karantawa';
  }

  @override
  String get downloadFreeUp => 'Yantar da sarari';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kallon abubuwan zazzagewa',
      one: '1 kallo zazzagewa',
    );
    return 'Share $_temp0 kuma kyauta $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'An saki $size';
  }

  @override
  String get downloadDeleteWatched => 'Share kallo';

  @override
  String get downloadDeleteAll => 'Share duka';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Share kowane zazzagewar $title?';
  }

  @override
  String get downloadNothingWatched => 'Babu abin da kuka gama da aka sauke';

  @override
  String get downloadStorageEmpty => 'Babu zazzagewa da ke amfani da sarari';

  @override
  String get downloadsOpenDesc =>
      'Duba jerin gwano da duk abin da aka ajiye a wannan na\'ura';

  @override
  String get downloadTitle => 'Zazzage';

  @override
  String get downloadMetaOnly => 'Metadata kawai';

  @override
  String get downloadMetaFailed => 'An kasa ƙirƙirar babban fayil ɗin take';

  @override
  String downloadMetaSaved(String path) {
    return 'Ajiye Saka fayilolinku a cikin $path';
  }

  @override
  String get downloadAlready => 'An riga an zazzage ko yana cikin jerin gwano';

  @override
  String get downloadPickStream => 'Wane stream za a zazzage?';

  @override
  String get downloadPickSubtitle => 'Wane subtitle za a zazzage?';

  @override
  String get downloadPickAudio => 'Wace hanyar sauti za a zazzage?';

  @override
  String get downloadNoAudio => 'Babu ƙarin sauti';

  @override
  String get downloadAudio => 'Sauti';

  @override
  String get downloadNoSubtitle => 'Babu subtitle';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Wannan stream HLS playlist ne. Zazzage shi yana buƙatar FFmpeg addon.';

  @override
  String get downloadSourceMissing => 'Ba a shigar da tushen wannan episode ba';

  @override
  String get downloadDashDrm => 'Wannan rafi yana da kariya ta DRM';

  @override
  String get downloadDashNoVideo => 'Bayanin DASH ba shi da bidiyo';

  @override
  String get downloadWaitingConnection => 'Ana jiran haɗi';

  @override
  String get downloadSubtitles => 'Subtitles';

  @override
  String get downloadDownloaded => 'An zazzage';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Share zazzagewa';

  @override
  String get downloadCancel => 'Soke';

  @override
  String get downloadPause => 'Dakata';

  @override
  String get downloadPaused => 'An dakata';

  @override
  String get downloadResume => 'Ci gaba';

  @override
  String get downloadPauseAll => 'Dakatar da duka';

  @override
  String get downloadResumeAll => 'Ci gaba da duka';

  @override
  String get downloadQueuedState => 'Ana jira a jerin gwano';

  @override
  String get downloadResolving => 'Ana samun stream…';

  @override
  String get downloadUsedFallback =>
      'Babu stream mai dacewa, an yi amfani da na farko';

  @override
  String get downloadTabQueue => 'Jerin gwano';

  @override
  String get downloadTabDone => 'An gama';

  @override
  String get downloadTabFailed => 'Ya kasa';

  @override
  String get downloadEmptyQueue => 'Babu abin da ake zazzagewa';

  @override
  String get downloadEmptyDone => 'Babu abin da aka zazzage tukuna';

  @override
  String get downloadEmptyFailed => 'Babu zazzagewa da ta kasa';

  @override
  String get downloadNext => 'Episode na gaba';

  @override
  String downloadNextN(int count) {
    return 'Episodes $count na gaba';
  }

  @override
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Duk waɗanda ba a kalla ba ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Wannan kewayo ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Duk episodes ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'episodes $count suna jerin gwano',
      one: 'episode 1 yana jerin gwano',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return 'An zazzage $name';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Zazzage $name ya kasa';
  }

  @override
  String downloadStorage(String size) {
    return '$size da zazzagewa ke amfani da shi';
  }

  @override
  String get downloadQueueHeader => 'Jerin gwano';

  @override
  String get downloadParallel => 'Zazzagewa a lokaci guda';

  @override
  String get downloadParallelDesc =>
      'Yi zazzagewa ɗaya a lokaci ko da yawa tare';

  @override
  String get downloadOneByOne => 'Ɗaya bayan ɗaya';

  @override
  String get downloadNotifications => 'Sanarwar zazzagewa';

  @override
  String get downloadNotificationsDesc =>
      'Ci gaba kai tsaye inda system ke goyi, in ba haka ba sanarwa idan zazzagewa ta ƙare';

  @override
  String get downloadNotifyLive => 'Kai tsaye';

  @override
  String get downloadNotifyDone => 'Idan an gama';

  @override
  String get downloadNotifyOff => 'A kashe';

  @override
  String get downloadInfoFile =>
      'Rubuta fayil ɗin bayani kusa da kowace zazzagewa';

  @override
  String get downloadInfoFileDesc =>
      'Yana ajiye stream, inganci, subtitle da lokutan tsallakewa a ƙaramin fayil na .json';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Kai tsaye yana yin offline ne kawai idan app ya fara ba tare da haɗi ba. Kullum yana zama offline har sai ka canza.';

  @override
  String get offlineModeOff => 'A kashe';

  @override
  String get offlineModeAlways => 'Kullum';

  @override
  String get offlineModeOn =>
      'Yanayin offline yana kunne. Ana ajiye canje-canje a nan kuma a aika idan ka dawo online.';

  @override
  String get offlineSaved =>
      'An ajiye a wannan na\'ura, zai daidaita idan ka kasance online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'canje-canje $count sun daidaita',
      one: 'canji 1 ya daidaita',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'canje-canje $count suna jiran daidaitawa',
      one: 'canji 1 yana jiran daidaitawa',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Canje-canje masu jiran daidaitawa';

  @override
  String get offlinePendingNone => 'Babu mai jira';

  @override
  String get offlineSyncNow => 'Daidaita yanzu';

  @override
  String get offlineDiscard => 'Yar da';

  @override
  String get downloadNotOffline =>
      'Ba a zazzage wannan episode ba, don haka ba ya samuwa offline';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Babi na gaba';

  @override
  String downloadNextChapters(int count) {
    return 'Babuka $count na gaba';
  }

  @override
  String downloadUnread(int count) {
    return 'Duk waɗanda ba a karanta ba ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Duk babuka ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return 'Shafuka $done / $total';
  }

  @override
  String downloadPagesCount(int count) {
    return 'Shafuka $count';
  }

  @override
  String get downloadFfmpegTitle => 'Ana buƙatar FFmpeg addon';

  @override
  String get downloadFfmpegBody =>
      'Wannan stream HLS playlist ne. FFmpeg addon yana haɗa gutsuttsuransa zuwa fayil ɗin mp4 ɗaya. Ba tare da shi ba, ana ajiye gutsuttsuran a folder na episode kuma a kunna daga can.';

  @override
  String get downloadFfmpegInstall => 'Shigar';

  @override
  String get downloadFfmpegInstalling =>
      'Ana shigar da FFmpeg, wannan na iya ɗaukar lokaci…';

  @override
  String get downloadFinishing => 'Ana haɗa gutsuttsura zuwa fayil ɗaya…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return 'Sassa $done / $total';
  }

  @override
  String get downloadTorrentNoFile =>
      'Torrent ba shi da fayil ɗin bidiyo da za a zazzage';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ana zazzage abubuwa $count',
      one: 'Ana zazzage abu 1',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Share zazzagewar da aka kalla';

  @override
  String get downloadAutoDeleteDesc =>
      'Yana cire zazzagewa idan ci gabanka ya kai wannan episode ko babi';

  @override
  String get downloadConnections => 'Haɗi a kowace zazzagewa';

  @override
  String get downloadConnectionsDesc =>
      'Yana raba babban fayil zuwa sassa da ake ɗauko a lokaci guda. Wasu sabobi suna iyakance wannan.';

  @override
  String get downloadPlayChoice => 'Kunna daga';

  @override
  String get downloadPlayLocalDesc => 'Fayil ɗin da aka ajiye a wannan na\'ura';

  @override
  String get downloadPlayStream => 'Stream a online';

  @override
  String get downloadPlayStreamDesc => 'Ɗora episode daga tushe';

  @override
  String get offlineFeedTitle => 'An zazzage a wannan na\'ura';

  @override
  String get offlineFeedEmpty =>
      'Zazzage wani abu yayin da kake online kuma zai bayyana a nan';

  @override
  String get offlineEnabled => 'Yanayin offline yana kunne';

  @override
  String get offlineDisabled => 'Yanayin offline yana kashe';

  @override
  String get downloadReadChoice => 'Karanta daga';

  @override
  String get downloadReadLocalDesc => 'Shafukan da aka ajiye a wannan na\'ura';

  @override
  String get downloadReadOnline => 'Karanta a online';

  @override
  String get downloadReadOnlineDesc => 'Ɗora babi daga tushe';

  @override
  String downloadDeleteConfirm(String name) {
    return 'A share $name daga wannan na\'ura?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'A soke zazzage $name? Abin da aka riga aka zazzage za a share shi.';
  }

  @override
  String get downloadFfmpegFolder => 'Kiyaye a matsayin folder';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'A yar da canje-canje $count da ba a taɓa aikawa ba? Ba za a iya mayar da wannan ba.',
      one: 'A yar da canjin da ba a taɓa aikawa ba? Ba za a iya mayar da wannan ba.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Ana jiran Wi-Fi';

  @override
  String get downloadWaitingMetered => 'An dakata a haɗin da ake biya';

  @override
  String get downloadWifiOnly => 'Wi-Fi kawai';

  @override
  String get downloadWifiOnlyDesc =>
      'Zazzagewa suna jira idan kana kan mobile data';

  @override
  String get downloadMetered => 'Dakata a haɗin da ake biya';

  @override
  String get downloadMeteredDesc =>
      'Yana kuma jira a Wi-Fi da na\'urarka ta yi wa alama a matsayin mai biya';

  @override
  String get downloadSpeedLimit => 'Iyakar gudu';

  @override
  String get downloadSpeedLimitDesc =>
      'Yana iyakance jimillar saurin zazzagewa';

  @override
  String get downloadUnlimited => 'Babu iyaka';

  @override
  String get downloadMoveToTop => 'Matsar zuwa sama';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds iri · $peers takwarori';
  }

  @override
  String get downloadTorrentFile => 'Wane fayil?';

  @override
  String get downloadTorrentAuto => 'Daidaita episode kai tsaye';

  @override
  String get downloadTorrentLoading => 'Ana karanta torrent…';

  @override
  String get watchAutoSource => 'Canza zuwa tushe na gaba kai tsaye';

  @override
  String get watchAutoSourceDesc =>
      'Idan tushe ya kasa samun take ko ya kasa lodawa, gwada tushen da aka shigar na gaba';

  @override
  String get extensionTest => 'Gwada extensions';

  @override
  String get extensionTestCopy => 'Kwafi gazawa da logs ɗinsu';

  @override
  String get extensionTestQuery => 'Kalmar bincike';

  @override
  String get extensionTestRun => 'Gudanar';

  @override
  String get extensionTestStop => 'Tsaya';

  @override
  String get extensionTestNone =>
      'Babu extensions na wannan nau\'in da aka shigar';

  @override
  String get extensionTestNotRun => 'Ba a gwada ba tukuna';

  @override
  String get extensionTestSearch => 'Bincika';

  @override
  String get extensionTestDetail => 'Bayani';

  @override
  String get extensionTestUnits => 'Episodes / babuka';

  @override
  String get extensionTestLinks => 'Streams / shafuka';

  @override
  String extensionTestFailedAt(String step) {
    return 'Ya kasa a $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done cikin $total an gwada · $passed sun yi nasara · $failed sun kasa';
  }

  @override
  String get extensionTestCopyLogs => 'Kwafi komai da cikakken logs';

  @override
  String get onboardingFeaturesTitle => 'Duka a wuri ɗaya';

  @override
  String get onboardingFeaturesBody =>
      'Duk abin da kake bibiya, kallo da karantawa, ba tare da sauya app ba.';

  @override
  String get onboardingFeatureTrack => 'Bibiyi komai';

  @override
  String get onboardingFeatureTrackDesc =>
      'Jerin sunaye, ci gaba da maki a AniList, MyAnimeList, Simkl, Kitsu da MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Kalla da karanta';

  @override
  String get onboardingFeatureWatchDesc =>
      'Shigar da extensions ka yi streaming na anime ko ka karanta manga da novels kai tsaye a cikin app.';

  @override
  String get onboardingFeatureOffline => 'Yi shi offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Zazzage episodes da babuka, kuma ci gaba ba tare da haɗi ba.';

  @override
  String get onboardingFeatureSync => 'Kiyaye jerin sunaye a daidaice';

  @override
  String get onboardingFeatureSyncDesc =>
      'Kwafi jerinka tsakanin sabis-sabis, ko ka bar wanda ya fi gaba ya yi nasara.';

  @override
  String get onboardingServices => 'Yana aiki da';

  @override
  String sourceNotifyOn(String source) {
    return 'Za a gaya muku lokacin da $source yana da sabon abu';
  }

  @override
  String get sourceNotifyOff => 'A kashe sanarwar sanarwar';

  @override
  String get sourceNotifyNeedsSource => 'Zabi tushen tushen wasa da farko';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Komai ($count) ya riga ya fita, babu abin jira';
  }

  @override
  String get sourceNotifyTooltipOn => 'Dakatar da sanarwar saki';

  @override
  String get sourceNotifyTooltipOff => 'Sanar da ni game da sababbin sakewa';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Kashi na $number ya fito akan $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Fitowa $from-$to sun fito akan $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Babi na $number ya fito akan $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Babi na $from–$to sun fito akan $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count suna da sabon abu';
  }

  @override
  String get navSources => 'Sources';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Wannan tushen na $manager ne, wanda ba shine sabis na fadada aiki ba';
  }

  @override
  String get sourceAlertsHeader => 'Saki sanarwar';

  @override
  String get sourceAlertsSwitch => 'Duba sunayen da aka yi rajista';

  @override
  String get sourceAlertsSwitchDesc =>
      'Da zarar duk lokacin da app ɗin ya buɗe, don taken kun kunna kararrawa';

  @override
  String get sourceSkipUnstarted => 'Tsallake taken da ba ku fara ba';

  @override
  String get sourceSkipUnstartedDesc =>
      'Babu wani abu da ake kallo ko karantawa tukuna, amma an riga an sami shirye-shirye';

  @override
  String get sourceSkipUnseen =>
      'Tsallake yayin da kuna da abubuwan da ba a gani ba';

  @override
  String get sourceSkipUnseenDesc =>
      'Har yanzu kuna da fitar da shirye-shirye don ci gaba';

  @override
  String get sourceManage => 'Biyan kuɗi';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lakabi',
      one: '1 take',
      zero: 'Babu lakabi',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Duba yanzu';

  @override
  String get sourceCheckNowDesc =>
      'Yayi watsi da jadawali da ka\'idojin tsallakewa';

  @override
  String get sourceChecking => 'Ana dubawa…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '1 take yana da sabon abu',
      zero: '',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Babu biyan kuɗi tukuna';

  @override
  String get sourceEmptyMessage =>
      'Matsa kararrawa da ke sama da sassan take don a ba da labari game da sababbi';

  @override
  String get sourceAll => 'Duka';

  @override
  String sourceInactive(String manager) {
    return 'Ba aiki: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return 'Ba a shigar da $source a cikin wannan sabis ɗin haɓakawa ba';
  }

  @override
  String get sourceUnreachable => 'Tushen baya amsawa';

  @override
  String get sourceFinished => 'An gama';

  @override
  String get sourceSkippedCompleted => 'An tsallake: kammala';

  @override
  String get sourceSkippedUnstarted => 'An tsallake: ba a fara ba';

  @override
  String get sourceSkippedUnseen => 'An tsallake: abubuwan da ba a gani';

  @override
  String get sourceWaiting => 'Ana jiran fitowar ta gaba';

  @override
  String sourceNextCheck(String when) {
    return 'Duba na gaba $when';
  }

  @override
  String get sourceSoon => 'da sannu';

  @override
  String sourceInHours(int count) {
    return 'cikin ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'cikin ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Bugawa: $number';
  }

  @override
  String get sourceMute => 'Yi shiru';

  @override
  String get sourceUnmute => 'Cire sauti';

  @override
  String get sourceMuted => 'An kashe';

  @override
  String get sourceUnsubscribe => 'Cire rajista';

  @override
  String get sourcePickAnother => 'Zabi wani tushe';

  @override
  String get sourceOpenExtensions => 'Bude kari';

  @override
  String get sourceNoticesEmpty => 'Babu sanarwar saki tukuna';

  @override
  String get sourceNoticesEmptyMessage =>
      'Sabbin jigogi da surori daga taken da kuka yi rajista suna nunawa anan';

  @override
  String get sourceOpenTitle => 'Bude take';

  @override
  String get extensionsLoading => 'Ana loda kari…';

  @override
  String get updateWhatsNew => 'Menene sabo';

  @override
  String get updateLater => 'Daga baya';

  @override
  String get updateSkipVersion => 'Tsallake wannan sigar';

  @override
  String get updatePreparing => 'Ana shirya…';

  @override
  String get updateDownloading => 'Ana saukewa';

  @override
  String get updateInstalling => 'Ana girka…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done na $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'An sake shi $date';
  }

  @override
  String get updateNoAsset => 'Wannan sakin ba shi da zazzagewa don na\'urarka';

  @override
  String get updateUpToDate => 'Kuna kan sabon sigar';

  @override
  String get updateIosHint =>
      'Gina iOS ba a kan App Store ba. Ɗauki .ipa daga shafin saki kuma saka shi tare da AltStore ko SideStore';

  @override
  String get updateOpenedBrowser => 'Duba burauzar ku';

  @override
  String get updateTryAgain => 'A sake gwadawa';

  @override
  String get settingsNotifications => 'Sanarwa';

  @override
  String get settingsNotificationsDesc =>
      'Faɗakarwa don lissafin ku, sabbin jigogi da surori, da martanin sharhi';

  @override
  String get settingsAboutUpdates => 'Game da & sabuntawa';

  @override
  String get settingsAboutUpdatesDesc =>
      'Sabunta aikace-aikacen, sigar, rajistan ayyukan, hanyoyin haɗin gwiwa da tallafi';

  @override
  String get settingsGroupAccount => 'Asusun ku';

  @override
  String get settingsGroupContent => 'Abun ciki';

  @override
  String get settingsGroupApp => 'App';

  @override
  String get settingsAnimeDesc =>
      'Mai kunnawa, taken magana, tsallake-tsallake, jeri na jigo da cikakkun bayanai';

  @override
  String get settingsMangaDesc => 'Yanayin karatu, sarrafawa, nuni da bin saƙo';

  @override
  String get settingsNovelDesc =>
      'Rubutu, juya shafi, fassara da karantawa da ƙarfi';

  @override
  String get settingsLocalPlay => 'Wasan gida';

  @override
  String get settingsLocalPlayDesc =>
      'Kunna fayiloli, manyan fayiloli, rafukan cibiyar sadarwa da rafuffuka, ko buɗe littafi';

  @override
  String get settingsLocalPlayVideo => 'Bidiyo';

  @override
  String get settingsLocalPlayBooks => 'Littattafai';

  @override
  String get settingsWatchSections => 'Sassan';

  @override
  String get settingsSectionLists => 'Fitowa da jerin babi';

  @override
  String get settingsSectionProgress => 'Bibiyar ci gaba';

  @override
  String get updateChannelDesc =>
      'Stable shine sakin da aka gwada. Pre-saki da Alpha samun sabon fasali da wuri amma zai iya karya';

  @override
  String get checkNowDesc => 'Nemo sabon sigar nan take';

  @override
  String get generalSectionBasics => 'Harshe & hali';

  @override
  String get generalSectionSecurity => 'Tsaro';

  @override
  String get generalSectionPrivacy => 'Keɓantawa';

  @override
  String notificationsOtherService(String service) {
    return 'Canja zuwa $service don buɗe wannan';
  }

  @override
  String get secPlayerPlayback =>
      'Tsohuwar gudun, kunna atomatik, dacewa da bidiyo, daidaitawa da hoto a hoto';

  @override
  String get secPlayerSkip =>
      'Tsallake buɗewa, ƙarewa da maimaitawa ta atomatik';

  @override
  String get secPlayerControls =>
      'Dokewa, riƙe da matsa motsi kuma nemi samfoti';

  @override
  String get secPlayerSubtitles =>
      'Harsuna, bayyanar da fassarar fassarar magana';

  @override
  String get secPlayerShaders => 'Anime upscaling da naku shaders';

  @override
  String get secPlayerEngine =>
      'Decoder, bidiyo da fitarwa mai jiwuwa, buffering. Canza waɗannan kawai idan sake kunnawa yana da matsaloli';

  @override
  String get secPlayerMpv => 'mpv.conf, rubutun da ci-gaba kunnawa';

  @override
  String get secAnimeList => 'Filler episodes da thumbnails marasa kallon';

  @override
  String get secProgress =>
      'Lokacin da aka ajiye ci gaban kallon ku ko karantawa zuwa lissafin ku';

  @override
  String get secAnimeDetails =>
      'Inda taken episode, thumbnails da taƙaitawa suka fito';

  @override
  String get secReaderReading =>
      'Yanayin karatu, juyawa shafi, zuƙowa da babi na gaba';

  @override
  String get secReaderControls =>
      'Matsa yankuna, maɓallan ƙara da gungurawa ta atomatik';

  @override
  String get secReaderDisplay => 'Fage, haske, cikakken allo da lambar shafi';

  @override
  String get secNovelText => 'Font, girman, tazara, margin da juya shafi';

  @override
  String get secNovelTranslate => 'Fassara surori yayin da kuke karantawa';

  @override
  String get secNovelSpeech =>
      'Murya, saurin gudu da sauti don karantawa da ƙarfi';

  @override
  String get secNotifyAbout => 'Zaɓi nau\'ikan ayyuka aika faɗakarwa';

  @override
  String get layoutTitle => 'Tsarin tsari';

  @override
  String get layoutDesc => 'Zaɓi, matsawa kuma ɓoye maɓallan akan sanduna';

  @override
  String get layoutHint =>
      'Jawo maɓalli don matsar da shi (riƙe da farko akan allon taɓawa). Matsa ɗaya don yanke, motsawa ko ɓoye shi';

  @override
  String layoutDropInto(String zone) {
    return 'Shiga: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Motsawa $name. Danna maɓallin manna don sanya shi';
  }

  @override
  String get layoutTitleFixed => 'Take';

  @override
  String get layoutZoneTopStart => 'Babban mashaya, kafin take';

  @override
  String get layoutZoneTopEnd => 'Babban mashaya, bayan taken';

  @override
  String get layoutZoneBottomStart => 'Ƙashin ƙasa, hagu';

  @override
  String get layoutZoneBottomEnd => 'Ƙarƙashin ƙasa, dama';

  @override
  String get layoutZoneSecondRow => 'Boye: jere na biyu a gani na al\'ada';

  @override
  String get layoutZoneOverflow => 'Boye: a cikin ƙarin menu';

  @override
  String get layoutEmptyZone => 'Zazzage maɓalli nan';

  @override
  String get layoutCut => 'Yanke';

  @override
  String get layoutPaste => 'Manna a nan';

  @override
  String get layoutHide => 'Boye';

  @override
  String layoutMoveTo(String zone) {
    return 'Matsa zuwa $zone';
  }

  @override
  String get layoutReset => 'Sake saita zuwa tsoho';

  @override
  String get layoutMore => 'Ƙari';

  @override
  String get sourceWhyAction => 'Me yasa babu faɗakarwa?';

  @override
  String get sourceWhyStatus => 'Matsayi';

  @override
  String get sourceWhyLastCheck => 'An duba ƙarshe';

  @override
  String get sourceWhyNever => 'Ba tukuna';

  @override
  String get sourceWhyNextCheck => 'Dubawa na gaba';

  @override
  String get sourceWhyNewest => 'Sabbi a tushen';

  @override
  String get sourceWhyProgress => 'Ci gaban ku';

  @override
  String get sourceWhyListStatus => 'Halin jeri';

  @override
  String get sourceWhyFailures => 'Binciken da ba a yi nasara ba a jere';

  @override
  String get sourceWhyLastRelease => 'Sabon sakin da aka gani';

  @override
  String get sourceWhyVerdictNew =>
      'Wani sabon saki yana bayyana nan da zaran tushen ya jera shi kuma bincike na gaba ya gudana.';

  @override
  String get sourceWhyVerdictAhead =>
      'Madogarar ta riga ta riga ta ci gaban ku, don haka an gaya muku sau ɗaya. Karanta ko duba shi don samun faɗakarwa na gaba.';

  @override
  String get sourceWhyVerdictSkipped =>
      'An tsallake wannan take ta ka\'idodin da ke sama. Canja su a saitunan sanarwa, ko amfani da Duba yanzu don gudanar da shi ta wata hanya.';

  @override
  String get sourceWhyVerdictBroken =>
      'Ba za a iya isa wurin ko an cire shi ba, don haka ba a bincika komai.';

  @override
  String get sourceWhyVerdictMuted => 'An kashe wannan biyan kuɗi.';

  @override
  String get externalPlayerTitle => 'Bude rafi wani wuri';

  @override
  String get externalCopyUrl => 'Kwafi mahaɗin rafi';

  @override
  String get externalCopied => 'An kwafi hanyar haɗin rafi';

  @override
  String get externalChooser => 'Bude a cikin wani app';

  @override
  String get externalVlc => 'Bude a cikin VLC';

  @override
  String get externalMpv => 'Bude cikin mpv';

  @override
  String get externalWebVideoCast => 'Simintin Bidiyo na Yanar Gizo';

  @override
  String get castViaAppHint =>
      'Aika rafi zuwa aikace-aikacen Cast Bidiyo na Yanar Gizo';

  @override
  String get externalFailed => 'An kasa buɗe rafi. An shigar da mai kunnawa?';

  @override
  String get addonInstalled => 'An shigar';

  @override
  String get loadFailedActivity => 'An kasa loda ayyuka';

  @override
  String get loadFailedFavourites =>
      'An kasa loda abubuwan da aka fi so. Sake gwadawa';

  @override
  String get loadFailedStats => 'An kasa loda ƙididdiga';

  @override
  String get loadFailedReplies => 'An kasa loda martani';

  @override
  String get cantBeUndone => 'Ba za a iya soke wannan ba.';

  @override
  String get searchTags => 'Bincika tags';

  @override
  String get spoilerTapToView => 'Mai ɓarna, taɓa don dubawa';

  @override
  String get mediaVideo => 'Bidiyo';

  @override
  String get notificationSomeone => 'Wani';

  @override
  String get notificationATitle => 'wani take';

  @override
  String get notificationAddedDetail => 'An ƙara zuwa AniList';

  @override
  String get updateNoReleases => 'Ba a sami fitowar ba';

  @override
  String get updateInvalidResponse => 'Amsar sabuntawa mara inganci';

  @override
  String get commentsRateLimited => 'Ƙimar iyaka';

  @override
  String get commentsConnectFailed => 'An kasa haɗawa';

  @override
  String get dnsNoRecords => 'Ba a dawo da bayanan A ba';

  @override
  String get importTokenRejected => 'Alamu sun ƙi';

  @override
  String get developerRoleLead => 'Jagorar Mai Haɓakawa';

  @override
  String get developerRoleModerator => 'Discord Moderator';

  @override
  String extensionManagerTitle(String type) {
    return '$type manajan';
  }

  @override
  String extensionsOfType(String type) {
    return '$type kari';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name saituna';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name baya bada wani saituna.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Kashi na $episode na $title ya fito';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Kashi na $episode ya fito';
  }

  @override
  String notificationAdded(String title) {
    return 'An saka $title zuwa AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Sabunta uwar garken ya kasa samun wannan sakin: $message';
  }

  @override
  String get installStepJre => 'Java runtime';

  @override
  String get installStepCore => 'Runtime core';

  @override
  String installStepsProgress(int current, int total) {
    return 'Mataki $current na $total';
  }

  @override
  String get stepWaiting => 'Jira';

  @override
  String get stepChecking => 'Ana dubawa…';

  @override
  String get stepUpToDate => 'Har zuwa yau';

  @override
  String stepUpToDateWith(String detail) {
    return 'Na zamani · $detail';
  }

  @override
  String get stepWillInstall => 'Za a girka';

  @override
  String get stepWillUpdate => 'Za a sabunta';

  @override
  String stepWillUpdateTo(String version) {
    return 'Za a sabunta zuwa $version';
  }

  @override
  String get stepInstalled => 'An shigar';

  @override
  String get stepNotNeeded => 'Ba a buƙata a nan';

  @override
  String get stepFailed => 'Ba a yi nasara ba';

  @override
  String stepFailedWith(String reason) {
    return 'An kasa: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Yana aiki akan lokacin aikin Java da madaidaicin runtime ɗin da aka raba. An shigar dasu da farko, kuma ana sabunta su idan sun canza.';

  @override
  String get installRuntimeNewer =>
      'Lokacin aiki da wannan manajan ke gudanarwa yana da sabuntawa.';

  @override
  String get removeJvmTitle => 'Cire lokacin aikin Java?';

  @override
  String get removeJvmMessage =>
      'Manajojin tsawo na Desktop suna daina aiki har sai an sake shigar da shi. Ana sake saukewa a gaba lokacin da ka shigar ko bude ɗaya.';

  @override
  String get runtimePreparing => 'Ana shirya lokacin aiki…';

  @override
  String get calendarAll => 'Duka';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Manga';

  @override
  String get readerCloudflare => 'Bude a browser (Cloudflare duba)';

  @override
  String get badgeBoardHint =>
      'Jawo lamba kan kusurwar katin farko, ko ja alama a kai don matsar da shi. Bajis suna musanyar wurare, don haka babu wanda ya taɓa haɗuwa. Matsa alamar da ke ƙasa don kunna ko kashe ta.';

  @override
  String get statusAuto => 'Mota';

  @override
  String get unreadCounter => 'counter mara karantawa';

  @override
  String get unreadCounterDesc =>
      'Nuna juzu\'i ko surori nawa aka bari akan fosta';

  @override
  String get settingsShortcuts => 'Gajerun hanyoyin allo';

  @override
  String get settingsShortcutsDesc => 'Duba, canza kuma kashe kowane maɓalli';

  @override
  String get shortcutGroupApp => 'App';

  @override
  String get shortcutGroupPlayer => 'Mai kunna bidiyo';

  @override
  String get shortcutGroupReader => 'Mai karatu';

  @override
  String get shortcutsEnableApp => 'Gajerun hanyoyin aikace-aikace';

  @override
  String get shortcutsEnablePlayer => 'Gajerun hanyoyin wasan';

  @override
  String get shortcutsEnableReader => 'Gajerun hanyoyin karatu';

  @override
  String get shortcutsEnableDesc =>
      'Kunna ko kashe kowane maɓalli a cikin wannan rukunin';

  @override
  String get shortcutNotSet => 'Ba a saita ba';

  @override
  String get shortcutAddKey => 'Ƙara maɓalli';

  @override
  String get shortcutResetOne => 'Sake saita zuwa tsoho';

  @override
  String get shortcutClearKeys => 'Cire duk maɓallan';

  @override
  String get shortcutResetAll => 'Sake saita duk gajerun hanyoyi';

  @override
  String get shortcutResetAllDesc => 'Mayar da kowane maɓalli zuwa tsohowar sa';

  @override
  String get shortcutPress => 'Danna maɓallin ko haɗin da kake so';

  @override
  String get shortcutPressHint =>
      'Kowane haɗin gwiwa yana iya kasancewa cikin aiki ɗaya kawai, don haka ɗaukar ɗaya yana motsa shi.';

  @override
  String get shortcutSeekPercent => 'Tsallaka zuwa wani batu na bidiyo';

  @override
  String get shortcutSeekPercentKeys => '0-9 ku';

  @override
  String get shortcutAppBack => 'Komawa';

  @override
  String get shortcutAppFullscreen => 'Juya cikakken allo';

  @override
  String get shortcutAppGlass => 'Juya yanayin gilashi';

  @override
  String get shortcutAppMaterialYou => 'Juya Kayan Ku';

  @override
  String get shortcutAppDark => 'Juya yanayin duhu';

  @override
  String get shortcutAppOled => 'Juya OLED baki';

  @override
  String get shortcutAppSearch => 'Bude bincike';

  @override
  String get shortcutAppSettings => 'Bude saituna';

  @override
  String get shortcutAppDownloads => 'Bude abubuwan zazzagewa';

  @override
  String get shortcutAppNotifications => 'Buɗe sanarwar';

  @override
  String get shortcutAppIncognito => 'Juya incognito';

  @override
  String get shortcutAppShortcuts => 'Nuna gajerun hanyoyin madannai';

  @override
  String get shortcutPlayerPlayPause => 'Kunna ko dakata';

  @override
  String get shortcutPlayerSeekForward => 'Neman gaba';

  @override
  String get shortcutPlayerSeekBack => 'Nemo baya';

  @override
  String get shortcutPlayerSeekForwardLong => 'Nemo gaba 30 seconds';

  @override
  String get shortcutPlayerSeekBackLong => 'Neman baya 30 seconds';

  @override
  String get shortcutPlayerFrameForward => 'Firam na gaba';

  @override
  String get shortcutPlayerFrameBack => 'Firam na baya';

  @override
  String get shortcutPlayerVolumeUp => 'Ƙara girma';

  @override
  String get shortcutPlayerVolumeDown => 'Ƙarar ƙasa';

  @override
  String get shortcutPlayerMute => 'Yi shiru';

  @override
  String get shortcutPlayerFullscreen => 'Cikakken allo';

  @override
  String get shortcutPlayerNext => 'Kashi na gaba';

  @override
  String get shortcutPlayerPrevious => 'Kashi na baya';

  @override
  String get shortcutPlayerSkip => 'Tsallake intro ko ƙarewa';

  @override
  String get shortcutPlayerPanel => 'Jerin abubuwan';

  @override
  String get shortcutPlayerSpeedUp => 'Saurin sake kunnawa';

  @override
  String get shortcutPlayerSpeedDown => 'A hankali sake kunnawa';

  @override
  String get shortcutPlayerSpeedReset => 'Gudun al\'ada';

  @override
  String get shortcutPlayerSubtitleToggle => 'Kunna ko a kashe subtitles';

  @override
  String get shortcutPlayerSubtitleCycle => 'Waƙar subtitle na gaba';

  @override
  String get shortcutPlayerAudioCycle => 'Waƙar sauti ta gaba';

  @override
  String get shortcutPlayerStreamCycle => 'Rafi na gaba';

  @override
  String get shortcutPlayerFit => 'Canza yanayin dacewa na bidiyo';

  @override
  String get shortcutReaderRight => 'Shafi zuwa dama';

  @override
  String get shortcutReaderLeft => 'Shafi zuwa hagu';

  @override
  String get shortcutReaderNextPage => 'shafi na gaba';

  @override
  String get shortcutReaderPreviousPage => 'Shafin da ya gabata';

  @override
  String get shortcutReaderControls => 'Nuna ko ɓoye abubuwan sarrafawa';

  @override
  String get shortcutReaderNextChapter => 'Babi na gaba';

  @override
  String get shortcutReaderPreviousChapter => 'Babi na baya';

  @override
  String shortcutTaken(String action) {
    return 'An ɗauko daga $action';
  }

  @override
  String get incognitoTurnedOn => 'Yanayin incognito yana kunne';

  @override
  String get incognitoTurnedOff => 'An kashe yanayin incognito';

  @override
  String get onHoldAnime => 'A riƙe anime';

  @override
  String get onHoldManga => 'A riƙe manga';

  @override
  String get droppedAnime => 'An sauke anime';

  @override
  String get droppedManga => 'An sauke manga';

  @override
  String get generalSectionDesktop => 'Desktop';

  @override
  String get closeAction => 'Lokacin da taga yana rufe';

  @override
  String get closeActionQuit => 'Bar app';

  @override
  String get closeActionWhenBusy =>
      'Ci gaba da gudu a cikin tire yayin da wani abu ke gudana';

  @override
  String get closeActionAlways => 'Koyaushe ci gaba da gudu a cikin tire';

  @override
  String get closeActionNoTray =>
      'Ba a samun tiren tsarin anan, don haka app ɗin yana barin lokacin rufewa';

  @override
  String get gamepadNav => 'Gamepad kewayawa';

  @override
  String get gamepadNavDesc =>
      'Matsar da ƙa\'idar kuma sarrafa mai kunnawa tare da mai sarrafa wasa';

  @override
  String get trayShow => 'Nuna Dartotsu';

  @override
  String get trayQuit => 'Bar';

  @override
  String get trayIdle => 'Babu wani abu da ke gudana';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zazzage abubuwa $count',
      one: 'Ana saukewa $count abu',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Ana daidaita lissafin ku';

  @override
  String get trayUpdating => 'Ana ɗaukaka ƙa\'idar';

  @override
  String get trayPlaying => 'Yin wasa a cikin ƙaramin taga';

  @override
  String get traySearch => 'Bincika';

  @override
  String get trayPauseDownloads => 'Dakatar da zazzagewa';

  @override
  String get trayResumeDownloads => 'Ci gaba da saukewa';

  @override
  String get playerDownloadTitle => 'Zazzage mai kunnawa';

  @override
  String get playerDownloadBody =>
      'Dartotsu ya debo injin bidiyon sa sau ɗaya. sake kunnawa yana farawa da zaran an shirya.';

  @override
  String get playerDownloadStarting => 'An fara zazzagewa…';

  @override
  String get playerDownloadFailedTitle => 'An kasa samun mai kunnawa';

  @override
  String get playerDownloadFailedBody =>
      'Duba haɗin ku kuma sake gwadawa. Zazzagewar ta ɗauka inda ta tsaya.';

  @override
  String get playerDownloadRetry => 'A sake gwadawa';

  @override
  String get playerDownloadCopy => 'Kwafi cikakkun bayanai';

  @override
  String get removePlayerTitle => 'Cire mai kunnawa?';

  @override
  String get removePlayerMessage =>
      'Bidiyo ba za su iya kunna ba har sai an sake sauke mai kunnawa.';

  @override
  String get trailerLoading => 'Ana loda tirela…';

  @override
  String get trailerFailed =>
      'Ba za a iya kunna tirela a nan ba, buɗe shi a cikin mazugi';
}
