import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sa.dart';
import 'app_localizations_si.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('am'),
    Locale('ar'),
    Locale('as'),
    Locale('bn'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('es'),
    Locale('fa'),
    Locale('fil'),
    Locale('fr'),
    Locale('ha'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('kn'),
    Locale('ko'),
    Locale('ml'),
    Locale('mr'),
    Locale('ms'),
    Locale('ne'),
    Locale('nl'),
    Locale('or'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('sa'),
    Locale('si'),
    Locale('so'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Dartotsu'**
  String get appName;

  /// No description provided for @appTagline.
  ///
  /// In en, this message translates to:
  /// **'The NEW Best App For\nTracking Anime & Manga'**
  String get appTagline;

  /// No description provided for @anilist.
  ///
  /// In en, this message translates to:
  /// **'AniList'**
  String get anilist;

  /// No description provided for @mal.
  ///
  /// In en, this message translates to:
  /// **'MyAnimeList'**
  String get mal;

  /// No description provided for @simkl.
  ///
  /// In en, this message translates to:
  /// **'Simkl'**
  String get simkl;

  /// No description provided for @discord.
  ///
  /// In en, this message translates to:
  /// **'Discord'**
  String get discord;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @continueAsGuest.
  ///
  /// In en, this message translates to:
  /// **'Continue as guest'**
  String get continueAsGuest;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @loginWithToken.
  ///
  /// In en, this message translates to:
  /// **'Login with token'**
  String get loginWithToken;

  /// No description provided for @pasteTokenHint.
  ///
  /// In en, this message translates to:
  /// **'Paste your access token'**
  String get pasteTokenHint;

  /// No description provided for @loginTo.
  ///
  /// In en, this message translates to:
  /// **'Login to {service}'**
  String loginTo(String service);

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @animationSpeed.
  ///
  /// In en, this message translates to:
  /// **'Animations'**
  String get animationSpeed;

  /// No description provided for @animationSpeedDesc.
  ///
  /// In en, this message translates to:
  /// **'Speed of transitions and entrance effects across the app'**
  String get animationSpeedDesc;

  /// No description provided for @animationSpeedOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get animationSpeedOff;

  /// No description provided for @extension.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1 {Extension} other {Extensions}}'**
  String extension(int count);

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @test.
  ///
  /// In en, this message translates to:
  /// **'Test'**
  String get test;

  /// No description provided for @testing.
  ///
  /// In en, this message translates to:
  /// **'Testing…'**
  String get testing;

  /// No description provided for @resolving.
  ///
  /// In en, this message translates to:
  /// **'Resolving…'**
  String get resolving;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// No description provided for @selectMediaService.
  ///
  /// In en, this message translates to:
  /// **'Select Media Service'**
  String get selectMediaService;

  /// No description provided for @pickColor.
  ///
  /// In en, this message translates to:
  /// **'Pick a color'**
  String get pickColor;

  /// No description provided for @colorPickerDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get colorPickerDefault;

  /// No description provided for @colorPickerCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get colorPickerCustom;

  /// No description provided for @utd.
  ///
  /// In en, this message translates to:
  /// **'Up To Down'**
  String get utd;

  /// No description provided for @dtu.
  ///
  /// In en, this message translates to:
  /// **'Down To Up'**
  String get dtu;

  /// No description provided for @rtl.
  ///
  /// In en, this message translates to:
  /// **'Right To Left'**
  String get rtl;

  /// No description provided for @ltr.
  ///
  /// In en, this message translates to:
  /// **'Left To Right'**
  String get ltr;

  /// No description provided for @searchSettings.
  ///
  /// In en, this message translates to:
  /// **'Search settings'**
  String get searchSettings;

  /// No description provided for @nothingMatches.
  ///
  /// In en, this message translates to:
  /// **'Nothing matches \"{query}\"'**
  String nothingMatches(String query);

  /// No description provided for @searchCategory.
  ///
  /// In en, this message translates to:
  /// **'Search {category}'**
  String searchCategory(String category);

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// No description provided for @settingsAppearanceDesc.
  ///
  /// In en, this message translates to:
  /// **'Theme, colours, glass mode'**
  String get settingsAppearanceDesc;

  /// No description provided for @settingsGeneral.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get settingsGeneral;

  /// No description provided for @settingsGeneralDesc.
  ///
  /// In en, this message translates to:
  /// **'Language and behaviour'**
  String get settingsGeneralDesc;

  /// No description provided for @settingsAccountDesc.
  ///
  /// In en, this message translates to:
  /// **'Tracking service and sign-in'**
  String get settingsAccountDesc;

  /// No description provided for @settingsUpdates.
  ///
  /// In en, this message translates to:
  /// **'Updates'**
  String get settingsUpdates;

  /// No description provided for @settingsUpdatesDesc.
  ///
  /// In en, this message translates to:
  /// **'Release channel and checks'**
  String get settingsUpdatesDesc;

  /// No description provided for @settingsNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get settingsNetwork;

  /// No description provided for @settingsNetworkDesc.
  ///
  /// In en, this message translates to:
  /// **'User-Agent, DNS, proxy, cookies'**
  String get settingsNetworkDesc;

  /// No description provided for @settingsAboutDesc.
  ///
  /// In en, this message translates to:
  /// **'Version, links, support'**
  String get settingsAboutDesc;

  /// No description provided for @amoledBlack.
  ///
  /// In en, this message translates to:
  /// **'AMOLED black'**
  String get amoledBlack;

  /// No description provided for @amoledBlackDesc.
  ///
  /// In en, this message translates to:
  /// **'Pure black surfaces on dark mode'**
  String get amoledBlackDesc;

  /// No description provided for @glassMode.
  ///
  /// In en, this message translates to:
  /// **'Glass mode'**
  String get glassMode;

  /// No description provided for @glassModeDesc.
  ///
  /// In en, this message translates to:
  /// **'Frosted surfaces over your library art'**
  String get glassModeDesc;

  /// No description provided for @cardStyle.
  ///
  /// In en, this message translates to:
  /// **'Card style'**
  String get cardStyle;

  /// No description provided for @cardStyleDesc.
  ///
  /// In en, this message translates to:
  /// **'Title placement, size, progress and badges'**
  String get cardStyleDesc;

  /// No description provided for @customFont.
  ///
  /// In en, this message translates to:
  /// **'Font'**
  String get customFont;

  /// No description provided for @customFontDesc.
  ///
  /// In en, this message translates to:
  /// **'Default, a file from your device, or Google Fonts'**
  String get customFontDesc;

  /// No description provided for @customFontError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load that font file'**
  String get customFontError;

  /// No description provided for @googleFontError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t download that font'**
  String get googleFontError;

  /// No description provided for @yourFonts.
  ///
  /// In en, this message translates to:
  /// **'Your fonts'**
  String get yourFonts;

  /// No description provided for @addFontFile.
  ///
  /// In en, this message translates to:
  /// **'Add font file…'**
  String get addFontFile;

  /// No description provided for @browseGoogleFonts.
  ///
  /// In en, this message translates to:
  /// **'Browse Google Fonts…'**
  String get browseGoogleFonts;

  /// No description provided for @searchGoogleFonts.
  ///
  /// In en, this message translates to:
  /// **'Search Google Fonts'**
  String get searchGoogleFonts;

  /// No description provided for @defaultFont.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultFont;

  /// No description provided for @materialYou.
  ///
  /// In en, this message translates to:
  /// **'Material You'**
  String get materialYou;

  /// No description provided for @materialYouDesc.
  ///
  /// In en, this message translates to:
  /// **'Dynamic colour from the system'**
  String get materialYouDesc;

  /// No description provided for @customAccent.
  ///
  /// In en, this message translates to:
  /// **'Custom accent colour'**
  String get customAccent;

  /// No description provided for @customAccentDesc.
  ///
  /// In en, this message translates to:
  /// **'Pick your own primary colour'**
  String get customAccentDesc;

  /// No description provided for @jsonTheme.
  ///
  /// In en, this message translates to:
  /// **'Custom theme file'**
  String get jsonTheme;

  /// No description provided for @jsonThemeDesc.
  ///
  /// In en, this message translates to:
  /// **'Live colours from ~/.config/dartotsu/theme.json (a custom script, or your own edits)'**
  String get jsonThemeDesc;

  /// No description provided for @customAccentDisabledDesc.
  ///
  /// In en, this message translates to:
  /// **'Turn off Material You to use a custom colour'**
  String get customAccentDisabledDesc;

  /// No description provided for @themeMode.
  ///
  /// In en, this message translates to:
  /// **'Theme mode'**
  String get themeMode;

  /// No description provided for @mode.
  ///
  /// In en, this message translates to:
  /// **'Mode'**
  String get mode;

  /// No description provided for @trackingService.
  ///
  /// In en, this message translates to:
  /// **'Tracking service'**
  String get trackingService;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @notSignedIn.
  ///
  /// In en, this message translates to:
  /// **'Not signed in'**
  String get notSignedIn;

  /// No description provided for @signOutOf.
  ///
  /// In en, this message translates to:
  /// **'Sign out of {service}?'**
  String signOutOf(String service);

  /// No description provided for @checkForUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get checkForUpdates;

  /// No description provided for @checkForUpdatesDesc.
  ///
  /// In en, this message translates to:
  /// **'Notify on a new GitHub release'**
  String get checkForUpdatesDesc;

  /// No description provided for @updateChannel.
  ///
  /// In en, this message translates to:
  /// **'Update channel'**
  String get updateChannel;

  /// No description provided for @channel.
  ///
  /// In en, this message translates to:
  /// **'Channel'**
  String get channel;

  /// No description provided for @stable.
  ///
  /// In en, this message translates to:
  /// **'Stable'**
  String get stable;

  /// No description provided for @preRelease.
  ///
  /// In en, this message translates to:
  /// **'Pre-release'**
  String get preRelease;

  /// No description provided for @alpha.
  ///
  /// In en, this message translates to:
  /// **'Alpha'**
  String get alpha;

  /// No description provided for @checkNow.
  ///
  /// In en, this message translates to:
  /// **'Check now'**
  String get checkNow;

  /// No description provided for @userAgent.
  ///
  /// In en, this message translates to:
  /// **'User-Agent'**
  String get userAgent;

  /// No description provided for @settingDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get settingDefault;

  /// No description provided for @dnsOverHttps.
  ///
  /// In en, this message translates to:
  /// **'DNS-over-HTTPS'**
  String get dnsOverHttps;

  /// No description provided for @dnsDefault.
  ///
  /// In en, this message translates to:
  /// **'Default (Cloudflare)'**
  String get dnsDefault;

  /// No description provided for @proxy.
  ///
  /// In en, this message translates to:
  /// **'Proxy'**
  String get proxy;

  /// No description provided for @clearCookies.
  ///
  /// In en, this message translates to:
  /// **'Clear cookies'**
  String get clearCookies;

  /// No description provided for @clearCookiesDesc.
  ///
  /// In en, this message translates to:
  /// **'Remove every stored cookie'**
  String get clearCookiesDesc;

  /// No description provided for @clearCookiesConfirm.
  ///
  /// In en, this message translates to:
  /// **'Remove all stored cookies? This may sign you out of some sources.'**
  String get clearCookiesConfirm;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @gitHub.
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get gitHub;

  /// No description provided for @gitHubDesc.
  ///
  /// In en, this message translates to:
  /// **'Source, issues and releases'**
  String get gitHubDesc;

  /// No description provided for @discordDesc.
  ///
  /// In en, this message translates to:
  /// **'Community and support'**
  String get discordDesc;

  /// No description provided for @donate.
  ///
  /// In en, this message translates to:
  /// **'Buy me a coffee'**
  String get donate;

  /// No description provided for @donateDesc.
  ///
  /// In en, this message translates to:
  /// **'Support development'**
  String get donateDesc;

  /// No description provided for @sectionColors.
  ///
  /// In en, this message translates to:
  /// **'Colors'**
  String get sectionColors;

  /// No description provided for @sectionDisplay.
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get sectionDisplay;

  /// No description provided for @sectionStyle.
  ///
  /// In en, this message translates to:
  /// **'Style'**
  String get sectionStyle;

  /// No description provided for @sectionCommunity.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get sectionCommunity;

  /// No description provided for @sectionAppInfo.
  ///
  /// In en, this message translates to:
  /// **'App Info'**
  String get sectionAppInfo;

  /// No description provided for @sectionCache.
  ///
  /// In en, this message translates to:
  /// **'Cache'**
  String get sectionCache;

  /// No description provided for @sectionRequests.
  ///
  /// In en, this message translates to:
  /// **'Requests'**
  String get sectionRequests;

  /// No description provided for @sectionDnsProxy.
  ///
  /// In en, this message translates to:
  /// **'DNS & Proxy'**
  String get sectionDnsProxy;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'am',
    'ar',
    'as',
    'bn',
    'da',
    'de',
    'el',
    'en',
    'es',
    'fa',
    'fil',
    'fr',
    'ha',
    'he',
    'hi',
    'hr',
    'id',
    'it',
    'ja',
    'kn',
    'ko',
    'ml',
    'mr',
    'ms',
    'ne',
    'nl',
    'or',
    'pl',
    'ps',
    'pt',
    'ru',
    'sa',
    'si',
    'so',
    'sw',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'bn':
      return AppLocalizationsBn();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'ha':
      return AppLocalizationsHa();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'or':
      return AppLocalizationsOr();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'sa':
      return AppLocalizationsSa();
    case 'si':
      return AppLocalizationsSi();
    case 'so':
      return AppLocalizationsSo();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
