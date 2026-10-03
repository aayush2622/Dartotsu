// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sanskrit (`sa`).
class AppLocalizationsSa extends AppLocalizations {
  AppLocalizationsSa([String locale = 'sa']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'नवीनतमं श्रेष्ठं अनुप्रयोग\nचित्रकथानां च अनुवर्तनाय';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get discord => 'Discord';

  @override
  String get login => 'प्रवेशनम्';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get getStarted => 'Get Started';

  @override
  String get loginWithToken => 'Login with token';

  @override
  String get pasteTokenHint => 'Paste your access token';

  @override
  String loginTo(String service) {
    return 'प्रवेशयतु $service';
  }

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get account => 'खाता';

  @override
  String get about => 'विषये';

  @override
  String get language => 'भाषा';

  @override
  String get animationSpeed => 'Animations';

  @override
  String get animationSpeedDesc =>
      'Speed of transitions and entrance effects across the app';

  @override
  String get animationSpeedOff => 'Off';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'विस्तारणानि',
      one: 'विस्तारणम्',
    );
    return '$_temp0';
  }

  @override
  String get ok => 'सर्वं';

  @override
  String get cancel => 'निष्कासय';

  @override
  String get yes => 'आम्';

  @override
  String get no => 'न';

  @override
  String get save => 'Save';

  @override
  String get reset => 'Reset';

  @override
  String get clear => 'Clear';

  @override
  String get test => 'Test';

  @override
  String get testing => 'Testing…';

  @override
  String get resolving => 'Resolving…';

  @override
  String get none => 'None';

  @override
  String get selectMediaService => 'मीडिया सेवां चिनोतु';

  @override
  String get pickColor => 'रंगं चयनय';

  @override
  String get colorPickerDefault => 'पूर्वनिर्धारितम्';

  @override
  String get colorPickerCustom => 'स्वनिर्मितम्';

  @override
  String get utd => 'नवनीकृतम्';

  @override
  String get dtu => 'अवतारितम्';

  @override
  String get rtl => 'Right To Left';

  @override
  String get ltr => 'Left To Right';

  @override
  String get searchSettings => 'Search settings';

  @override
  String nothingMatches(String query) {
    return 'Nothing matches \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Search $category';
  }

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsAppearanceDesc => 'Theme, colours, glass mode';

  @override
  String get settingsGeneral => 'General';

  @override
  String get settingsGeneralDesc => 'Language and behaviour';

  @override
  String get settingsAccountDesc => 'Tracking service and sign-in';

  @override
  String get settingsUpdates => 'Updates';

  @override
  String get settingsUpdatesDesc => 'Release channel and checks';

  @override
  String get settingsNetwork => 'Network';

  @override
  String get settingsNetworkDesc => 'User-Agent, DNS, proxy, cookies';

  @override
  String get settingsAboutDesc => 'Version, links, support';

  @override
  String get amoledBlack => 'AMOLED black';

  @override
  String get amoledBlackDesc => 'Pure black surfaces on dark mode';

  @override
  String get glassMode => 'Glass mode';

  @override
  String get glassModeDesc => 'Frosted surfaces over your library art';

  @override
  String get cardStyle => 'Card style';

  @override
  String get cardStyleDesc => 'Title placement, size, progress and badges';

  @override
  String get customFont => 'Font';

  @override
  String get customFontDesc =>
      'Default, a file from your device, or Google Fonts';

  @override
  String get customFontError => 'Couldn\'t load that font file';

  @override
  String get googleFontError => 'Couldn\'t download that font';

  @override
  String get yourFonts => 'Your fonts';

  @override
  String get addFontFile => 'Add font file…';

  @override
  String get browseGoogleFonts => 'Browse Google Fonts…';

  @override
  String get searchGoogleFonts => 'Search Google Fonts';

  @override
  String get defaultFont => 'Default';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Dynamic colour from the system';

  @override
  String get customAccent => 'Custom accent colour';

  @override
  String get customAccentDesc => 'Pick your own primary colour';

  @override
  String get jsonTheme => 'Custom theme file';

  @override
  String get jsonThemeDesc =>
      'Live colours from ~/.config/dartotsu/theme.json (e.g. matugen)';

  @override
  String get customAccentDisabledDesc =>
      'Turn off Material You to use a custom colour';

  @override
  String get themeMode => 'Theme mode';

  @override
  String get mode => 'Mode';

  @override
  String get trackingService => 'Tracking service';

  @override
  String get signOut => 'Sign out';

  @override
  String get signIn => 'Sign in';

  @override
  String get notSignedIn => 'Not signed in';

  @override
  String signOutOf(String service) {
    return 'Sign out of $service?';
  }

  @override
  String get checkForUpdates => 'Check for updates';

  @override
  String get checkForUpdatesDesc => 'Notify on a new GitHub release';

  @override
  String get updateChannel => 'Update channel';

  @override
  String get channel => 'Channel';

  @override
  String get stable => 'Stable';

  @override
  String get preRelease => 'Pre-release';

  @override
  String get alpha => 'Alpha';

  @override
  String get checkNow => 'Check now';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Default';

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Default (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get clearCookies => 'Clear cookies';

  @override
  String get clearCookiesDesc => 'Remove every stored cookie';

  @override
  String get clearCookiesConfirm =>
      'Remove all stored cookies? This may sign you out of some sources.';

  @override
  String get version => 'Version';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Source, issues and releases';

  @override
  String get discordDesc => 'Community and support';

  @override
  String get donate => 'Buy me a coffee';

  @override
  String get donateDesc => 'Support development';

  @override
  String get sectionColors => 'Colors';

  @override
  String get sectionDisplay => 'Display';

  @override
  String get sectionStyle => 'Style';

  @override
  String get sectionCommunity => 'Community';

  @override
  String get sectionAppInfo => 'App Info';

  @override
  String get sectionCache => 'Cache';

  @override
  String get sectionRequests => 'Requests';

  @override
  String get sectionDnsProxy => 'DNS & Proxy';
}
