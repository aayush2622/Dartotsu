// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Η ΝΕΑ Καλύτερη Εφαρμογή Για\nΠαρακολούθηση Άνιμε & Μάνγκα';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => 'Load more';

  @override
  String get login => 'Σύνδεση';

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
    return 'Σύνδεση στο $service';
  }

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get account => 'Λογαριασμός';

  @override
  String get about => 'Σχετικά';

  @override
  String get language => 'Γλώσσα';

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
      other: 'Επεκτάσεις',
      one: 'Επέκταση',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Unknown Source';

  @override
  String get install => 'Install';

  @override
  String get update => 'Update';

  @override
  String get uninstall => 'Uninstall';

  @override
  String get installFailed => 'Install failed';

  @override
  String get updateFailed => 'Update failed';

  @override
  String get noSourceSettings => 'Source doesn\'t have any settings';

  @override
  String get addPluginRepository => 'Add Plugin Repository';

  @override
  String get pluginIndexUrlHint => 'Plugin index URL';

  @override
  String get addRepository => 'Add Repository';

  @override
  String get pluginRepoUpdated => 'Plugin repository updated';

  @override
  String get pluginRepoUpdateFailed => 'Failed to refresh plugin repository';

  @override
  String get ok => 'Εντάξει';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get yes => 'Ναι';

  @override
  String get no => 'Όχι';

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
  String get selectMediaService => 'Επιλέξτε Media Service';

  @override
  String get pickColor => 'Επιλέξτε χρώμα';

  @override
  String get colorPickerDefault => 'Default';

  @override
  String get colorPickerCustom => 'Εθιμο';

  @override
  String get utd => 'Από Κάτω προς Πάνω';

  @override
  String get dtu => 'Υπό Ενημέρωση';

  @override
  String get rtl => 'Δικαίωμα στην Αριστερά';

  @override
  String get ltr => 'Αριστερά δεξιά';

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
      'Live colours from ~/.config/dartotsu/theme.json (a custom script, or your own edits)';

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
  String currentlyUsing(String value) {
    return 'Currently: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Default (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Type';

  @override
  String get proxyHost => 'Host';

  @override
  String get proxyPort => 'Port';

  @override
  String get proxyUsername => 'Username';

  @override
  String get proxyPassword => 'Password';

  @override
  String get optional => 'Optional';

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
  String get contributors => 'Contributors';

  @override
  String get contributorsDesc => 'The people who built Dartotsu';

  @override
  String get contributorsLoadFailed => 'Couldn\'t load contributors';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Projects built on top of Dartotsu';

  @override
  String get forksEmpty => 'No forks found';

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
