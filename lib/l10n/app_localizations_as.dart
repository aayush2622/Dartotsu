// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'এনিমে আৰু মাংগা ট্ৰেক কৰাৰ\nনতুন আৰু শ্ৰেষ্ঠ এপ';

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
  String get loadMore => 'অধিক লোড কৰা';

  @override
  String get login => 'লগইন';

  @override
  String get continueAsGuest => 'গেষ্ট হিচাপে আগবাঢ়া';

  @override
  String get getStarted => 'আৰম্ভ কৰোঁ আহা';

  @override
  String get loginWithToken => 'টোকেনেৰে লগইন';

  @override
  String get pasteTokenHint => 'তোমাৰ এক্সেছ টোকেন পেষ্ট কৰা';

  @override
  String loginTo(String service) {
    return '$service-ত লগইন কৰা';
  }

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get account => 'একাউণ্ট';

  @override
  String get about => 'বিষয়ে';

  @override
  String get language => 'ভাষা';

  @override
  String get animationSpeed => 'এনিমেশ্যন';

  @override
  String get animationSpeedDesc =>
      'গোটেই এপটোত ট্ৰেন্জিশ্যন আৰু এণ্ট্ৰি ইফেক্টৰ গতি';

  @override
  String get animationSpeedOff => 'বন্ধ';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'এক্সটেনছন',
      one: 'এক্সটেনছন',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'অজ্ঞাত উৎস';

  @override
  String get install => 'ইনষ্টল';

  @override
  String get update => 'আপডেট';

  @override
  String get uninstall => 'আনইনষ্টল';

  @override
  String get updateInstallCancelled =>
      'ইনষ্টল বাতিল কৰা হ’ল। Android এ যদি কৈছিল যে এপটো ইনষ্টল হৈ থকাটোৰ সৈতে সংঘাত হৈছে, তেন্তে চিগনেচাৰ বেলেগ: প্ৰথমে বৰ্তমানৰ সংস্কৰণটো আনইনষ্টল কৰক, তাৰ পিছত আপডেট ইনষ্টল কৰক';

  @override
  String updateInstallFailed(String error) {
    return 'আপডেট হোৱা নাই: $error';
  }

  @override
  String get appLock => 'এপ লক';

  @override
  String get appLockDesc =>
      'এপ খোলোতে বা কিছুসময়ৰ পিছত ঘূৰি আহিলে পাছকোড সোধক';

  @override
  String get appLockBiometric => 'বায়’মেট্ৰিক্সৰ সৈতে আনলক';

  @override
  String get appLockBiometricDesc =>
      'পাছকোড টাইপ কৰাৰ পৰিবৰ্তে আপোনাৰ আঙুলিৰ ছাপ বা মুখ ব্যৱহাৰ কৰক';

  @override
  String get appLockBiometricReason => 'Dartotsu আনলক কৰক';

  @override
  String get appLockDelay => 'অচল অৱস্থাত লক কৰক';

  @override
  String get appLockDelayAlways => 'সদায়';

  @override
  String get appLockDelayNever => 'কেতিয়াও নহয়';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '__পি০__ মিনিট',
      one: '১ মিনিট',
    );
    return 'পাছত $_temp0';
  }

  @override
  String get appLockUseBiometric => 'বায়’মেট্ৰিক্স ব্যৱহাৰ কৰক';

  @override
  String get appLockUnlock => 'আপোনাৰ পাছকোড দিয়ক';

  @override
  String get appLockWrong => 'পাছকোড ভুল';

  @override
  String appLockWait(String seconds) {
    return 'বহুত বেছি চেষ্টা কৰিলা, $seconds ছেকেণ্ড অপেক্ষা কৰা';
  }

  @override
  String get appLockNew => 'এটা পাছকোড বাছক';

  @override
  String get appLockNewHint => '৪ ৰ পৰা ৮ টা সংখ্যা';

  @override
  String get appLockConfirm => 'আকৌ এবাৰ দিয়ক';

  @override
  String get appLockMismatch => 'পাছকোড দুটা মিলা নাই';

  @override
  String get appLockOn => 'পাছকোড ছেট হ’ল';

  @override
  String get appLockRemoveTitle => 'লক বন্ধ কৰিবলৈ আপোনাৰ পাছকোড দিয়ক';

  @override
  String get installFailed => 'ইনষ্টল হোৱা নাই';

  @override
  String get updateFailed => 'আপডেট হোৱা নাই';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count আপডেটসমূহ উপলব্ধ',
      one: '1 আপডেট উপলব্ধ',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'সকলো আপডেট কৰক';

  @override
  String extensionsUpdated(int done, int total) {
    return '$total সম্প্ৰসাৰণসমূহৰ $done আপডেইট কৰা হৈছে';
  }

  @override
  String get updateConflictTitle => 'আপডেইট সংস্থাপন কৰা হোৱা নাই';

  @override
  String updateConflictBody(String names) {
    return '$names বৰ্ত্তমানৰ সংস্কৰণৰ ওপৰত সংস্থাপন কৰিব পৰা নগ\'ল । ইয়াৰ অৰ্থ সাধাৰণতে ইনষ্টল কৰা কপিটো বেলেগ ধৰণে স্বাক্ষৰ কৰা হৈছিল। ইয়াক আনইনষ্টল কৰক আৰু নতুন সংস্কৰণটো ইনষ্টল কৰক?';
  }

  @override
  String get updateConflictAction => 'আনইনষ্টল আৰু পুনৰাই ইনষ্টল কৰক';

  @override
  String get noSourceSettings => 'এই উৎসত কোনো ছেটিংছ নাই';

  @override
  String get addPluginRepository => 'প্লাগইন ৰিপজিটৰী যোগ কৰা';

  @override
  String get pluginIndexUrlHint => 'প্লাগইন ইণ্ডেক্স URL';

  @override
  String get addRepository => 'ৰিপজিটৰী যোগ কৰা';

  @override
  String get importRepositoryFile => 'এটা ফাইল আমদানি কৰক';

  @override
  String get pluginRepoUpdated => 'প্লাগইন ৰিপজিটৰী আপডেট হৈছে';

  @override
  String get pluginRepoUpdateFailed => 'প্লাগইন ৰিপজিটৰী ৰিফ্ৰেচ কৰিব পৰা নগল';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get cancel => 'বাতিল';

  @override
  String get yes => 'হয়';

  @override
  String get no => 'নহয়';

  @override
  String get save => 'সংৰক্ষণ';

  @override
  String get reset => 'ৰিছেট';

  @override
  String get clear => 'মচি পেলোৱা';

  @override
  String get test => 'পৰীক্ষা';

  @override
  String get testing => 'পৰীক্ষা কৰি আছে…';

  @override
  String get resolving => 'ৰিজলভ কৰি আছে…';

  @override
  String get none => 'একো নাই';

  @override
  String get selectMediaService => 'মিডিয়া ছাৰ্ভিচ বাছি লোৱা';

  @override
  String get manageServices => 'সংবাদ মাধ্যম সেৱা';

  @override
  String get manageServicesDesc =>
      'সেৱাসমূহ পুনৰ ক্ৰমবদ্ধ কৰক আৰু কোনবোৰ পিকাৰত দেখুৱাব বাছক';

  @override
  String get manageServicesHint =>
      'পুনৰ অৰ্ডাৰ কৰিবলৈ ড্ৰেগ কৰক, আপুনি ব্যৱহাৰ নকৰাবোৰ বন্ধ কৰক';

  @override
  String get pickColor => 'এটা ৰং বাছা';

  @override
  String get colorPickerCustom => 'কাষ্টম';

  @override
  String get colorPickerTransparent => 'স্বচ্ছ';

  @override
  String get ltr => 'বাওঁফালৰ পৰা সোঁফাললৈ';

  @override
  String get searchSettings => 'ছেটিংছ বিচাৰা';

  @override
  String nothingMatches(String query) {
    return '\"$query\"-ৰ লগত একো মিলা নাই';
  }

  @override
  String searchCategory(String category) {
    return '$category বিচাৰা';
  }

  @override
  String get settingsAppearance => 'চেহেৰা';

  @override
  String get settingsAppearanceDesc => 'থিম, ৰং, গ্লাছ মোড';

  @override
  String get settingsGeneral => 'সাধাৰণ';

  @override
  String get settingsGeneralDesc => 'ভাষা আৰু আচৰণ';

  @override
  String get settingsNetwork => 'নেটৱৰ্ক';

  @override
  String get settingsNetworkDesc =>
      'ব্যৱহাৰকাৰী এজেন্ট, প্ৰমাণপত্ৰ, DNS আৰু প্ৰক্সি';

  @override
  String get settingsAccountDesc => 'ট্ৰেকিং ছাৰ্ভিচ আৰু ছাইন-ইন';

  @override
  String get settingsUpdates => 'আপডেট';

  @override
  String get amoledBlack => 'AMOLED ক’লা';

  @override
  String get amoledBlackDesc => 'ডাৰ্ক মোডত একেবাৰে ক’লা পৃষ্ঠ';

  @override
  String get glassMode => 'গ্লাছ মোড';

  @override
  String get glassModeDesc => 'তোমাৰ লাইব্ৰেৰীৰ আৰ্টৰ ওপৰত ধূসৰ পৃষ্ঠ';

  @override
  String get shelfFrame => 'শাখাৰ চাৰিওফালে ফ্ৰেম';

  @override
  String get shelfFrameDesc =>
      'প্ৰতিটো শেল্ফৰ পিছত কাৰ্ড দেখুওৱা, নহ’লে শাৰীবোৰ পোনপটীয়াকৈ পেজত থাকক';

  @override
  String get settingsExtensionsDesc =>
      'উৎস পৰিচালক, ৰিপজিটৰী আৰু এক্সটেনছন বিকল্প';

  @override
  String get settingsAddons => 'এড-অন';

  @override
  String get customPath => 'কাষ্টম ষ্ট’ৰেজ পাথ';

  @override
  String get stories => 'গল্প';

  @override
  String get watchOrder => 'ৱাচ অৰ্ডাৰ';

  @override
  String get watchOrderOpenSite => 'chiaki.site ত খোলা';

  @override
  String get watchOrderUnavailable =>
      'এই শিৰোনামৰ বাবে কোনো ঘড়ীৰ অৰ্ডাৰ পোৱা নগ’ল';

  @override
  String get watchOrderOpenFailed => 'সেই শিৰোনামটো খুলিব পৰা নাছিল';

  @override
  String get watchOrderCurrent => 'তুমি ইয়াত আছা';

  @override
  String get watchOrderCredit => 'chiaki.site দ্বাৰা অৰ্ডাৰ চাওক';

  @override
  String get customPathDesc => 'এপৰ ডাটা য’ত থাকে। ৰিছেট কৰিবলৈ হেঁচি ধৰি ৰাখা';

  @override
  String get selectDirectory => 'ডাইৰেক্টৰী বাছা';

  @override
  String get differentCacheManager => 'বিকল্প ইমেজ কেশ্ব';

  @override
  String get differentCacheManagerDesc =>
      'ছবিৰ বাবে বেলেগ কেশ্ব পৰিচালক ব্যৱহাৰ কৰা';

  @override
  String get settingsSync => 'ছিঙ্ক ছেটিংছ';

  @override
  String get settingsSyncDesc =>
      'প্ৰতিটো ডিভাইচত আপোনাৰ ছেটিংছ একে ৰাখক। আপোনাৰ GitHub একাউণ্টত এটা ব্যক্তিগত জিষ্টত সংৰক্ষণ কৰা হয়';

  @override
  String get settingsSyncSwitch => 'পৰিৱৰ্তনৰ সময়ত ছিঙ্ক কৰক';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'GitHub ৰ সৈতে চাইন ইন কৰক';

  @override
  String get settingsSyncSignInDesc =>
      'ছেটিংছ আপোনাৰ একাউণ্টত এটা ব্যক্তিগত জিষ্টত সংৰক্ষণ কৰা হয়';

  @override
  String get settingsSyncToken => 'ব্যক্তিগত প্ৰৱেশ টোকেন ব্যৱহাৰ কৰক';

  @override
  String get settingsSyncTokenDesc =>
      'কেৱল gist অনুমতিৰ সৈতে github.com/settings/tokens ত এটা সৃষ্টি কৰক';

  @override
  String get settingsSyncTokenField => 'টোকেন';

  @override
  String settingsSyncSignedIn(Object user) {
    return '$user হিচাপে চাইন ইন কৰা হৈছে';
  }

  @override
  String get settingsSyncSignOut => 'চাইন আউট কৰক';

  @override
  String settingsSyncCode(Object code) {
    return 'GitHub ত $code সুমুৱাওক';
  }

  @override
  String get settingsSyncCodeDesc =>
      'আপোনাৰ ব্ৰাউজাৰত GitHub পৃষ্ঠা খোল খালে। ক\'ড কপি কৰিবলৈ টেপ কৰক, বা বাতিল কৰিবলৈ টেপ কৰক আৰু ধৰি ৰাখক।';

  @override
  String get settingsSyncSignInFailed => 'GitHub ত চাইন ইন কৰিব পৰা নগ\'ল';

  @override
  String get dcPreview => 'পূৰ্বদৰ্শন';

  @override
  String get dcSampleWatching => 'চাই আছে';

  @override
  String get dcSampleReading => 'পঢ়া';

  @override
  String get dcSampleBrowsing => 'ব্ৰাউজিং';

  @override
  String get dcSampleLive => 'এই মুহূৰ্তত';

  @override
  String get dcLiveNothing =>
      'বৰ্তমান একোৱেই দেখা পোৱা নাই। এটা শিৰোনাম খুলিব, এটা খণ্ড বা এটা অধ্যায় আৰম্ভ কৰক আৰু ইয়াত দেখা যাব।';

  @override
  String get dcMemberList => 'সদস্য তালিকাত';

  @override
  String get dcAccount => 'একাউণ্ট';

  @override
  String get dcSignIn => 'Discord ৰ সৈতে চাইন ইন কৰক';

  @override
  String get dcSignOut => 'চাইন আউট কৰক';

  @override
  String get dcDesktopHint =>
      'সংযোগ নকৰাকৈয়ে ডিচকৰ্ডে ডেস্কটপ এপৰ জৰিয়তে “Watching Dartotsu” দেখুৱায়। মোবাইলকে ধৰি আপোনাৰ শিৰোনামৰ নামেৰে কাৰ্য্যকলাপটোৰ নাম দিবলৈ Discord সংযোগ কৰক।';

  @override
  String get dcMobileHint =>
      'আপুনি কি চাইছে বা পঢ়িছে তাক দেখুৱাবলৈ Discord সংযোগ কৰক। ই আপোনাৰ একাউণ্ট টোকেন নহয়, Discord’s authorize পৃষ্ঠা ব্যৱহাৰ কৰে৷';

  @override
  String get dcConnect => 'ডিচকৰ্ড সংযোগ কৰক';

  @override
  String get dcConnectDesc =>
      'Discord’s authorize পৃষ্ঠা খোলে আৰু অনুমোদিত এপ্প্ সমূহৰ অন্তৰ্গত Dartotsu যোগ কৰে। Discord এ আপোনাৰ উপস্থিতি আপডেট কৰিবলৈ কয়। কেৱল এটা সতেজ টোকেন সংৰক্ষণ কৰা হয়, আপোনাৰ একাউণ্ট টোকেন নহয়।';

  @override
  String get dcConnectFailed => 'Discord সংযোগ কৰিব পৰা নগ\'ল';

  @override
  String get dcConnectedSnack => 'ডিচকৰ্ড সংযোগ কৰা হৈছে';

  @override
  String get dcDisconnect => 'সংযোগ বিচ্ছিন্ন কৰক';

  @override
  String get dcDisconnectedSnack => 'ডিচকৰ্ড বিচ্ছিন্ন';

  @override
  String get dcUseToken => 'ইয়াৰ পৰিৱৰ্তে টোকেন ব্যৱহাৰ কৰক';

  @override
  String get dcRouteDesktop => 'ডিস্কৰ্ড ডেস্কটপ এপৰ জৰিয়তে';

  @override
  String get dcRouteHeadless => 'আপোনাৰ একাউণ্টৰ জৰিয়তে';

  @override
  String get dcRouteGateway => 'আপোনাৰ একাউণ্টৰ জৰিয়তে, লাইভ';

  @override
  String get dcRouteLinked => 'সংযুক্ত এপ';

  @override
  String get dcRouteNone => 'সংযোগ কৰা হোৱা নাই';

  @override
  String get dcStatusNeedsToken =>
      'এটা ডিচকৰ্ড টোকেনৰ প্ৰয়োজন। এপটো সংযোগ কৰিলে আপোনাৰ অনলাইন ষ্টেটাছ ছেট নহয়।';

  @override
  String get dcAccountOnly => 'এটা চাইন-ইন একাউণ্টৰ প্ৰয়োজন';

  @override
  String get dcStatusSection => 'অৱস্থা';

  @override
  String get dcControlStatus => 'মোৰ ষ্টেটাছ নিয়ন্ত্ৰণ কৰক';

  @override
  String get dcControlStatusDesc =>
      'Rich Presence অন থকাৰ সময়ত Discord ৰ সৈতে এটা লাইভ সংযোগ ৰাখে, যাতে Dartotsu এ আপোনাৰ অৱস্থা সংহতি কৰিব পাৰে।';

  @override
  String get dcStatusOnline => 'অনলাইন';

  @override
  String get dcStatusIdle => 'অচল';

  @override
  String get dcStatusDnd => 'বিৰক্ত নকৰিব';

  @override
  String get dcStatusInvisible => 'অদৃশ্য';

  @override
  String get dcCustomStatus => 'কাষ্টম অৱস্থা';

  @override
  String get dcCustomStatusHint => 'আপুনি কি কৰি আছে?';

  @override
  String get dcActivitySection => 'কাৰ্য্যকলাপ';

  @override
  String get dcShowWatching => 'চাই থাকোঁতে দেখুৱাওক';

  @override
  String get dcShowReading => 'পঢ়ি থাকোঁতে দেখুৱাওক';

  @override
  String get dcListening => 'শুনি থকা';

  @override
  String get dcCompeting => 'প্ৰতিযোগিতাত অংশগ্ৰহণ কৰা';

  @override
  String get dcActivityName => 'কাৰ্য্যকলাপৰ নাম';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'শিৰোনাম';

  @override
  String get dcNameCustom => 'কাষ্টম';

  @override
  String get dcCustomNameHint => '“চোৱা”ৰ পিছত দেখুওৱা নাম';

  @override
  String get dcStatusText => 'অৱস্থাৰ লিখনী';

  @override
  String get dcStatusTextDesc =>
      'সদস্য তালিকাত আপোনাৰ নামৰ কাষত কি দেখুওৱা হৈছে';

  @override
  String get dcDisplayName => 'নাম';

  @override
  String get dcDisplayState => 'ৰাজ্য';

  @override
  String get dcDisplayDetails => 'সবিশেষ';

  @override
  String get dcTextSection => 'টেক্সট';

  @override
  String get dcDetails => 'শীৰ্ষ লাইন';

  @override
  String get dcState => 'তলৰ শাৰী';

  @override
  String get dcTemplateHint => 'খালী অবিকল্পিত ব্যৱহাৰ কৰে';

  @override
  String get dcVariables => 'এটা মান সন্নিবিষ্ট কৰিবলৈ টেপ কৰক';

  @override
  String get dcImagesSection => 'চিত্ৰ';

  @override
  String get dcLargeImage => 'ডাঙৰ ছবি';

  @override
  String get dcLargeAuto => 'অটো';

  @override
  String get dcLargeCover => 'কভাৰ';

  @override
  String get dcLargeLogo => 'ল\'গ\'';

  @override
  String get dcSmallImage => 'সৰু ছবি';

  @override
  String get dcSmallAuto => 'ল\'গ\'';

  @override
  String get dcSmallNone => 'কোনো নাই';

  @override
  String get dcTimerStyle => 'টাইমাৰ শৈলী';

  @override
  String get dcTimerAuto => 'অটো';

  @override
  String get dcTimerElapsed => 'পাৰ হৈ গ’ল';

  @override
  String get dcTimerRemaining => 'বাকী আছে';

  @override
  String get dcButtonsSection => 'বুটাম';

  @override
  String get dcButtonMedia => 'শিৰোনামৰ লিংক';

  @override
  String get dcButtonApp => 'Dartotsu ৰ লিংক';

  @override
  String get dcButtonCustom => 'কাষ্টম বুটাম';

  @override
  String get dcButtonLabel => 'লেবেল';

  @override
  String get dcButtonUrl => 'লিংক';

  @override
  String get dcPrivacySection => 'গোপনীয়তা';

  @override
  String get dcPrivateText => 'ব্যক্তিগত লিখনী';

  @override
  String get dcPrivateHint => 'ব্যক্তিগত কিবা এটা';

  @override
  String get dcTokenWarning =>
      'চাইন ইন কৰিলে আপোনাৰ একাউণ্ট টোকেন ব্যৱহাৰ কৰা হয়। ডিচকৰ্ডৰ নিয়মে ইয়াক নিৰুৎসাহিত কৰে, গতিকে ইয়াক নিজৰ দায়িত্বত ব্যৱহাৰ কৰক।';

  @override
  String get dcConnected => 'সংযোগ কৰা হৈছে';

  @override
  String get dcConnection => 'সংযোগ';

  @override
  String get dcMethodDesktop => 'ডিচকৰ্ড ডেস্কটপ এপ';

  @override
  String get dcMethodDesktopDesc =>
      'আন একো সংযোগ নকৰাৰ সময়ত স্বয়ংক্ৰিয়ভাৱে ব্যৱহাৰ কৰা হয়। এই কম্পিউটাৰত ডিচকৰ্ড খোলা থাকিব লাগিব।';

  @override
  String get dcMethodToken => 'একাউণ্ট টোকেন';

  @override
  String get dcInUse => 'ব্যৱহাৰত';

  @override
  String get dcRecommended => 'পৰামৰ্শ দিয়া হৈছে';

  @override
  String get dcConnecting => 'সংযোগ...';

  @override
  String get dcDisconnected => 'সংযোগ কৰা হোৱা নাই';

  @override
  String dcSignedInAs(String name) {
    return '$name হিচাপে চাইন ইন কৰা হৈছে';
  }

  @override
  String get settingsSyncOn => 'অন';

  @override
  String get settingsSyncCustom => 'কাষ্টম';

  @override
  String get settingsSyncChangedHeader => 'ছেটিংছ সলনি কৰা হৈছে';

  @override
  String get settingsSyncNoneChanged =>
      'আপুনি এইবোৰৰ কোনোটোৱেই এতিয়াও সলনি কৰা নাই, গতিকে ছিংক কৰিবলৈ একো নাই।';

  @override
  String get settingsSyncChangedOnly =>
      'কেৱল আপুনি সলনি কৰা সংহতিসমূহ সংৰক্ষণ কৰা হয়। বাকী সকলোৱে প্ৰতিটো ডিভাইচত ইয়াৰ অবিকল্পিত ব্যৱহাৰ কৰে। ক্লাউড আইকনে ইতিমধ্যে চাৰ্ভাৰত কি আছে দেখুৱায়।';

  @override
  String get settingsSyncOffCategory =>
      'ছিংক কৰা হোৱা নাই। এইবোৰ এই ডিভাইচত থাকে আৰু চাৰ্ভাৰ কপি যিদৰে আছে তেনেকৈয়ে ৰখা হয়।';

  @override
  String get settingsSyncPartsNote =>
      'প্ৰতিটো ডিভাইচৰ বাবে। অফ কৰি প্ৰতিটো ডিভাইচৰ নিজস্ব মূল্য ৰাখে, গতিকে এটা ফোন আৰু এটা টিভিৰ পাৰ্থক্য থাকিব পাৰে।';

  @override
  String get settingsSyncPartSubtitles => 'উপশিৰোনামাৰ আকাৰ আৰু ৰং';

  @override
  String get settingsSyncPartSubtitlesDesc => 'আকাৰ, ওজন, ৰং আৰু অৱস্থান';

  @override
  String get settingsSyncPartPictureColors => 'ছবিৰ ৰং';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'উজ্জ্বলতা, কনট্ৰাষ্ট, চেচুৰেচন, গামা, হিউ আৰু এইচডিআৰ';

  @override
  String get settingsSyncPartPalette => 'থিমৰ ৰং';

  @override
  String get settingsSyncPartPaletteDesc => 'থিম, উচ্চাৰণ ৰং আৰু OLED ক’লা';

  @override
  String get settingsSyncCatOther => 'চাওক, পঢ়ক আৰু সেৱাসমূহ';

  @override
  String get settingsSyncTitles => 'অগ্ৰগতি আৰু শিৰোনাম চাওক';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records শিৰোনামসমূহ আৰু $resume চাৰ্ভাৰত প্ৰৱেশসমূহ পুনৰাৰম্ভ কৰক';
  }

  @override
  String get settingsSyncTitlesNone => 'এতিয়াও একো আপলোড কৰা হোৱা নাই';

  @override
  String get settingsSyncTitlesNote =>
      'পজিচন, ৰিজ্যুম শ্বেল্ফ, আপোনাৰ স্থানীয় তালিকা, বুকমাৰ্ক, হাইলাইট আৰু প্ৰতি-শিৰোনাম বিকল্পসমূহ চাওক আৰু পঢ়ক। উৎস মিল আৰু ষ্ট্ৰিমসমূহ প্ৰতিটো ডিভাইচত থাকে কাৰণ সিহত আপোনাৰ সম্প্ৰসাৰণসমূহৰ ওপৰত নিৰ্ভৰ কৰে। শিৰোনামসমূহ সৰ্বাধিক প্ৰতি ৪৫ ছেকেণ্ডৰ মূৰে মূৰে আপলোড হয়।';

  @override
  String get settingsSyncConnect => 'সংযোগ কৰা হোৱা নাই';

  @override
  String get settingsSyncConnectDesc =>
      'প্ৰতিটো ডিভাইচত আপোনাৰ সংহতিসমূহ একে ৰাখিবলৈ GitHub ৰ সৈতে চাইন ইন কৰক।';

  @override
  String get settingsSyncFailedTitle => 'ছিঙ্ক বিফল হ\'ল';

  @override
  String get settingsSyncPaused => 'থমকি ৰ’ল';

  @override
  String get settingsSyncPausedDesc =>
      'এইটো বন্ধ হৈ থকাৰ সময়ত একো আপলোড বা ডাউনলোড কৰা নহয়।';

  @override
  String get settingsSyncUpToDate => 'আপ টু ডেট';

  @override
  String get settingsSyncRetry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get settingsSyncAccount => 'GitHub একাউণ্ট';

  @override
  String get settingsSyncAccountDesc =>
      'আপোনাৰ ডাটা আপোনাৰ নিজৰ একাউণ্টৰ এটা ব্যক্তিগত জিষ্টলৈ যায়।';

  @override
  String get settingsSyncWaiting =>
      'GitHub ত আপোনাৰ অনুমোদনৰ বাবে অপেক্ষা কৰি আছো';

  @override
  String get settingsSyncCopyCode => 'ইয়াক কপি কৰিবলৈ ক\'ডটো টেপ কৰক';

  @override
  String get settingsSyncCancel => 'বাতিল কৰক';

  @override
  String get settingsSyncStatSettings => 'ছেটিংছ';

  @override
  String get settingsSyncStatTitles => 'শিৰোনাম';

  @override
  String get settingsSyncStatShelf => 'ৰিজ্যুম কৰক';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return '$device ৰ পৰা $time আপলোড কৰা হৈছে';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count সলনি হ\'ল',
      one: '১ সলনি হ\'ল',
      zero: 'এতিয়াও একো সলনি হোৱা নাই',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'একাউণ্ট আৰু পাছৱৰ্ড';

  @override
  String get settingsSyncSecretsDesc =>
      'আপোনাৰ চাইন-ইনসমূহ (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API কিসমূহ আৰু আপোনাৰ ডিভাইচসমূহৰ মাজত এপ লক ছিঙ্ক কৰক। সিহতক এটা পাছফ্ৰেজৰ সৈতে ইনক্ৰিপ্ট কৰা হয় যি আপোনাৰ ডিভাইচসমূহত থাকে, গতিকে GitHub এ সিহতক কেতিয়াও দেখা নাপায়।';

  @override
  String get settingsSyncSecretsOn => 'একাউণ্টসমূহ সিঙ্ক আৰু এনক্ৰিপ্ট কৰা হয়';

  @override
  String get settingsSyncSecretsOnDesc =>
      'এটা ডিভাইচত চাইন আউট কৰিলে আপুনি আনবোৰত চাইন আউট নকৰে।';

  @override
  String get settingsSyncSecretsBroken =>
      'পাছফ্ৰেজ আৰু চাৰ্ভাৰৰ সৈতে মিল নাথাকে। একাউণ্টসমূহ সিঙ্ক কৰি ৰাখিবলৈ ইয়াক পুনৰ সুমুৱাওক।';

  @override
  String get settingsSyncPassphraseSet => 'এটা পাছফ্ৰেজ নিৰ্ধাৰণ কৰক';

  @override
  String get settingsSyncPassphraseEnter => 'আপোনাৰ পাছফ্ৰেজ দিয়ক';

  @override
  String get settingsSyncPassphraseField => 'পাছফ্ৰেজ';

  @override
  String get settingsSyncPassphraseConfirm => 'পাছফ্ৰেজটো পুনৰাবৃত্তি কৰক';

  @override
  String get settingsSyncPassphraseNew =>
      'অন্ততঃ ৬টা আখৰৰ এটা পাছফ্ৰেজ বাছক। ইয়াক আপোনাৰ ডিভাইচসমূহৰ বাহিৰে ক\'তো সংৰক্ষণ কৰা হোৱা নাই আৰু পুনৰুদ্ধাৰ কৰিব নোৱাৰি। যদি আপুনি ইয়াক পাহৰি যায়, চাৰ্ভাৰ কপি মচি পেলাওক আৰু পুনৰাৰম্ভ কৰক ।';

  @override
  String get settingsSyncPassphraseExisting =>
      'আপোনাৰ অন্য ডিভাইচত আপুনি বাছনি কৰা পাছফ্ৰেজ সুমুৱাওক। এই ডিভাইচত একাউণ্টসমূহ সিংক কৰা একাউণ্টসমূহৰ দ্বাৰা সলনি কৰা হ\'ব।';

  @override
  String get settingsSyncPassphraseWrong => 'ভুল পাছফ্ৰেজ';

  @override
  String get settingsSyncPassphraseMismatch => 'পাছফ্ৰেজবোৰ মিল নাই';

  @override
  String get settingsSyncPassphraseShort => 'অন্ততঃ ৬টা আখৰ ব্যৱহাৰ কৰক';

  @override
  String get settingsSyncSecretsStop => 'একাউণ্টসমূহ ছিংক কৰা বন্ধ কৰক';

  @override
  String get settingsSyncSecretsDelete => 'GitHub ৰ পৰা মচি পেলাওক';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'ই আপোনাৰ মূলৰ পৰা ইনক্ৰিপ্ট কৰা একাউণ্টসমূহ নথিপত্ৰ আঁতৰায়। অন্য ডিভাইচসমূহে তেওঁলোকৰ চাইন-ইনসমূহ ৰাখে আৰু এটা নতুন পাছফ্ৰেজ সংহতি কৰিব পাৰে।';

  @override
  String get settingsSyncWhat => 'কি ছিঙ্ক কৰিব লাগে';

  @override
  String get settingsSyncServer => 'চাৰ্ভাৰত';

  @override
  String get settingsSyncServerEmpty => 'এতিয়াও একো আপলোড কৰা হোৱা নাই';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count ছেটিংছ, আপলোড কৰা হৈছে $time $device ৰ পৰা';
  }

  @override
  String get settingsSyncThisDevice => 'এই ডিভাইচটো';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'চাৰ্ভাৰত $count সংহতিসমূহ',
      one: 'চাৰ্ভাৰত 1 ছেটিং',
      zero: 'চাৰ্ভাৰত একো নাই',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'এতিয়া ছিঙ্ক কৰক';

  @override
  String get settingsSyncRunning => 'ছিংকিং...';

  @override
  String get settingsSyncNever => 'এতিয়াও ছিংক কৰা হোৱা নাই';

  @override
  String settingsSyncLast(Object time) {
    return 'শেষত সিঙ্ক কৰা হৈছে $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'সমন্বয় ব্যৰ্থ: $error';
  }

  @override
  String get settingsSyncScope =>
      'কেৱল সকলোতে একে কাম কৰা ছেটিংছ ছিংক কৰা হয়। একাউণ্ট, টোকেন, ফোল্ডাৰ, এক্সটেনচন, জাননী, ডিচকৰ্ড, আপডেট আৰু উইণ্ড\'ৰ আকাৰ প্ৰতিটো ডিভাইচত থাকে।';

  @override
  String get backupAndRestore => 'বেকআপ আৰু ৰিষ্টৰ';

  @override
  String get backupAndRestoreDesc => 'তোমাৰ পচন্দবোৰ সংৰক্ষণ বা লোড কৰা';

  @override
  String get backup => 'বেকআপ';

  @override
  String get restore => 'ৰিষ্টৰ';

  @override
  String get loadExtensionsIcon => 'এক্সটেনছন আইকন লোড কৰা';

  @override
  String get autoUpdateRuntimes =>
      'সম্প্ৰসাৰণ চলনসময়সমূহ স্বয়ংক্ৰিয়ভাৱে আপডেইট কৰক';

  @override
  String get autoUpdateRuntimesDesc =>
      'পটভূমিত নতুন Aniyomi, CloudStream আৰু অন্য চলনসময় সংস্কৰণসমূহ ডাউনলোড কৰক। বন্ধ, ইয়াৰ পৰিবৰ্তে ব্যৱস্থাপকৰ কাষত এটা আপডেইট আইকন ওলায়।';

  @override
  String get loadExtensionsIconDesc => 'এক্সটেনছনৰ তালিকাত উৎসৰ আইকন দেখুওৱা';

  @override
  String get sectionStorage => 'ষ্ট’ৰেজ';

  @override
  String get sectionManagers => 'পৰিচালক';

  @override
  String get sectionOptions => 'বিকল্প';

  @override
  String get backupTabBackup => 'বেকআপ লোৱা';

  @override
  String get backupTabRestore => 'ৰিষ্টৰ';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categoriesটা শ্ৰেণীত $keysটা ছেটিংছ';
  }

  @override
  String backupLastBackup(Object time) {
    return 'শেষ বেকআপ $time';
  }

  @override
  String get backupNever => 'এতিয়াও কোনো বেকআপ নাই';

  @override
  String get backupSelectAll => 'সকলো বাছা';

  @override
  String get backupClearAll => 'মচি পেলোৱা';

  @override
  String backupKeys(Object count) {
    return '$countটা ছেটিংছ';
  }

  @override
  String get backupPasswordRequired =>
      'পাছৱৰ্ড (একাউণ্ট ডাটাৰ বাবে প্ৰয়োজনীয়)';

  @override
  String get backupProtectedNeedsPassword =>
      'একাউণ্ট তথ্য বেকআপ ল\'বলৈ এটা গুপ্তশব্দ নিৰ্ধাৰণ কৰক, বা ইয়াক আনটিক কৰক';

  @override
  String get backupProtectedSkipped =>
      'এই বেকআপৰ কোনো পাছৱৰ্ড নাই, গতিকে ইয়াৰ একাউণ্ট ডাটা এৰি দিয়া হৈছিল';

  @override
  String get backupPassword => 'পাছৱৰ্ড (ঐচ্ছিক)';

  @override
  String get backupPasswordHint => 'ডিফল্ট ব্যৱহাৰ কৰিবলৈ খালী ৰাখা';

  @override
  String get backupSensitive => 'লগইন টোকেন আছে। ফাইলটো গোপন ৰাখা';

  @override
  String get backupCreate => 'বেকআপ বনোৱা';

  @override
  String backupSaved(Object name) {
    return 'বেকআপ $name-ত সংৰক্ষণ হৈছে';
  }

  @override
  String backupFailed(Object error) {
    return 'বেকআপ বিফল: $error';
  }

  @override
  String get backupPickFile => 'বেকআপ ফাইল বাছা';

  @override
  String get backupPickFileDesc => 'Dartotsu-এ বনোৱা এটা .json ফাইল বাছা';

  @override
  String get backupChooseAnother => 'আন এটা ফাইল বাছা';

  @override
  String get backupCreatedAt => 'বনোৱা হৈছে';

  @override
  String get backupAppVersion => 'এপৰ সংস্কৰণ';

  @override
  String get backupDevice => 'ডিভাইচ';

  @override
  String get backupAccounts => 'একাউণ্ট';

  @override
  String get backupSize => 'আকাৰ';

  @override
  String get backupEncrypted => 'পাছৱৰ্ডেৰে সুৰক্ষিত';

  @override
  String get backupUnlock => 'আনলক';

  @override
  String get backupWrongPassword => 'ফাইলটো পঢ়িব পৰা নগল। পাছৱৰ্ড পৰীক্ষা কৰা';

  @override
  String get backupRestoreSelected => 'বাছনিবোৰ ৰিষ্টৰ কৰা';

  @override
  String backupRestoreConfirm(Object count) {
    return '$countটা ছেটিংছ ৰিষ্টৰ কৰিবা? এই শ্ৰেণীবোৰৰ বৰ্তমানৰ মান অভাৰৰাইট হৈ যাব।';
  }

  @override
  String get backupRestored =>
      'ৰিষ্টৰ হৈছে। সকলো প্ৰয়োগ কৰিবলৈ এপ ৰিষ্টাৰ্ট কৰা';

  @override
  String backupRestoreFailed(Object error) {
    return 'ৰিষ্টৰ বিফল: $error';
  }

  @override
  String get backupSelectOne => 'অতি কমেও এটা শ্ৰেণী বাছা';

  @override
  String get backupCatTheme => 'চেহেৰা';

  @override
  String get backupCatThemeDesc => 'থিম, ৰং, গ্লাছ, ফন্ট আৰু কাৰ্ড ষ্টাইল';

  @override
  String get backupCatCommon => 'সাধাৰণ';

  @override
  String get backupCatCommonDesc =>
      'ভাষা, ষ্ট’ৰেজ, নেটৱৰ্ক আৰু এক্সটেনছন বিকল্প';

  @override
  String get backupCatPlayer => 'প্লেয়াৰ';

  @override
  String get backupCatPlayerDesc => 'প্লেয়াৰৰ পচন্দ';

  @override
  String get backupCatReader => 'ৰিডাৰ';

  @override
  String get backupCatReaderDesc => 'ৰিডাৰৰ পচন্দ';

  @override
  String get backupCatProtected => 'একাউণ্ট';

  @override
  String get backupCatProtectedDesc => 'লগইন টোকেন আৰু ছাইন-ইন ডাটা';

  @override
  String get backupCatOther => 'ছাৰ্ভিচ আৰু ফিড';

  @override
  String get backupCatOtherDesc => 'ফিড লেআউট, তালিকা আৰু ছাৰ্ভিচ বিকল্প';

  @override
  String get logFile => 'লগ ফাইল';

  @override
  String get logFileDesc => 'এপৰ লগ শ্বেয়াৰ কৰা, বা Linux-ত ইয়াৰ পাথ কপি কৰা';

  @override
  String get logDelete => 'লগ ফাইলসমূহ মচি পেলাওক';

  @override
  String get logDeleteDesc =>
      'স্থান মুকলি কৰিবলৈ সংৰক্ষিত এপৰ লগসমূহ পৰিষ্কাৰ কৰক';

  @override
  String logDeleted(String size) {
    return 'লগসমূহৰ $size মচি পেলোৱা হৈছে';
  }

  @override
  String get missingSequel => 'মিছিং ছিকুৱেল';

  @override
  String get rising => 'ৰাইজিং';

  @override
  String get stacks => 'ষ্টেক';

  @override
  String get stacksAll => 'সকলো';

  @override
  String get stacksFeatured => 'বৈশিষ্ট্যযুক্ত';

  @override
  String get stacksMine => 'আপোনাৰ';

  @override
  String get stacksSaved => 'সংৰক্ষণ কৰা হৈছে';

  @override
  String get stacksFollowing => 'অনুসৰণ কৰা হৈছে';

  @override
  String get stacksEmpty => 'ইয়াত এতিয়াও কোনো ষ্টেক নাই';

  @override
  String get stacksSignIn => 'আপোনাৰ ষ্টেকসমূহ চাবলৈ MangaBaka ত চাইন ইন কৰক';

  @override
  String get stacksScopeNeeded =>
      'আপোনাৰ ষ্টেকসমূহক এটা নতুন অনুমতিৰ প্ৰয়োজন। অনুমতি দিবলৈ MangaBaka ত আকৌ চাইন ইন কৰক।';

  @override
  String get stacksSignInAgain => 'আকৌ চাইন ইন কৰক';

  @override
  String get stacksCouldntLoad => 'ষ্টেকসমূহ লোড কৰিব পৰা নগ\'ল';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count শৃংখলা',
      one: '১ শৃংখলা',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count সংৰক্ষণ কৰে',
      one: '১ ৰক্ষা কৰক',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'দ্বাৰা $name';
  }

  @override
  String get stackSpoilers => 'স্পয়লাৰ';

  @override
  String get stackEmptyEntries => 'এই ষ্টেকটো খালী';

  @override
  String get stackSave => 'ষ্টেক সংৰক্ষণ কৰক';

  @override
  String get stackUnsave => 'সংৰক্ষণৰ পৰা আঁতৰাই পেলাওক';

  @override
  String get stackSavedToast => 'আপোনাৰ ষ্টেকসমূহত সংৰক্ষণ কৰা হৈছে';

  @override
  String get stackRemovedToast => 'আপোনাৰ সংৰক্ষিত ষ্টেকসমূহৰ পৰা আঁতৰোৱা হৈছে';

  @override
  String userStacks(String name) {
    return '$name দ্বাৰা ষ্টেক';
  }

  @override
  String get newsTitle => 'বাতৰি';

  @override
  String get newsEmpty => 'বৰ্তমান কোনো খবৰ নাই';

  @override
  String get newsCouldntLoad => 'বাতৰিটো লোড কৰিব পৰা নাই';

  @override
  String get logFileCopied => 'লগ পাথ কপি হৈছে';

  @override
  String get donateSheetTitle => 'Dartotsu ভাল লাগিছে নে?';

  @override
  String get donateSheetMessage =>
      'Dartotsu এজন মানুহে বনায় আৰু চলাই ৰাখে। কামত আহিলে ডেভেলপমেণ্টক সহায় কৰাৰ কথা ভাবিবা।';

  @override
  String get donateLater => 'পিছত';

  @override
  String get glassBackground => 'গ্লাছ বেকগ্ৰাউণ্ড';

  @override
  String get glassBackgroundDesc => 'ইমেজ লিংক নিদিলে তোমাৰ প্ৰফাইল বেনাৰ';

  @override
  String get glassBackgroundHint => 'ইমেজ লিংক (তোমাৰ বেনাৰৰ বাবে খালী ৰাখা)';

  @override
  String get followCover => 'কভাৰ অনুসৰণ কৰা';

  @override
  String get followCoverDesc =>
      'ৰং বেকগ্ৰাউণ্ডক অনুসৰণ কৰে, আৰু বিৱৰণ পেজত কভাৰক';

  @override
  String get followCoverMediaOnly => 'কেৱল সংবাদ মাধ্যমৰ বাবে';

  @override
  String get followCoverMediaOnlyDesc =>
      'কেৱল মিডিয়া পেজত কভাৰ অনুসৰণ কৰক, বাকী সকলোতে স্বাভাৱিক ৰং ৰাখে';

  @override
  String get cardStyle => 'কাৰ্ড ষ্টাইল';

  @override
  String get cardStyleDesc => 'শিৰোনামৰ স্থান, আকাৰ, প্ৰগ্ৰেছ আৰু বেজ';

  @override
  String get customFont => 'ফন্ট';

  @override
  String get customFontDesc => 'ডিফল্ট, তোমাৰ ডিভাইচৰ ফাইল, বা Google Fonts';

  @override
  String get customFontError => 'সেই ফন্ট ফাইল লোড কৰিব পৰা নগল';

  @override
  String get googleFontError => 'সেই ফন্ট ডাউনলোড কৰিব পৰা নগল';

  @override
  String get yourFonts => 'তোমাৰ ফন্ট';

  @override
  String get addFontFile => 'ফন্ট ফাইল যোগ কৰা…';

  @override
  String get browseGoogleFonts => 'Google Fonts চাই লোৱা…';

  @override
  String get searchGoogleFonts => 'Google Fonts বিচাৰা';

  @override
  String get defaultFont => 'ডিফল্ট';

  @override
  String get materialYou => 'সামগ্ৰী আপুনি';

  @override
  String get materialYouDesc => 'ছিষ্টেমৰ পৰা ডাইনামিক ৰং';

  @override
  String get jsonTheme => 'কাষ্টম থিম ফাইল';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json-ৰ পৰা লাইভ ৰং (কাষ্টম স্ক্ৰিপ্ট বা তোমাৰ নিজৰ সম্পাদনা)';

  @override
  String get themeMode => 'থিম মোড';

  @override
  String get mode => 'মোড';

  @override
  String get trackingService => 'ট্ৰেকিং ছাৰ্ভিচ';

  @override
  String get signOut => 'ছাইন আউট';

  @override
  String get signIn => 'ছাইন ইন';

  @override
  String get notSignedIn => 'ছাইন ইন কৰা নাই';

  @override
  String signOutOf(String service) {
    return '$service-ৰ পৰা ছাইন আউট কৰিবা?';
  }

  @override
  String get checkForUpdates => 'আপডেট পৰীক্ষা কৰা';

  @override
  String get checkForUpdatesDesc => 'নতুন GitHub ৰিলিজ আহিলে জনাবা';

  @override
  String get updateChannel => 'আপডেট চেনেল';

  @override
  String get channel => 'চেনেল';

  @override
  String get stable => 'স্থিৰ';

  @override
  String get preRelease => 'প্ৰি-ৰিলিজ';

  @override
  String get alpha => 'আলফা';

  @override
  String get checkNow => 'এতিয়াই পৰীক্ষা কৰা';

  @override
  String get userAgent => 'ব্যৱহাৰকাৰী-এজেন্ট';

  @override
  String get settingDefault => 'ডিফল্ট';

  @override
  String currentlyUsing(String value) {
    return 'এতিয়া: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-অভাৰ-HTTPS';

  @override
  String get dnsDefault => 'ডিফল্ট (Cloudflare)';

  @override
  String get proxy => 'প্ৰক্সি';

  @override
  String get proxyProtocol => 'ধৰণ';

  @override
  String get proxyHost => 'হোষ্ট';

  @override
  String get proxyPort => 'পৰ্ট';

  @override
  String get proxyUsername => 'ইউজাৰনেম';

  @override
  String get proxyPassword => 'পাছৱৰ্ড';

  @override
  String get optional => 'ঐচ্ছিক';

  @override
  String get clearCookies => 'কুকি মচি পেলোৱা';

  @override
  String get clearCookiesDesc => 'জমা থকা সকলো কুকি আতৰাই দিয়া';

  @override
  String notImplementedArea(String area) {
    return '$area — সোনকালে আহিব';
  }

  @override
  String notImplementedService(String service) {
    return '$service-এ এতিয়াও ইয়াক সমৰ্থন নকৰে।';
  }

  @override
  String get couldNotLoadResults => 'ফলাফল লোড কৰিব পৰা নগল';

  @override
  String get updateCheckFailed => 'আপডেট পৰীক্ষা কৰিব পৰা নগল';

  @override
  String get highRefreshRate => 'হাই ৰিফ্ৰেচ ৰেট';

  @override
  String get highRefreshRateDesc =>
      'তোমাৰ স্ক্ৰীনে সমৰ্থন কৰা আটাইতকৈ বেছি ৰিফ্ৰেচ ৰেট ব্যৱহাৰ কৰা';

  @override
  String get imageSave => 'ছবি সংৰক্ষণ কৰা';

  @override
  String imageSavedTo(String path) {
    return '$path-ত সংৰক্ষণ হৈছে';
  }

  @override
  String get imageActionFailed => 'ছবি ডাউনলোড কৰিব পৰা নগল';

  @override
  String get imageTitleCover => 'কভাৰ';

  @override
  String get imageTitlePage => 'পৃষ্ঠা';

  @override
  String get imageTitleBanner => 'বেনাৰ';

  @override
  String get imageTitleAvatar => 'প্ৰফাইল ছবি';

  @override
  String get verifyTls => 'প্ৰমাণপত্ৰ যাচাই কৰা';

  @override
  String get verifyTlsDesc =>
      'অবৈধ HTTPS প্ৰমাণপত্ৰ থকা ছাৰ্ভাৰ অগ্ৰাহ্য কৰা। নিজে চহী কৰা প্ৰমাণপত্ৰ ব্যৱহাৰ কৰা উৎসৰ বাবেহে বন্ধ কৰা';

  @override
  String get clearCookiesConfirm =>
      'জমা থকা সকলো কুকি আতৰাবা? ইয়াৰ ফলত কিছুমান উৎসৰ পৰা ছাইন আউট হ’ব পাৰে।';

  @override
  String get version => 'সংস্কৰণ';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'উৎস, ইছ্যু আৰু ৰিলিজ';

  @override
  String get discordDesc => 'সম্প্ৰদায় আৰু সহায়';

  @override
  String get supportDeveloper => 'ডেভেলপাৰক সমৰ্থন কৰক';

  @override
  String get buyMeCoffee => 'মোৰ বাবে কফি এটা কিনি দিয়ক';

  @override
  String get upiId => 'ইউপিআই আইডি';

  @override
  String get upiCopied => 'ইউপিআই আইডি কপি কৰা হৈছে';

  @override
  String get donateDesc => 'ডেভেলপমেণ্টক সহায় কৰা';

  @override
  String get contributors => 'অৱদানকাৰী';

  @override
  String get contributorsDesc => 'যিসকলে Dartotsu বনাইছে';

  @override
  String get contributorsLoadFailed => 'অৱদানকাৰীসকলক লোড কৰিব পৰা নগল';

  @override
  String get forks => 'কাঁটাচামুচ';

  @override
  String get forksDesc => 'Dartotsu-ৰ ওপৰত বনোৱা প্ৰকল্প';

  @override
  String get forksEmpty => 'কোনো ফৰ্ক পোৱা নাই';

  @override
  String get sectionColors => 'ৰং';

  @override
  String get sectionDisplay => 'ডিছপ্লে';

  @override
  String get sectionStyle => 'ষ্টাইল';

  @override
  String get sectionCommunity => 'সম্প্ৰদায়';

  @override
  String get sectionAppInfo => 'এপৰ তথ্য';

  @override
  String get sectionRequests => 'অনুৰোধ';

  @override
  String get sectionDnsProxy => 'DNS আৰু প্ৰক্সি';

  @override
  String get onboardingBack => 'উভতি যোৱা';

  @override
  String get onboardingNext => 'পৰৱৰ্তী';

  @override
  String get onboardingSkip => 'এৰি যোৱা';

  @override
  String get onboardingLanguageBody =>
      'Dartotsu দেখুওৱা ভাষা বাছক। আপুনি ইয়াক পিছত ছেটিংছত সলনি কৰিব পাৰে।';

  @override
  String get onboardingPaletteTitle => 'নিজৰ দৰে সজাই লোৱা';

  @override
  String get onboardingPaletteBody =>
      'এটা পেলেট বাছা। কাৰ্ডৰ পৰা প্লেয়াৰলৈকে সকলো একেচেণ্ট ইয়াক মানি চলিব।';

  @override
  String get themeModeAuto => 'অটো';

  @override
  String get themeModeLight => 'লাইট';

  @override
  String get themeModeDark => 'ডাৰ্ক';

  @override
  String get onboardingSyncTitle => 'তোমাৰ লাইব্ৰেৰী ছিংক কৰা';

  @override
  String get onboardingSyncBody =>
      'তোমাৰ তালিকা, প্ৰগ্ৰেছ আৰু স্ক’ৰ লগত আনিবলৈ AniList-ৰে ছাইন ইন কৰা। নহ’লে এৰি গেষ্ট হিচাপে ঘূৰি চোৱা।';

  @override
  String get onboardingOpenLinks => 'AniList আৰু ৰিপো লিংক Dartotsu-ত খোলা';

  @override
  String get onboardingPermsTitle => 'অনুমতি';

  @override
  String get onboardingPermsBody =>
      'ডাউনলোড, আপডেট আৰু এলাৰ্ট যাতে বাধা নোহোৱাকৈ চলে, এতিয়াই দিয়া। পিছত ছিষ্টেম ছেটিংছত সলনি কৰিব পাৰিবা।';

  @override
  String get permNotifications => 'জাননী';

  @override
  String get permNotificationsDesc => 'ডাউনলোডৰ প্ৰগ্ৰেছ, নতুন পৰ্ব আৰু উত্তৰ';

  @override
  String get permStorage => 'সকলো ফাইলৰ এক্সেছ';

  @override
  String get permStorageDesc => 'ডাউনলোড পাব্লিক Dartotsu ফোল্ডাৰত সংৰক্ষণ কৰা';

  @override
  String get permInstall => 'আপডেট ইনষ্টল কৰা';

  @override
  String get permInstallDesc => 'Dartotsu-ক নিজৰ এপ আপডেট ইনষ্টল কৰিবলৈ দিয়া';

  @override
  String get permBattery => 'নিয়ন্ত্ৰণহীন বেটাৰী';

  @override
  String get permBatteryDesc => 'দীঘলীয়া ডাউনলোডবোৰ বেকগ্ৰাউণ্ডত চলিবলৈ দিয়া';

  @override
  String get permGrant => 'অনুমতি দিয়া';

  @override
  String get linkOpenInApp => 'লিংক Dartotsu-ত খোলা';

  @override
  String get linkOpenInAppDesc => 'AniList আৰু ৰিপো লিংকে এপটো খুলিবলৈ দিয়া';

  @override
  String get reviewsTitle => 'ৰিভিউ';

  @override
  String get reviewsEmpty => 'এতিয়াও কোনো ৰিভিউ নাই';

  @override
  String get reviewsFailed => 'ৰিভিউ লোড কৰিব পৰা নগল';

  @override
  String get reviewHelpfulQuestion => 'এই ৰিভিউটো কামত আহিল নেকি?';

  @override
  String get reviewVoteFailed => 'তোমাৰ ভোট সংৰক্ষণ কৰিব পৰা নগল';

  @override
  String reviewHelpful(int n, int total) {
    return '$total জনৰ ভিতৰত $n জনে এইটো কামত অহা বুলি পাইছে';
  }

  @override
  String get calendarTitle => 'এয়াৰিং সময়সূচী';

  @override
  String get calendarToday => 'আজি';

  @override
  String get calendarEmpty => 'এইদিনা একো সম্প্ৰচাৰ নহয়';

  @override
  String get calendarFailed => 'সময়সূচী লোড কৰিব পৰা নগল';

  @override
  String calendarChapter(int n) {
    return 'অধ্যায় $n';
  }

  @override
  String get calendarExpected => 'আশা কৰা হৈছে';

  @override
  String get castReceiverFailed => 'Chromecast এ নিজৰ প্লেয়াৰ আৰম্ভ কৰা নাছিল';

  @override
  String get castPlaybackFailed => 'ডিভাইচটোৱে এই ষ্ট্ৰিমটো বজাব পৰা নাছিল';

  @override
  String get shortcutNothingToContinue => 'এতিয়াও আগবাঢ়িবলৈ একো নাই';

  @override
  String shortcutNoCalendar(String service) {
    return '$service ৰ কোনো কেলেণ্ডাৰ নাই';
  }

  @override
  String calendarEpisode(int n) {
    return 'পৰ্ব $n';
  }

  @override
  String get shareAnalytics => 'নাম নথকা ব্যৱহাৰৰ ডাটা শ্বেয়াৰ কৰা';

  @override
  String get shareAnalyticsDesc =>
      'নাম নথকা ব্যৱহাৰকাৰীৰ সংখ্যা আৰু ক্ৰেশ্ব ৰিপৰ্ট। কোনো একাউণ্ট বা ব্যক্তিগত ডাটা নাই';

  @override
  String get linkOpenAnilist => 'AniList লিংক Dartotsu-ত খোলা';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co লিংকে এপটো খুলিবলৈ লিংক হেণ্ডলিং চালু কৰা';

  @override
  String get linkSettingsFailed => 'ছিষ্টেম ছেটিংছ খুলিব পৰা নগল';

  @override
  String get discordRichPresence => 'ৰিচ প্ৰেজেন্স';

  @override
  String get discordRichPresenceTokenDesc =>
      'তুমি কি কৰি আছা সেয়া Discord প্ৰফাইলত দেখুওৱা। তোমাৰ Discord টোকেন লাগিব।';

  @override
  String get discordRichPresenceDesktopDesc =>
      'তুমি কি কৰি আছা সেয়া Discord প্ৰফাইলত দেখুওৱা। Discord ডেস্কটপ এপ চলি থাকিব লাগিব।';

  @override
  String get discordBrowsing => 'ব্ৰাউজিং কাৰ্যকলাপ দেখুওৱা';

  @override
  String get discordBrowsingDesc =>
      'কেৱল যিটো চাই আছা বা পঢ়ি আছা সেয়া নহয়, যিটো টেব, পেজ বা প্ৰফাইলত আছা সেয়াও দেখুওৱা।';

  @override
  String get discordLookHeader => 'প্ৰেজেন্সৰ চেহেৰা';

  @override
  String get discordActivityType => 'কাৰ্যকলাপৰ ধৰণ';

  @override
  String get discordActivityTypeDesc =>
      'Discord-এ কেনেকৈ লিখে: \"Watching …\" বা \"Playing …\"। অটোয়ে এনিমেৰ বাবে Watching আৰু বাকী সকলোবোৰৰ বাবে Playing ব্যৱহাৰ কৰে।';

  @override
  String get discordWatching => 'চাই আছে';

  @override
  String get discordPlaying => 'খেলি আছে';

  @override
  String get discordCovers => 'কভাৰ দেখুওৱা';

  @override
  String get discordCoversDesc => 'কাৰ্ডত কভাৰ আৰ্ট আৰু Dartotsu আইকন।';

  @override
  String get discordTimer => 'টাইমাৰ দেখুওৱা';

  @override
  String get discordTimerDesc => 'শিৰোনামৰ তলত পাৰ হোৱা বা বাকী থকা সময়।';

  @override
  String get discordButtons => 'বুটাম দেখুওৱা';

  @override
  String get discordButtonsDesc =>
      '\"এনিমে / মাংগা চোৱা\" আৰু \"Dartotsu খোলা\" বুটাম।';

  @override
  String get discordHideTitles => 'শিৰোনাম লুকুওৱা';

  @override
  String get discordHideTitlesDesc =>
      'এনিমে আৰু মাংগাৰ নাম (লগত কভাৰ আৰু লিংক) \"কিবা এটা ব্যক্তিগত\"-ৰে সলনি কৰা।';

  @override
  String get discordConnectionHeader => 'সংযোগ';

  @override
  String get listSearchHint => 'এই তালিকাত বিচাৰা';

  @override
  String get listSort => 'সজোৱা';

  @override
  String get listFilter => 'ফিল্টাৰ';

  @override
  String get listRandom => 'ৰেণ্ডম শিৰোনাম';

  @override
  String get listReverse => 'ওলোটা ক্ৰম';

  @override
  String get listSortDefault => 'তালিকাৰ ক্ৰম';

  @override
  String get listSortScore => 'তোমাৰ স্ক’ৰ';

  @override
  String get listSortTitle => 'শিৰোনাম';

  @override
  String get listSortUpdated => 'শেষ আপডেট';

  @override
  String get listSortProgress => 'প্ৰগ্ৰেছ';

  @override
  String get listSortReleased => 'ৰিলিজৰ তাৰিখ';

  @override
  String get listSortAverage => 'গড় স্ক’ৰ';

  @override
  String get listFilterFormat => 'ফৰ্মেট';

  @override
  String get listFilterStatus => 'স্থিতি';

  @override
  String get listFilterGenres => 'জেনৰা';

  @override
  String get listFilterClear => 'ফিল্টাৰ মচি পেলোৱা';

  @override
  String get listNoMatches => 'এই তালিকাত একো মিলা নাই';

  @override
  String get discordLogin => 'Discord-ত লগইন কৰা';

  @override
  String get discordToken => 'Discord টোকেন';

  @override
  String get discordTokenSaved =>
      'সংৰক্ষণ হৈছে। সলনি কৰিবলৈ টেপ কৰা, আতৰাবলৈ হেঁচি ধৰা।';

  @override
  String get discordTokenNotSet => 'ছেট কৰা নাই। যোগ কৰিবলৈ টেপ কৰা।';

  @override
  String get discordTokenSavedSnack => 'Discord টোকেন সংৰক্ষণ হৈছে';

  @override
  String get discordTokenRemovedSnack => 'Discord টোকেন আতৰোৱা হৈছে';

  @override
  String get discordRichPresenceRow => 'ডিচকৰ্ড ৰিচ প্ৰেজেন্স';

  @override
  String get discordRichPresenceRowOn =>
      'চালু · কেনেকুৱা দেখা যাব সলনি কৰিবলৈ টেপ কৰা';

  @override
  String get discordRichPresenceRowOff =>
      'তুমি কি কৰি আছা সেয়া Discord প্ৰফাইলত দেখুওৱা';

  @override
  String get loginCancelled => 'লগইন বাতিল কৰা হৈছে';

  @override
  String get invalidToken => 'অবৈধ টোকেন';

  @override
  String loginFailed(String error) {
    return 'লগইন বিফল: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList লগইন বিফল';

  @override
  String get kitsuLoginFailed =>
      'Kitsu লগইন বিফল। ইমেইল আৰু পাছৱৰ্ড পৰীক্ষা কৰা।';

  @override
  String get kitsuLoginTitle => 'Kitsu-ত ছাইন ইন কৰা';

  @override
  String get emailOrUsername => 'ইমেইল বা ইউজাৰনেম';

  @override
  String get password => 'পাছৱৰ্ড';

  @override
  String get kitsuProfile => 'Kitsu প্ৰফাইল';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka লগইন বিফল';

  @override
  String get comickLoginFailed => 'কমিক লগইন বিফল হ\'ল';

  @override
  String get tagline => 'টেগলাইন';

  @override
  String get trending => 'ট্ৰেণ্ডিং';

  @override
  String get anticipated => 'প্ৰত্যাশিত';

  @override
  String get watchlist => 'ৱাচলিষ্ট';

  @override
  String get recommendedShows => 'পৰামৰ্শ দিয়া শ্ব\'সমূহ';

  @override
  String get recommendedMovies => 'পৰামৰ্শ দিয়া চিনেমা';

  @override
  String get boxOffice => 'বক্স অফিচ';

  @override
  String get popularMovies => 'জনপ্ৰিয় চিনেমা';

  @override
  String get popularShows => 'জনপ্ৰিয় শ্ব\'';

  @override
  String get anticipatedMovies => 'প্ৰত্যাশিত চিনেমা';

  @override
  String get anticipatedShows => 'প্ৰত্যাশিত শ্ব\'';

  @override
  String get trendingShows => 'ট্ৰেণ্ডিং শ্ব\'';

  @override
  String get mostWatchedThisWeek => 'এই সপ্তাহত সৰ্বাধিক চোৱা হৈছে';

  @override
  String get sortMostViewed => 'বেছিভাগেই চোৱা হৈছে';

  @override
  String get sortMostFollowed => 'বেছিভাগেই অনুসৰণ কৰিলে';

  @override
  String get sortLatestUpdates => 'শেহতীয়া আপডেটসমূহ';

  @override
  String get translationStatusLabel => 'অনুবাদ';

  @override
  String get weeklySchedule => 'সাপ্তাহিক সূচী';

  @override
  String get mostFollowed => 'সৰ্বাধিক অনুসৰণ কৰা হৈছে';

  @override
  String get latestUpdates => 'শেহতীয়া আপডেটসমূহ';

  @override
  String get trendingAnime => 'ট্ৰেণ্ডিং এনিমে';

  @override
  String get topRatedAnime => 'শীৰ্ষ ৰেটিং এনিমে';

  @override
  String get mostFollowedAnime => 'সৰ্বাধিক অনুসৰণ কৰা এনিমে';

  @override
  String get comickProfile => 'কমিক প্ৰফাইল';

  @override
  String get refreshFromComick => 'কমিকৰ পৰা সতেজ কৰক';

  @override
  String get mangaBakaProfile => 'MangaBaka প্ৰফাইল';

  @override
  String get refreshFromMangaBaka => 'MangaBaka-ৰ পৰা ৰিফ্ৰেচ কৰা';

  @override
  String get mangaUpdatesLoginTitle => 'MangaUpdates ত চাইন ইন কৰক';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates প্ৰফাইল';

  @override
  String get mangaUpdatesAnimeStart => 'এনিমে অভিযোজন আৰম্ভ হয়';

  @override
  String get mangaUpdatesAnimeEnd => 'এনিমে অভিযোজন শেষ';

  @override
  String get refreshFromMangaUpdates => 'MangaUpdates ৰ পৰা সতেজ কৰক';

  @override
  String get usernameOnly => 'ব্যৱহাৰকাৰীৰ নাম';

  @override
  String get releases => 'মুক্তি';

  @override
  String get artistsLabel => 'শিল্পী';

  @override
  String get authorsLabel => 'লেখক';

  @override
  String get publishersLabel => 'প্ৰকাশক';

  @override
  String get licensedLabel => 'অনুজ্ঞাপ্ৰাপ্ত';

  @override
  String get contentRatingLabel => 'কণ্টেণ্ট ৰেটিং';

  @override
  String get yesLabel => 'হয়';

  @override
  String get noLabel => 'নহয়';

  @override
  String get ratingSteps => 'ৰেটিঙৰ ধাপ';

  @override
  String get hideNsfw => 'NSFW লুকুওৱা';

  @override
  String get hideNsfwSourcesDesc =>
      'ফিড আৰু উৎস পিকাৰৰ পৰা 18+ চিহ্নিত উৎসসমূহ লুকুৱাওক। ইনষ্টল হৈ থাকে।';

  @override
  String get hideNsfwDesc =>
      'প্ৰাপ্তবয়স্কৰ শিৰোনাম ফিড আৰু সন্ধানৰ পৰা আতৰাই ৰাখা, আৰু তোমাৰ নিজৰ প্ৰাপ্তবয়স্ক এণ্ট্ৰিবোৰ \"লুকাই থোৱা মিডিয়া\"-ৰ তলত দেখুওৱা।';

  @override
  String get kitsuAccountOptions => 'Kitsu একাউণ্ট বিকল্প';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka একাউণ্ট বিকল্প';

  @override
  String get comickAccountOptions => 'কমিক একাউণ্ট বিকল্পসমূহ';

  @override
  String get comickClientId => 'কমিক ক্লায়েন্ট আইডি';

  @override
  String get comickClientIdDesc =>
      'comick.dev ত পঞ্জীয়ন কৰা স্বনিৰ্বাচিত ক্লায়েন্ট আইডি';

  @override
  String get couldNotUpdateKitsuSettings =>
      'তোমাৰ Kitsu ছেটিংছ আপডেট কৰিব পৰা নগল';

  @override
  String get titleCanonical => 'কেনোনিকেল';

  @override
  String get titleRomanized => 'ৰোমানাইজড';

  @override
  String get titleLocalized => 'স্থানীয়কৃত';

  @override
  String get ratingSystem => 'ৰেটিং ব্যৱস্থা';

  @override
  String get ratingSimple => 'সৰল (৩টা মুখ)';

  @override
  String get ratingRegular => 'সাধাৰণ (৫টা তৰা)';

  @override
  String get ratingAdvanced => 'উন্নত (১০ পইণ্ট)';

  @override
  String get contentFilter => 'কণ্টেণ্ট ফিল্টাৰ';

  @override
  String get contentSfw => 'কামৰ বাবে নিৰাপদ কেৱল';

  @override
  String get contentSometimes => 'সন্ধানত প্ৰাপ্তবয়স্ক কণ্টেণ্ট';

  @override
  String get contentEverywhere => 'সকলোতে প্ৰাপ্তবয়স্ক কণ্টেণ্ট';

  @override
  String get shareToGlobal => 'গ্ল’বেল ফিডত শ্বেয়াৰ কৰা';

  @override
  String get shareToGlobalDesc =>
      'তোমাৰ কাৰ্যকলাপ Kitsu-ৰ গ্ল’বেল ফিডত দেখা যাবলৈ দিয়া।';

  @override
  String get memberSince => 'সদস্য হৈছে';

  @override
  String get location => 'অৱস্থান';

  @override
  String get accountType => 'একাউণ্টৰ ধৰণ';

  @override
  String get accountSupporter => 'সমৰ্থক';

  @override
  String get accountFree => 'বিনামূলীয়া';

  @override
  String get accountDetails => 'একাউণ্টৰ বিৱৰণ';

  @override
  String get refreshFromKitsu => 'Kitsu-ৰ পৰা ৰিফ্ৰেচ কৰা';

  @override
  String get simklReadOnly => 'Simkl-এ কেৱল পঢ়াৰ এক্সেছ দিছে';

  @override
  String get traktReadOnly => 'Trakt এ কেৱল পঢ়িব পৰা প্ৰৱেশৰ অনুমতি দিছিল';

  @override
  String get incognitoEditsBlocked => 'ইনকগনিট’: তালিকা সম্পাদনা বন্ধ';

  @override
  String serviceError(String service, String error) {
    return '__পি০__: __পি১__';
  }

  @override
  String get incognitoProgressNotSaved => 'ইনকগনিট’: প্ৰগ্ৰেছ সংৰক্ষণ হোৱা নাই';

  @override
  String progressSet(int progress) {
    return 'প্ৰগ্ৰেছ $progress কৰা হৈছে';
  }

  @override
  String removedFromList(String title) {
    return 'তোমাৰ তালিকাৰ পৰা $title আতৰোৱা হৈছে';
  }

  @override
  String get following => 'অনুসৰণ কৰি আছা';

  @override
  String get followsMutual => 'মিউচুৱেল';

  @override
  String get followsNotMutual => 'পাৰস্পৰিক নহয়';

  @override
  String get homeSections => 'হোমৰ শাখা';

  @override
  String get homeSectionsHint =>
      'ক্ৰম সলনি কৰিবলৈ টানি আনা। লুকুৱাই থোৱা শাখা কেতিয়াও অনা নহয়।';

  @override
  String get customListDeleteFailed => 'কাষ্টম তালিকা মচিব পৰা নগল';

  @override
  String get customListsSaveFailed => 'কাষ্টম তালিকা সংৰক্ষণ কৰিব পৰা নগল';

  @override
  String get customListsSaved => 'কাষ্টম তালিকা সংৰক্ষণ হৈছে';

  @override
  String get listName => 'তালিকাৰ নাম';

  @override
  String get addList => 'তালিকা যোগ কৰা';

  @override
  String get voiceActors => 'কণ্ঠ অভিনেতা';

  @override
  String voiceActorsIn(String name) {
    return 'ভইচ এক্টৰ · $name';
  }

  @override
  String get animeAppearances => 'এনিমেত উপস্থিতি';

  @override
  String get mangaAppearances => 'মাংগাত উপস্থিতি';

  @override
  String get voicedCharacters => 'যিবোৰ চৰিত্ৰৰ কণ্ঠ দিছে';

  @override
  String get animeCredits => 'এনিমে ক্ৰেডিট';

  @override
  String get mangaCredits => 'মাংগা ক্ৰেডিট';

  @override
  String get mainProductions => 'মুখ্য প্ৰডাকশ্যন';

  @override
  String get otherWorks => 'আন কাম';

  @override
  String get prequelSequel => 'প্ৰিকুৱেল আৰু ছিকুৱেল';

  @override
  String get prequel => 'প্ৰিক্যুৱেল';

  @override
  String get sequel => 'ছিকুৱেল';

  @override
  String get previousSeason => 'আগৰ ছিজন';

  @override
  String get thisSeason => 'এই ছিজন';

  @override
  String get nextSeason => 'পৰৱৰ্তী ছিজন';

  @override
  String get voiceRoles => 'কণ্ঠ ভূমিকা';

  @override
  String get staffPositions => 'ষ্টাফৰ পদ';

  @override
  String get mangaWorks => 'মাংগাৰ কাম';

  @override
  String get malProfile => 'MyAnimeList প্ৰফাইল';

  @override
  String get refreshFromMal => 'MyAnimeList-ৰ পৰা ৰিফ্ৰেচ কৰা';

  @override
  String get repullProfileCounts => 'তোমাৰ প্ৰফাইল আৰু কাউণ্ট আকৌ টানি অনা';

  @override
  String get refreshed => 'ৰিফ্ৰেচ হৈছে';

  @override
  String get simklProfile => 'Simkl প্ৰফাইল';

  @override
  String get traktProfile => 'Trakt প্ৰফাইল';

  @override
  String get refreshFromSimkl => 'Simkl-ৰ পৰা ৰিফ্ৰেচ কৰা';

  @override
  String get refreshFromTrakt => 'Trakt ৰ পৰা সতেজ কৰক';

  @override
  String get repullProfileLibrary => 'তোমাৰ প্ৰফাইল আৰু লাইব্ৰেৰী আকৌ টানি অনা';

  @override
  String get simklSignInToSearch => 'সন্ধান কৰিবলৈ Simkl-ত ছাইন ইন কৰা';

  @override
  String get dropRate => 'ড্ৰপ ৰেট';

  @override
  String get simklAttribution => 'ডাটা আৰু আৰ্টৱৰ্ক Simkl-ৰ। Simkl-ত চোৱা';

  @override
  String get traktAttribution =>
      'তথ্য আৰু শিল্পকৰ্ম Trakt দ্বাৰা প্ৰদান কৰা হৈছে। Trakt ত চাওক';

  @override
  String get listsLiked => 'ভাল লাগিল';

  @override
  String get listsYours => 'আপোনাৰ';

  @override
  String get traktVip => 'ভিআইপি';

  @override
  String get traktVipMember => 'Trakt ভিআইপি সদস্য';

  @override
  String get onHold => 'হোল্ডত';

  @override
  String get scoredBy => 'স্ক’ৰ দিছে';

  @override
  String get planToWatch => 'চোৱাৰ পৰিকল্পনা';

  @override
  String get planToRead => 'পঢ়াৰ পৰিকল্পনা';

  @override
  String get timesRewatched => 'যিমানবাৰ আকৌ চোৱা হৈছে';

  @override
  String get timesReread => 'যিমানবাৰ আকৌ পঢ়া হৈছে';

  @override
  String get comments => 'মন্তব্য';

  @override
  String get moviesAndSeries => 'চলচ্চিত্ৰ আৰু ছিৰিজ';

  @override
  String get simklMoviesOnly => 'কেৱল চিনেমা আৰু ধাৰাবাহিক';

  @override
  String get simklMoviesOnlyDesc =>
      'এনিমে টেব সলনি কৰে: প্ৰথমে চলচ্চিত্ৰ, তাৰ পিছত দুটামান এনিমে শাৰীৰ সৈতে দেখুৱায়';

  @override
  String get trackingOnly => 'কেৱল ট্ৰেকিং';

  @override
  String get signedIn => 'ছাইন ইন কৰা আছে';

  @override
  String get searchLanguage => 'সন্ধানৰ ভাষা';

  @override
  String get savedToList => 'তোমাৰ তালিকাত সংৰক্ষণ হৈছে';

  @override
  String get removedFromYourList => 'তোমাৰ তালিকাৰ পৰা আতৰোৱা হৈছে';

  @override
  String get retry => 'আকৌ চেষ্টা কৰা';

  @override
  String get synopsis => 'সাৰাংশ';

  @override
  String get details => 'বিৱৰণ';

  @override
  String get addToList => 'তালিকাত যোগ কৰা';

  @override
  String get trailer => 'ট্ৰেইলাৰ';

  @override
  String get trailerQuality => 'ট্ৰেইলাৰৰ মানদণ্ড';

  @override
  String get titleCopied => 'শিৰোনাম কপি হৈছে';

  @override
  String get linkCopied => 'লিংক কপি হৈছে';

  @override
  String get watchTrailer => 'ট্ৰেইলাৰ চোৱা';

  @override
  String get copyTitle => 'শিৰোনাম কপি কৰা';

  @override
  String get detailStale =>
      'AniList ৰ সৈতে যোগাযোগ কৰিব পৰা নগ’ল। এইটো সংৰক্ষিত তথ্য আৰু পুৰণি হ’ব পাৰে।';

  @override
  String get copyLink => 'লিংক কপি কৰা';

  @override
  String get openInBrowser => 'ব্ৰাউজাৰত খোলা';

  @override
  String viewOnSource(String source) {
    return '$source-ত চোৱা';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'পৰ্ব $ep $timeৰ পিছত আহিব';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'পৰৱৰ্তী পৰ্ব $timeৰ পিছত';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'অধ্যায় $chapter প্ৰায় $timeৰ ভিতৰত আহিব';
  }

  @override
  String get logPathCopied => 'লগ ফাইলৰ পাথ ক্লিপব’ৰ্ডলৈ কপি হৈছে';

  @override
  String get animeSource => 'এনিমে উৎস';

  @override
  String get mangaSource => 'মাংগা উৎস';

  @override
  String get popular => 'জনপ্ৰিয়';

  @override
  String get allCustomLists => 'সকলো কাষ্টম তালিকা';

  @override
  String get simklTitleLanguage => 'এনিমে শিৰোনাম ভাষা';

  @override
  String get titleLanguageEnglish => 'ইংৰাজী';

  @override
  String get titleLanguageRomaji => 'ৰোমাজী';

  @override
  String get simklListsTrending => 'ট্ৰেণ্ডিং';

  @override
  String get simklListsMostLiked => 'বেছিভাগেই ভাল পাইছিল';

  @override
  String get simklListsMostFollowed => 'বেছিভাগেই অনুসৰণ কৰিলে';

  @override
  String get simklListsOfficial => 'অফিচিয়েল';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count শিৰোনাম',
      one: '১ টা শিৰোনাম',
    );
    return '$_temp0';
  }

  @override
  String get people => 'মানুহ';

  @override
  String get mostComments => 'বেছিভাগ মন্তব্য';

  @override
  String get alphabetical => 'বৰ্ণানুক্ৰমিক';

  @override
  String get latest => 'শেহতীয়া';

  @override
  String get saved => 'সংৰক্ষিত';

  @override
  String get nothingMatched => 'একো মিলা নাই';

  @override
  String get nothingSavedFromSource =>
      'এই উৎসৰ পৰা এতিয়াও একো সংৰক্ষণ কৰা হোৱা নাই';

  @override
  String get sourceReturnedNothing => 'এই উৎসে একো উভতাই দিয়া নাই';

  @override
  String get checkConnectionOrSource =>
      'সংযোগ পৰীক্ষা কৰা বা আন উৎস চেষ্টা কৰা।';

  @override
  String get tryDifferentSearch => 'আন এটা সন্ধানৰ শব্দ চেষ্টা কৰা।';

  @override
  String get savedTitlesAppearHere =>
      'তালিকাত যোগ কৰা শিৰোনামবোৰ ইয়াত দেখা যাব।';

  @override
  String get tryOtherFeed => 'ইয়াৰ সলনি আন ফিড বা সন্ধান চেষ্টা কৰা।';

  @override
  String searchSource(String source) {
    return '$source-ত বিচাৰা';
  }

  @override
  String get animeExtensions => 'এনিমে এক্সটেনছন';

  @override
  String get mangaExtensions => 'মাংগা এক্সটেনছন';

  @override
  String get nothingHereYet => 'ইয়াত এতিয়াও একো নাই';

  @override
  String get savedOnDeviceUntilLogin =>
      'তলৰ সকলো তুমি সলনি নকৰালৈকে এই ডিভাইচত সংৰক্ষিত থাকিব।';

  @override
  String get yourProfile => 'তোমাৰ প্ৰফাইল';

  @override
  String get activity => 'কাৰ্যকলাপ';

  @override
  String get extensions => 'এক্সটেনছন';

  @override
  String get logOut => 'লগআউট';

  @override
  String get logIn => 'লগইন';

  @override
  String get logOutConfirm => 'সঁচাকৈ লগআউট কৰিবা নে?';

  @override
  String get incognitoMode => 'ইনকগনিট’ মোড';

  @override
  String get alsoBlockListEdits => 'তালিকা সম্পাদনাও বন্ধ কৰা';

  @override
  String get offlineMode => 'অফলাইন মোড';

  @override
  String get switchService => 'ছাৰ্ভিচ সলনি কৰা';

  @override
  String logOutOf(String name) {
    return '$name-ৰ পৰা লগআউট কৰা';
  }

  @override
  String get loggedIn => 'লগইন কৰা আছে';

  @override
  String get notifications => 'জাননী';

  @override
  String get nothingNew => 'নতুন একো নাই';

  @override
  String get thisWeek => 'এই সপ্তাহ';

  @override
  String get listOnly => 'কেৱল তালিকা';

  @override
  String get notInList => 'তালিকাত নহয়';

  @override
  String get filter => 'ফিল্টাৰ';

  @override
  String get searchResults => 'সন্ধানৰ ফলাফল';

  @override
  String get recentSearches => 'শেহতীয়া সন্ধান';

  @override
  String get searchOrSetFilter => 'সন্ধান কৰা বা ফিল্টাৰ দিয়া';

  @override
  String get filters => 'ফিল্টাৰ';

  @override
  String get showLess => 'কম দেখুওৱা';

  @override
  String get showAll => 'সকলো দেখুওৱা';

  @override
  String get apply => 'প্ৰয়োগ কৰা';

  @override
  String get preview => 'প্ৰিভিউ';

  @override
  String get preset => 'প্ৰিছেট';

  @override
  String get cardNormal => 'সাধাৰণ';

  @override
  String get cardOnCard => 'কাৰ্ডৰ ওপৰত';

  @override
  String get cardInCard => 'কাৰ্ডৰ ভিতৰত';

  @override
  String get size => 'আকাৰ';

  @override
  String get cardWidth => 'কাৰ্ডৰ বহল';

  @override
  String get compact => 'কমপেক্ট';

  @override
  String get coverAndTitleOnly => 'কেৱল কভাৰ আৰু শিৰোনাম';

  @override
  String get titleLines => 'শিৰোনামৰ শাৰী';

  @override
  String get shape => 'আকৃতি';

  @override
  String get posterShape => 'পোষ্টাৰৰ আকৃতি';

  @override
  String get cornerRadius => 'চুকৰ গোলাকাৰ ভাব';

  @override
  String get off => 'বন্ধ';

  @override
  String get topLeft => 'ওপৰত বাওঁ';

  @override
  String get topRight => 'ওপৰত সোঁ';

  @override
  String get bottomLeft => 'তলত বাওঁ';

  @override
  String get bottomRight => 'তলত সোঁ';

  @override
  String get overlays => 'অভাৰলে';

  @override
  String get progressCount => 'প্ৰগ্ৰেছ / কাউণ্ট';

  @override
  String get pill => 'পিল';

  @override
  String get bar => 'বাৰ';

  @override
  String get outside => 'বাহিৰত';

  @override
  String get scoreBadge => 'স্ক’ৰ বেজ';

  @override
  String get airingDot => 'এয়াৰিং ডট';

  @override
  String get updateAvailable => 'আপডেট আছে';

  @override
  String get notInstalled => 'ইনষ্টল কৰা নাই';

  @override
  String get done => 'হৈ গ’ল';

  @override
  String get searchOrEnterUrl => 'সন্ধান কৰা বা URL দিয়া';

  @override
  String get refresh => 'ৰিফ্ৰেচ';

  @override
  String get animePlanetRank => 'ৰেংক';

  @override
  String get animePlanetMagazine => 'আলোচনী';

  @override
  String get animePlanetRefreshLists => 'আপোনাৰ তালিকাসমূহ সতেজ কৰক';

  @override
  String get animePlanetRefreshListsDesc =>
      'আপোনাৰ Anime-Planet তালিকাসমূহ আকৌ পঢ়ক';

  @override
  String get animePlanetLocalNote =>
      'আপোনাৰ Anime-Planet একাউণ্টত পৰিবৰ্তনসমূহ সংৰক্ষণ কৰিবলৈ চাইন ইন কৰক। তেতিয়ালৈকে তেওঁলোক এই ডিভাইচত থাকে';

  @override
  String get share => 'শ্বেয়াৰ';

  @override
  String get characters => 'চৰিত্ৰ';

  @override
  String get staff => 'ষ্টাফ';

  @override
  String get readMore => 'অধিক পঢ়া';

  @override
  String get couldNotLoadList => 'তালিকা লোড কৰিব পৰা নগল';

  @override
  String get logInToFavourite => 'প্ৰিয় যোগ কৰিবলৈ লগইন কৰা';

  @override
  String get alsoKnownAs => 'আন নাম';

  @override
  String get hideSpoilerNames => 'স্পইলাৰ নাম লুকুওৱা';

  @override
  String get showSpoilerNames => 'স্পইলাৰ নাম দেখুওৱা';

  @override
  String get favourited => 'প্ৰিয় কৰা হৈছে';

  @override
  String get favourite => 'প্ৰিয়';

  @override
  String get couldNotOpenTitle => 'এই শিৰোনাম খুলিব পৰা নগল';

  @override
  String get nobodyHereYet => 'এতিয়াও কোনো নাই';

  @override
  String get noMatches => 'একো মিলা নাই';

  @override
  String get gridView => 'গ্ৰিড ভিউ';

  @override
  String get fullWidth => 'সম্পূৰ্ণ বহল';

  @override
  String get userNotFound => 'ইউজাৰ পোৱা নগল';

  @override
  String get couldNotUpdateFollow => 'ফলো আপডেট কৰিব পৰা নগল';

  @override
  String followedUser(String name) {
    return '$name-ক ফলো কৰিলা';
  }

  @override
  String unfollowedUser(String name) {
    return '$name-ক আনফলো কৰিলা';
  }

  @override
  String get messages => 'বাৰ্তা';

  @override
  String get logInToSeeMessages => 'বাৰ্তা চাবলৈ লগইন কৰা';

  @override
  String get editActivity => 'কাৰ্যকলাপ সম্পাদনা কৰা';

  @override
  String get newActivity => 'নতুন কাৰ্যকলাপ';

  @override
  String get editMessage => 'বাৰ্তা সম্পাদনা কৰা';

  @override
  String get writeMessage => 'এটা বাৰ্তা লিখা';

  @override
  String get editReply => 'উত্তৰ সম্পাদনা কৰা';

  @override
  String get posted => 'পোষ্ট কৰা হৈছে';

  @override
  String get couldNotPost => 'পোষ্ট কৰিব পৰা নগল';

  @override
  String get nothingToPreview => 'প্ৰিভিউ কৰিবলৈ একো নাই';

  @override
  String get writeSomethingHint => 'কিবা লিখা… ইয়াত AniList markdown চলে';

  @override
  String get privateMessage => 'ব্যক্তিগত বাৰ্তা';

  @override
  String get post => 'পোষ্ট';

  @override
  String get nothingHere => 'ইয়াত একো নাই';

  @override
  String get noAnimeProgress => 'এনিমেৰ কোনো প্ৰগ্ৰেছ নাই';

  @override
  String get noMangaProgress => 'মাংগাৰ কোনো প্ৰগ্ৰেছ নাই';

  @override
  String get noMessages => 'কোনো বাৰ্তা নাই';

  @override
  String get writeMessageHint => 'এটা বাৰ্তা লিখা…';

  @override
  String get shareSomethingHint => 'কিবা এটা শ্বেয়াৰ কৰা…';

  @override
  String get all => 'সকলো';

  @override
  String get anime => 'এনিমে';

  @override
  String get manga => 'মাংগা';

  @override
  String get count => 'কাউণ্ট';

  @override
  String get hoursWatched => 'চোৱা ঘণ্টা';

  @override
  String get chaptersRead => 'পঢ়া অধ্যায়';

  @override
  String get meanScore => 'গাণিতিক গড় স্ক’ৰ';

  @override
  String get noStatsYet => 'এতিয়াও কোনো পৰিসংখ্যা নাই';

  @override
  String get totalEntries => 'মুঠ এণ্ট্ৰি';

  @override
  String get episodesWatched => 'চোৱা পৰ্ব';

  @override
  String get daysWatched => 'চোৱা দিন';

  @override
  String get volumesRead => 'পঢ়া ভলিউম';

  @override
  String get standardDeviation => 'মান বিচ্যুতি';

  @override
  String get showMore => 'অধিক দেখুওৱা';

  @override
  String get followsYou => 'তোমাক ফলো কৰে';

  @override
  String get nobodyYet => 'এতিয়াও কোনো নাই';

  @override
  String get logInToLike => 'লাইক কৰিবলৈ লগইন কৰা';

  @override
  String get failedToLikeActivity => 'কাৰ্যকলাপ লাইক কৰিব পৰা নগল';

  @override
  String get deleteActivityConfirm => 'কাৰ্যকলাপ মচিবা নে?';

  @override
  String get deletedActivity => 'কাৰ্যকলাপ মচা হৈছে';

  @override
  String get failedToDeleteActivity => 'কাৰ্যকলাপ মচিব পৰা নগল';

  @override
  String get subscribed => 'ছাবস্ক্ৰাইব কৰা হৈছে';

  @override
  String get unsubscribed => 'আনছাবস্ক্ৰাইব কৰা হৈছে';

  @override
  String get failedToUpdateSubscription => 'ছাবস্ক্ৰিপশ্যন আপডেট কৰিব পৰা নগল';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get delete => 'মচি পেলোৱা';

  @override
  String get likedBy => 'যিসকলে লাইক কৰিছে';

  @override
  String get follow => 'ফলো';

  @override
  String get nameCopied => 'নাম কপি হৈছে';

  @override
  String get followsEachOther => 'ইজনে সিজনক ফলো কৰা';

  @override
  String get unfollow => 'আনফলো';

  @override
  String get userIdCopied => 'ইউজাৰ আইডি কপি হৈছে';

  @override
  String get shareProfile => 'প্ৰফাইল শ্বেয়াৰ কৰা';

  @override
  String get copyUserId => 'ইউজাৰ আইডি কপি কৰা';

  @override
  String get failedToDelete => 'মচিব পৰা নগল';

  @override
  String get failedToLike => 'লাইক কৰিব পৰা নগল';

  @override
  String get replies => 'উত্তৰ';

  @override
  String get reply => 'উত্তৰ দিয়া';

  @override
  String get noRepliesYet => 'এতিয়াও কোনো উত্তৰ নাই';

  @override
  String get favouriteAnime => 'প্ৰিয় এনিমে';

  @override
  String get favouriteManga => 'প্ৰিয় মাংগা';

  @override
  String get favouriteCharacters => 'প্ৰিয় চৰিত্ৰ';

  @override
  String get favouriteStaff => 'প্ৰিয় ষ্টাফ';

  @override
  String get favouriteStudios => 'প্ৰিয় ষ্টুডিঅ’';

  @override
  String get noFavouritesYet => 'এতিয়াও কোনো প্ৰিয় নাই';

  @override
  String get yourStory => 'তোমাৰ ষ্ট’ৰি';

  @override
  String get copiedToClipboard => 'ক্লিপব’ৰ্ডলৈ কপি হৈছে';

  @override
  String get justNow => 'এইমাত্ৰ';

  @override
  String get openImage => 'ছবি খোলা';

  @override
  String get hideSpoiler => 'স্পইলাৰ লুকুওৱা';

  @override
  String get showSpoiler => 'স্পইলাৰ দেখুওৱা';

  @override
  String get status => 'স্থিতি';

  @override
  String get score => 'স্ক’ৰ';

  @override
  String get started => 'আৰম্ভ';

  @override
  String get completed => 'সম্পূৰ্ণ';

  @override
  String get private => 'ব্যক্তিগত';

  @override
  String get hideFromStatusLists => 'স্থিতিৰ তালিকাৰ পৰা লুকুওৱা';

  @override
  String get totalRepeats => 'মুঠ পুনৰাবৃত্তি';

  @override
  String get other => 'অন্যান্য';

  @override
  String get customLists => 'কাষ্টম তালিকা';

  @override
  String get activeDays => 'সক্ৰিয় দিন';

  @override
  String get longestStreak => 'আটাইতকৈ দীঘলীয়া ষ্ট্ৰীক';

  @override
  String get currentStreak => 'বৰ্তমানৰ ষ্ট্ৰীক';

  @override
  String get tapOrHoverDay => 'এটা দিনত টেপ বা হোভাৰ কৰা';

  @override
  String get less => 'কম';

  @override
  String get more => 'বেছি';

  @override
  String epIn(int ep, String time) {
    return 'পৰ্ব $ep, $timeৰ পিছত';
  }

  @override
  String get sectionLoading => 'লোড কৰি আছে';

  @override
  String get querySize => 'কুৱেৰীৰ আকাৰ';

  @override
  String get querySizeDesc =>
      'এটা ডাঙৰ কুৱেৰীয়ে এবাৰতে সকলো শাৰী (আৰু গোটেই প্ৰফাইল) লোড কৰে। ভাগ কৰা কুৱেৰীয়ে প্ৰতিটো শাৰী বা প্ৰফাইলৰ অংশৰ বাবে সৰু অনুৰোধ পঠায়: প্ৰতিটো দ্ৰুত, আৰু অংশবোৰ আহি থাকোঁতে দেখা যায়।';

  @override
  String get oneBig => 'এটা ডাঙৰ';

  @override
  String get split => 'ভাগ কৰা';

  @override
  String get sectionSocial => 'ছ’চিয়েল';

  @override
  String get systemNotifications => 'ছিষ্টেম জাননী';

  @override
  String get feedLayout => 'ফিড লেআউট';

  @override
  String sectionsShown(int shown, int total) {
    return '$totalৰ ভিতৰত $shownটা দেখুওৱা হৈছে — বাছিবলৈ আৰু ক্ৰম সলনি কৰিবলৈ টেপ কৰা';
  }

  @override
  String labelSections(String label) {
    return '$label শাখা';
  }

  @override
  String get accountOptions => 'একাউণ্ট বিকল্প';

  @override
  String get anilistAccountOptions => 'AniList একাউণ্ট বিকল্প';

  @override
  String get sectionPrivacy => 'গোপনীয়তা';

  @override
  String get hidePrivateEntries => 'ব্যক্তিগত এণ্ট্ৰি লুকুওৱা';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList-ত ব্যক্তিগত কৰা এণ্ট্ৰি ফিডৰ পৰা আতৰাই ৰাখা';

  @override
  String get anilistExcludeList => 'আপোনাৰ তালিকা বাদ দিয়ক';

  @override
  String get anilistExcludeListDesc =>
      'আপোনাৰ AniList ত থকা শিৰোনামবোৰ এনিমে আৰু মাংগা পৃষ্ঠাৰ পৰা আঁতৰাই ৰাখক';

  @override
  String get anilistProfile => 'AniList প্ৰফাইল';

  @override
  String get refreshFromAnilist => 'AniList-ৰ পৰা ৰিফ্ৰেচ কৰা';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList ছেটিংছ আপডেট কৰিব পৰা নগল';

  @override
  String get sectionNames => 'নাম';

  @override
  String get titleLanguage => 'শিৰোনামৰ ভাষা';

  @override
  String get titleLanguageDesc =>
      'শিৰোনাম সকলোতে কেনেকৈ লিখা হ’ব, যেনে Attack on Titan / Shingeki no Kyojin / 進撃の巨人।';

  @override
  String get staffCharacterNames => 'ষ্টাফ আৰু চৰিত্ৰৰ নাম';

  @override
  String get sectionLists => 'তালিকা';

  @override
  String get scoreFormat => 'স্ক’ৰ ফৰ্মেট';

  @override
  String get sortListsBy => 'তালিকা সজোৱা';

  @override
  String labelCustomLists(String label) {
    return '$label কাষ্টম তালিকা';
  }

  @override
  String customListsCount(int count) {
    return '$countটা তালিকা — যোগ বা আতৰাবলৈ টেপ কৰা';
  }

  @override
  String get mergeActivities => 'কাৰ্যকলাপ মাৰ্জ কৰা';

  @override
  String minutesCount(int count) {
    return '$count মিনিট';
  }

  @override
  String get timezone => 'টাইমজ’ন';

  @override
  String get notSet => 'ছেট কৰা নাই';

  @override
  String get airingNotifications => 'এয়াৰিং জাননী';

  @override
  String get airingNotificationsDesc =>
      'অনুসৰণ কৰা শ্ব’ৰ পৰ্ব সম্প্ৰচাৰ হ’লে জনোৱা';

  @override
  String get displayAdultContent => 'প্ৰাপ্তবয়স্ক কণ্টেণ্ট দেখুওৱা';

  @override
  String get displayAdultContentDesc =>
      'ব্ৰাউজ, সন্ধান আৰু ফিডত ১৮+ শিৰোনাম ৰাখা';

  @override
  String get restrictMessages => 'বাৰ্তা কেৱল অনুসৰণ কৰাসকলৰ মাজত সীমিত কৰা';

  @override
  String get restrictMessagesDesc =>
      'কেৱল তুমি অনুসৰণ কৰা লোকেহে তোমাক বাৰ্তা পঠাব পাৰিব';

  @override
  String get sectionServices => 'ছাৰ্ভিচ';

  @override
  String get novel => 'উপন্যাস';

  @override
  String labelService(String label) {
    return '$label ছাৰ্ভিচ';
  }

  @override
  String nameSettings(String name) {
    return '$name ছেটিংছ';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name এক্সটেনছন ব্ৰিজৰ বিকল্প';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name আৰম্ভ কৰিব পৰা নগল: $error';
  }

  @override
  String get importLists => 'তালিকা ইমপৰ্ট কৰা';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi বা Kotatsu বেকআপৰ পৰা';

  @override
  String get exportLists => 'তালিকা এক্সপৰ্ট কৰা';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon বা Kotatsu বেকআপলৈ';

  @override
  String get sectionBrowse => 'ব্ৰাউজ';

  @override
  String get readingTab => 'পঢ়াৰ টেব';

  @override
  String get readingTabDesc => 'তৃতীয় টেবে কোনবোৰ এক্সটেনছন দেখুৱাব';

  @override
  String get firstTab => 'প্ৰথম টেব';

  @override
  String get firstTabDesc =>
      'প্ৰথম টেবে কোনবোৰ এক্সটেনচন দেখুৱায়। ইয়াত মাংগা বাছি লওক আৰু বাৰৰ পৰা এনিমে ড্ৰপ কৰিবলৈ পঢ়া টেবত উপন্যাস বাছি লওক';

  @override
  String get novelExtensions => 'উপন্যাস সম্প্ৰসাৰণ';

  @override
  String get defaultFeed => 'ডিফল্ট ফিড';

  @override
  String get defaultFeedDesc => 'উৎসে কোনটো তালিকা লৈ খোলে';

  @override
  String noServiceSupports(String type) {
    return 'কোনো ছাৰ্ভিচে $type সমৰ্থন নকৰে';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installedটা উৎসৰ ভিতৰত $loadedটা লোড হৈ আছে';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'ইয়াত কোনো এক্সটেনছন ছাৰ্ভিচে $type সমৰ্থন নকৰে।';
  }

  @override
  String get loadDataFrom => 'ইয়াৰ পৰা ডাটা লোড কৰা';

  @override
  String noInstalledSourcesYet(String type) {
    return 'এতিয়াও কোনো ইনষ্টল কৰা $type উৎস নাই।';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$nameৰ এক্সটেনছন ইনষ্টল কৰা নাই';
  }

  @override
  String get thisSource => 'এই উৎস';

  @override
  String failedToAddRepository(String error) {
    return 'ৰিপজিটৰী যোগ কৰিব পৰা নগল: $error';
  }

  @override
  String installedType(String type) {
    return 'ইনষ্টল কৰা $type';
  }

  @override
  String availableType(String type) {
    return 'উপলব্ধ $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ইনষ্টল কৰা কোনো $type এক্সটেনছন নাই';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'উপলব্ধ কোনো $type এক্সটেনছন নাই';
  }

  @override
  String get nothingToShowYet => 'এতিয়াও দেখুৱাবলৈ একো নাই';

  @override
  String get addTitlesHint =>
      'তালিকাত কিছুমান শিৰোনাম যোগ কৰা, ইয়াত দেখা যাব।';

  @override
  String get couldntLoad => 'লোড কৰিব পৰা নগল';

  @override
  String get progressStyleHint =>
      'পিল আৰু বাৰ পোষ্টাৰৰ ওপৰত বহে; \"বাহিৰত\"-এ একেটা কাউণ্ট সাধাৰণ লিখাকৈ দেখুৱায় — এটা বাছা।';

  @override
  String get nixManagedUpdate =>
      'এই বিল্ড Nix-এ চলায় — ইয়াৰ পৰা আপডেট নকৰি তোমাৰ flake-ত \"nix flake update\" চলাই আকৌ বিল্ড কৰা';

  @override
  String autoUpdateFailed(String error) {
    return 'অটো আপডেট বিফল ($error) — ইয়াৰ সলনি ডাউনলোড পেজ খুলি আছোঁ';
  }

  @override
  String get unknownPreference => 'অজ্ঞাত পচন্দ';

  @override
  String unsupportedPreferenceType(String type) {
    return 'অসমৰ্থিত পচন্দৰ ধৰণ $type';
  }

  @override
  String get notYetReleased => 'এতিয়াও ৰিলিজ হোৱা নাই';

  @override
  String get notStarted => 'এতিয়াও আৰম্ভ হোৱা নাই';

  @override
  String get country => 'দেশ';

  @override
  String get sort => 'সজোৱা';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon বা Kotatsu বেকআপ বাছা';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi বা Kotatsu-ৰ পৰা লাইব্ৰেৰী লৈ আহা। শিৰোনাম, কভাৰ, প্ৰগ্ৰেছ আৰু শ্ৰেণী থাকি যায়।';

  @override
  String get chooseBackupFile => 'বেকআপ ফাইল বাছা';

  @override
  String importAnimeCount(int count) {
    return '$countটা এনিমে ইমপৰ্ট কৰা';
  }

  @override
  String importMangaCount(int count) {
    return '$countটা মাংগা ইমপৰ্ট কৰা';
  }

  @override
  String get mergeWithExisting => 'আগৰ তালিকাৰ লগত মাৰ্জ কৰা';

  @override
  String get mergeWithExistingDesc =>
      'যি আছে সেয়া ৰাখে; বন্ধ কৰিলে মিলি যোৱা শিৰোনাম সলনি হয়';

  @override
  String get chooseAnother => 'আন এটা বাছা';

  @override
  String get import => 'ইমপৰ্ট';

  @override
  String animeCount(int count) {
    return '$countটা এনিমে';
  }

  @override
  String mangaCount(int count) {
    return '$countটা মাংগা';
  }

  @override
  String get chooseSaveLocation => 'বেকআপ ক’ত সংৰক্ষণ কৰিবা বাছা';

  @override
  String savedPath(String path) {
    return '$path সংৰক্ষণ হৈছে';
  }

  @override
  String exportFailed(String error) {
    return 'এক্সপৰ্ট বিফল: $error';
  }

  @override
  String get nothingInLocalLists => 'তোমাৰ স্থানীয় তালিকাত এতিয়াও একো নাই।';

  @override
  String exportsSummary(int anime, int manga) {
    return 'তোমাৰ স্থানীয় তালিকাৰ পৰা $animeটা এনিমে আৰু $mangaটা মাংগা এক্সপৰ্ট হ’ব। Kotatsu-এ কেৱল মাংগা সমৰ্থন কৰে।';
  }

  @override
  String get saveToFolder => 'ফোল্ডাৰত সংৰক্ষণ কৰা';

  @override
  String get formatAnimeManga => 'এনিমে আৰু মাংগা · .tachibk';

  @override
  String get formatMangaTachibk => 'কেৱল মাংগা · .tachibk';

  @override
  String get formatMangaZip => 'কেৱল মাংগা · .zip';

  @override
  String get genres => 'জেনৰা';

  @override
  String get relations => 'সম্পৰ্কিত';

  @override
  String get recommendations => 'পৰামৰ্শ';

  @override
  String get openings => 'অপেনিং';

  @override
  String get endings => 'এণ্ডিং';

  @override
  String get background => 'বেকগ্ৰাউণ্ড';

  @override
  String get links => 'লিংক';

  @override
  String get rank => 'ৰেংক';

  @override
  String get members => 'সদস্য';

  @override
  String get favorites => 'প্ৰিয়';

  @override
  String get episodes => 'পৰ্ব';

  @override
  String get chapters => 'অধ্যায়';

  @override
  String get volumes => 'ভলিউম';

  @override
  String get format => 'ফৰ্মেট';

  @override
  String get source => 'উৎস';

  @override
  String get duration => 'সময়সীমা';

  @override
  String minutesPerEpisode(int minutes) {
    return 'প্ৰতি পৰ্বত $minutes মিনিট';
  }

  @override
  String get rating => 'ৰেটিং';

  @override
  String get studio => 'ষ্টুডিঅ’';

  @override
  String get serialization => 'ধাৰাবাহিক প্ৰকাশ';

  @override
  String get season => 'ছিজন';

  @override
  String get year => 'বছৰ';

  @override
  String get filterAny => 'যিকোনো';

  @override
  String get broadcast => 'সম্প্ৰচাৰ';

  @override
  String get aired => 'সম্প্ৰচাৰিত';

  @override
  String get published => 'প্ৰকাশিত';

  @override
  String get popularity => 'জনপ্ৰিয়তা';

  @override
  String get community => 'সম্প্ৰদায়';

  @override
  String get watching => 'চাই আছোঁ';

  @override
  String get reading => 'পঢ়ি আছোঁ';

  @override
  String get dropped => 'এৰি দিয়া';

  @override
  String get unfinished => 'অসমাপ্ত';

  @override
  String get planned => 'পৰিকল্পিত';

  @override
  String get trailers => 'ট্ৰেইলাৰ';

  @override
  String get ratings => 'ৰেটিং';

  @override
  String get originalTitle => 'মূল';

  @override
  String get titleLabel => 'শিৰোনাম';

  @override
  String get votes => 'ভোট';

  @override
  String get watchedStat => 'চোৱা হৈছে';

  @override
  String get runtime => 'সময়সীমা';

  @override
  String get director => 'পৰিচালক';

  @override
  String get network => 'নেটৱৰ্ক';

  @override
  String get certification => 'প্ৰমাণীকৰণ';

  @override
  String get airs => 'সম্প্ৰচাৰ হয়';

  @override
  String get budget => 'বাজেট';

  @override
  String get revenue => 'আয়';

  @override
  String get released => 'ৰিলিজ হৈছে';

  @override
  String get tags => 'টেগ';

  @override
  String get author => 'লেখক';

  @override
  String get born => 'জন্ম';

  @override
  String get died => 'মৃত্যু হয়';

  @override
  String get birthplace => 'জন্মস্থান';

  @override
  String get department => 'বিভাগ';

  @override
  String get website => 'ৱেবছাইট';

  @override
  String get established => 'প্ৰতিষ্ঠা';

  @override
  String get manhwa => 'মানহোৱা';

  @override
  String get manhua => 'মানহুৱা';

  @override
  String get novels => 'উপন্যাস';

  @override
  String get thisMonth => 'এই মাহ';

  @override
  String get movies => 'চলচ্চিত্ৰ';

  @override
  String get shows => 'শ্ব’';

  @override
  String get moviesWatched => 'চিনেমা চোৱা হৈছে';

  @override
  String get showsWatched => 'শ্ব\' চোৱা হৈছে';

  @override
  String get moviesCollected => 'সংগ্ৰহ কৰা চিনেমা';

  @override
  String get showsCollected => 'সংগ্ৰহ কৰা হৈছে';

  @override
  String get rewatching => 'আকৌ চাই আছোঁ';

  @override
  String get rereading => 'আকৌ পঢ়ি আছোঁ';

  @override
  String get watchedStatus => 'চোৱা হৈছে';

  @override
  String get planning => 'পৰিকল্পনাত';

  @override
  String get paused => 'বিৰতিত';

  @override
  String get watch => 'চোৱা';

  @override
  String get read => 'পঢ়া';

  @override
  String get finished => 'শেষ হৈছে';

  @override
  String get releasing => 'চলি আছে';

  @override
  String get cancelled => 'বাতিল';

  @override
  String get hiatus => 'হায়েটাছ';

  @override
  String get remove => 'আতৰোৱা';

  @override
  String syncToService(String service) {
    return '$service-ত ছিংক কৰা';
  }

  @override
  String syncedToService(String service) {
    return '$service-ত ছিংক হৈছে';
  }

  @override
  String get latestReleases => 'শেহতীয়া ৰিলিজ';

  @override
  String get topRated => 'আটাইতকৈ ভাল ৰেটিং';

  @override
  String localSection(String title) {
    return '$title · স্থানীয়';
  }

  @override
  String get localEntryNote =>
      'এই শিৰোনাম কেৱল এই ডিভাইচৰ স্থানীয় তালিকাত আছে। তোমাৰ একাউণ্টৰ তালিকাৰ লগত সংঘাত হ’ব পাৰে বাবে ইয়াত সম্পাদনা বন্ধ; কিন্তু আতৰাব পাৰিবা।';

  @override
  String get cardPresetPoster => 'পোষ্টাৰ';

  @override
  String get cardPresetCard => 'কাৰ্ড';

  @override
  String get cardPresetCozy => 'কজি';

  @override
  String get sortTopRated => 'আটাইতকৈ ভাল ৰেটিং';

  @override
  String get sortMostPopular => 'আটাইতকৈ জনপ্ৰিয়';

  @override
  String get sortTrending => 'ট্ৰেণ্ডিং';

  @override
  String get sortNewest => 'আটাইতকৈ নতুন';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'আটাইতকৈ বেছি প্ৰিয়';

  @override
  String get anyCountry => 'যিকোনো দেশ';

  @override
  String get orderScore => 'স্ক’ৰ';

  @override
  String get orderTitle => 'শিৰোনাম';

  @override
  String get orderLastUpdated => 'শেষ আপডেট';

  @override
  String get orderLastAdded => 'শেষ যোগ কৰা';

  @override
  String get never => 'কেতিয়াও নহয়';

  @override
  String get always => 'সদায়';

  @override
  String get scorePoint100 => '১০০ পইণ্ট';

  @override
  String get scorePoint10Decimal => '১০ পইণ্ট দশমিকসহ';

  @override
  String get scorePoint10 => '১০ পইণ্ট';

  @override
  String get scorePoint5 => '৫ তৰা';

  @override
  String get scorePoint3 => '৩ পইণ্ট স্মাইলী';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ঘণ্টা',
      one: '১ ঘণ্টা',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: '১ দিন',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count সপ্তাহ',
      one: '১ সপ্তাহ',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'পুনৰ আৰম্ভ কৰা';

  @override
  String get resumeSourceMissing => 'আগবাঢ়িবলৈ এই শিৰোনামৰ উৎস ইনষ্টল কৰা';

  @override
  String get resumeRemove => 'আগবঢ়াৰ পৰা আতৰোৱা';

  @override
  String resumeAt(String time) {
    return '$time বাকী';
  }

  @override
  String resumePage(int page, int total) {
    return 'পৃষ্ঠা $page / $total';
  }

  @override
  String get continueWatching => 'চাই থকা অব্যাহত ৰখা';

  @override
  String get continueReading => 'পঢ়া অব্যাহত ৰখা';

  @override
  String get favouriteAnimeSection => 'প্ৰিয় এনিমে';

  @override
  String get favouriteMangaSection => 'প্ৰিয় মাংগা';

  @override
  String get plannedAnime => 'পৰিকল্পিত এনিমে';

  @override
  String get plannedManga => 'পৰিকল্পিত মাংগা';

  @override
  String get completedAnime => 'সম্পূৰ্ণ কৰা এনিমে';

  @override
  String get completedManga => 'সম্পূৰ্ণ কৰা মাংগা';

  @override
  String get hiddenMedia => 'লুকাই থোৱা মিডিয়া';

  @override
  String get recentUpdates => 'শেহতীয়া আপডেট';

  @override
  String get trendingNow => 'এতিয়া ট্ৰেণ্ডিং';

  @override
  String get popularThisSeason => 'এই ছিজনত জনপ্ৰিয়';

  @override
  String get trendingMovies => 'ট্ৰেণ্ডিং চলচ্চিত্ৰ';

  @override
  String get topRatedSeries => 'আটাইতকৈ ভাল ৰেটিঙৰ ছিৰিজ';

  @override
  String get mostFavouriteSeries => 'আটাইতকৈ বেছি প্ৰিয় ছিৰিজ';

  @override
  String get popularAnime => 'জনপ্ৰিয় এনিমে';

  @override
  String get trendingManhwa => 'ট্ৰেণ্ডিং মানহোৱা';

  @override
  String get trendingNovels => 'ট্ৰেণ্ডিং উপন্যাস';

  @override
  String get topRatedManga => 'আটাইতকৈ ভাল ৰেটিঙৰ মাংগা';

  @override
  String get mostFavouriteManga => 'আটাইতকৈ বেছি প্ৰিয় মাংগা';

  @override
  String get popularManga => 'জনপ্ৰিয় মাংগা';

  @override
  String get topMovies => 'শ্ৰেষ্ঠ চলচ্চিত্ৰ';

  @override
  String get topOna => 'শ্ৰেষ্ঠ ONA';

  @override
  String get topOva => 'শ্ৰেষ্ঠ OVA';

  @override
  String get mostPopular => 'আটাইতকৈ জনপ্ৰিয়';

  @override
  String get mostFavourite => 'আটাইতকৈ বেছি প্ৰিয়';

  @override
  String get upcoming => 'আহি আছে';

  @override
  String get topManga => 'শ্ৰেষ্ঠ মাংগা';

  @override
  String get topManhwa => 'শ্ৰেষ্ঠ মানহোৱা';

  @override
  String get topManhua => 'শ্ৰেষ্ঠ মানহুৱা';

  @override
  String get topNovels => 'শ্ৰেষ্ঠ উপন্যাস';

  @override
  String get topOneShots => 'শ্ৰেষ্ঠ ৱান-শ্ব’ট';

  @override
  String get trendingMoviesToday => 'আজিৰ ট্ৰেণ্ডিং চলচ্চিত্ৰ';

  @override
  String get trendingShowsToday => 'আজিৰ ট্ৰেণ্ডিং শ্ব’';

  @override
  String get trendingMoviesWeek => 'এই সপ্তাহৰ ট্ৰেণ্ডিং চলচ্চিত্ৰ';

  @override
  String get trendingShowsWeek => 'এই সপ্তাহৰ ট্ৰেণ্ডিং শ্ব’';

  @override
  String get mostWatchedMoviesMonth => 'এই মাহত আটাইতকৈ বেছি চোৱা চলচ্চিত্ৰ';

  @override
  String get mostWatchedShowsMonth => 'এই মাহত আটাইতকৈ বেছি চোৱা শ্ব’';

  @override
  String get trendingThisWeek => 'এই সপ্তাহত ট্ৰেণ্ডিং';

  @override
  String get mostWatchedThisMonth => 'এই মাহত আটাইতকৈ বেছি চোৱা';

  @override
  String get repoLinksAdded => 'ৰিপো লিংক সফলভাৱে যোগ হৈছে!';

  @override
  String repoLinkConfirm(String url) {
    return 'এই ভঁৰাল যোগ কৰক?\n\n__পি০__\n\nকেৱল আপুনি বিশ্বাস কৰা উৎসৰ পৰা ভঁৰাল যোগ কৰক।';
  }

  @override
  String get errorGettingAnilistData => 'AniList-ৰ পৰা ডাটা অনাত সমস্যা হৈছে।';

  @override
  String get navInfo => 'তথ্য';

  @override
  String get navComments => 'মন্তব্য';

  @override
  String get playerNotAvailable => 'প্লেয়াৰ এতিয়াও উপলব্ধ নহয়';

  @override
  String deepLinkInitialError(String error) {
    return 'প্ৰাৰম্ভিক ডিপ লিংক অনাত সমস্যা: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'লিংক খুলোঁতে সমস্যা: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'এই লিংক খুলিব নোৱাৰি: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'লিংক খুলোঁতে সমস্যা: $error';
  }

  @override
  String get forReleasingTitles => 'বৰ্তমান চলি থকা শিৰোনামৰ বাবে';

  @override
  String get progress => 'প্ৰগ্ৰেছ';

  @override
  String get notes => 'টোকা';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" ছাৰ্ভিচ পোৱা নগল';
  }

  @override
  String get glassEffectEnabled => 'গ্লাছ ইফেক্ট চালু';

  @override
  String get glassEffectDisabled => 'গ্লাছ ইফেক্ট বন্ধ';

  @override
  String get materialYouEnabled => 'Material You চালু';

  @override
  String get materialYouDisabled => 'Material You বন্ধ';

  @override
  String get darkModeEnabled => 'ডাৰ্ক মোড চালু';

  @override
  String get darkModeDisabled => 'ডাৰ্ক মোড বন্ধ';

  @override
  String get animeList => 'এনিমে তালিকা';

  @override
  String get mangaList => 'মাংগা তালিকা';

  @override
  String ownerAnimeList(String owner) {
    return '$ownerৰ এনিমে তালিকা';
  }

  @override
  String ownerMangaList(String owner) {
    return '$ownerৰ মাংগা তালিকা';
  }

  @override
  String get loadingList => 'তালিকা লোড কৰি আছে';

  @override
  String get earlier => 'আগৰ';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন আগতে',
      one: '১ দিন আগতে',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ঘণ্টা আগতে',
      one: '১ ঘণ্টা আগতে',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মিনিট আগতে',
      one: '১ মিনিট আগতে',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count মি. আগতে';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ঘ. আগতে';
  }

  @override
  String daysAgoShort(int count) {
    return '$count দিন আগতে';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count সপ্তাহ আগতে';
  }

  @override
  String get couldntLoadSource => 'এই উৎস লোড কৰিব পৰা নগল';

  @override
  String get followers => 'ফলোৱাৰ';

  @override
  String couldntLoadTitle(String title) {
    return '$title লোড কৰিব পৰা নগল';
  }

  @override
  String userTitle(String name, String title) {
    return '__পি০__ · __পি১__';
  }

  @override
  String get couldntLoadProfile => 'এই প্ৰফাইল লোড কৰিব পৰা নগল';

  @override
  String get profile => 'প্ৰফাইল';

  @override
  String get feed => 'ফিড';

  @override
  String get stats => 'পৰিসংখ্যা';

  @override
  String get received => 'পোৱা';

  @override
  String get sent => 'পঠোৱা';

  @override
  String get global => 'গ্ল’বেল';

  @override
  String get couldntLoadPage => 'এই পেজ লোড কৰিব পৰা নগল';

  @override
  String get couldntLoadAllDetails => 'সকলো বিৱৰণ লোড কৰিব পৰা নগল';

  @override
  String get series => 'ছিৰিজ';

  @override
  String get studios => 'ষ্টুডিঅ’';

  @override
  String get users => 'ইউজাৰ';

  @override
  String repositoriesTitle(String type) {
    return '$type ৰিপজিটৰী';
  }

  @override
  String get repositoryUrl => 'ৰিপজিটৰী URL';

  @override
  String get downloadingRepository => 'ৰিপজিটৰী ডাউনলোড কৰি আছে…';

  @override
  String get noRepositories => 'কোনো ৰিপজিটৰী যোগ কৰা হোৱা নাই';

  @override
  String repoExtensionsCount(String count) {
    return '$countটা এক্সটেনছন';
  }

  @override
  String get searchExtensions => 'এক্সটেনছন বিচাৰা...';

  @override
  String deletePluginTitle(String name) {
    return '$name মচিবা নে?';
  }

  @override
  String get deletePluginMessage => 'সঁচাকৈ এই প্লাগইন মচি পেলাব বিচাৰা নে?';

  @override
  String pluginDeleted(String name) {
    return '$name মচা হৈছে';
  }

  @override
  String pluginNotInRepo(String name) {
    return 'কনফিগাৰ কৰা ৰিপোত $name উপলব্ধ নহয়';
  }

  @override
  String get pluginFetchFailed => 'প্লাগইনৰ তথ্য অনিব পৰা নগল';

  @override
  String installPluginTitle(String name) {
    return '$name ইনষ্টল কৰা';
  }

  @override
  String sizeLabel(String size) {
    return 'আকাৰ: $size';
  }

  @override
  String get installedState => 'ইনষ্টল কৰা আছে';

  @override
  String updatePluginTitle(String name) {
    return 'আপডেট $name';
  }

  @override
  String get errorLabel => 'ভুল:';

  @override
  String get stackTraceDetails => 'বিৱৰণ (Stack Trace)';

  @override
  String get shareLogFile => 'লগ ফাইল শ্বেয়াৰ কৰা';

  @override
  String get copyLogs => 'লগ কপি কৰা';

  @override
  String noListToEdit(String service) {
    return '$service-ত সম্পাদনা কৰিবলৈ কোনো তালিকা নাই';
  }

  @override
  String get couldNotReadFile => 'সেই ফাইল পঢ়িব পৰা নগল';

  @override
  String importedSummary(int anime, int manga) {
    return '$animeটা এনিমে আৰু $mangaটা মাংগা ইমপৰ্ট হৈছে';
  }

  @override
  String alreadyThere(int count) {
    return ' · $countটা আগতেই আছিল';
  }

  @override
  String get airingNow => 'এতিয়া সম্প্ৰচাৰ হৈ আছে';

  @override
  String get topRatedMovies => 'আটাইতকৈ ভাল ৰেটিঙৰ চলচ্চিত্ৰ';

  @override
  String get koreanDramas => 'কোৰিয়ান ড্ৰামা';

  @override
  String get chineseDramas => 'চাইনিজ ড্ৰামা';

  @override
  String get japaneseDramas => 'জাপানী ড্ৰামা';

  @override
  String get thaiDramas => 'থাই ড্ৰামা';

  @override
  String get turkishDramas => 'তুৰ্কী ড্ৰামা';

  @override
  String get miniSeries => 'মিনি ছিৰিজ';

  @override
  String get topRatedShows => 'আটাইতকৈ ভাল ৰেটিঙৰ শ্ব’';

  @override
  String get recommendedSection => 'পৰামৰ্শিত';

  @override
  String get syncRow => 'তালিকা ছিংক';

  @override
  String get syncRowDesc => 'এটা ছাৰ্ভিচৰ তালিকা তোমাৰ আন একাউণ্টবোৰলৈ কপি কৰা';

  @override
  String get syncTitle => 'ছিংক';

  @override
  String get syncMainService => 'মুখ্য ছাৰ্ভিচ';

  @override
  String get syncMainServiceDesc =>
      'ইয়াৰ তালিকাই আচল; ছাইন ইন কৰা বাকী সকলো ছাৰ্ভিচ ইয়াৰ লগত মিলাই আপডেট হয়';

  @override
  String get syncAuto => 'অটো ছিংক';

  @override
  String get syncAutoDesc =>
      'এপ খুলিলে আৰু প্ৰতি ৩০ মিনিটত বেকগ্ৰাউণ্ডত ফেচ আৰু ছিংক কৰা';

  @override
  String get syncAddMissing => 'বাদ পৰা এণ্ট্ৰি যোগ কৰা';

  @override
  String get syncAddMissingDesc => 'আন ছাৰ্ভিচত এতিয়াও নথকা এণ্ট্ৰিও যোগ কৰা';

  @override
  String syncServiceOn(String name) {
    return '$name ৰ সৈতে সমন্বয় কৰক';
  }

  @override
  String get syncDelete => 'মূল সেৱাত যি নাই সেইখিনি মচি পেলাওক';

  @override
  String get syncDeleteDesc =>
      'মূল তালিকাত নথকা অন্য সেৱাসমূহৰ পৰা প্ৰৱেশ আঁতৰাওক। কেৱল এটা শিৰোনামৰ সৈতে মিলাব পৰা প্ৰৱেশ আঁতৰোৱা হয়, গতিকে Simkl চিনেমা আৰু ধাৰাবাহিকৰ দৰে বস্তুবোৰ থাকে';

  @override
  String get syncDeleteTitle => 'প্ৰৱেশ মচি পেলাওক?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count প্ৰৱেশসমূহ',
      one: '১ টা প্ৰৱেশ',
    );
    return '$_temp0 যিবোৰ আপোনাৰ মূল তালিকাত নাই সেইবোৰ অন্য সেৱাসমূহৰ পৰা মচি পেলোৱা হ\'ব। এইটো বাতিল কৰিব নোৱাৰি।';
  }

  @override
  String get syncDeleteAction => 'মচি পেলাওক';

  @override
  String get syncToDelete => 'মচি পেলাবলৈ';

  @override
  String get syncDeletedNote => 'ডিলিট কৰা হ\'ব';

  @override
  String syncWillRemove(int count, String name) {
    return '$count $name ৰ পৰা মচি পেলোৱা হব।';
  }

  @override
  String get syncOnlyForward => 'আগবাঢ়ি থকা প্ৰগ্ৰেছ ৰাখা';

  @override
  String get syncOnlyForwardDesc =>
      'যিটো ছাৰ্ভিচ আগতেই আগবাঢ়ি আছে তাৰ প্ৰগ্ৰেছ কম নকৰিবা';

  @override
  String get animePlanetWontWatch => 'নাচাব';

  @override
  String get animePlanetWontRead => 'পঢ়িব নোৱাৰিব';

  @override
  String get animePlanetAlreadyOnList => 'ইতিমধ্যে এই তালিকাত আছে';

  @override
  String get animePlanetNewList => 'নতুন তালিকাৰ নাম';

  @override
  String get syncPrivate => 'ব্যক্তিগত প্ৰৱেশ পত্ৰ';

  @override
  String get syncPrivateDesc =>
      'আপুনি ব্যক্তিগতভাৱে ৰখা প্ৰৱেশৰ সৈতে কি কৰিব। ব্যক্তিগত বিকল্প থকা এটা সেৱাই তেওঁলোকক ব্যক্তিগত কৰে; আন কিছুমানে সেইবোৰ ৰাজহুৱাভাৱে দেখুৱাব';

  @override
  String get syncPrivateModeAsk => 'সুধিব';

  @override
  String get syncPrivateModeSync => 'সিহতক ছিঙ্ক কৰক';

  @override
  String get syncPrivateModeSkip => 'সেইবোৰ এৰি দিয়ক';

  @override
  String get syncPrivateTitle => 'ব্যক্তিগত প্ৰৱেশ পত্ৰ';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count প্ৰৱেশসমূহ ব্যক্তিগত',
      one: '১ টা প্ৰৱেশ ব্যক্তিগত',
    );
    return '$_temp0. ব্যক্তিগত বিকল্প থকা সেৱাসমূহে (AniList, Kitsu, MangaBaka) সেইবোৰ ব্যক্তিগত হিচাপে পাব; আন সেৱাসমূহৰ কোনো ব্যক্তিগত বিকল্প নাই আৰু ইয়াক ৰাজহুৱাভাৱে দেখুৱাব। সিহতক ছিঙ্ক কৰক? তোমাৰ উত্তৰ মনত পৰে; ইয়াক সমন্বয় বিকল্পসমূহৰ অন্তৰ্গত সলনি কৰক।';
  }

  @override
  String get syncPrivateInclude => 'সিহতক ছিঙ্ক কৰক';

  @override
  String get syncPrivateSkip => 'সেইবোৰ এৰি দিয়ক';

  @override
  String get syncFetch => 'ফেচ';

  @override
  String get syncFetchAgain => 'আকৌ ফেচ কৰা';

  @override
  String get syncAll => 'সকলো ছিংক কৰা';

  @override
  String get syncStop => 'ৰোকা';

  @override
  String get syncResume => 'পুনৰ আৰম্ভ কৰা';

  @override
  String get syncNothingToSync => 'এই ধৰণৰ বাবে এই ছাৰ্ভিচ ছিংক কৰিব নোৱাৰি';

  @override
  String get syncNoTargets => 'ছিংক কৰিবলৈ আন এটা ছাৰ্ভিচত ছাইন ইন কৰা';

  @override
  String get syncLoadingMap => 'আইডি মেপিং লোড কৰি আছে';

  @override
  String get syncComparing => 'তালিকা তুলনা কৰি আছে';

  @override
  String get syncIntro =>
      'এটা মুখ্য ছাৰ্ভিচ বাছি ফেচ টেপ কৰা। প্ৰতিটো ছাৰ্ভিচৰ পৰা এবাৰ তোমাৰ তালিকা অনা হ’ব, তাৰ পিছত মুখ্যটোৰ লগত তুলনা কৰা হ’ব।';

  @override
  String get syncStateSynced => 'ছিংক হৈছে';

  @override
  String get syncStateOutdated => 'ছিংকৰ বাহিৰত';

  @override
  String get syncStateMissing => 'তালিকাত নাই';

  @override
  String get syncStateUnmapped => 'মিল নাই';

  @override
  String syncPaused(String time) {
    return 'ৰেট লিমিটৰ বাবে অপেক্ষা কৰি আছে, $timeৰ পিছত আকৌ আৰম্ভ হ’ব';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$countটা কেৱল $name-ত আছে, চুই চোৱা হোৱা নাই';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$totalৰ ভিতৰত $done';
  }

  @override
  String get syncNothingHere => 'দেখুৱাবলৈ একো নাই';

  @override
  String syncLimits(int used, int max, String window) {
    return 'এই $window $maxটা অনুৰোধৰ ভিতৰত $usedটা ব্যৱহাৰ হৈছে';
  }

  @override
  String get syncMinute => 'মিনিট';

  @override
  String get syncDay => 'দিন';

  @override
  String get syncNotInList => 'এতিয়াও তালিকাত নাই';

  @override
  String get syncCleared => 'পৰিকল্পনা মচা হৈছে';

  @override
  String get syncClear => 'মচি পেলোৱা';

  @override
  String get syncOptions => 'বিকল্প';

  @override
  String get syncShared => 'আন এটা বস্তুৰ লগত এণ্ট্ৰি শ্বেয়াৰ কৰে';

  @override
  String syncNotFound(String service) {
    return '$service-ত পোৱা নগল';
  }

  @override
  String syncService(String service, int count) {
    return '$service ছিংক কৰা ($count)';
  }

  @override
  String get syncOnEdit => 'পৰিবৰ্তন লগে লগে ছিংক কৰা';

  @override
  String get syncOnEditDesc =>
      'প্ৰতিটো প্ৰগ্ৰেছ আপডেট আৰু তালিকা সম্পাদনা ছাইন ইন কৰা আন ছাৰ্ভিচলৈ লগে লগে পঠিয়াই দিয়া';

  @override
  String syncRemoved(String services) {
    return '$services ৰ পৰা আঁতৰোৱা হৈছে';
  }

  @override
  String syncPushed(String services) {
    return '$services-ত ছিংক হৈছে';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '__পি০__: __পি১__';
  }

  @override
  String get syncRateLimited => 'ৰেট লিমিট হৈছে, অলপ পিছত আকৌ চেষ্টা কৰা';

  @override
  String get syncAhead => 'যিটো আগবাঢ়ি আছে';

  @override
  String get syncAheadDesc =>
      'দুয়োফালে: প্ৰতিটো শিৰোনামৰ বাবে যিটো এণ্ট্ৰি আটাইতকৈ আগবাঢ়ি আছে সেয়া জিকে আৰু তোমাৰ আন সকলো ছাৰ্ভিচলৈ কপি হয়';

  @override
  String syncAheadFrom(String service) {
    return '$service-ৰ পৰা';
  }

  @override
  String get syncConfirm => 'ছিংকৰ আগতে চাই লোৱা';

  @override
  String get syncConfirmDesc =>
      'সকলো ছিংক কৰাই কি কি সলনি কৰিব আৰু কিমান অনুৰোধ লাগিব দেখুওৱা';

  @override
  String get syncPreviewTitle => 'ছিংকৰ বাবে সাজু';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updatesটা আপডেট, $addsটা যোগ হ’ব';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'প্ৰায় $countটা অনুৰোধ';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$countটা আইডিৰ আগতে লুকআপ লাগিব';
  }

  @override
  String get syncPreviewNothing => 'সলনি কৰিবলৈ একো নাই';

  @override
  String get syncStart => 'আৰম্ভ কৰা';

  @override
  String get syncRetry => 'আকৌ চেষ্টা কৰা';

  @override
  String get syncSkip => 'এই বস্তুটো এৰি যোৱা';

  @override
  String get syncInclude => 'এই বস্তুটো আকৌ সামৰি লোৱা';

  @override
  String get syncSkippedLabel => 'এৰি যোৱা হৈছে';

  @override
  String get syncChanges => 'পাৰ্থক্য';

  @override
  String get syncChangeStatus => 'স্থিতি';

  @override
  String get syncChangeProgress => 'প্ৰগ্ৰেছ';

  @override
  String get syncChangeScore => 'স্ক’ৰ';

  @override
  String get syncChangeDates => 'তাৰিখ';

  @override
  String get syncChangeRepeat => 'ৰিৱাচ কাউণ্ট';

  @override
  String get syncFailedReason => 'কিয় বিফল হ’ল';

  @override
  String get syncSkippedHint => 'এৰি যোৱা বস্তুবোৰ আকৌ ফেচ কৰিলেও চুব নোৱাৰি';

  @override
  String get commentsRules => 'মন্তব্যৰ নিয়ম';

  @override
  String get commentsRulesBody =>
      'যিকোনো নিয়ম ভঙা মানে তুমি বাহিৰ!\n\n১. বৰ্ণবাদ, বৈষম্য বা ঘৃণাত্মক কথা নচলিব\n২. স্পেম বা নিজৰ প্ৰচাৰ নচলিব\n৩. কোনো NSFW কণ্টেণ্ট একেবাৰে নহয়\n৪. কেৱল ইংৰাজী, কোনো ব্যতিক্ৰম নাই\n৫. আনৰ পৰিচয়েৰে চলা, হাৰাশাস্তি বা গালি নচলিব\n৬. অবৈধ কণ্টেণ্ট বা কোনো ফেণ্ডমৰ প্ৰতি চৰম অসন্মান নচলিব\n৭. ৰিপজিটৰী বা এক্সটেনছন নিবিচাৰিবা, শ্বেয়াৰো নকৰিবা\n৮. স্পইলাৰ কেৱল স্পইলাৰ টেগ আৰু সতৰ্কবাণীৰে\n৯. নাবালক চৰিত্ৰৰ বিষয়ে যৌন বা অনুচিত মন্তব্য নচলিব\n১০. ভুল হ’লে পোষ্ট নকৰিবা!';

  @override
  String get commentsRulesAccept => 'বুজি পালোঁ';

  @override
  String get commentsSortNewest => 'আটাইতকৈ নতুন';

  @override
  String get commentsSortOldest => 'আটাইতকৈ পুৰণি';

  @override
  String get commentsSortHighest => 'আটাইতকৈ ভাল ৰেটিং';

  @override
  String get commentsSortLowest => 'আটাইতকৈ বেয়া ৰেটিং';

  @override
  String commentsEpisodeShort(int number) {
    return 'পৰ্ব $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'অধ্যায় $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'পৰ্বৰ দ্বাৰা ফিল্টাৰ';

  @override
  String get commentsFilterChapterTitle => 'অধ্যায়ৰ দ্বাৰা ফিল্টাৰ';

  @override
  String get commentsFilterTagTitle => 'পৰ্ব বা অধ্যায়ৰ নম্বৰ দিয়া';

  @override
  String get commentsFilterHint => 'নম্বৰ';

  @override
  String get commentsFilterApply => 'ফিল্টাৰ';

  @override
  String get commentsFilterClear => 'সকলো দেখুওৱা';

  @override
  String get commentsPlaceholder => 'এটা মন্তব্য যোগ কৰা…';

  @override
  String commentsReplyingTo(String name) {
    return '$nameক উত্তৰ দি আছা';
  }

  @override
  String get commentsSend => 'পঠোৱা';

  @override
  String get commentsTagButton => 'টেগ';

  @override
  String commentsTagTitle(String label) {
    return 'টেগ $label (ঐচ্ছিক)';
  }

  @override
  String get commentsTagEpisode => 'পৰ্ব';

  @override
  String get commentsTagChapter => 'অধ্যায়';

  @override
  String commentsTagRange(int total) {
    return '১–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label নম্বৰ';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'টেগ মুঠ সংখ্যা ($total) অতিক্ৰম কৰিব নোৱাৰে';
  }

  @override
  String get commentsNoTag => 'টেগ নাই';

  @override
  String get commentsSpoiler => 'স্পইলাৰ';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF বিচাৰা';

  @override
  String get commentsGifEmpty => 'কোনো GIF পোৱা নগল';

  @override
  String get commentsEmptyText => 'মন্তব্য খালী ৰাখিব নোৱাৰি';

  @override
  String get commentsBannedYou => 'তোমাক মন্তব্য কৰাৰ পৰা নিষিদ্ধ কৰা হৈছে';

  @override
  String get commentsEdited => 'মন্তব্য সম্পাদনা হৈছে';

  @override
  String get commentsDeleted => 'মন্তব্য মচা হৈছে';

  @override
  String get commentsDeletedPlaceholder => '[মচা হৈছে]';

  @override
  String get commentsReported => 'মন্তব্য ৰিপৰ্ট কৰা হৈছে';

  @override
  String get commentsUserBanned => 'ইউজাৰ নিষিদ্ধ কৰা হৈছে';

  @override
  String get commentsReport => 'ৰিপৰ্ট';

  @override
  String get commentsReportAsk => 'এই মন্তব্য মডাৰেটৰক ৰিপৰ্ট কৰিবা নে?';

  @override
  String get commentsDelete => 'মচি পেলোৱা';

  @override
  String get commentsDeleteAsk => 'এই মন্তব্য সকলোৰে বাবে মচা হ’ব।';

  @override
  String get commentsBan => 'নিষিদ্ধ কৰা';

  @override
  String get commentsBanAsk => 'এই ইউজাৰক মন্তব্য কৰাৰ পৰা নিষিদ্ধ কৰিবা নে?';

  @override
  String get commentsCopy => 'কপি';

  @override
  String get commentsViewReply => '১টা উত্তৰ চোৱা';

  @override
  String commentsViewReplies(int count) {
    return '$countটা উত্তৰ চোৱা';
  }

  @override
  String get commentsHideReplies => 'উত্তৰ লুকুওৱা';

  @override
  String get commentsLoadMore => 'অধিক মন্তব্য লোড কৰা';

  @override
  String get commentsEmpty => 'এতিয়াও কোনো মন্তব্য নাই। প্ৰথমজন হোৱা!';

  @override
  String get commentsEmptyFiltered => 'এই ফিল্টাৰৰ বাবে কোনো মন্তব্য নাই';

  @override
  String get commentsSignIn =>
      'মন্তব্য পঢ়িবলৈ আৰু লিখিবলৈ AniList-ত ছাইন ইন কৰা';

  @override
  String get commentsSignInMessage =>
      'মন্তব্য সকলো ছাৰ্ভিচৰ মাজত শ্বেয়াৰ কৰা হয় আৰু তোমাৰ AniList একাউণ্ট ব্যৱহাৰ কৰে।';

  @override
  String get commentsUnavailable => 'এই শিৰোনামৰ বাবে মন্তব্য উপলব্ধ নহয়';

  @override
  String get commentsUnavailableMessage =>
      'ইয়াক কোনো AniList এণ্ট্ৰিৰ লগত মিলাব পৰা নগল।';

  @override
  String get commentsDisabled => 'মন্তব্য বন্ধ কৰা আছে';

  @override
  String get commentsDisabledMessage =>
      'ছেটিংছ › সাধাৰণৰ পৰা আকৌ চালু কৰিব পাৰিবা।';

  @override
  String get commentsOffline => 'মন্তব্য লোড কৰিব পৰা নগল';

  @override
  String get commentsSingleTitle => 'এটা মন্তব্য দেখুওৱা হৈছে';

  @override
  String get commentsShowAll => 'সকলো মন্তব্য দেখুওৱা';

  @override
  String get commentsSettingsHeader => 'মন্তব্য';

  @override
  String get commentsSettingEnabled => 'মন্তব্য';

  @override
  String get commentsSettingEnabledDesc =>
      'শিৰোনামত মন্তব্যৰ টেব দেখুওৱা আৰু তোমাৰ AniList একাউণ্টেৰে মন্তব্য ছাৰ্ভাৰত ছাইন ইন কৰা';

  @override
  String get commentsSettingAlerts => 'উত্তৰৰ জাননী';

  @override
  String get commentsSettingAlertsDesc =>
      'কোনোবাই মোৰ মন্তব্যৰ উত্তৰ দিলে জনাবা';

  @override
  String get commentsNoticeReplyTitle => 'মন্তব্যত নতুন উত্তৰ';

  @override
  String commentsNoticeReply(String name) {
    return '$nameএ তোমাৰ মন্তব্যৰ উত্তৰ দিছে';
  }

  @override
  String get commentsNoticeWarningTitle => 'তুমি এটা সতৰ্কবাণী পাইছা';

  @override
  String get commentsNoticeWarning => 'মন্তব্যত অলপ ভাবি-চিন্তি লিখিবা';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu-ৰ পৰা আপডেট';

  @override
  String get barcodeTitle => 'বাৰ্ক’ড স্কেন কৰা';

  @override
  String get barcodeTooltip => 'বাৰ্ক’ডেৰে মাংগা বা উপন্যাস বিচাৰা';

  @override
  String get barcodeIntro =>
      'ভলিউমৰ পিছফালৰ বাৰ্ক’ডৰ ফালে কেমেৰা ধৰা, বা ISBN টাইপ কৰা।';

  @override
  String get barcodeIntroManual =>
      'ভলিউমৰ পিছফালে বাৰ্ক’ডৰ ওপৰত ছপা ISBN টাইপ কৰা।';

  @override
  String get barcodeIsbnHint => 'আই এছ বি এন';

  @override
  String get barcodeInvalid => 'এইটো সঠিক ISBN নহয়';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbnৰ বাবে কোনো কিতাপ পোৱা নগল';
  }

  @override
  String get barcodeCameraDenied =>
      'কেমেৰা উপলব্ধ নহয়। কেমেৰাৰ এক্সেছ দিয়া বা ISBN টাইপ কৰা।';

  @override
  String get themesTitle => 'অপেনিং আৰু এণ্ডিং';

  @override
  String get themesPlayVideo => 'ভিডিঅ’ চলোৱা';

  @override
  String get themesPlayAudio => 'কেৱল অডিঅ’ চলোৱা';

  @override
  String get themesOpenSite => 'AnimeThemes-ত খোলা';

  @override
  String get themesCredit => 'AnimeThemes-ৰ পৰা থিম';

  @override
  String get themesVersions => 'সংস্কৰণ';

  @override
  String get sauceTitle => 'উৎস বিচাৰি উলিওৱা';

  @override
  String get sauceIntro =>
      'মাংগাৰ পৃষ্ঠা বা আৰ্টৱৰ্ক আপলোড কৰা, বা ইয়াৰ লিংক পেষ্ট কৰা, ক’ৰ পৰা আহিছে জানিবলৈ।';

  @override
  String get sauceKeyTitle => 'SauceNAO API কী';

  @override
  String get sauceKeyHint => 'ঐচ্ছিক, দৈনিক সন্ধানৰ সীমা বঢ়ায়';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php-ৰ পৰা বিনামূলীয়া কী লোৱা';

  @override
  String get sauceOpen => 'উৎস খোলা';

  @override
  String get sauceCredit => 'SauceNAO-ৰ ইমেজ সন্ধান';

  @override
  String get sauceEmpty => 'একো মিলা নাই';

  @override
  String get sauceTooltip => 'মাংগাৰ পৃষ্ঠা বা আৰ্টৱৰ্কৰ উৎস বিচাৰি উলিওৱা';

  @override
  String get trendzTitle => 'এনিমে চাৰ্ট';

  @override
  String get trendzAnime => 'এনিমে';

  @override
  String get trendzFemale => 'মহিলা চৰিত্ৰ';

  @override
  String get trendzMale => 'পুৰুষ চৰিত্ৰ';

  @override
  String get trendzCouple => 'যোৰ';

  @override
  String get trendzCredit => 'AniTrendz-ৰ সাপ্তাহিক চাৰ্ট';

  @override
  String get trendzNew => 'নতুন';

  @override
  String get trendzEmpty => 'চাৰ্টটো খালী';

  @override
  String get shareCard => 'কাৰ্ড শ্বেয়াৰ কৰা';

  @override
  String get shareCardList => 'তালিকা কাৰ্ড শ্বেয়াৰ কৰা';

  @override
  String get shareCardSaved => 'কাৰ্ড সংৰক্ষণ হৈছে';

  @override
  String get shareCardFailed => 'কাৰ্ড বনাব পৰা নগল';

  @override
  String get shareCardListEmpty =>
      'তোমাৰ তালিকাত শ্বেয়াৰ কৰিবলৈ এতিয়াও একো নাই';

  @override
  String get shareCardTop => 'মোৰ শ্ৰেষ্ঠ পচন্দ';

  @override
  String themesEpisodes(String eps) {
    return 'পৰ্ব $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% মিল';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'সপ্তাহ $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$countটা ভোট';
  }

  @override
  String trendzPeak(String rank) {
    return 'সৰ্বোচ্চ #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'টপ টেনত $count সপ্তাহ';
  }

  @override
  String get imageSearchTitle => 'ছবিৰে বিচাৰা';

  @override
  String get imageSearchTooltip => 'স্ক্ৰীনশ্বটৰ পৰা এনিমে বিচাৰি উলিওৱা';

  @override
  String get imageSearchIntro =>
      'এটা স্ক্ৰীনশ্বট বাছা বা ছবিৰ লিংক পেষ্ট কৰা, trace.moe-এ পৰ্ব আৰু মুহূৰ্তটো বিচাৰি উলিয়াব।';

  @override
  String get imageSearchPick => 'ছবি বাছা';

  @override
  String get imageSearchLinkHint => 'ছবিৰ লিংক পেষ্ট কৰা';

  @override
  String get imageSearchGo => 'সন্ধান';

  @override
  String get imageSearchEmpty => 'একো মিলা নাই';

  @override
  String get imageSearchAdult => '১৮+';

  @override
  String imageSearchEpisode(String number) {
    return 'পৰ্ব $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$timeত';
  }

  @override
  String get imageSearchPreview => 'প্ৰিভিউ ক্লিপ';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% মিল';
  }

  @override
  String get imageSearchCredit => 'trace.moe-ৰ সৌজন্যে';

  @override
  String get imageSearchOpenFailed => 'এই শিৰোনাম খুলিব পৰা নগল';

  @override
  String get groups => 'গোট';

  @override
  String get groupsYours => 'তোমাৰ গোট';

  @override
  String get groupsPopular => 'জনপ্ৰিয়';

  @override
  String get groupsNew => 'নতুন';

  @override
  String get groupsFeatured => 'বৈশিষ্ট্যযুক্ত';

  @override
  String get groupsSearch => 'গোট বিচাৰা';

  @override
  String get groupsAll => 'সকলো';

  @override
  String get groupsEmpty => 'কোনো গোট পোৱা নগল';

  @override
  String get groupsEmptyYours => 'তুমি এতিয়াও কোনো গোটত যোগ দিয়া নাই';

  @override
  String get groupsSignIn => 'যোগ দিয়া গোটবোৰ চাবলৈ ছাইন ইন কৰা';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count জন সদস্য',
      one: '১ জন সদস্য',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'যোগ দিয়া';

  @override
  String get groupsJoined => 'যোগ দিয়া হৈছে';

  @override
  String get groupsLeave => 'গোট এৰি দিয়া';

  @override
  String get groupsLeaveAsk => 'এই গোটৰ পোষ্ট তোমাৰ ফিডত আৰু দেখা নাপাবা।';

  @override
  String get groupsJoinFailed =>
      'এই গোটত যোগ দিব পৰা নগল, হয়তো কেৱল নিমন্ত্ৰণেৰে ভিতৰি হ’ব পাৰি';

  @override
  String get groupsLeaveFailed => 'এই গোট এৰিব পৰা নগল';

  @override
  String get groupsPosts => 'পোষ্ট';

  @override
  String get groupsMembersTab => 'সদস্য';

  @override
  String get groupsAbout => 'বিষয়ে';

  @override
  String get groupsRules => 'নিয়ম';

  @override
  String get groupsPrivacyOpen => 'মুকলি';

  @override
  String get groupsPrivacyRestricted => 'সীমিত';

  @override
  String get groupsPrivacyClosed => 'বন্ধ';

  @override
  String get groupsAdult => '১৮+';

  @override
  String get groupsRoleAdmin => 'এডমিন';

  @override
  String get groupsRoleMod => 'মড';

  @override
  String get groupsCouldntLoad => 'এই গোট লোড কৰিব পৰা নগল';

  @override
  String get groupsNewPost => 'গোটত পোষ্ট কৰা';

  @override
  String get groupsPostHint => 'গোটৰ লগত কিবা শ্বেয়াৰ কৰা';

  @override
  String get groupsOpenInBrowser => 'ব্ৰাউজাৰত খোলা';

  @override
  String get groupsCategory => 'শ্ৰেণী';

  @override
  String get groupsLanguage => 'ভাষা';

  @override
  String get groupsCreated => 'বনোৱা হৈছে';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count জন নেতা',
      one: '১ জন নেতা',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'গোপনীয়তা';

  @override
  String get notificationsAll => 'সকলো';

  @override
  String get notificationsAiring => 'এয়াৰিং';

  @override
  String get notificationsMedia => 'নতুন শিৰোনাম';

  @override
  String get notificationsReplies => 'উত্তৰ';

  @override
  String get notificationsMentions => 'উল্লেখ';

  @override
  String get notificationsMessages => 'বাৰ্তা';

  @override
  String get notificationsLikes => 'লাইক';

  @override
  String get notificationsFollows => 'ফলো';

  @override
  String get notificationsNoServices => 'ছাইন ইন কৰা কোনো ছাৰ্ভিচত জাননী নাই';

  @override
  String get notificationsNoServicesMessage =>
      'জাননী পঠোৱা ছাৰ্ভিচত ছাইন ইন কৰা, ইয়াত দেখা যাব।';

  @override
  String get notificationsEmptyKind => 'এই শ্ৰেণীত এতিয়াও একো নাই';

  @override
  String get notificationsCommentsEmpty => 'মন্তব্যৰ কোনো জাননী নাই';

  @override
  String get notificationsCommentsEmptyMessage =>
      'তোমাৰ মন্তব্যৰ উত্তৰ আৰু Dantotsu-ৰ ঘোষণা ইয়াত দেখা যাব।';

  @override
  String get notificationsSettings => 'জাননীৰ ছেটিংছ';

  @override
  String get notificationsPollTitle => 'নতুন জাননী পৰীক্ষা কৰা';

  @override
  String notificationsPollDesc(int minutes) {
    return 'এপ খোলা থাকিলে প্ৰতি $minutes মিনিটত';
  }

  @override
  String get notificationsNotifyAbout => 'কিহৰ বিষয়ে জনাবা';

  @override
  String get notificationsCommentsHeader => 'মন্তব্যৰ জাননী';

  @override
  String systemNotificationsDescFor(String service) {
    return 'এপ চলি থাকোঁতে প্ৰতিটো নপঢ়া $service জাননীৰ বাবে ছিষ্টেম জাননী দেখুওৱা।';
  }

  @override
  String get notificationsTestSent => 'পৰীক্ষামূলক জাননী পঠোৱা হৈছে';

  @override
  String get notificationsTestDenied =>
      'Dartotsu-ৰ বাবে জাননীৰ অনুমতি দিয়া নাই। ছিষ্টেম ছেটিংছত চালু কৰা।';

  @override
  String get notificationsTestHint => 'পৰীক্ষামূলক জাননী পঠাবলৈ হেঁচি ধৰা';

  @override
  String get notificationsTestSample => 'এইটো এটা পৰীক্ষামূলক জাননী';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$nameএ $mediaত তোমাৰ মন্তব্যৰ উত্তৰ দিছে';
  }

  @override
  String get imageSearchNotLink => 'এইটো লিংক যেন নালাগে';

  @override
  String get imageSearchQuota => 'সন্ধানৰ কোটা শেষ';

  @override
  String get imageSearchBusy => 'বহুত অনুৰোধ, অলপ পিছত আকৌ চেষ্টা কৰা';

  @override
  String imageSearchFailed(int code) {
    return 'সন্ধান বিফল ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$countটা নতুন জাননী';
  }

  @override
  String get reactionsTitle => 'ৰিএক্সন';

  @override
  String get reactionsNeedEntry =>
      'ৰিএক্ট কৰাৰ আগতে এই শিৰোনাম তালিকাত যোগ কৰা';

  @override
  String get reactionsAdd => 'এটা ৰিএক্সন যোগ কৰা';

  @override
  String get reactionsHint => 'কেনে লাগিল? (চমুকৈ আৰু স্পইলাৰ নোহোৱাকৈ)';

  @override
  String get reactionsPost => 'পোষ্ট';

  @override
  String get reactionsFailed => 'ৰিএক্সন আপডেট কৰিব পৰা নগল';

  @override
  String get settingsWatch => 'চোৱা আৰু পঢ়া';

  @override
  String get settingsWatchDesc => 'পৰ্বৰ তালিকা, উৎস মিলোৱা আৰু পৰ্বৰ বিৱৰণ';

  @override
  String get watchSettingsLayout => 'পৰ্বৰ তালিকা';

  @override
  String get watchSettingsSources => 'উৎস';

  @override
  String get watchSettingsMetadata => 'পৰ্বৰ বিৱৰণ';

  @override
  String get watchLayout => 'লেআউট';

  @override
  String get watchListView => 'তালিকা';

  @override
  String get watchGridView => 'গ্ৰিড';

  @override
  String get watchCompactView => 'কমপেক্ট';

  @override
  String get watchDefaultLayoutDesc =>
      'কোনো শিৰোনামৰ বাবে সলনি নকৰালৈকে পৰ্ব আৰু অধ্যায় কেনেকৈ সজোৱা থাকিব';

  @override
  String get watchChunkSize => 'ৰেঞ্জৰ আকাৰ';

  @override
  String get watchChunkSizeDesc =>
      'প্ৰতিটো ৰেঞ্জ টেবত কিমানটা পৰ্ব বা অধ্যায় থাকিব';

  @override
  String get watchShowDescription => 'বিৱৰণ দেখুওৱা';

  @override
  String get watchShowDescriptionDesc =>
      'তালিকা লেআউটত প্ৰতিটো শিৰোনামৰ তলত পৰ্বৰ সাৰাংশ দেখুওৱা';

  @override
  String get watchShowFiller => 'ফিলাৰ পৰ্ব দেখুওৱা';

  @override
  String get watchShowFillerDesc => 'ফিলাৰ চিহ্নিত পৰ্ব লুকুৱাবলৈ বন্ধ কৰা';

  @override
  String get watchBlurUnwatched => 'স্পইলাৰ থাম্বনেইল লুকুওৱা';

  @override
  String get watchBlurUnwatchedDesc =>
      'যিটো পৰ্ব এতিয়াও চোৱা হোৱা নাই তাৰ থাম্বনেইল ধূসৰ কৰা';

  @override
  String get watchResumeShelf => 'ৰিজিউম শেল্ফ';

  @override
  String get watchResumeShelfDesc => 'হোমত ৰিজিউম শাৰী দেখুওৱা';

  @override
  String get watchMarkOnLongPress => 'হেঁচি ধৰিলে প্ৰগ্ৰেছ চিহ্নিত হয়';

  @override
  String get watchMarkOnLongPressDesc =>
      'কোনো পৰ্ব বা অধ্যায় হেঁচি ধৰি চোৱা বা নোচোৱা চিহ্নিত কৰা';

  @override
  String get watchMatching => 'উৎস মিলোৱা';

  @override
  String get watchMatchingDesc =>
      '\"আটাইতকৈ ওচৰৰ\"-এ আটাইতকৈ ভাল সন্ধানৰ ফলাফল লয়। \"হুবহু মিল\"-এ কেৱল প্ৰায় একে শিৰোনামহে লয়, বাকীবোৰ তোমাৰ বাছনিৰ বাবে এৰি দিয়ে।';

  @override
  String get watchMatchClosest => 'আটাইতকৈ ওচৰৰ মিল';

  @override
  String get watchMatchExact => 'কেৱল হুবহু মিল';

  @override
  String get watchMetadataDesc =>
      'পৰ্বৰ নাম, সাৰাংশ, থাম্বনেইল, সম্প্ৰচাৰৰ তাৰিখ আৰু ফিলাৰ ফ্লেগ ক’ৰ পৰা আহিব। অগ্ৰাধিকাৰ ঠিক কৰিবলৈ টানি আনা; মান থকা প্ৰথম উৎসই জিকে।';

  @override
  String get watchMetaAniZipDesc =>
      'পৰ্বৰ নাম, সাৰাংশ, ষ্টিল আৰু সম্প্ৰচাৰৰ তাৰিখ';

  @override
  String get watchMetaKitsuDesc => 'পৰ্বৰ নাম, বিৱৰণ আৰু থাম্বনেইল';

  @override
  String get watchMetaSimklDesc =>
      'পৰ্বৰ নাম, বিৱৰণ, ষ্টিল আৰু সম্প্ৰচাৰৰ তাৰিখ';

  @override
  String get watchMetaAniListDesc =>
      'ষ্ট্ৰীমিং পৰ্বৰ নাম, থাম্বনেইল আৰু এয়াৰিং সময়সূচী';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai-ৰ জৰিয়তে MyAnimeList-ৰ পৰ্বৰ নাম, সম্প্ৰচাৰৰ তাৰিখ, ফিলাৰ আৰু ৰিক্যাপ ফ্লেগ';

  @override
  String get watchClearMetadata => 'পৰ্বৰ বিৱৰণ ৰিফ্ৰেচ কৰা';

  @override
  String get watchClearMetadataDesc =>
      'কেশ্ব কৰা পৰ্বৰ বিৱৰণ পাহৰি যোৱা, যাতে আকৌ অনা হয়';

  @override
  String get watchMetadataCleared => 'পৰ্বৰ বিৱৰণ আকৌ অনা হ’ব';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা পৰ্ব',
      one: '১টা পৰ্ব',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা অধ্যায়',
      one: '১টা অধ্যায়',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'পৰ্ব $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'অধ্যায় $number';
  }

  @override
  String get watchSearching => 'বিচাৰি আছে…';

  @override
  String watchSearchingFor(String term) {
    return 'বিচাৰি আছে: $term';
  }

  @override
  String watchSelected(String title) {
    return 'বাছনি কৰা: $title';
  }

  @override
  String watchFound(String title) {
    return 'পোৱা গৈছে: $title';
  }

  @override
  String get watchNothingFound => 'এই উৎসত একো পোৱা নগল';

  @override
  String get watchSearchFailed => 'উৎসত সন্ধান বিফল হৈছে';

  @override
  String get watchLoadFailed => 'তালিকা লোড কৰিব পৰা নগল';

  @override
  String get watchSignInToTrack => 'প্ৰগ্ৰেছ ট্ৰেক কৰিবলৈ ছাইন ইন কৰা';

  @override
  String watchInstallSource(String action) {
    return '$action আৰম্ভ কৰিবলৈ এটা এক্সটেনছন ইনষ্টল কৰা';
  }

  @override
  String get watchSourceMissing => 'এই উৎস ইনষ্টল কৰা নাই';

  @override
  String get watchWrongTitle => 'শিৰোনাম ভুল নেকি?';

  @override
  String get watchSearchAgain => 'আকৌ বিচাৰা';

  @override
  String watchSearchSource(String source) {
    return '$source-ত বিচাৰা';
  }

  @override
  String get watchSource => 'উৎস';

  @override
  String get sourceTags => 'ট্যাগ';

  @override
  String get sourceTagsHint =>
      'এই উৎসটো কিহৰ বাবে টেগ কৰক। এটা শিৰোনামে প্ৰথমে ইয়াৰ বাবে টেগ কৰা উৎসসমূহ তালিকাভুক্ত কৰে, তাৰ পিছত টেগ নকৰা উৎসসমূহ। 18+ উৎস কেৱল প্ৰাপ্তবয়স্ক শিৰোনামৰ বাবে দেখুৱাইছে।';

  @override
  String get sourceTagAnime => 'এনিমে';

  @override
  String get sourceTagMovies => 'চিনেমা আৰু ধাৰাবাহিক';

  @override
  String get sourceTagAdult => '১৮+';

  @override
  String get sourceHiddenByTags => 'টেগ দ্বাৰা লুকুৱাই ৰখা';

  @override
  String get watchOptions => 'বিকল্প';

  @override
  String get watchReverse => 'ওলোটা ক্ৰম';

  @override
  String get watchScanlators => 'গোট';

  @override
  String get watchResetOptions => 'এই বিকল্পবোৰ ৰিছেট কৰা';

  @override
  String get watchContinue => 'আগবাঢ়া';

  @override
  String get watchStart => 'আৰম্ভ কৰা';

  @override
  String get watchPlay => 'চলোৱা';

  @override
  String get watchRead => 'পঢ়া';

  @override
  String get watchMarkWatched => 'চোৱা হ’ল বুলি চিহ্নিত কৰা';

  @override
  String get watchMarkUnwatched => 'চোৱা নহ’ল বুলি চিহ্নিত কৰা';

  @override
  String get watchMarkRead => 'পঢ়া হ’ল বুলি চিহ্নিত কৰা';

  @override
  String get watchMarkUnread => 'পঢ়া নহ’ল বুলি চিহ্নিত কৰা';

  @override
  String get watchFiller => 'ফিলাৰ';

  @override
  String get watchRecap => 'ৰিক্যাপ';

  @override
  String get watchNoEpisodes => 'কোনো পৰ্ব পোৱা নগল';

  @override
  String get watchNoChapters => 'কোনো অধ্যায় পোৱা নগল';

  @override
  String get watchSourceTools => 'উৎসৰ সঁজুলি';

  @override
  String get watchSourceSettings => 'উৎসৰ ছেটিংছ';

  @override
  String get watchOpenWebView => 'ৱেব ভিউত খোলা';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare পৰীক্ষা সমাধান কৰা বা লগইন কৰা; কুকি উৎসৰ অনুৰোধৰ লগত শ্বেয়াৰ কৰা হয়';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$hostৰ বাবে $countটা কুকি সংৰক্ষণ কৰা আছে',
      one: '$hostৰ বাবে ১টা কুকি সংৰক্ষণ কৰা আছে',
      zero: '$hostৰ বাবে কোনো কুকি সংৰক্ষণ কৰা নাই',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare ক্লিয়াৰেন্স সক্ৰিয়, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare ক্লিয়াৰেন্স কুকি নাই';

  @override
  String get watchClearanceSession => 'এপ বন্ধ নোহোৱালৈকে থাকিব';

  @override
  String get watchAgentShared =>
      'অনুৰোধে ৱেব ভিউৰ user agent ব্যৱহাৰ কৰে, যিটো Cloudflare-এ পৰীক্ষা কৰে';

  @override
  String get watchAgentCustom =>
      'এটা কাষ্টম user agent ছেট কৰা আছে, গতিকে ৱেব ভিউৰ পৰা পোৱা Cloudflare ক্লিয়াৰেন্স অগ্ৰাহ্য হ’ব পাৰে';

  @override
  String get watchTestConnection => 'সংযোগ পৰীক্ষা কৰা';

  @override
  String get watchSolveChallenge => 'সমাধান কৰা';

  @override
  String watchProbeOk(int code) {
    return 'পোৱা গৈছে (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare-এ এতিয়াও পৰীক্ষা বিচাৰিছে';

  @override
  String watchProbeBlocked(int code) {
    return 'ছাইটে ব্লক কৰিছে (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'ছাইটত পাব পৰা নগল';

  @override
  String get watchClearCookies => 'এই ছাইটৰ কুকি মচি পেলোৱা';

  @override
  String get watchCookiesCleared => 'কুকি মচা হৈছে';

  @override
  String get watchFailTimeout => 'চেকখন সময়মতে শেষ নহ’ল';

  @override
  String get watchFailBlocked =>
      'চাইটে এই ডিভাইচটো ব্লক কৰিলে (প্ৰৱেশ অস্বীকাৰ কৰা হৈছে)। চেক এখনে সহায় নকৰে';

  @override
  String get watchFailTurnstile =>
      'এই পৰীক্ষাৰ বাবে এটা টেপৰ প্ৰয়োজন যিটো পটভূমি সমাধানকাৰীয়ে কৰিব নোৱাৰে';

  @override
  String get watchFailLoad =>
      'পেজটো লোড হোৱা নাছিল। সংযোগ আৰু চাইটৰ ঠিকনা পৰীক্ষা কৰক';

  @override
  String get watchFailRejected =>
      'ছাইটটোৱে মাত্ৰ দিয়া ক্লিয়াৰেন্স নাকচ কৰিলে। আকৌ চেষ্টা কৰক বা কুকিজবোৰ ক্লিয়াৰ কৰক';

  @override
  String get watchFailDismissed => 'চেকখন শেষ হোৱাৰ আগতেই বন্ধ হৈ গ’ল';

  @override
  String get watchFailCooldown =>
      'তুমি অলপ আগতে চেকখন বন্ধ কৰি দিলা। পুনৰ চেষ্টা কৰিবলৈ ইয়াক সমাধান কৰক টিপক';

  @override
  String get watchFailQuiet =>
      'চেকখনক আপোনাৰ প্ৰয়োজন, আৰু এপটোৱে নিজাববীয়াকৈ কাম কৰি আছিল';

  @override
  String get watchFailWebView => 'পটভূমি ৱেব দৃশ্য আৰম্ভ হ’ব পৰা নাছিল';

  @override
  String get watchFailUnavailable => 'চেক অন দেখুৱাবলৈ কোনো স্ক্ৰীণ নাই';

  @override
  String get watchStatusReady => 'ৰেডি';

  @override
  String get watchStatusChallenge => 'ক্লাউডফ্লেয়াৰ পৰীক্ষাৰ প্ৰয়োজন';

  @override
  String get watchStatusBlocked => 'চাইটৰ দ্বাৰা ব্লক কৰা হৈছে';

  @override
  String get watchStatusOffline => 'ছাইটত উপস্থিত হ’ব পৰা নাই';

  @override
  String get watchStatusUntested => 'এতিয়াও পৰীক্ষা কৰা হোৱা নাই';

  @override
  String get watchStatusTesting => 'সংযোগ পৰীক্ষণ...';

  @override
  String get watchStatusSolving => 'ক্লাউডফ্লেয়াৰ চেক পাছ কৰি...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'ক্লাউডফ্লেয়াৰ পৰীক্ষা পটভূমিত পাছ কৰা হৈছে ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'ক্লাউডফ্লেয়াৰ চেক পাছ হ’ল';

  @override
  String watchClearanceIssued(String time) {
    return 'উপাৰ্জন কৰিলে $time';
  }

  @override
  String get watchClearanceStale =>
      'ক্লিয়াৰেন্স আন এজন ইউজাৰ এজেণ্টৰ সৈতে লাভ কৰা হৈছিল, গতিকে পঠোৱা নহয়। নতুন এটা পাবলৈ সংযোগটো পৰীক্ষা কৰক';

  @override
  String get watchSectionConnection => 'সংযোগ';

  @override
  String get watchSectionSession => 'অধিবেশন';

  @override
  String get watchSectionTools => 'সঁজুলি';

  @override
  String get watchMetaSource => 'পৰ্বৰ বিৱৰণ ক’ৰ পৰা';

  @override
  String get watchMetaAuto => 'স্বয়ংক্ৰিয়';

  @override
  String get watchMetaOff => 'বন্ধ';

  @override
  String get playerSettingsTitle => 'প্লেয়াৰ ছেটিংছ';

  @override
  String get playerSectionPlayback => 'প্লেবেক';

  @override
  String get playerSectionSkip => 'এৰি যোৱা';

  @override
  String get playerSectionGestures => 'নিয়ন্ত্ৰণ';

  @override
  String get playerSectionSubtitles => 'ছাবটাইটেল';

  @override
  String get playerSectionShaders => 'শ্বেডাৰ';

  @override
  String get playerSectionEngine => 'ইঞ্জিন';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'প্লেবেকৰ গতি';

  @override
  String get localSource => 'স্থানীয় ফাইলসমূহ';

  @override
  String get localMissing =>
      'এই ফাইল বা ফোল্ডাৰ আৰু আপোনাৰ স্থানীয় ফোল্ডাৰত নাই';

  @override
  String get playerStickyStage => 'আঠাযুক্ত ভিডিঅ\'';

  @override
  String get playerStickyStageDesc =>
      'তলৰ খণ্ড আৰু মন্তব্য স্ক্ৰল কৰাৰ সময়ত ভিডিঅ\'টো ওপৰত ফিক্স কৰি ৰাখক';

  @override
  String get playerCursedSpeed => 'অতিৰিক্ত গতি';

  @override
  String get playerCursedSpeedDesc => 'তালিকাত ১০x লৈকে গতি যোগ কৰা';

  @override
  String get playerResize => 'ৰিছাইজ মোড';

  @override
  String get playerFitFit => 'ফিট';

  @override
  String get playerFitCover => 'কভাৰ';

  @override
  String get playerFitStretch => 'ষ্ট্ৰেচ';

  @override
  String get playerSkipDuration => 'স্কিপ বুটামৰ দৈৰ্ঘ্য';

  @override
  String get playerSkipDurationDesc =>
      'অপেনিং আৰু এণ্ডিঙৰ বাহিৰত স্কিপ বুটামে কিমান ছেকেণ্ড জপিয়ায়';

  @override
  String get playerSeekDuration => 'ডাবল টেপত ছিক';

  @override
  String get playerSeekDurationDesc =>
      'ডাবল টেপ বা এৰো কী দিলে কিমান ছেকেণ্ড জপিয়াব';

  @override
  String get playerAutoPlay => 'পৰৱৰ্তীটো স্বয়ংক্ৰিয়ভাৱে চলোৱা';

  @override
  String get playerAutoPlayDesc => 'এইটো শেষ হ’লে পৰৱৰ্তী পৰ্ব আৰম্ভ কৰা';

  @override
  String get playerResume => 'য’ত এৰিছিলা তাৰ পৰা আগবাঢ়া';

  @override
  String get playerResumeDesc => 'পৰ্ব শেষ অৱস্থানৰ পৰা চলাই যোৱা';

  @override
  String get playerOrientation => 'অৰিয়েণ্টেশ্যন';

  @override
  String get playerOrientationAuto => 'ডিভাইচ অনুসৰণ কৰা';

  @override
  String get playerOrientationLandscape => 'লেণ্ডস্কেপ';

  @override
  String get playerOrientationPortrait => 'প’ৰ্ট্ৰেইট';

  @override
  String get playerAutoSkipOpening => 'অপেনিং এৰি যোৱা';

  @override
  String get playerAutoSkipEnding => 'এণ্ডিং এৰি যোৱা';

  @override
  String get playerAutoSkipRecap => 'ৰিক্যাপ এৰি যোৱা';

  @override
  String get playerAutoSkipDesc =>
      'আৰম্ভ হোৱামাত্ৰকে জপিয়াই যোৱা, AniSkip আৰু ষ্ট্ৰীমৰ টাইমষ্টেম্প ব্যৱহাৰ কৰি';

  @override
  String get playerDisableSkips => 'স্কিপসমূহ নিষ্ক্ৰিয় কৰক';

  @override
  String get playerDisableSkipsDesc =>
      'প্লেয়াৰত কোনো AniSkip বা ষ্ট্ৰীম টাইমষ্টেম্প, অধ্যায় চিহ্ন বা স্কিপ জমা দিয়া নাই';

  @override
  String get playerSkipOnce => 'কেৱল এবাৰ এৰি যোৱা';

  @override
  String get playerSkipOnceDesc => 'পিছলৈ ছিক কৰিলে একে অংশ আকৌ এৰি নাযাবা';

  @override
  String get playerAdjustBrightness => 'উজ্জ্বলতাৰ জেশ্চাৰ';

  @override
  String get playerAdjustBrightnessDesc =>
      'স্ক্ৰীনৰ সোঁফালৰ আধাত ওপৰ-তললৈ ছোৱাইপ কৰা';

  @override
  String get playerAdjustVolume => 'ভলিউমৰ জেশ্চাৰ';

  @override
  String get playerAdjustVolumeDesc =>
      'স্ক্ৰীনৰ বাওঁফালৰ আধাত ওপৰ-তললৈ ছোৱাইপ কৰা';

  @override
  String get playerHoldToSpeed => 'হেঁচি ধৰি গতি বঢ়োৱা';

  @override
  String get playerHoldToSpeedDesc =>
      'ভিডিঅ’ হেঁচি ধৰিলে বেগাই চলিব, গতি সলনি কৰিবলৈ কাষলৈ টানা';

  @override
  String get playerThumbless => 'ডাঠ ছিক বাৰ';

  @override
  String get playerThumblessDesc => 'থাম্ব নথকা ডাঠ বাৰ';

  @override
  String get playerShowSubtitles => 'ছাবটাইটেল দেখুওৱা';

  @override
  String get playerShowSubtitlesDesc =>
      'সকলো ছাবটাইটেল ট্ৰেক লুকুৱাবলৈ বন্ধ কৰা';

  @override
  String get playerSubtitleLanguage => 'পচন্দৰ ছাবটাইটেল ভাষা';

  @override
  String get playerSubtitleSize => 'ছাবটাইটেলৰ আকাৰ';

  @override
  String get playerSubtitleWeight => 'ছাবটাইটেলৰ ওজন';

  @override
  String get playerSubtitleBottom => 'ছাবটাইটেলৰ তলৰ প্যাডিং';

  @override
  String get playerSubtitleFont => 'ছাবটাইটেলৰ ফন্ট';

  @override
  String get playerSubtitleColor => 'ছাবটাইটেলৰ ৰং';

  @override
  String get playerSubtitleBackground => 'ছাবটাইটেলৰ বেকগ্ৰাউণ্ড';

  @override
  String get playerSubtitleOutline => 'ছাবটাইটেলৰ আউটলাইন';

  @override
  String get playerSubtitleOutlineWidth => 'উপশিৰোনামাৰ ৰূপৰেখাৰ প্ৰস্থ';

  @override
  String get playerSubtitlePreview => 'উপশিৰোনামাৰ পূৰ্বদৰ্শন';

  @override
  String get playerSubtitlePreviewText => 'উপশিৰোনামা পূৰ্বদৰ্শন লিখনী';

  @override
  String get playerLibass => 'libass ব্যৱহাৰ কৰা';

  @override
  String get playerLibassDesc =>
      'ষ্টাইল কৰা .ass ছাবটাইটেল ৰেণ্ডাৰ কৰা। তেতিয়া ওপৰৰ আকাৰ, ৰং আৰু ফন্ট কাম নকৰে';

  @override
  String get playerShaders => 'শ্বেডাৰ';

  @override
  String get playerShadersEnable => 'শ্বেডাৰ চালু কৰা';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K-ৰ দৰে GLSL শ্বেডাৰেৰে ছবি আপস্কেল আৰু পৰিষ্কাৰ কৰা';

  @override
  String get playerShadersOff => 'শ্বেডাৰ বন্ধ';

  @override
  String get playerShadersMissing => 'Anime4K ইনষ্টল কৰা নাই';

  @override
  String get playerShadersMissingDesc =>
      'বিল্ট-ইন মোড ব্যৱহাৰ কৰিবলৈ Anime4K শ্বেডাৰ পেক (প্ৰায় ০.৮ MB) ডাউনলোড কৰা।';

  @override
  String get playerShadersDownload => 'Anime4K ডাউনলোড কৰা';

  @override
  String get playerPictureSave => 'এই ফ্ৰেমটো সংৰক্ষণ কৰক';

  @override
  String get playerPictureOriginal => 'অৰিজিনেল';

  @override
  String get playerPictureOriginalDesc =>
      'ভিডিঅ’টোত থকাৰ দৰে ফ্ৰেমটো, শ্বেডাৰ বা ৰং নোহোৱাকৈ';

  @override
  String get playerPictureProcessed => 'শ্বেডাৰ আৰু ৰঙৰ সৈতে';

  @override
  String get playerPictureProcessedDesc => 'এতিয়া দেখাৰ দৰে ফ্ৰেমটো';

  @override
  String get playerPictureSaved => 'ফ্ৰেম সংৰক্ষণ কৰা হৈছে';

  @override
  String get playerPictureSaveFailed => 'ফ্ৰেমটো সংৰক্ষণ কৰিব পৰা নগ\'ল';

  @override
  String get playerShadersPreview => 'এই ফ্ৰেমত প্ৰিভিউ চোৱা';

  @override
  String get playerShadersUse => 'এইটো ব্যৱহাৰ কৰা';

  @override
  String get playerPicture => 'ছবি';

  @override
  String get playerColors => 'ৰং';

  @override
  String get playerColorDefault => 'ডিফল্ট';

  @override
  String get playerColorVivid => 'ভিভিড';

  @override
  String get playerColorPop => 'এনিমে পপ';

  @override
  String get playerColorSoft => 'কোমল';

  @override
  String get playerColorCinematic => 'চিনেমেটিক';

  @override
  String get playerColorBright => 'উজ্জ্বল';

  @override
  String get playerColorNight => 'নাইট';

  @override
  String get playerColorMono => 'মন’';

  @override
  String get playerColorCustom => 'কাষ্টম';

  @override
  String get playerColorBrightness => 'উজ্জ্বলতা';

  @override
  String get playerColorContrast => 'কণ্ট্ৰাষ্ট';

  @override
  String get playerColorSaturation => 'ছেচুৰেশ্যন';

  @override
  String get playerColorGamma => 'গামা';

  @override
  String get playerColorHue => 'হিউ';

  @override
  String get playerColorReset => 'ৰিছেট';

  @override
  String get playerColorAdjust => 'এডজাষ্ট';

  @override
  String get playerShadersOriginal => 'মূল';

  @override
  String get playerShadersPreviewFailed => 'প্ৰিভিউৰ বাবে ফ্ৰেম ধৰিব পৰা নগল';

  @override
  String get playerShadersSoftware =>
      'শ্বেডাৰসমূহক হাৰ্ডৱেৰ ৰেণ্ডাৰৰ প্ৰয়োজন, আৰু প্লেয়াৰে চফ্টৱেৰ ৰেণ্ডাৰ ব্যৱহাৰ কৰিছে। প্লেয়াৰ ছেটিংছত চফ্টৱেৰ ৰেণ্ডাৰ বন্ধ কৰক।';

  @override
  String get playerSoftwareRender => 'চফ্টৱেৰ ৰেণ্ডাৰ';

  @override
  String get playerSoftwareRenderDesc =>
      'কেৱল এটা ক\'লা ভিডিঅ\'ৰ বাবে। শ্বেডাৰে ইয়াৰ সৈতে কাম নকৰে। পৰৱৰ্তী সময়ত খেলুৱৈয়ে খোলাৰ সময়ত প্ৰযোজ্য হয়';

  @override
  String get playerShadersCustomFiles => 'তোমাৰ শ্বেডাৰ';

  @override
  String get playerShadersCustom => 'কাষ্টম শ্বেডাৰ';

  @override
  String get playerShadersImport => '.glsl ইমপৰ্ট কৰা';

  @override
  String get playerShadersNone =>
      'নিজৰ .glsl বা .hook ফাইল ইমপৰ্ট কৰা আৰু টিক দি একেলগে জোৰা লগোৱা';

  @override
  String get playerShadersBadFile => 'এটা .glsl বা .hook শ্বেডাৰ ফাইল বাছা';

  @override
  String get playerDecoder => 'ডিক’ডাৰ';

  @override
  String get playerDecoderAuto => 'অটো';

  @override
  String get playerDecoderAutoSafe => 'অটো (নিৰাপদ)';

  @override
  String get playerDecoderSoftware => 'ছফ্টৱেৰ';

  @override
  String get playerDecoderHardware => 'হাৰ্ডৱেৰ';

  @override
  String get playerDecoderHardwarePlus => 'হাৰ্ডৱেৰ+';

  @override
  String get playerVideoOutput => 'ভিডিঅ’ আউটপুট';

  @override
  String get playerAudioChannels => 'অডিঅ’ চেনেল';

  @override
  String get playerBuffer => 'বাফাৰৰ আকাৰ (MB)';

  @override
  String get playerBufferDesc =>
      'ষ্ট্ৰীম বাফাৰ কৰিবলৈ প্লেয়াৰে যিমান মেম’ৰী ব্যৱহাৰ কৰিব পাৰে';

  @override
  String get playerUseMpvConf => 'mpv.conf ব্যৱহাৰ কৰা';

  @override
  String get playerUseMpvConfDesc =>
      'প্লেবেক আৰম্ভ হ’লে তোমাৰ mpv.conf-ৰ বিকল্প প্ৰয়োগ কৰা';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv কনফিগাৰেশ্যন সম্পাদনা কৰা';

  @override
  String get playerMpvConfDesc =>
      'প্ৰতি শাৰীত এটা বিকল্প, সাধাৰণ mpv.conf-ৰ --hwdec=auto-ৰ দৰে। [বন্ধনীত] থকা প্ৰফাইল উপেক্ষা কৰা হয়।';

  @override
  String get playerMpvConfSaved => 'mpv.conf সংৰক্ষণ হৈছে';

  @override
  String get playerUseScripts => 'mpv স্ক্ৰিপ্ট ব্যৱহাৰ কৰা';

  @override
  String get playerUseScriptsDesc =>
      'scripts ফোল্ডাৰৰ পৰা প্লাগইন লোড কৰা। ইয়াৰ বাবে Lua বা JavaScript সমৰ্থন থকা libmpv বিল্ড লাগিব';

  @override
  String get playerScripts => 'mpv স্ক্ৰিপ্ট';

  @override
  String get playerScriptsManage => 'প্লাগইন যোগ কৰা, আতৰোৱা আৰু সলনি কৰা';

  @override
  String get playerScriptsAdd => 'স্ক্ৰিপ্ট যোগ কৰা';

  @override
  String get playerScriptsDesc =>
      'ইয়াত ৰখা Lua, JavaScript আৰু নেটিভ প্লাগইন প্লেবেক আৰম্ভ হোৱাৰ সময়ত লোড হয়।';

  @override
  String get playerScriptsNone => 'এতিয়াও কোনো স্ক্ৰিপ্ট নাই';

  @override
  String get playerScriptsBadFile => 'এটা .lua, .js বা নেটিভ প্লাগইন ফাইল বাছা';

  @override
  String get playerTuning => 'উন্নত ভিডিঅ’ টিউনিং';

  @override
  String get playerTuningDesc =>
      'ছিংক, কেশ্বিং, স্কেলিং আৰু টোন মেপিং অভাৰৰাইড কৰা। ভুল মানে প্লেবেক নষ্ট কৰিব পাৰে';

  @override
  String get playerVideoSync => 'ভিডিঅ’ ছিংক';

  @override
  String get playerInterpolation => 'ফ্ৰেম ইণ্টাৰপোলেশ্যন';

  @override
  String get playerInterpolationDesc => 'মসৃণ গতি, display-resample ছিংক লাগিব';

  @override
  String get playerPitch => 'পিচ কাৰেক্শ্যন';

  @override
  String get playerPitchDesc => 'আন গতিতো কণ্ঠ স্বাভাৱিক ৰাখা';

  @override
  String get playerCacheSeconds => 'কেশ্ব (ছেকেণ্ড)';

  @override
  String get playerReadahead => 'আগলৈ পঢ়া (ছেকেণ্ড)';

  @override
  String get playerThreads => 'ডিক’ডাৰ থ্ৰেড';

  @override
  String get playerDeband => 'ডিবেণ্ড';

  @override
  String get playerDebandDesc => 'গ্ৰেডিয়েণ্টত ৰঙৰ বেণ্ডিং কমোৱা';

  @override
  String get playerDebandIterations => 'ডিবেণ্ড ইটাৰেশ্যন';

  @override
  String get playerDebandThreshold => 'ডিবেণ্ড থ্ৰেশ্বহল্ড';

  @override
  String get playerCorrectDownscaling => 'সঠিক ডাউনস্কেলিং';

  @override
  String get playerSigmoid => 'ছিগম’ইড আপস্কেলিং';

  @override
  String get playerScale => 'আপস্কেলাৰ';

  @override
  String get playerCscale => 'ক্ৰ’মা আপস্কেলাৰ';

  @override
  String get playerDscale => 'ডাউনস্কেলাৰ';

  @override
  String get playerToneMapping => 'টোন মেপিং';

  @override
  String get playerTargetPeak => 'টাৰ্গেট পিক';

  @override
  String get playerOpenFiles => 'ভিডিঅ’ ফাইল খোলা';

  @override
  String get playerOpenFilesDesc => 'এই ডিভাইচৰ ফাইল চলোৱা';

  @override
  String get playerOpenFolder => 'ফোল্ডাৰ খোলা';

  @override
  String get playerOpenFolderDesc =>
      'ফোল্ডাৰৰ সকলো ভিডিঅ’ প্লেলিষ্ট হিচাপে চলোৱা';

  @override
  String get playerNetworkStream => 'নেটৱৰ্ক ষ্ট্ৰীম';

  @override
  String get playerNetworkStreamDesc => 'পোনপটীয়া ভিডিঅ’ বা HLS লিংক খোলা';

  @override
  String get playerStreamUrl => 'ষ্ট্ৰীম URL';

  @override
  String get playerStreamReferer => 'Referer (ঐচ্ছিক)';

  @override
  String get playerTorrent => 'টৰেণ্ট';

  @override
  String get playerTorrentDesc => 'মেগনেট লিংক বা .torrent ফাইল ষ্ট্ৰীম কৰা';

  @override
  String get playerMagnetLink => 'মেগনেট লিংক বা টৰেণ্ট URL';

  @override
  String get playerPickTorrent => 'এটা .torrent ফাইল বাছা';

  @override
  String get playerTorrentMissing =>
      'আগতে ছেটিংছ > এড-অনৰ পৰা টৰেণ্ট এড-অন ইনষ্টল কৰা';

  @override
  String get playerNoVideos => 'চলাব পৰা কোনো ভিডিঅ’ পোৱা নগল';

  @override
  String get playerReset => 'প্লেয়াৰ ছেটিংছ ৰিছেট কৰা';

  @override
  String get playerResetDesc => 'প্লেয়াৰৰ সকলো বিকল্প ডিফল্টলৈ ঘূৰাই দিয়া';

  @override
  String get playerResetConfirm => 'প্লেয়াৰৰ সকলো ছেটিংছ ৰিছেট কৰিবা নে?';

  @override
  String get playerResetDone => 'প্লেয়াৰ ছেটিংছ ৰিছেট হৈছে';

  @override
  String get playerQuality => 'কোৱালিটী';

  @override
  String get streamGroupSub => 'উপ';

  @override
  String get streamGroupHardSub => 'হাৰ্ড চাব';

  @override
  String get streamGroupSoftSub => 'কোমল চাব';

  @override
  String get streamGroupDub => 'ডাব';

  @override
  String get streamGroupRaw => 'কেঁচা';

  @override
  String get streamGroupOther => 'অন্যান্য';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ধাৰা',
      one: '১ ধাৰা',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'ষ্ট্ৰীম';

  @override
  String get playerStreamFailedNext =>
      'সেই ধাৰাটোৱে খেলিব নোৱাৰিব, পৰৱৰ্তীটো চেষ্টা কৰি';

  @override
  String get playerAutoSelect => 'ষ্ট্ৰীম স্বয়ংক্ৰিয়ভাৱে বাছা';

  @override
  String get playerAutoSelectDesc =>
      'এই শিৰোনামৰ বাবে তোমাৰ শেষ পচন্দৰ আটাইতকৈ ওচৰৰ ষ্ট্ৰীমটো বাছা';

  @override
  String get playerLoadingStreams => 'ষ্ট্ৰীম বিচাৰি আছে…';

  @override
  String get playerNoStreams => 'এই পৰ্বত কোনো ষ্ট্ৰীম নাই';

  @override
  String get playerNoStreamsTitle => 'কোনো ষ্ট্ৰীম পোৱা নগল';

  @override
  String get playerFailed => 'প্লেবেক বিফল';

  @override
  String get playerTorrentNeeded => 'এই ষ্ট্ৰীমটো এটা টৰেণ্ট';

  @override
  String get playerTorrentNeededDesc =>
      'মেগনেট লিংক আৰু .torrent ফাইল চলাবলৈ টৰেণ্ট এড-অন ইনষ্টল কৰা';

  @override
  String get playerOpenAddons => 'এড-অন খোলা';

  @override
  String get playerTryAnotherStream => 'আন ষ্ট্ৰীম চেষ্টা কৰা';

  @override
  String get playerEpisodes => 'পৰ্ব';

  @override
  String get playerLock => 'নিয়ন্ত্ৰণ লক কৰা';

  @override
  String get playerFullscreen => 'ফুলস্ক্ৰীন';

  @override
  String get readerChapters => 'অধ্যায়';

  @override
  String get readerSettingsTitle => 'ৰিডাৰ ছেটিংছ';

  @override
  String get readerPreviousChapter => 'আগৰ অধ্যায়';

  @override
  String get readerNextChapter => 'পৰৱৰ্তী অধ্যায়';

  @override
  String get readerFirstChapter => 'এইটো প্ৰথম অধ্যায়';

  @override
  String get readerLastChapter => 'সকলো পঢ়া শেষ';

  @override
  String get readerFailed => 'এই অধ্যায় খুলিব পৰা নগল';

  @override
  String get readerOpenBook => 'এখন কিতাপ খুলিব';

  @override
  String get readerOpenBookDesc =>
      'আপোনাৰ ফাইলসমূহৰ পৰা এটা epub (নভেল ৰিডাৰ) বা এটা পিডিএফ (মাংগা ৰিডাৰ) পঢ়ক';

  @override
  String get readerNoText => 'এই অধ্যায়ত কোনো লিখনি নাই';

  @override
  String get readerPerTitle => 'কেৱল এই শিৰোনামৰ বাবে';

  @override
  String get readerPerTitleDesc => 'এই ৰিডাৰ ছেটিংছ কেৱল এই শিৰোনামৰ বাবে ৰাখা';

  @override
  String get readerSectionReading => 'পঢ়া';

  @override
  String get readerSectionControls => 'নিয়ন্ত্ৰণ';

  @override
  String get readerSectionDisplay => 'ডিছপ্লে';

  @override
  String get readerSectionNovel => 'উপন্যাস';

  @override
  String get readerMode => 'পঢ়াৰ মোড';

  @override
  String get readerModeAuto => 'অটো (শৃংখলাৰ ধৰণ অনুসৰি)';

  @override
  String get readerModeRtl => 'সোঁফালৰ পৰা বাওঁফাললৈ';

  @override
  String get readerModeLtr => 'বাওঁফালৰ পৰা সোঁফাললৈ';

  @override
  String get readerModeVertical => 'ভাৰ্টিকেল পৃষ্ঠা';

  @override
  String get readerModeWebtoon => 'ৱেবটুন';

  @override
  String get readerModeContinuous => 'অবিৰত স্ক্ৰ’ল';

  @override
  String get readerScale => 'ছবিৰ স্কেল';

  @override
  String get readerScaleFit => 'স্ক্ৰীনত ফিট';

  @override
  String get readerScaleWidth => 'বহলত ফিট';

  @override
  String get readerScaleHeight => 'উচ্চতাত ফিট';

  @override
  String get readerScaleOriginal => 'মূল আকাৰ';

  @override
  String get readerScaleSmart => 'স্মাৰ্ট ফিট';

  @override
  String get readerDoublePage => 'ডাবল পৃষ্ঠা';

  @override
  String get readerDoublePageDesc =>
      'লেণ্ডস্কেপত দুখন পৃষ্ঠা কাষে কাষে দেখুওৱা';

  @override
  String get readerDoubleTapZoom => 'ডাবল টেপত জুম';

  @override
  String get readerDoubleTapZoomDesc => 'ডাবল টেপ কৰি পৃষ্ঠা জুম ইন-আউট কৰা';

  @override
  String get readerAnimate => 'পৃষ্ঠাৰ এনিমেশ্যন';

  @override
  String get readerAnimateDesc => 'পৃষ্ঠা লুটিওৱা এনিমেট কৰা';

  @override
  String get readerSidePadding => 'কাষৰ প্যাডিং';

  @override
  String get readerSidePaddingDesc => 'পৃষ্ঠাৰ কাষৰ খালী ঠাই শতাংশত';

  @override
  String get readerPageGap => 'পৃষ্ঠাৰ ব্যৱধান';

  @override
  String get readerPageGapDesc => 'পৃষ্ঠাৰ মাজৰ খালী ঠাই';

  @override
  String get readerAutoNext => 'পৰৱৰ্তী অধ্যায়লৈ আগবাঢ়া';

  @override
  String get readerAutoNextDesc =>
      'এই অধ্যায়ৰ শেষ পঢ়ি থাকোঁতে পৰৱৰ্তী অধ্যায় লোড কৰি ৰাখা';

  @override
  String get readerPreload => 'পৃষ্ঠা প্ৰিলোড কৰা';

  @override
  String get readerPreloadDesc => 'কিমানখন পৃষ্ঠা আগতেই ডাউনলোড হ’ব';

  @override
  String get readerTapZones => 'টেপ জ’ন';

  @override
  String get readerTapDefault => 'ডিফল্ট';

  @override
  String get readerTapLShaped => 'L-আকৃতিৰ';

  @override
  String get readerTapKindle => 'Kindle-ৰ দৰে';

  @override
  String get readerTapEdge => 'কেৱল কাষবোৰ';

  @override
  String get readerTapOff => 'নিষ্ক্ৰিয়';

  @override
  String get readerInvertTaps => 'টেপ জ’ন ওলোটাই দিয়া';

  @override
  String get readerInvertTapsDesc => 'আগৰ আৰু পৰৱৰ্তী ঠাই সলনা-সলনি কৰা';

  @override
  String get readerBackground => 'বেকগ্ৰাউণ্ড';

  @override
  String get readerBackgroundBlack => 'ক’লা';

  @override
  String get readerBackgroundGray => 'ধূসৰ';

  @override
  String get readerBackgroundWhite => 'বগা';

  @override
  String get readerBackgroundTheme => 'এপৰ থিম';

  @override
  String get readerFilter => 'ৰঙৰ ফিল্টাৰ';

  @override
  String get readerFilterNone => 'নাই';

  @override
  String get readerFilterGrayscale => 'গ্ৰেস্কেল';

  @override
  String get readerFilterInvert => 'ইনভাৰ্ট';

  @override
  String get readerFilterSepia => 'ছেপিয়া';

  @override
  String get readerFilterQuality => 'ছবি ফিল্টাৰৰ মান';

  @override
  String get readerFilterQualityNone => 'কোনো নাই (নিকটতম প্ৰতিবেশী)';

  @override
  String get readerFilterQualityLow => 'নিম্ন (দ্বিৰেখা)';

  @override
  String get readerFilterQualityMedium => 'মধ্যম (ত্ৰিৰেখা)';

  @override
  String get readerFilterQualityHigh => 'উচ্চ (বাইকিউবিক)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (মৰিছা উচ্চ মান)';

  @override
  String get readerDim => 'ডিম';

  @override
  String get readerDimDesc => 'পৃষ্ঠা আন্ধাৰ কৰা';

  @override
  String get readerPageNumber => 'পৃষ্ঠাৰ নম্বৰ';

  @override
  String get readerPageNumberDesc => 'পঢ়োঁতে পৃষ্ঠাৰ নম্বৰ দেখুওৱা';

  @override
  String get readerFullscreen => 'ফুলস্ক্ৰীন';

  @override
  String get readerFullscreenDesc => 'ছিষ্টেম বাৰ লুকুওৱা';

  @override
  String get readerCropBorders => 'কাষ কাটা';

  @override
  String get readerCropBordersDesc =>
      'পৃষ্ঠাৰ পৰা খালী বগা বা ক’লা মাৰ্জিন কাটি পেলোৱা';

  @override
  String get readerLongPressSave => 'সংৰক্ষণ কৰিবলৈ এটা পৃষ্ঠা ধৰি ৰাখক';

  @override
  String get readerLongPressSaveDesc =>
      'সংৰক্ষণ, শ্বেয়াৰ আৰু কপি বিকল্পসমূহ খোলিবলৈ এটা পৃষ্ঠা দীঘলীয়াকৈ টিপক';

  @override
  String get readerVolumeKeys => 'ভলিউম কীৰে পৃষ্ঠা লুটিওৱা';

  @override
  String get readerVolumeKeysDesc => 'ভলিউম ডাউনে আগলৈ, ভলিউম আপে পিছলৈ যায়';

  @override
  String get readerBookmarks => 'বুকমাৰ্ক';

  @override
  String get readerBookmarkAdd => 'বুকমাৰ্ক যোগ কৰা';

  @override
  String get readerBookmarkRemove => 'বুকমাৰ্ক আতৰোৱা';

  @override
  String get readerBookmarksEmpty => 'এতিয়াও কোনো বুকমাৰ্ক নাই';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'পৃষ্ঠা $page / $total';
  }

  @override
  String get readerAutoScroll => 'অটো স্ক্ৰ’ল';

  @override
  String get readerAutoScrollStop => 'অটো স্ক্ৰ’ল ৰোকা';

  @override
  String get readerAutoScrollSpeed => 'অটো স্ক্ৰ’লৰ গতি';

  @override
  String get readerAutoScrollSpeedDesc =>
      'পৃষ্ঠা কিমান বেগাই নিজে নিজে স্ক্ৰ’ল বা লুটিয়াব';

  @override
  String get readerKeepOn => 'স্ক্ৰীন চালু ৰখা';

  @override
  String get readerKeepOnDesc => 'পঢ়োঁতে স্ক্ৰীন বন্ধ হোৱাত বাধা দিয়া';

  @override
  String get readerOrientation => 'অৰিয়েণ্টেশ্যন';

  @override
  String get readerOrientationFree => 'মুক্ত';

  @override
  String get readerOrientationPortrait => 'প’ৰ্ট্ৰেইট';

  @override
  String get readerOrientationLandscape => 'লেণ্ডস্কেপ';

  @override
  String get readerSaveProgress => 'প্ৰগ্ৰেছ সংৰক্ষণ কৰা';

  @override
  String get readerSaveProgressDesc =>
      'তোমাৰ পৃষ্ঠা মনত ৰাখা আৰু অধ্যায় পঢ়া হ’ল বুলি চিহ্নিত কৰা';

  @override
  String get readerReset => 'ৰিডাৰ ছেটিংছ ৰিছেট কৰা';

  @override
  String get readerResetDesc => 'ডিফল্টলৈ ঘূৰি যোৱা';

  @override
  String get readerResetConfirm =>
      'প্ৰতিটো পাঠকৰ সংহতি ইয়াৰ অবিকল্পিতলৈ পুনৰায় সেট কৰক?';

  @override
  String get novelSize => 'লিখনিৰ আকাৰ';

  @override
  String get novelFont => 'ফন্ট';

  @override
  String get novelLineHeight => 'শাৰীৰ উচ্চতা';

  @override
  String get novelParagraph => 'অনুচ্ছেদৰ ব্যৱধান';

  @override
  String get novelMargin => 'মাৰ্জিন';

  @override
  String get novelTheme => 'ৰিডাৰ থিম';

  @override
  String get novelThemeApp => 'এপৰ থিম';

  @override
  String get novelThemeLight => 'লাইট';

  @override
  String get novelThemeSepia => 'ছেপিয়া';

  @override
  String get novelThemeDark => 'ডাৰ্ক';

  @override
  String get novelThemeBlack => 'ক’লা';

  @override
  String get novelJustify => 'লিখনি জাষ্টিফাই কৰা';

  @override
  String get novelJustifyDesc => 'লিখনি দুয়োটা কাষত সমান কৰা';

  @override
  String get trackProgressTitle => 'প্ৰগ্ৰেছ সংৰক্ষণ কৰিবা নে?';

  @override
  String trackProgressAnime(String name) {
    return 'চাওঁতে তোমাৰ তালিকাত $name ট্ৰেক কৰিবা নে? স্থানীয় ৰাখিবলৈ \"কেৱল এই ডিভাইচত\" বাছা, একো সংৰক্ষণ নকৰিবলৈ \"নহয়\" বাছা।';
  }

  @override
  String trackProgressManga(String name) {
    return 'অধ্যায় শেষ কৰিলে তোমাৰ তালিকাত $name ট্ৰেক কৰিবা নে? স্থানীয় ৰাখিবলৈ \"কেৱল এই ডিভাইচত\" বাছা, একো সংৰক্ষণ নকৰিবলৈ \"নহয়\" বাছা।';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'আপুনি চোৱাৰ সময়ত এই ডিভাইচত আপোনাৰ তালিকাত $name ত আপোনাৰ অগ্ৰগতি সংৰক্ষণ কৰক?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'আপোনাৰ অগ্ৰগতি $name ত এই ডিভাইচত আপোনাৰ তালিকাত সংৰক্ষণ কৰক যেতিয়া আপুনি এটা অধ্যায় শেষ কৰে?';
  }

  @override
  String get downloadClearQueue => 'শাৰী পৰিষ্কাৰ কৰক';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'শাৰীৰ সকলো $count ডাউনলোড বাতিল কৰক? ইতিমধ্যে ডাউনলোড কৰা বস্তুটো ডিলিট হৈ যায়।';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count নিৰ্বাচিত কৰা হৈছে';
  }

  @override
  String get downloadSelectAll => 'সকলো নিৰ্বাচন কৰক';

  @override
  String get downloadDeleteSelected => 'নিৰ্বাচিত মচি পেলাওক';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return '$count ডাউনলোডসমূহ মচি পেলাওক? তেওঁলোকৰ ফাইলসমূহ ডিভাইচৰ পৰা আঁতৰোৱা হয়।';
  }

  @override
  String get castTitle => 'ডিভাইচলৈ কাষ্ট কৰক';

  @override
  String get castSearching => 'আপোনাৰ নেটৱৰ্কত ডিভাইচ বিচাৰিছে...';

  @override
  String get castNoDevices =>
      'কোনো ডিভাইচ পোৱা নগ\'ল। টিভি বা Chromecast একেটা ৱাই-ফাইত থকাটো নিশ্চিত কৰক, তাৰ পিছত পুনৰ সন্ধান কৰক।';

  @override
  String get castRefresh => 'আকৌ বিচাৰিব';

  @override
  String get castFailed => 'কাষ্টিং আৰম্ভ কৰিব পৰা নগ’ল';

  @override
  String get castStop => 'কাষ্টিং বন্ধ কৰক';

  @override
  String castNowCasting(String name) {
    return '$name লৈ কাষ্টিং';
  }

  @override
  String get castProtocolChromecast => 'ক্ৰ\'মকাষ্ট';

  @override
  String get castProtocolDlna => 'ডি এল এন এ / স্মাৰ্ট টিভি';

  @override
  String get castProtocolRoku => 'ৰকু';

  @override
  String get castRokuNote => 'ৰকুৱে ৰিপৰ্ট বা পজিচন সলনি কৰিব নোৱাৰে';

  @override
  String get castControls => 'নিয়ন্ত্ৰণসমূহ';

  @override
  String get castVolume => 'টিভিৰ ভলিউম';

  @override
  String castSkipPart(String name) {
    return '$name এৰি যাওক';
  }

  @override
  String get trackProgressRememberSeries => 'এই ধাৰাবাহিকখনৰ বাবে মনত ৰাখিব';

  @override
  String get trackProgressYes => 'সংৰক্ষণ';

  @override
  String get trackProgressReset =>
      'এই ধৰণৰ বাবে প্ৰগ্ৰেছ সংৰক্ষণৰ প্ৰশ্ন ৰিছেট হৈছে, আকৌ সোধা হ’ব';

  @override
  String get trackProgressNo => 'নহয়';

  @override
  String get trackProgressOff => 'বন্ধ';

  @override
  String get trackProgressLocal => 'কেৱল এই ডিভাইচত';

  @override
  String get trackProgressSettingAnime => 'এনিমেৰ প্ৰগ্ৰেছ ট্ৰেক কৰা';

  @override
  String get trackProgressSettingManga =>
      'মাংগা আৰু উপন্যাসৰ প্ৰগ্ৰেছ ট্ৰেক কৰা';

  @override
  String get trackProgressSettingDesc =>
      'পৰ্ব খুলিলে বা অধ্যায় শেষ কৰিলে কি হ’ব';

  @override
  String get trackProgressAsk => 'সোধা';

  @override
  String get trackProgressAlways => 'সদায়';

  @override
  String get dantotsuImport => 'Dantotsu-ৰ পৰা ইমপৰ্ট কৰা';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu ছেটিংছ বেকআপ পঢ়া (.ani, বা এনক্ৰিপ্টেড .sani)';

  @override
  String get dantotsuPick => 'এটা Dantotsu বেকআপ বাছা';

  @override
  String get dantotsuNothing => 'এই ফাইলত ইমপৰ্ট কৰিবলগীয়া একো নাই';

  @override
  String get dantotsuApply => 'বাছনিবোৰ ইমপৰ্ট কৰা';

  @override
  String dantotsuDone(int done, int total) {
    return '$totalৰ ভিতৰত $doneটা ইমপৰ্ট হৈছে';
  }

  @override
  String get dantotsuGroupAccounts => 'একাউণ্ট';

  @override
  String get dantotsuGroupAppearance => 'চেহেৰা';

  @override
  String get dantotsuGroupExtensions => 'এক্সটেনছন';

  @override
  String get dantotsuGroupApp => 'এপ';

  @override
  String get dantotsuGroupPlayer => 'প্লেয়াৰ';

  @override
  String get dantotsuAnilist => 'AniList লগইন';

  @override
  String get dantotsuMal => 'MyAnimeList লগইন';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence টোকেন';

  @override
  String get dantotsuTheme => 'থিম';

  @override
  String get themePickerTitle => 'থিম';

  @override
  String get dantotsuReposAnime => 'এনিমে এক্সটেনছন ৰিপজিটৰী';

  @override
  String get dantotsuReposManga => 'মাংগা এক্সটেনছন ৰিপজিটৰী';

  @override
  String get dantotsuReposNovel => 'উপন্যাস এক্সটেনছন ৰিপজিটৰী';

  @override
  String get dantotsuUpdates => 'আপডেট পৰীক্ষা';

  @override
  String get dantotsuComments => 'মন্তব্য';

  @override
  String get dantotsuActivity => 'AniList জাননী পোলিং';

  @override
  String get dantotsuDns => 'DNS প্ৰভাইডাৰ';

  @override
  String get dantotsuPlayer => 'প্লেয়াৰৰ গতি আৰু ছাবটাইটেলৰ ৰং';

  @override
  String get dantotsuWarning => 'এই ফাইলত লগইন টোকেন আছে। ইয়াক গোপন ৰাখা।';

  @override
  String get novelIndent => 'অনুচ্ছেদত ইণ্ডেণ্ট দিয়া';

  @override
  String get novelIndentDesc =>
      'প্ৰতিটো অনুচ্ছেদ প্ৰথম শাৰীত ইণ্ডেণ্ট দি আৰম্ভ কৰা';

  @override
  String get novelLetterSpacing => 'আখৰৰ ব্যৱধান';

  @override
  String get novelSectionTranslate => 'অনুবাদ';

  @override
  String get sectionExperimental => 'পৰীক্ষামূলক';

  @override
  String get kitsuGraphqlDetail => 'অধিক দ্ৰুত বিৱৰণ পেজ (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'শিৰোনাম, ইয়াৰ চৰিত্ৰ, ষ্টাফ আৰু তোমাৰ এণ্ট্ৰি এটা অনুৰোধতে লোড কৰা';

  @override
  String get togetherTitle => 'একেলগে চোৱা';

  @override
  String get togetherIntro =>
      'বন্ধুৱে পঠোৱা ৰুমৰ লিংক পেষ্ট কৰা। লগে লগে যোগ দিবা আৰু তেওঁলোকে চাবলৈ আৰম্ভ কৰিলে প্লেয়াৰ খোল খাব।';

  @override
  String togetherLinkConfirm(String room) {
    return 'কোঠাটোত যোগদান কৰক $room? গৃহস্থই কি খেলে সেইটো বাছি লয় আৰু খেলুৱৈয়ে চাবলৈ আৰম্ভ কৰিলে নিজেই খুলি দিয়ে।';
  }

  @override
  String get togetherJoin => 'যোগদান কৰক';

  @override
  String get togetherName => 'তোমাৰ নাম';

  @override
  String get togetherConnecting => 'সংযোগ হৈ আছে…';

  @override
  String get togetherLeave => 'ৰুম এৰি দিয়া';

  @override
  String get togetherYou => 'তুমি';

  @override
  String get togetherNoChat => 'এতিয়াও কোনো বাৰ্তা নাই';

  @override
  String get togetherChatHint => 'বাৰ্তা';

  @override
  String get togetherCopyInvite => 'নিমন্ত্ৰণ কপি কৰা';

  @override
  String get togetherShareInvite => 'Share invite কৰক';

  @override
  String togetherShareText(String link) {
    return 'মোৰ সৈতে Dartotsu ত চাওক: $link';
  }

  @override
  String get togetherInviteCopied => 'ছাৰ্ভাৰ আৰু ৰুম কপি হৈছে';

  @override
  String get togetherConnectionLost => 'সংযোগ বিচ্ছিন্ন হৈছে';

  @override
  String togetherConnectedTo(String room) {
    return '$roomৰ লগত সংযুক্ত হৈছে';
  }

  @override
  String togetherFailed(String error) {
    return 'সংযোগ কৰিব পৰা নগল: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$nameএ যোগ দিলে';
  }

  @override
  String togetherLeft(String name) {
    return '$nameএ এৰি গ’ল';
  }

  @override
  String togetherPaused(String name) {
    return '$nameএ পজ কৰিলে';
  }

  @override
  String togetherResumed(String name) {
    return '$nameএ আকৌ চলালে';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$nameএ $timeলৈ জপিয়াই গ’ল';
  }

  @override
  String get togetherFollowFailed =>
      'হোষ্টৰ পৰ্ব খুলিব পৰা নগল। নিজে খুলি লোৱা।';

  @override
  String get togetherJoinRole => 'ৰুমত যোগ দিয়া';

  @override
  String get togetherOpenHost => 'হোষ্টৰ পৰ্ব খোলা';

  @override
  String get togetherShowChat => 'লাইভ চেট দেখুওৱা';

  @override
  String get togetherWaitingHost => 'হোষ্টে পৰ্ব আৰম্ভ কৰিবলৈ অপেক্ষা কৰি আছে';

  @override
  String get togetherRoomLink => 'ৰুমৰ লিংক';

  @override
  String get togetherBadLink => 'এইটো ৰুমৰ লিংক নহয়';

  @override
  String get togetherHostClosed => 'হোষ্টে ৰুম বন্ধ কৰি দিলে';

  @override
  String get togetherNowPlaying => 'এতিয়া চলি আছে';

  @override
  String togetherWatchingCount(int count) {
    return '$count জনে চাই আছে';
  }

  @override
  String togetherWantsPause(String user) {
    return '$userএ পজ কৰিব বিচাৰে';
  }

  @override
  String togetherWantsResume(String user) {
    return '$userএ আকৌ চলাব বিচাৰে';
  }

  @override
  String get togetherChip => 'একেলগে';

  @override
  String get togetherSettingsDesc => 'লিংকেৰে বন্ধুৰ ৰুমত যোগ দিয়া';

  @override
  String get novelBilingual => 'মূল আৰু অনুবাদ দুয়োটা দেখুওৱা';

  @override
  String get novelBilingualDesc =>
      'প্ৰতিটো অনুচ্ছেদত মূল লিখনি আৰু তাৰ তলত অনুবাদ দেখা যাব';

  @override
  String get novelTranslateTo => 'অনুবাদ কৰা';

  @override
  String get novelTranslateOff => 'বন্ধ';

  @override
  String get novelSectionSpeech => 'টেক্সট টু স্পীচ';

  @override
  String get novelSpeechRate => 'কথাৰ গতি';

  @override
  String get novelSpeechPitch => 'কথাৰ পিচ';

  @override
  String get novelSpeak => 'জোৰেৰে পঢ়ি শুনোৱা';

  @override
  String get novelSpeakStop => 'জোৰেৰে পঢ়া বন্ধ কৰা';

  @override
  String get novelTranslate => 'অধ্যায় অনুবাদ কৰা';

  @override
  String get novelTranslateShowOriginal => 'মূল দেখুওৱা';

  @override
  String novelTranslateFailed(String error) {
    return 'অনুবাদ বিফল: $error';
  }

  @override
  String get novelSpeechUnavailable => 'এই ডিভাইচত টেক্সট টু স্পীচ উপলব্ধ নহয়';

  @override
  String get novelSpeechVoice => 'কণ্ঠ';

  @override
  String get novelSpeechVoiceDefault => 'ছিষ্টেম ডিফল্ট';

  @override
  String get novelSpeakPrevious => 'আগৰ শাৰী';

  @override
  String get novelSpeakNext => 'পৰৱৰ্তী শাৰী';

  @override
  String get novelTapPaging => 'পৃষ্ঠা লুটিয়াবলৈ কাষত টেপ কৰা';

  @override
  String get novelTapPagingDesc =>
      'পৃষ্ঠা স্ক্ৰ’ল কৰিবলৈ বাওঁ বা সোঁফালে টেপ কৰা, মাজত নিয়ন্ত্ৰণ দেখা যায়';

  @override
  String get novelPaged => 'পৃষ্ঠা ঘূৰোৱা';

  @override
  String get novelPagedDesc =>
      'অধ্যায়টোক পৃষ্ঠাত বিভক্ত কৰক আৰু স্ক্ৰল কৰাৰ পৰিৱৰ্তে সেইবোৰ ঘূৰাবলৈ চুইপ বা টেপ কৰক';

  @override
  String novelPageOf(int current, int total) {
    return '$total ৰ পৃষ্ঠা $current';
  }

  @override
  String get novelPaginating => 'পৃষ্ঠা বিন্যাস কৰা';

  @override
  String get novelTools => 'বিষয়বস্তু, সন্ধান আৰু হাইলাইট';

  @override
  String get novelContents => 'বিষয়বস্তু';

  @override
  String get novelContentsEmpty => 'এই অধ্যায়ৰ কোনো শিৰোনাম নাই';

  @override
  String get novelSearch => 'সন্ধান কৰক';

  @override
  String get novelSearchHint => 'এই অধ্যায়ত সন্ধান কৰক';

  @override
  String get novelSearchNone => 'কোনো মিল নাই';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মিল খায়',
      one: '১ টা মেচ',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'হাইলাইটসমূহ';

  @override
  String get novelHighlightsEmpty =>
      'কিছুমান লিখনী নিৰ্ব্বাচন কৰক আৰু ইয়াত ৰাখিবলৈ হাইলাইট টেপ কৰক';

  @override
  String get novelHighlight => 'হাইলাইট কৰক';

  @override
  String get novelHighlightNote => 'বি:দ্ৰ';

  @override
  String get novelHighlightNoteHint => 'এটা টোকা যোগ কৰক';

  @override
  String get novelHighlightRemove => 'হাইলাইট আঁতৰাওক';

  @override
  String get novelHighlightFailed =>
      'সেই নিৰ্বাচনটো লিখনীৰ সৈতে মিলাব পৰা নগ\'ল';

  @override
  String novelMinutesLeft(int count) {
    return 'আৰু $count মিনিট বাকী';
  }

  @override
  String get novelBold => 'বোল্ড লিখনি';

  @override
  String get novelBoldDesc => 'অধিক ডাঠ ওজন ব্যৱহাৰ কৰা';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter শেষ হৈছে';
  }

  @override
  String readerNextUp(String chapter) {
    return 'পৰৱৰ্তী: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'আগৰটো: $chapter';
  }

  @override
  String get readerNoPages => 'এই অধ্যায়ত কোনো পৃষ্ঠা নাই';

  @override
  String get readerLoadingPages => 'পৃষ্ঠা লোড কৰি আছে…';

  @override
  String get readerSlowPage => 'এই পৃষ্ঠা এতিয়াও লোড হৈ আছে…';

  @override
  String get readerPageFailed => 'এই পৃষ্ঠা লোড কৰিব পৰা নগল';

  @override
  String get playerShowComments => 'মন্তব্য দেখুওৱা';

  @override
  String get playerHideComments => 'মন্তব্য লুকুওৱা';

  @override
  String get playerSubtitles => 'ছাবটাইটেল';

  @override
  String get playerSubtitlesOff => 'ছাবটাইটেল বন্ধ';

  @override
  String get playerAudio => 'অডিঅ’';

  @override
  String get playerAddSubtitle => 'ছাবটাইটেল ফাইল যোগ কৰা';

  @override
  String get playerAddAudio => 'অডিঅ’ ফাইল যোগ কৰা';

  @override
  String get playerChapters => 'অধ্যায়';

  @override
  String get playerSkipSubmit => 'জমা দিয়া এৰি যোৱাৰ সময়';

  @override
  String get playerSkipSubmitDesc =>
      'এই খণ্ডটোত মুকলি, অন্ত বা পুনৰাবৃত্তি ক\'ত আৰম্ভ আৰু শেষ হয় চিহ্নিত কৰক আৰু ইয়াক AniSkip ৰ সৈতে শ্বেয়াৰ কৰক, যাতে সকলোৱে এৰি যোৱা বুটামটো পায়।';

  @override
  String get playerSkipStart => 'আৰম্ভ কৰক';

  @override
  String get playerSkipEnd => 'শেষ';

  @override
  String get playerSkipUseNow => 'বৰ্তমানৰ অৱস্থান ব্যৱহাৰ কৰক';

  @override
  String get playerSkipSend => 'AniSkip লৈ জমা দিয়ক';

  @override
  String get playerSkipSent =>
      'AniSkip লৈ জমা দিয়া সময়বোৰ এৰি দিয়া, ধন্যবাদ';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip এ এৰি দিয়াৰ সময় নাকচ কৰিলে: $error';
  }

  @override
  String get playerUnsupported =>
      'এই ডিভাইচত ভিডিঅ’ প্লেয়াৰ চলিব নোৱাৰে (ইয়াৰ এণ্ড্ৰইড সংস্কৰণ বাণ্ডিল প্লেয়াৰ লাইব্ৰেৰীৰ বাবে বহুত পুৰণি)। বিৱৰণ কপি কৰিবলৈ টেপ কৰক।';

  @override
  String get playerSkipNoMal =>
      'এই শিৰোনামৰ কোনো MyAnimeList id নাই, AniSkip এ ল\'ব নোৱাৰে';

  @override
  String get playerNoChapters => 'কোনো অধ্যায় নাই';

  @override
  String get playerTimestamp => 'টাইমষ্টেম্প';

  @override
  String get playerAutoPlayDelay => 'পৰৱৰ্তী পৰ্বৰ কাউণ্টডাউন';

  @override
  String get playerWatchedAt => 'চোৱা বুলি গণ্য কৰা';

  @override
  String playerNextIn(int seconds) {
    return 'পৰৱৰ্তী পৰ্ব $seconds ছেকেণ্ডত';
  }

  @override
  String get playerPlayNow => 'এতিয়াই চলোৱা';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: এই শিৰোনামৰ বাবে স্বয়ংক্ৰিয়ভাৱে এৰি যাব';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: এই শিৰোনামৰ বাবে স্বয়ংক্ৰিয়ভাৱে এৰি নাযায়';
  }

  @override
  String get playerAudioLanguage => 'পচন্দৰ অডিঅ’ ভাষা';

  @override
  String get playerLanguageOrderHint =>
      'ক’মাৰে ভাষা পৃথক কৰা। প্ৰথমে পোৱাটো ব্যৱহাৰ হ’ব।';

  @override
  String get playerPip => 'পিকচাৰ ইন পিকচাৰ';

  @override
  String get playerAutoPip => 'ওলাই গ’লে পিকচাৰ ইন পিকচাৰ';

  @override
  String get playerAutoPipDesc => 'এপ এৰি গ’লে সৰু ৱিণ্ড’ত চলি থাকিব';

  @override
  String get playerPipPlay => 'খেলা';

  @override
  String get playerPipPause => 'থমকি ৰ’ব';

  @override
  String get playerPipBack => 'ৰিৱাইণ্ড কৰক';

  @override
  String get playerPipForward => 'আগলৈ';

  @override
  String get playerPipRestore => 'খেলুৱৈজনলৈ উভতি যাওঁক';

  @override
  String get playerPipActive => 'সৰু খিৰিকী এখনত খেলি থকা';

  @override
  String get listDateAdded => 'তালিকাত যোগ কৰা হৈছে';

  @override
  String get listDateLastWatched => 'শেষবাৰৰ বাবে চোৱা হৈছিল';

  @override
  String playerAutoPlaying(String title) {
    return 'ইয়াৰ পিছত $title চলি আছে…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'শ্বেডাৰ ইনষ্টল কৰিব পৰা নগল: $error';
  }

  @override
  String playerChapter(int number) {
    return 'অধ্যায় $number';
  }

  @override
  String get playerPerTitle => 'কেৱল এই শিৰোনামৰ বাবে';

  @override
  String get playerPerTitleDesc =>
      'এই বিকল্পবোৰ এই শিৰোনামৰ বাবে ৰাখা আৰু তোমাৰ ডিফল্ট নুচুবা';

  @override
  String get playerSwapGestures => 'স্ৱাইপৰ কাষ সলনি কৰক';

  @override
  String get playerSwapGesturesDesc => 'বাওঁফালে উজ্জ্বলতা আৰু সোঁফালে ভলিউম';

  @override
  String get playerOpenBig => 'ডাঙৰ ভিউত খোলক';

  @override
  String get playerOpenBigDesc =>
      'পৰ্ব তালিকাৰ সলনি প্লেয়াৰ ফুলস্ক্ৰীণত আৰম্ভ কৰক';

  @override
  String get playerPauseOnBlur => 'ফকাছ হেৰুৱালে পজ কৰক';

  @override
  String get playerPauseOnBlurDesc =>
      'নটিফিকেচন পেনেলৰ দৰে কিবা এটাই এপটো ঢাকিলে পজ হ’ব, আৰু ঘূৰি আহিলে চলিব';

  @override
  String get playerAudioOutput => 'অডিঅ’ আউটপুট';

  @override
  String get fontAppDefault => 'এপৰ ফন্ট';

  @override
  String get fontImport => 'ফন্ট ইমপৰ্ট কৰা';

  @override
  String get fontSample =>
      'ক্ষিপ্ৰ মটিয়া শিয়ালে অলস কুকুৰটোৰ ওপৰেৰে জপিয়ায়';

  @override
  String get playerSubtitleDelay => 'ছাবটাইটেল বিলম্ব';

  @override
  String get playerAudioDelay => 'অডিঅ’ বিলম্ব';

  @override
  String get playerDelayReset => 'ৰিছেট';

  @override
  String get playerOnlineSubtitles => 'অনলাইন ছাবটাইটেল';

  @override
  String get playerOnlineSearchHint => 'শিৰোনাম আৰু পৰ্ব';

  @override
  String get playerOnlineNone => 'কোনো ছাবটাইটেল পোৱা নগল';

  @override
  String playerOnlineFailed(String error) {
    return 'ছাবটাইটেল সন্ধান বিফল: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'এই ছাবটাইটেল ডাউনলোড কৰিব পৰা নগল: $error';
  }

  @override
  String get playerOnlineMatch => 'এই ফাইলৰ লগত মিলে';

  @override
  String get playerOnlineEpisode => 'পৰ্বৰ মিল';

  @override
  String playerOnlineDownloads(int count) {
    return '$countটা ডাউনলোড';
  }

  @override
  String get playerSeekPreview => 'ছিক প্ৰিভিউ';

  @override
  String get playerSeekPreviewDesc =>
      'স্ক্ৰাব কৰোঁতে ছিক বাৰৰ ওপৰত সৰু ফ্ৰেম প্ৰিভিউ দেখুওৱা। ই কম ৰিজলিউশ্যনৰ দ্বিতীয় এটা ডিক’ডাৰ খোলে, গতিকে ষ্ট্ৰীমত অতিৰিক্ত ডাটা খৰচ হয়।';

  @override
  String get playerSettingsChip => 'ছেটিংছ';

  @override
  String get playerAudioDevice => 'অডিঅ’ ডিভাইচ';

  @override
  String get settingsDownloads => 'ডাউনলোড';

  @override
  String get settingsDownloadsDesc => 'অফলাইন পৰ্ব, কিউ আৰু অফলাইন মোড';

  @override
  String get downloadsTitle => 'ডাউনলোড';

  @override
  String get widgetContinue => 'আগবাঢ়ি যাওক';

  @override
  String get widgetReleases => 'অতি সোনকালে মুক্তি পাব';

  @override
  String get widgetMore => 'লগতে চলি আছে';

  @override
  String get widgetNothing => 'এতিয়াও আগবাঢ়িবলৈ একো নাই';

  @override
  String get downloadStorageTitle => 'সংৰক্ষণ';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ডাউনলোড হয়',
      one: '১ ডাউনলোড',
    );
    return '$_temp0 · __পি০__';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size ইতিমধ্যে চাই বা পঢ়িছে';
  }

  @override
  String get downloadFreeUp => 'স্থান মুক্ত কৰক';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ডাউনলোড চাইছিল',
      one: '১ টা চোৱা ডাউনলোড',
    );
    return 'বিলোপ $_temp0 আৰু বিনামূলীয়া $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'মুক্ত কৰা হৈছে $size';
  }

  @override
  String get downloadDeleteWatched => 'ডিলিট চাই থাকিল';

  @override
  String get downloadDeleteAll => 'সকলো মচি পেলাওক';

  @override
  String downloadDeleteAllConfirm(String title) {
    return '$title ৰ প্ৰতিটো ডাউনলোড মচি পেলাওক?';
  }

  @override
  String get downloadNothingWatched => 'আপুনি শেষ কৰা একোৱেই ডাউনলোড কৰা নহয়';

  @override
  String get downloadStorageEmpty => 'কোনো ডাউনলোডেই স্থান ব্যৱহাৰ কৰা নাই';

  @override
  String get downloadsOpenDesc => 'কিউ আৰু এই ডিভাইচত সংৰক্ষণ কৰা সকলো চোৱা';

  @override
  String get downloadTitle => 'ডাউনলোড';

  @override
  String get downloadMetaOnly => 'কেৱল মেটাডাটা';

  @override
  String get downloadMetaFailed => 'শিৰোনাম ফোল্ডাৰ সৃষ্টি কৰিব পৰা নগ\'ল';

  @override
  String downloadMetaSaved(String path) {
    return 'সংৰক্ষণ কৰা হৈছে। আপোনাৰ ফাইলসমূহ $path ত ৰাখক।';
  }

  @override
  String get downloadAlready => 'আগতেই ডাউনলোড হৈছে বা কিউত আছে';

  @override
  String get downloadPickStream => 'কোনটো ষ্ট্ৰীম ডাউনলোড কৰিবা?';

  @override
  String get downloadPickSubtitle => 'কোনটো ছাবটাইটেল ডাউনলোড কৰিবা?';

  @override
  String get downloadPickAudio => 'কোনটো অডিঅ’ ট্ৰেক ডাউনলোড কৰিবা?';

  @override
  String get downloadNoAudio => 'অতিৰিক্ত অডিঅ’ নাই';

  @override
  String get downloadAudio => 'অডিঅ’';

  @override
  String get downloadNoSubtitle => 'ছাবটাইটেল নাই';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'এই ষ্ট্ৰীমটো এটা HLS প্লেলিষ্ট। ডাউনলোড কৰিবলৈ FFmpeg এড-অন লাগিব।';

  @override
  String get downloadSourceMissing => 'এই পৰ্বৰ উৎস ইনষ্টল কৰা নাই';

  @override
  String get downloadDashDrm => 'এই ষ্ট্ৰিমটো DRM সুৰক্ষিত';

  @override
  String get downloadDashNoVideo => 'DASH মেনিফেষ্টৰ কোনো ভিডিঅ’ নাই';

  @override
  String get downloadWaitingConnection => 'সংযোগৰ অপেক্ষাত';

  @override
  String get downloadSubtitles => 'ছাবটাইটেল';

  @override
  String get downloadDownloaded => 'ডাউনলোড হৈছে';

  @override
  String get downloadOffline => 'অফলাইন';

  @override
  String get downloadDelete => 'ডাউনলোড মচি পেলোৱা';

  @override
  String get downloadCancel => 'বাতিল';

  @override
  String get downloadPause => 'পজ';

  @override
  String get downloadPaused => 'পজ কৰা হৈছে';

  @override
  String get downloadResume => 'পুনৰ আৰম্ভ কৰা';

  @override
  String get downloadPauseAll => 'সকলো পজ কৰা';

  @override
  String get downloadResumeAll => 'সকলো পুনৰ আৰম্ভ কৰা';

  @override
  String get downloadQueuedState => 'কিউত অপেক্ষা কৰি আছে';

  @override
  String get downloadResolving => 'ষ্ট্ৰীম অনা হৈছে…';

  @override
  String get downloadUsedFallback => 'মিলা ষ্ট্ৰীম নাই, প্ৰথমটো লোৱা হৈছে';

  @override
  String get downloadTabQueue => 'কিউ';

  @override
  String get downloadTabDone => 'হৈ গ’ল';

  @override
  String get downloadTabFailed => 'বিফল';

  @override
  String get downloadEmptyQueue => 'একো ডাউনলোড হোৱা নাই';

  @override
  String get downloadEmptyDone => 'এতিয়াও একো ডাউনলোড হোৱা নাই';

  @override
  String get downloadEmptyFailed => 'কোনো বিফল ডাউনলোড নাই';

  @override
  String get downloadNext => 'পৰৱৰ্তী পৰ্ব';

  @override
  String downloadNextN(int count) {
    return 'পৰৱৰ্তী $countটা পৰ্ব';
  }

  @override
  String downloadUnwatched(int count) {
    return 'নোচোৱা সকলো ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'এই ৰেঞ্জ ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'সকলো পৰ্ব ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা পৰ্ব কিউত',
      one: '১টা পৰ্ব কিউত',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name ডাউনলোড হৈছে';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name ডাউনলোড বিফল হৈছে';
  }

  @override
  String downloadStorage(String size) {
    return 'ডাউনলোডত $size ব্যৱহাৰ হৈছে';
  }

  @override
  String get downloadQueueHeader => 'কিউ';

  @override
  String get downloadParallel => 'একেলগে ডাউনলোড';

  @override
  String get downloadParallelDesc =>
      'এটা এটাকৈ ডাউনলোড চলোৱা বা কেইবাটাও একেলগে';

  @override
  String get downloadOneByOne => 'এটা এটাকৈ';

  @override
  String get downloadNotifications => 'ডাউনলোড জাননী';

  @override
  String get downloadNotificationsDesc =>
      'ছিষ্টেমে সমৰ্থন কৰিলে লাইভ প্ৰগ্ৰেছ, নহ’লে ডাউনলোড শেষ হ’লে এটা টোকা';

  @override
  String get downloadNotifyLive => 'লাইভ';

  @override
  String get downloadNotifyDone => 'শেষ হ’লে';

  @override
  String get downloadNotifyOff => 'বন্ধ';

  @override
  String get downloadInfoFile => 'প্ৰতিটো ডাউনলোডৰ কাষত এটা তথ্য ফাইল লিখা';

  @override
  String get downloadInfoFileDesc =>
      'ষ্ট্ৰীম, কোৱালিটী, ছাবটাইটেল আৰু স্কিপৰ সময় এটা সৰু .json ফাইলত সংৰক্ষণ কৰে';

  @override
  String get offlineHeader => 'অফলাইন';

  @override
  String get offlineModeDesc =>
      '\"অটো\" কেৱল ইণ্টাৰনেট নোহোৱাকৈ এপ চালু হ’লেহে অফলাইনলৈ যায়। \"সদায়\" তুমি সলনি নকৰালৈকে অফলাইনত থাকে।';

  @override
  String get offlineModeOff => 'বন্ধ';

  @override
  String get offlineModeAlways => 'সদায়';

  @override
  String get offlineModeOn =>
      'অফলাইন মোড চালু। পৰিবৰ্তনবোৰ ইয়াত সংৰক্ষণ হ’ব আৰু অনলাইনলৈ উভতিলে পঠোৱা হ’ব।';

  @override
  String get offlineSaved => 'এই ডিভাইচত সংৰক্ষণ হৈছে, অনলাইনলৈ আহিলে ছিংক হ’ব';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা পৰিবৰ্তন ছিংক হৈছে',
      one: '১টা পৰিবৰ্তন ছিংক হৈছে',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা পৰিবৰ্তন ছিংকৰ অপেক্ষাত',
      one: '১টা পৰিবৰ্তন ছিংকৰ অপেক্ষাত',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'ছিংকৰ অপেক্ষাত থকা পৰিবৰ্তন';

  @override
  String get offlinePendingNone => 'একো অপেক্ষাত নাই';

  @override
  String get offlineSyncNow => 'এতিয়াই ছিংক কৰা';

  @override
  String get offlineDiscard => 'পেলাই দিয়া';

  @override
  String get downloadNotOffline =>
      'এই পৰ্ব ডাউনলোড কৰা নাই, গতিকে অফলাইনত উপলব্ধ নহয়';

  @override
  String get offlineModeChip => 'অফলাইন';

  @override
  String get downloadNextChapter => 'পৰৱৰ্তী অধ্যায়';

  @override
  String downloadNextChapters(int count) {
    return 'পৰৱৰ্তী $countটা অধ্যায়';
  }

  @override
  String downloadUnread(int count) {
    return 'নপঢ়া সকলো ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'সকলো অধ্যায় ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $totalখন পৃষ্ঠা';
  }

  @override
  String downloadPagesCount(int count) {
    return '$countখন পৃষ্ঠা';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg এড-অন লাগিব';

  @override
  String get downloadFfmpegBody =>
      'এই ষ্ট্ৰীমটো এটা HLS প্লেলিষ্ট। FFmpeg এড-অনে ইয়াৰ টুকুৰাবোৰ জোৰা লগাই এটা mp4 ফাইল বনায়। ইয়াৰ অবিহনে টুকুৰাবোৰ এটা পৰ্বৰ ফোল্ডাৰত থাকে আৰু তাৰ পৰাই চলে।';

  @override
  String get downloadFfmpegInstall => 'ইনষ্টল';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg ইনষ্টল হৈ আছে, অলপ সময় লাগিব পাৰে…';

  @override
  String get downloadFinishing => 'টুকুৰাবোৰ জোৰা লগাই এটা ফাইল বনাই আছে…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $totalটা অংশ';
  }

  @override
  String get downloadTorrentNoFile =>
      'এই টৰেণ্টত ডাউনলোড কৰিবলগীয়া কোনো ভিডিঅ’ ফাইল নাই';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা বস্তু ডাউনলোড হৈ আছে',
      one: '১টা বস্তু ডাউনলোড হৈ আছে',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'চোৱা ডাউনলোড মচি পেলোৱা';

  @override
  String get downloadAutoDeleteDesc =>
      'তোমাৰ প্ৰগ্ৰেছ সেই পৰ্ব বা অধ্যায়লৈ পালে ডাউনলোড আতৰাই দিয়ে';

  @override
  String get downloadConnections => 'প্ৰতি ডাউনলোডত সংযোগ';

  @override
  String get downloadConnectionsDesc =>
      'ডাঙৰ ফাইল ভাগ কৰি কেইবাটাও অংশ একেলগে অনে। কিছুমান ছাৰ্ভাৰে ইয়াক সীমিত কৰে।';

  @override
  String get downloadPlayChoice => 'য’ৰ পৰা চলাব';

  @override
  String get downloadPlayLocalDesc => 'এই ডিভাইচত সংৰক্ষণ কৰা ফাইল';

  @override
  String get downloadPlayStream => 'অনলাইনত ষ্ট্ৰীম কৰা';

  @override
  String get downloadPlayStreamDesc => 'উৎসৰ পৰা পৰ্ব লোড কৰা';

  @override
  String get offlineFeedTitle => 'এই ডিভাইচত ডাউনলোড কৰা';

  @override
  String get offlineFeedEmpty =>
      'অনলাইনত থাকোঁতে কিবা ডাউনলোড কৰা, ইয়াত দেখা যাব';

  @override
  String get offlineEnabled => 'অফলাইন মোড চালু';

  @override
  String get offlineDisabled => 'অফলাইন মোড বন্ধ';

  @override
  String get downloadReadChoice => 'য’ৰ পৰা পঢ়িব';

  @override
  String get downloadReadLocalDesc => 'এই ডিভাইচত সংৰক্ষণ কৰা পৃষ্ঠা';

  @override
  String get downloadReadOnline => 'অনলাইনত পঢ়া';

  @override
  String get downloadReadOnlineDesc => 'উৎসৰ পৰা অধ্যায় লোড কৰা';

  @override
  String downloadDeleteConfirm(String name) {
    return 'এই ডিভাইচৰ পৰা $name মচিবা নে?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$nameৰ ডাউনলোড বাতিল কৰিবা নে? আগতেই যিমান ডাউনলোড হৈছে সেয়া মচা যাব।';
  }

  @override
  String get downloadFfmpegFolder => 'ফোল্ডাৰ হিচাপে ৰাখা';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'যিবোৰ $countটা পৰিবৰ্তন কেতিয়াও পঠোৱা হোৱা নাই সেয়া পেলাই দিবা নে? এইটো ঘূৰাব নোৱাৰি।',
      one: 'যিটো পৰিবৰ্তন কেতিয়াও পঠোৱা হোৱা নাই সেয়া পেলাই দিবা নে? এইটো ঘূৰাব নোৱাৰি।',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi-ৰ অপেক্ষাত';

  @override
  String get downloadWaitingMetered => 'মিটাৰড সংযোগত পজ কৰা';

  @override
  String get downloadWifiOnly => 'কেৱল Wi-Fi';

  @override
  String get downloadWifiOnlyDesc => 'ম’বাইল ডাটাত থাকিলে ডাউনলোড অপেক্ষা কৰিব';

  @override
  String get downloadMetered => 'মিটাৰড সংযোগত পজ কৰা';

  @override
  String get downloadMeteredDesc =>
      'তোমাৰ ডিভাইচে মিটাৰড বুলি ধৰা Wi-Fi-তো অপেক্ষা কৰিব';

  @override
  String get downloadSpeedLimit => 'গতিৰ সীমা';

  @override
  String get downloadSpeedLimitDesc => 'মুঠ ডাউনলোডৰ গতিৰ সীমা ঠিক কৰে';

  @override
  String get downloadUnlimited => 'সীমাহীন';

  @override
  String get downloadMoveToTop => 'একেবাৰে ওপৰলৈ নিয়া';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seedsটা চিড · $peersটা পিয়াৰ';
  }

  @override
  String get downloadTorrentFile => 'কোনটো ফাইল?';

  @override
  String get downloadTorrentAuto => 'পৰ্ব স্বয়ংক্ৰিয়ভাৱে মিলোৱা';

  @override
  String get downloadTorrentLoading => 'টৰেণ্ট পঢ়ি আছে…';

  @override
  String get watchAutoSource => 'পৰৱৰ্তী উৎসলৈ স্বয়ংক্ৰিয়ভাৱে যোৱা';

  @override
  String get watchAutoSourceDesc =>
      'উৎসে শিৰোনাম বিচাৰি নাপালে বা লোড নহ’লে, পৰৱৰ্তী ইনষ্টল কৰা উৎস চেষ্টা কৰা';

  @override
  String get extensionTest => 'এক্সটেনছন পৰীক্ষা কৰা';

  @override
  String get extensionTestCopy => 'বিফলবোৰ আৰু সিহঁতৰ লগ কপি কৰা';

  @override
  String get extensionTestQuery => 'সন্ধানৰ শব্দ';

  @override
  String get extensionTestRun => 'চলোৱা';

  @override
  String get extensionTestStop => 'ৰোকা';

  @override
  String get extensionTestNone => 'এই ধৰণৰ কোনো ইনষ্টল কৰা এক্সটেনছন নাই';

  @override
  String get extensionTestNotRun => 'এতিয়াও পৰীক্ষা কৰা হোৱা নাই';

  @override
  String get extensionTestSearch => 'সন্ধান';

  @override
  String get extensionTestDetail => 'বিৱৰণ';

  @override
  String get extensionTestUnits => 'পৰ্ব / অধ্যায়';

  @override
  String get extensionTestLinks => 'ষ্ট্ৰীম / পৃষ্ঠা';

  @override
  String extensionTestFailedAt(String step) {
    return '$stepত বিফল';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$totalৰ ভিতৰত $doneটা পৰীক্ষা হৈছে · $passedটা পাছ · $failedটা ফেইল';
  }

  @override
  String get extensionTestCopyLogs => 'সম্পূৰ্ণ লগৰ সৈতে সকলো কপি কৰা';

  @override
  String get onboardingFeaturesTitle => 'সকলো এঠাইতে';

  @override
  String get onboardingFeaturesBody =>
      'তুমি যি ট্ৰেক কৰা, চোৱা আৰু পঢ়া সকলো, এপ সলনি নকৰাকৈ।';

  @override
  String get onboardingFeatureTrack => 'সকলো ট্ৰেক কৰা';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu আৰু MangaBaka-ত তালিকা, প্ৰগ্ৰেছ আৰু স্ক’ৰ।';

  @override
  String get onboardingFeatureWatch => 'চোৱা আৰু পঢ়া';

  @override
  String get onboardingFeatureWatchDesc =>
      'এক্সটেনছন ইনষ্টল কৰি এপতে এনিমে ষ্ট্ৰীম কৰা বা মাংগা-উপন্যাস পঢ়া।';

  @override
  String get onboardingFeatureOffline => 'অফলাইনতো লগত লৈ ফুৰা';

  @override
  String get onboardingFeatureOfflineDesc =>
      'পৰ্ব আৰু অধ্যায় ডাউনলোড কৰা, ইণ্টাৰনেট নোহোৱাকৈয়ো আগবাঢ়ি যোৱা।';

  @override
  String get onboardingFeatureSync => 'তালিকা ছিংকত ৰাখা';

  @override
  String get onboardingFeatureSyncDesc =>
      'ছাৰ্ভিচবোৰৰ মাজত তালিকা মিলাই ৰাখা, নহ’লে যিটো আগবাঢ়ি আছে সেইটোৱেই জিকক।';

  @override
  String get onboardingServices => 'যিবোৰৰ লগত কাম কৰে';

  @override
  String sourceNotifyOn(String source) {
    return '$source ৰ নতুন কিবা এটা হ\'লে কোৱা হ\'ব';
  }

  @override
  String get sourceNotifyOff => 'জাননীসমূহ বন্ধ মুকলি কৰক';

  @override
  String get sourceNotifyNeedsSource => 'প্ৰথমে মিল থকা এটা উৎস বাছি লওক';

  @override
  String sourceNotifyAllOut(int count) {
    return 'সকলো ($count) ইতিমধ্যে ওলাই গৈছে, অপেক্ষা কৰিবলগীয়া একো নাই';
  }

  @override
  String get sourceNotifyTooltipOn => 'মুক্তিৰ জাননীসমূহ বন্ধ কৰক';

  @override
  String get sourceNotifyTooltipOff => 'নতুন মুক্তিৰ বিষয়ে মোক অৱগত কৰক';

  @override
  String sourceFoundEpisode(String number, String source) {
    return '$number খণ্ডটো $source ত ওলাইছে।';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return '$from–$to খণ্ডবোৰ $source ত ওলাইছে।';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'অধ্যায় $number $source ত ওলাইছে।';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'অধ্যায় $from–$to $source ত বাহিৰত আছে।';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count শিৰোনামবোৰত নতুন কিবা এটা আছে';
  }

  @override
  String get navSources => 'উৎসসমূহ';

  @override
  String sourceInactiveOpen(String manager) {
    return 'এই উৎস $manager ৰ অন্তৰ্গত, যি সক্ৰিয় সম্প্ৰসাৰণ সেৱা নহয়';
  }

  @override
  String get sourceAlertsHeader => 'জাননীসমূহ মুকলি কৰক';

  @override
  String get sourceAlertsSwitch => 'চাবস্ক্ৰাইব কৰা শিৰোনামসমূহ পৰীক্ষা কৰক';

  @override
  String get sourceAlertsSwitchDesc =>
      'প্ৰতিবাৰ এপটো খোলাৰ সময়ত এবাৰ, শিৰোনামৰ বাবে আপুনি বেলটো অন কৰিছিল';

  @override
  String get sourceSkipUnstarted => 'আপুনি আৰম্ভ নকৰা শিৰোনামবোৰ এৰি দিয়ক';

  @override
  String get sourceSkipUnstartedDesc =>
      'এতিয়াও একো চোৱা বা পঢ়া হোৱা নাই, কিন্তু ইতিমধ্যে খণ্ডবোৰ আছে';

  @override
  String get sourceSkipUnseen => 'আপোনাৰ অদৃশ্য খণ্ড থকাৰ সময়ত এৰি দিয়ক';

  @override
  String get sourceSkipUnseenDesc => 'আপুনি এতিয়াও ধৰিবলৈ খণ্ড মুকলি কৰিছে';

  @override
  String get sourceManage => 'চাবস্ক্ৰিপচন';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count শিৰোনাম',
      one: '১ টা শিৰোনাম',
      zero: 'কোনো শিৰোনাম নাই',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'এতিয়াই পৰীক্ষা কৰক';

  @override
  String get sourceCheckNowDesc => 'সূচী আৰু এৰি যোৱাৰ নিয়মসমূহ আওকাণ কৰে';

  @override
  String get sourceChecking => 'চেক কৰি আছে...';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count শিৰোনামবোৰত নতুন কিবা এটা আছে',
      one: '১ টা শিৰোনামত নতুন কিবা এটা আছে',
      zero: 'নতুন একো নাই',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'এতিয়াও কোনো চাবস্ক্ৰিপচন নাই';

  @override
  String get sourceEmptyMessage =>
      'নতুনৰ বিষয়ে ক’বলৈ এটা শিৰোনামৰ খণ্ডবোৰৰ ওপৰৰ ঘণ্টাটো টিপক';

  @override
  String get sourceAll => 'সকলো';

  @override
  String sourceInactive(String manager) {
    return 'নিষ্ক্ৰিয়: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source এই সম্প্ৰসাৰণ সেৱাত সংস্থাপন কৰা হোৱা নাই';
  }

  @override
  String get sourceUnreachable => 'উৎসই কোনো সঁহাৰি দিয়া নাই';

  @override
  String get sourceFinished => 'শেষ হ’ল';

  @override
  String get sourceSkippedCompleted => 'এৰি দিয়া হৈছে: সম্পূৰ্ণ কৰা হৈছে';

  @override
  String get sourceSkippedUnstarted => 'এৰি দিয়া হৈছে: আৰম্ভ হোৱা নাই';

  @override
  String get sourceSkippedUnseen => 'এৰি দিয়া হৈছে: অদৃশ্য খণ্ড';

  @override
  String get sourceWaiting => 'পৰৱৰ্তী মুক্তিৰ বাবে অপেক্ষা কৰি আছে';

  @override
  String sourceNextCheck(String when) {
    return 'পৰৱৰ্তী পৰীক্ষা কৰক $when';
  }

  @override
  String get sourceSoon => 'অতি সোনকালে';

  @override
  String sourceInHours(int count) {
    return '${count}h ত';
  }

  @override
  String sourceInDays(int count) {
    return '${count}d ত';
  }

  @override
  String sourceLatest(String number) {
    return 'শেহতীয়া: $number';
  }

  @override
  String get sourceMute => 'নিস্তব্ধ';

  @override
  String get sourceUnmute => 'আনমিউট কৰক';

  @override
  String get sourceMuted => 'নিস্তব্ধ কৰা হৈছে';

  @override
  String get sourceUnsubscribe => 'আনচাবস্ক্ৰাইব কৰক';

  @override
  String get sourcePickAnother => 'আন এটা উৎস বাছি লওক';

  @override
  String get sourceOpenExtensions => 'এক্সটেনচনসমূহ খোলক';

  @override
  String get sourceNoticesEmpty => 'এতিয়াও কোনো মুক্তিৰ জাননী নাই';

  @override
  String get sourceNoticesEmptyMessage =>
      'আপোনাৰ চাবস্ক্ৰাইব কৰা শিৰোনামৰ পৰা নতুন খণ্ড আৰু অধ্যায় ইয়াত দেখা যায়';

  @override
  String get sourceOpenTitle => 'মুকলি শিৰোনাম';

  @override
  String get extensionsLoading => 'লোডিং এক্সটেনচন...';

  @override
  String get updateWhatsNew => 'নতুন কি';

  @override
  String get updateLater => 'পিছত';

  @override
  String get updateSkipVersion => 'এই সংস্কৰণ এৰি দিয়ক';

  @override
  String get updatePreparing => 'প্ৰস্তুতি...';

  @override
  String get updateDownloading => 'ডাউনলোড কৰা হৈছে';

  @override
  String get updateInstalling => 'ইনস্টল...';

  @override
  String updateSizeOf(String done, String total) {
    return '$total ৰ $done';
  }

  @override
  String updateSpeed(String speed) {
    return '__পি০__/ছ';
  }

  @override
  String updateReleased(String date) {
    return 'মুকলি কৰা হৈছে $date';
  }

  @override
  String get updateNoAsset =>
      'এই উন্মোচনৰ আপোনাৰ ডিভাইচৰ বাবে কোনো ডাউনলোড নাই';

  @override
  String get updateUpToDate => 'আপুনি শেহতীয়া সংস্কৰণত আছে';

  @override
  String get updateIosHint =>
      'iOS বিল্ড এপ ষ্ট’ৰত নাই। উন্মোচন পৃষ্ঠাৰ পৰা .ipa ধৰি লওক আৰু ইয়াক AltStore বা SideStore ৰ সৈতে চাইডলোড কৰক';

  @override
  String get updateOpenedBrowser => 'আপোনাৰ ব্ৰাউজাৰ পৰীক্ষা কৰক';

  @override
  String get updateTryAgain => 'আকৌ এবাৰ চেষ্টা কৰক';

  @override
  String get settingsNotifications => 'জাননীসমূহ';

  @override
  String get settingsNotificationsDesc =>
      'আপোনাৰ তালিকা, নতুন খণ্ড আৰু অধ্যায়, আৰু মন্তব্যৰ উত্তৰৰ বাবে সতৰ্কবাণী';

  @override
  String get settingsAboutUpdates => 'সম্পৰ্কে & আপডেটসমূহ';

  @override
  String get settingsAboutUpdatesDesc =>
      'এপ আপডেট, সংস্কৰণ, লগ, লিংক আৰু সমৰ্থন';

  @override
  String get settingsGroupAccount => 'আপোনাৰ একাউণ্ট';

  @override
  String get settingsGroupContent => 'বিষয়বস্তু';

  @override
  String get settingsGroupApp => 'এপ';

  @override
  String get settingsAnimeDesc =>
      'খেলুৱৈ, উপশিৰোনামা, এৰি দিয়া, খণ্ডৰ তালিকা আৰু খণ্ডৰ বিৱৰণ';

  @override
  String get settingsMangaDesc =>
      'ৰিডাৰ মোড, নিয়ন্ত্ৰণ, প্ৰদৰ্শন আৰু অধ্যায় অনুসৰণ';

  @override
  String get settingsNovelDesc =>
      'পাঠ, পৃষ্ঠা ঘূৰোৱা, অনুবাদ আৰু উচ্চস্বৰে পঢ়া';

  @override
  String get settingsLocalPlay => 'স্থানীয় নাটক';

  @override
  String get settingsLocalPlayDesc =>
      'ফাইলসমূহ, ফোল্ডাৰসমূহ, নেটৱৰ্ক ষ্ট্ৰিমসমূহ আৰু টৰেণ্টসমূহ খেলক, বা এটা কিতাপ খোলক';

  @override
  String get settingsLocalPlayVideo => 'ভিডিঅ\'';

  @override
  String get settingsLocalPlayBooks => 'কিতাপ';

  @override
  String get settingsWatchSections => 'ধাৰাসমূহ';

  @override
  String get settingsSectionLists => 'খণ্ড আৰু অধ্যায়ৰ তালিকা';

  @override
  String get settingsSectionProgress => 'অগ্ৰগতি অনুসৰণ কৰা';

  @override
  String get updateChannelDesc =>
      'সুস্থিৰ হৈছে পৰীক্ষা কৰা মুক্তি। প্ৰি-ৰিলিজ আৰু আলফাই নতুন বৈশিষ্ট্য সোনকালে পায় কিন্তু ভাঙিব পাৰে';

  @override
  String get checkNowDesc => 'লগে লগে নতুন সংস্কৰণ বিচাৰিব';

  @override
  String get generalSectionBasics => 'ভাষা আৰু আচৰণ';

  @override
  String get generalSectionSecurity => 'নিৰাপত্তা';

  @override
  String get generalSectionPrivacy => 'গোপনীয়তা';

  @override
  String notificationsOtherService(String service) {
    return 'এইটো খোলিবলৈ $service লৈ সলনি কৰক';
  }

  @override
  String get secPlayerPlayback =>
      'ডিফল্ট গতি, অটো প্লে, ভিডিঅ\' ফিট, অৰিয়েণ্টেচন আৰু ছবিত ছবি';

  @override
  String get secPlayerSkip =>
      'খোলা, অন্ত আৰু পুনৰাবৃত্তি স্বয়ংক্ৰিয়ভাৱে এৰি দিয়ক';

  @override
  String get secPlayerControls =>
      'ইংগিতসমূহ চুইপ, ধৰি ৰাখক আৰু টেপ কৰক আৰু পূৰ্বদৰ্শন বিচাৰক';

  @override
  String get secPlayerSubtitles => 'ভাষা, ৰূপ আৰু উপশিৰোনামা ৰেণ্ডাৰ';

  @override
  String get secPlayerShaders => 'এনিমে আপস্কেলিং আৰু আপোনাৰ নিজৰ শ্বেডাৰ';

  @override
  String get secPlayerEngine =>
      'ডিকোডাৰ, ভিডিঅ\' আৰু অডিঅ\' আউটপুট, বাফাৰিং। প্লেবেকত সমস্যা হ\'লেহে এইবোৰ সলনি কৰক';

  @override
  String get secPlayerMpv => 'mpv.conf, স্ক্ৰিপ্ট আৰু উন্নত টিউনিং';

  @override
  String get secAnimeList => 'ফিলাৰ এপিচ’ড আৰু চোৱা নোহোৱা থাম্বনেইল';

  @override
  String get secProgress =>
      'যেতিয়া আপোনাৰ চোৱা বা পঢ়া অগ্ৰগতি আপোনাৰ তালিকাত সংৰক্ষণ কৰা হয়';

  @override
  String get secAnimeDetails =>
      'ক\'ৰ পৰা খণ্ডৰ শিৰোনাম, থাম্বনেইল আৰু সাৰাংশ আহিছে';

  @override
  String get secReaderReading =>
      'পঢ়া ধৰণ, পৃষ্ঠা ঘূৰোৱা, জুম আৰু পৰৱৰ্তী অধ্যায়';

  @override
  String get secReaderControls =>
      'জ\'নসমূহ, ভলিউম কিসমূহ আৰু স্বয়ংক্ৰিয় স্ক্ৰল টেপ কৰক';

  @override
  String get secReaderDisplay =>
      'পটভূমি, উজ্জ্বলতা, সম্পূৰ্ণ পৰ্দা আৰু পৃষ্ঠা নম্বৰ';

  @override
  String get secNovelText => 'ফন্ট, আকাৰ, ব্যৱধান, প্ৰান্ত আৰু পৃষ্ঠা ঘূৰোৱা';

  @override
  String get secNovelTranslate => 'পঢ়ি থকাৰ সময়ত অধ্যায়বোৰ অনুবাদ কৰক';

  @override
  String get secNovelSpeech => 'উচ্চস্বৰে পঢ়াৰ বাবে কণ্ঠ, গতি আৰু পিচ';

  @override
  String get secNotifyAbout =>
      'কোন ধৰণৰ কাৰ্য্যকলাপে সতৰ্কবাণী প্ৰেৰণ কৰে বাছি লওক';

  @override
  String get layoutTitle => 'বিন্যাস';

  @override
  String get layoutDesc => 'বাৰসমূহত বুটামসমূহ বাছক, স্থানান্তৰ আৰু লুকুৱাওক';

  @override
  String get layoutHint =>
      'এটা বুটাম টানি আনি ইয়াক লৰচৰ কৰক (প্ৰথমে এটা টাচ্চ পৰ্দাত ধৰি ৰাখক)। কাটিবলৈ, লৰচৰ কৰিবলৈ বা লুকুৱাবলৈ এটা টিপক';

  @override
  String layoutDropInto(String zone) {
    return 'ড্ৰপ ইন: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'স্থানান্তৰিত হৈছে $name। ইয়াক ৰাখিবলৈ এটা পেষ্ট বুটাম টিপক';
  }

  @override
  String get layoutTitleFixed => 'শিৰোনাম';

  @override
  String get layoutZoneTopStart => 'শীৰ্ষ বাৰ, শিৰোনামৰ আগত';

  @override
  String get layoutZoneTopEnd => 'শীৰ্ষ বাৰ, শিৰোনামৰ পিছত';

  @override
  String get layoutZoneBottomStart => 'তলৰ বাৰ, বাওঁফালে';

  @override
  String get layoutZoneBottomEnd => 'তলৰ বাৰ, সোঁফালে';

  @override
  String get layoutZoneSecondRow => 'লুকাই আছে: সাধাৰণ দৃশ্যত দ্বিতীয় শাৰী';

  @override
  String get layoutZoneOverflow => 'লুকাই আছে: অধিক মেনুত';

  @override
  String get layoutEmptyZone => 'ইয়াত বুটাম ড্ৰপ কৰক';

  @override
  String get layoutCut => 'কাটি পেলাওক';

  @override
  String get layoutPaste => 'ইয়াত পেষ্ট কৰক';

  @override
  String get layoutHide => 'লুকুৱাই ৰাখক';

  @override
  String layoutMoveTo(String zone) {
    return '$zone লৈ যাওক।';
  }

  @override
  String get layoutReset => 'অবিকল্পিতলৈ পুনৰায় সেট কৰক';

  @override
  String get layoutMore => 'অধিক';

  @override
  String get sourceWhyAction => 'কিয় কোনো সতৰ্কবাণী নাই?';

  @override
  String get sourceWhyStatus => 'অৱস্থা';

  @override
  String get sourceWhyLastCheck => 'শেষবাৰৰ বাবে পৰীক্ষা কৰা হৈছে';

  @override
  String get sourceWhyNever => 'এতিয়াও নহয়';

  @override
  String get sourceWhyNextCheck => 'পৰৱৰ্তী পৰীক্ষা কৰক';

  @override
  String get sourceWhyNewest => 'উৎসত নতুন';

  @override
  String get sourceWhyProgress => 'আপোনাৰ অগ্ৰগতি';

  @override
  String get sourceWhyListStatus => 'তালিকাৰ অৱস্থা';

  @override
  String get sourceWhyFailures => 'একেৰাহে বিফল পৰীক্ষাসমূহ';

  @override
  String get sourceWhyLastRelease => 'শেষৰটো নতুন মুক্তি দেখা গৈছে';

  @override
  String get sourceWhyVerdictNew =>
      'উৎসে ইয়াক তালিকাভুক্ত কৰাৰ লগে লগে আৰু পৰৱৰ্তী পৰীক্ষা চলি থকাৰ লগে লগে ইয়াত এটা নতুন উন্মোচন ওলায় ।';

  @override
  String get sourceWhyVerdictAhead =>
      'ইতিমধ্যে উৎসটো আপোনাৰ অগ্ৰগতিৰ আগত আছে, গতিকে আপোনাক এবাৰ এই বিষয়ে কোৱা হৈছিল। পৰৱৰ্তী সতৰ্কবাণী পাবলৈ ইয়াক পঢ়ক বা চোৱাচিতা কৰক।';

  @override
  String get sourceWhyVerdictSkipped =>
      'এই শিৰোনামটো ওপৰৰ নিয়মৰ দ্বাৰা এৰি দিয়া হৈছে। অধিসূচনা সংহতিসমূহত সিহতক সলনি কৰক, বা যিকোনো প্ৰকাৰে চলাবলৈ এতিয়া পৰীক্ষা কৰক ব্যৱহাৰ কৰক।';

  @override
  String get sourceWhyVerdictBroken =>
      'উৎস পোৱা নাই বা আঁতৰোৱা হৈছে, গতিকে একো পৰীক্ষা কৰা হোৱা নাই।';

  @override
  String get sourceWhyVerdictMuted => 'এই চাবস্ক্ৰিপচন নিস্তব্ধ কৰা হৈছে।';

  @override
  String get externalPlayerTitle => 'আন ঠাইত মুকলি ধাৰা';

  @override
  String get externalCopyUrl => 'ষ্ট্ৰিম লিংক কপি কৰক';

  @override
  String get externalCopied => 'ষ্ট্ৰীম লিংক কপি কৰা হৈছে';

  @override
  String get externalChooser => 'আন এটা এপত খোলক';

  @override
  String get externalVlc => 'VLC ত খোলা';

  @override
  String get externalMpv => 'mpv ত খোলা';

  @override
  String get externalWebVideoCast => 'ৱেব ভিডিঅ\' কাষ্ট';

  @override
  String get castViaAppHint => 'ৱেব ভিডিঅ’ কাষ্ট এপলৈ ষ্ট্ৰিমটো পঠাওক';

  @override
  String get externalFailed =>
      'ধাৰাটো খুলিব পৰা নাছিল। প্লেয়াৰটো ইনষ্টল কৰা হৈছে নেকি?';

  @override
  String get addonInstalled => 'সংস্থাপন কৰা হৈছে';

  @override
  String get loadFailedActivity => 'কাৰ্য্যকলাপ লোড কৰিব পৰা নগ\'ল';

  @override
  String get loadFailedFavourites =>
      'প্ৰিয় লোড কৰিব পৰা নগ\'ল। পুনৰ চেষ্টা কৰক';

  @override
  String get loadFailedStats => 'পৰিসংখ্যা লোড কৰিব পৰা নগ\'ল';

  @override
  String get loadFailedReplies => 'উত্তৰ লোড কৰিব পৰা নগ\'ল';

  @override
  String get cantBeUndone => 'এইটো বাতিল কৰিব নোৱাৰি।';

  @override
  String get searchTags => 'টেগ সন্ধান কৰক';

  @override
  String get spoilerTapToView => 'স্পয়লাৰ, চাবলৈ টেপ কৰক';

  @override
  String get mediaVideo => 'ভিডিঅ\'';

  @override
  String get notificationSomeone => 'কোনোবা এজন';

  @override
  String get notificationATitle => 'এটা শিৰোনাম';

  @override
  String get notificationAddedDetail => 'AniList ত যোগ কৰা হৈছিল';

  @override
  String get updateNoReleases => 'কোনো মুক্তি পোৱা নগ\'ল';

  @override
  String get updateInvalidResponse => 'অবৈধ আপডেইট সঁহাৰি';

  @override
  String get commentsRateLimited => 'হাৰ সীমিত';

  @override
  String get commentsConnectFailed => 'সংযোগ কৰাত ব্যৰ্থ';

  @override
  String get dnsNoRecords => 'কোনো A ৰেকৰ্ড ঘূৰাই দিয়া হোৱা নাই';

  @override
  String get importTokenRejected => 'টোকেন নাকচ কৰিলে';

  @override
  String get developerRoleLead => 'লিড ডেভেলপাৰ';

  @override
  String get developerRoleModerator => 'ডিচকৰ্ড মডাৰেটৰ';

  @override
  String extensionManagerTitle(String type) {
    return '$type পৰিচালক';
  }

  @override
  String extensionsOfType(String type) {
    return '$type সম্প্ৰসাৰণসমূহ';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name ছেটিংছ';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name এ কোনো ছেটিংছ প্ৰদান নকৰে।';
  }

  @override
  String notificationAired(String episode, String title) {
    return '$title ৰ খণ্ড $episode সম্প্ৰচাৰিত';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'খণ্ড $episode সম্প্ৰচাৰিত';
  }

  @override
  String notificationAdded(String title) {
    return '$title AniList ত যোগ কৰা হৈছিল';
  }

  @override
  String updateNotFound(String message) {
    return 'আপডেইট চাৰ্ভাৰে সেই উন্মোচন বিচাৰি নাপালে: $message';
  }

  @override
  String get installStepJre => 'জাভা চলনসময়';

  @override
  String get installStepCore => 'ৰানটাইম কোৰ';

  @override
  String installStepsProgress(int current, int total) {
    return '$total ৰ স্তৰ $current';
  }

  @override
  String get stepWaiting => 'অপেক্ষা কৰি আছে';

  @override
  String get stepChecking => 'চেক কৰি আছে...';

  @override
  String get stepUpToDate => 'আপ টু ডেট';

  @override
  String stepUpToDateWith(String detail) {
    return 'শেহতীয়াকৈ · $detail';
  }

  @override
  String get stepWillInstall => 'ইনষ্টল কৰা হ’ব';

  @override
  String get stepWillUpdate => 'আপডেট কৰা হ\'ব';

  @override
  String stepWillUpdateTo(String version) {
    return '$version লৈ আপডেট কৰা হ\'ব।';
  }

  @override
  String get stepInstalled => 'সংস্থাপন কৰা হৈছে';

  @override
  String get stepNotNeeded => 'ইয়াত প্ৰয়োজন নাই';

  @override
  String get stepFailed => 'বিফল হ\'ল';

  @override
  String stepFailedWith(String reason) {
    return 'ব্যৰ্থ: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'ই জাভা চলনসময় আৰু অংশীদাৰী চলনসময় কোৰত চলে। সিহতক প্ৰথমে ইনষ্টল কৰা হয়, আৰু সলনি হ\'লে আপডেট কৰা হয়।';

  @override
  String get installRuntimeNewer =>
      'এই ব্যৱস্থাপকে চলোৱা চলনসময়ৰ এটা আপডেইট আছে।';

  @override
  String get removeJvmTitle => 'জাভা চলনসময় আঁতৰাবনে?';

  @override
  String get removeJvmMessage =>
      'ডেস্কটপ সম্প্ৰসাৰণ ব্যৱস্থাপকসমূহে ইয়াক পুনৰ সংস্থাপন নকৰালৈকে কাম কৰা বন্ধ কৰে। পৰৱৰ্তী সময়ত আপুনি এটা ইনষ্টল বা খোলাৰ সময়ত ইয়াক পুনৰ ডাউনলোড কৰা হয়।';

  @override
  String get runtimePreparing => 'ৰানটাইম প্ৰস্তুত কৰা হৈছে...';

  @override
  String get calendarAll => 'সকলো';

  @override
  String get calendarAnime => 'এনিমে';

  @override
  String get calendarManga => 'মাংগা';

  @override
  String get readerCloudflare => 'ব্ৰাউজাৰত খোলক (ক্লাউডফ্লেয়াৰ পৰীক্ষা)';

  @override
  String get badgeBoardHint =>
      'প্ৰথম কাৰ্ডৰ এটা চুকত এটা বেজ টানিব, বা ইয়াক লৰচৰ কৰিবলৈ ইতিমধ্যে ইয়াত থকা এটা বেজ টানিব। বেজে ঠাই সলনি কৰে, গতিকে কোনোটোৱেই কেতিয়াও ওভাৰলেপ নহয়। ইয়াক অন বা অফ কৰিবলৈ তলৰ এটা বেজ টেপ কৰক।';

  @override
  String get statusAuto => 'অটো';

  @override
  String get unreadCounter => 'অপৰিড কাউণ্টাৰ';

  @override
  String get unreadCounterDesc =>
      'পোষ্টাৰত কিমান খণ্ড বা অধ্যায় বাকী আছে দেখুৱাওক';

  @override
  String get settingsShortcuts => 'কিবৰ্ড চৰ্টকাটসমূহ';

  @override
  String get settingsShortcutsDesc => 'প্ৰতিটো কি চাওক, সলনি কৰক আৰু বন্ধ কৰক';

  @override
  String get shortcutGroupApp => 'এপ';

  @override
  String get shortcutGroupPlayer => 'ভিডিঅ\' প্লেয়াৰ';

  @override
  String get shortcutGroupReader => 'পাঠক';

  @override
  String get shortcutsEnableApp => 'এপ চৰ্টকাট';

  @override
  String get shortcutsEnablePlayer => 'খেলুৱৈৰ চৰ্টকাট';

  @override
  String get shortcutsEnableReader => 'পাঠকৰ চৰ্টকাট';

  @override
  String get shortcutsEnableDesc => 'এই গোটৰ প্ৰতিটো চাবি অন বা অফ কৰক';

  @override
  String get shortcutNotSet => 'ছেট কৰা হোৱা নাই';

  @override
  String get shortcutAddKey => 'এটা চাবি যোগ কৰক';

  @override
  String get shortcutResetOne => 'অবিকল্পিতলৈ পুনৰায় সেট কৰক';

  @override
  String get shortcutClearKeys => 'সকলো কি\' আঁতৰাওক';

  @override
  String get shortcutResetAll => 'সকলো চৰ্টকাট পুনৰায় সেট কৰক';

  @override
  String get shortcutResetAllDesc =>
      'প্ৰতিটো কি\'ক ইয়াৰ অবিকল্পিতলৈ ঘূৰাই দিয়ক';

  @override
  String get shortcutPress => 'আপুনি বিচৰা কি\' বা সংমিশ্ৰণ টিপক';

  @override
  String get shortcutPressHint =>
      'প্ৰতিটো সংমিশ্ৰণ মাত্ৰ এটা ক্ৰিয়াৰ অন্তৰ্গত হ’ব পাৰে, গতিকে এটা লোৱাটোৱে ইয়াক লৰচৰ কৰে।';

  @override
  String get shortcutSeekPercent => 'ভিডিঅ\'টোৰ এটা বিন্দুলৈ জপিয়াই যাওক';

  @override
  String get shortcutSeekPercentKeys => '০ – ৯';

  @override
  String get shortcutAppBack => 'উভতি যাওক';

  @override
  String get shortcutAppFullscreen => 'সম্পূৰ্ণ পৰ্দা টগল কৰক';

  @override
  String get shortcutAppGlass => 'গ্লাছ মোড টগল কৰক';

  @override
  String get shortcutAppMaterialYou => 'আপুনি সামগ্ৰী টগল কৰক';

  @override
  String get shortcutAppDark => 'ডাৰ্ক মোড টগল কৰক';

  @override
  String get shortcutAppOled => 'OLED ক\'লা টগল কৰক';

  @override
  String get shortcutAppSearch => 'সন্ধান খোলক';

  @override
  String get shortcutAppSettings => 'ছেটিংছ খোলক';

  @override
  String get shortcutAppDownloads => 'ডাউনলোডসমূহ খোলক';

  @override
  String get shortcutAppNotifications => 'জাননীসমূহ খোলক';

  @override
  String get shortcutAppIncognito => 'গোপনীয় টগল কৰক';

  @override
  String get shortcutAppShortcuts => 'কিবৰ্ড চৰ্টকাটসমূহ দেখুৱাওক';

  @override
  String get shortcutPlayerPlayPause => 'খেলক বা থমকি ৰওক';

  @override
  String get shortcutPlayerSeekForward => 'আগলৈ বিচাৰক';

  @override
  String get shortcutPlayerSeekBack => 'পিছলৈ বিচাৰি উলিয়াওক';

  @override
  String get shortcutPlayerSeekForwardLong => '৩০ ছেকেণ্ড আগলৈ বিচাৰিব';

  @override
  String get shortcutPlayerSeekBackLong => '৩০ ছেকেণ্ড পিছলৈ বিচাৰিব';

  @override
  String get shortcutPlayerFrameForward => 'পৰৱৰ্তী ফ্ৰেম';

  @override
  String get shortcutPlayerFrameBack => 'পূৰ্বৰ ফ্ৰেম';

  @override
  String get shortcutPlayerVolumeUp => 'ভলিউম আপ';

  @override
  String get shortcutPlayerVolumeDown => 'ভলিউম ডাউন';

  @override
  String get shortcutPlayerMute => 'নিস্তব্ধ';

  @override
  String get shortcutPlayerFullscreen => 'সম্পূৰ্ণ পৰ্দা';

  @override
  String get shortcutPlayerNext => 'পৰৱৰ্তী খণ্ড';

  @override
  String get shortcutPlayerPrevious => 'পূৰ্বৰ খণ্ড';

  @override
  String get shortcutPlayerSkip => 'intro বা ending এৰি যাওক';

  @override
  String get shortcutPlayerPanel => 'খণ্ডৰ তালিকা';

  @override
  String get shortcutPlayerSpeedUp => 'দ্ৰুত প্লেবেক';

  @override
  String get shortcutPlayerSpeedDown => 'লেহেমীয়া প্লেবেক';

  @override
  String get shortcutPlayerSpeedReset => 'স্বাভাৱিক গতি';

  @override
  String get shortcutPlayerSubtitleToggle => 'উপশিৰোনামা অন বা অফ';

  @override
  String get shortcutPlayerSubtitleCycle => 'পৰৱৰ্তী উপশিৰোনামা ট্ৰেক';

  @override
  String get shortcutPlayerAudioCycle => 'পৰৱৰ্তী অডিঅ\' ট্ৰেক';

  @override
  String get shortcutPlayerStreamCycle => 'পৰৱৰ্তী ধাৰা';

  @override
  String get shortcutPlayerFit => 'ভিডিঅ\' ফিট সলনি কৰক';

  @override
  String get shortcutReaderRight => 'সোঁফালে পৃষ্ঠা';

  @override
  String get shortcutReaderLeft => 'বাওঁফালে পৃষ্ঠা';

  @override
  String get shortcutReaderNextPage => 'পৰৱৰ্তী পৃষ্ঠা';

  @override
  String get shortcutReaderPreviousPage => 'পূৰ্বৰ পৃষ্ঠা';

  @override
  String get shortcutReaderControls => 'নিয়ন্ত্ৰণসমূহ দেখুৱাওক বা লুকুৱাওক';

  @override
  String get shortcutReaderNextChapter => 'পৰৱৰ্তী অধ্যায়';

  @override
  String get shortcutReaderPreviousChapter => 'পূৰ্বৰ অধ্যায়';

  @override
  String shortcutTaken(String action) {
    return '$action ৰ পৰা লোৱা হৈছে।';
  }

  @override
  String get incognitoTurnedOn => 'ইনকগনিটো মোড অন';

  @override
  String get incognitoTurnedOff => 'ইনকগনিটো মোড বন্ধ';

  @override
  String get onHoldAnime => 'অন হোল্ড এনিমে';

  @override
  String get onHoldManga => 'অন হোল্ড মাংগা';

  @override
  String get droppedAnime => 'ড্ৰপ কৰা এনিমে';

  @override
  String get droppedManga => 'ড্ৰপ কৰা মাংগা';

  @override
  String get generalSectionDesktop => 'ডেস্কটপ';

  @override
  String get closeAction => 'যেতিয়া খিৰিকীখন বন্ধ হৈ থাকে';

  @override
  String get closeActionQuit => 'এপটো এৰি দিয়ক';

  @override
  String get closeActionWhenBusy => 'কিবা এটা চলি থকাৰ সময়ত ট্ৰেত চলি থাকিব';

  @override
  String get closeActionAlways => 'সদায় ট্ৰেত চলি থাকিব';

  @override
  String get closeActionNoTray =>
      'ইয়াত চিষ্টেম ট্ৰে উপলব্ধ নহয়, গতিকে বন্ধ হ’লে এপটো বন্ধ হৈ যায়';

  @override
  String get gamepadNav => 'গেমপেড নেভিগেচন';

  @override
  String get gamepadNavDesc =>
      'এপটোৰ চাৰিওফালে ঘূৰি ফুৰক আৰু গেম কন্ট্ৰ’লাৰৰ সহায়ত খেলুৱৈক নিয়ন্ত্ৰণ কৰক';

  @override
  String get trayShow => 'Dartotsu দেখুৱাওক';

  @override
  String get trayQuit => 'বাদ দিয়ক';

  @override
  String get trayIdle => 'একো চলি থকা নাই';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count বস্তু ডাউনলোড কৰা',
      one: '$count বস্তু ডাউনলোড কৰা হৈছে',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'আপোনাৰ তালিকাসমূহ সমন্বয় কৰা';

  @override
  String get trayUpdating => 'এপটো আপডেট কৰা';

  @override
  String get trayPlaying => 'সৰু খিৰিকী এখনত খেলি থকা';

  @override
  String get traySearch => 'সন্ধান কৰক';

  @override
  String get trayPauseDownloads => 'ডাউনলোডসমূহ স্থগিত ৰাখক';

  @override
  String get trayResumeDownloads => 'ডাউনলোডসমূহ পুনৰ আৰম্ভ কৰক';

  @override
  String get playerDownloadTitle => 'প্লেয়াৰ ডাউনলোড কৰা হৈছে';

  @override
  String get playerDownloadBody =>
      'ডাৰ্টটছুৱে এবাৰ নিজৰ ভিডিঅ’ ইঞ্জিন আনে। প্লেবেক ৰেডি হোৱাৰ লগে লগে আৰম্ভ হয়।';

  @override
  String get playerDownloadStarting => 'ডাউনলোড আৰম্ভ...';

  @override
  String get playerDownloadFailedTitle => 'খেলুৱৈজনক পাব পৰা নাছিল';

  @override
  String get playerDownloadFailedBody =>
      'আপোনাৰ সংযোগ পৰীক্ষা কৰক আৰু পুনৰ চেষ্টা কৰক। ডাউনলোডটো য’ত ৰৈছিল তাতেই উঠি যায়।';

  @override
  String get playerDownloadRetry => 'আকৌ এবাৰ চেষ্টা কৰক';

  @override
  String get playerDownloadCopy => 'বিৱৰণ কপি কৰক';

  @override
  String get removePlayerTitle => 'খেলুৱৈক আঁতৰাই পেলাব?';

  @override
  String get removePlayerMessage =>
      'প্লেয়াৰটো পুনৰ ডাউনলোড নোহোৱালৈকে ভিডিঅ’বোৰ চলিব নোৱাৰিব।';

  @override
  String get trailerLoading => 'ট্ৰেইলাৰ লোড কৰা হৈছে...';

  @override
  String get trailerFailed =>
      'ইয়াত ট্ৰেইলাৰটো বজাব পৰা নগ’ল, ব্ৰাউজাৰত খুলিলে';
}
