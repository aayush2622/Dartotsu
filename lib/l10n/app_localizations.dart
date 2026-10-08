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

  /// No description provided for @loadMore.
  ///
  /// In en, this message translates to:
  /// **'Load more'**
  String get loadMore;

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

  /// No description provided for @unknownSource.
  ///
  /// In en, this message translates to:
  /// **'Unknown Source'**
  String get unknownSource;

  /// No description provided for @install.
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get install;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @uninstall.
  ///
  /// In en, this message translates to:
  /// **'Uninstall'**
  String get uninstall;

  /// No description provided for @installFailed.
  ///
  /// In en, this message translates to:
  /// **'Install failed'**
  String get installFailed;

  /// No description provided for @updateFailed.
  ///
  /// In en, this message translates to:
  /// **'Update failed'**
  String get updateFailed;

  /// No description provided for @noSourceSettings.
  ///
  /// In en, this message translates to:
  /// **'Source doesn\'t have any settings'**
  String get noSourceSettings;

  /// No description provided for @addPluginRepository.
  ///
  /// In en, this message translates to:
  /// **'Add Plugin Repository'**
  String get addPluginRepository;

  /// No description provided for @pluginIndexUrlHint.
  ///
  /// In en, this message translates to:
  /// **'Plugin index URL'**
  String get pluginIndexUrlHint;

  /// No description provided for @addRepository.
  ///
  /// In en, this message translates to:
  /// **'Add Repository'**
  String get addRepository;

  /// No description provided for @pluginRepoUpdated.
  ///
  /// In en, this message translates to:
  /// **'Plugin repository updated'**
  String get pluginRepoUpdated;

  /// No description provided for @pluginRepoUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to refresh plugin repository'**
  String get pluginRepoUpdateFailed;

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

  /// No description provided for @settingsExtensionsDesc.
  ///
  /// In en, this message translates to:
  /// **'Source managers, repositories and extension options'**
  String get settingsExtensionsDesc;

  /// No description provided for @settingsAddons.
  ///
  /// In en, this message translates to:
  /// **'Addons'**
  String get settingsAddons;

  /// No description provided for @settingsAddonsDesc.
  ///
  /// In en, this message translates to:
  /// **'Optional components such as the torrent server'**
  String get settingsAddonsDesc;

  /// No description provided for @customPath.
  ///
  /// In en, this message translates to:
  /// **'Custom storage path'**
  String get customPath;

  /// No description provided for @customPathDesc.
  ///
  /// In en, this message translates to:
  /// **'Where app data is kept. Long-press to reset'**
  String get customPathDesc;

  /// No description provided for @selectDirectory.
  ///
  /// In en, this message translates to:
  /// **'Select directory'**
  String get selectDirectory;

  /// No description provided for @differentCacheManager.
  ///
  /// In en, this message translates to:
  /// **'Alternative image cache'**
  String get differentCacheManager;

  /// No description provided for @differentCacheManagerDesc.
  ///
  /// In en, this message translates to:
  /// **'Use a different cache manager for images'**
  String get differentCacheManagerDesc;

  /// No description provided for @backupAndRestore.
  ///
  /// In en, this message translates to:
  /// **'Backup and restore'**
  String get backupAndRestore;

  /// No description provided for @backupAndRestoreDesc.
  ///
  /// In en, this message translates to:
  /// **'Save or load your preferences'**
  String get backupAndRestoreDesc;

  /// No description provided for @backup.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get backup;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @loadExtensionsIcon.
  ///
  /// In en, this message translates to:
  /// **'Load extension icons'**
  String get loadExtensionsIcon;

  /// No description provided for @loadExtensionsIconDesc.
  ///
  /// In en, this message translates to:
  /// **'Show source icons in the extension lists'**
  String get loadExtensionsIconDesc;

  /// No description provided for @sectionStorage.
  ///
  /// In en, this message translates to:
  /// **'Storage'**
  String get sectionStorage;

  /// No description provided for @sectionBackup.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get sectionBackup;

  /// No description provided for @sectionManagers.
  ///
  /// In en, this message translates to:
  /// **'Managers'**
  String get sectionManagers;

  /// No description provided for @sectionOptions.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get sectionOptions;

  /// No description provided for @backupTabBackup.
  ///
  /// In en, this message translates to:
  /// **'Back up'**
  String get backupTabBackup;

  /// No description provided for @backupTabRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get backupTabRestore;

  /// No description provided for @backupSummary.
  ///
  /// In en, this message translates to:
  /// **'{keys} settings in {categories} categories'**
  String backupSummary(Object keys, Object categories);

  /// No description provided for @backupLastBackup.
  ///
  /// In en, this message translates to:
  /// **'Last backup {time}'**
  String backupLastBackup(Object time);

  /// No description provided for @backupNever.
  ///
  /// In en, this message translates to:
  /// **'No backup yet'**
  String get backupNever;

  /// No description provided for @backupSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get backupSelectAll;

  /// No description provided for @backupClearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get backupClearAll;

  /// No description provided for @backupKeys.
  ///
  /// In en, this message translates to:
  /// **'{count} settings'**
  String backupKeys(Object count);

  /// No description provided for @backupShowKeys.
  ///
  /// In en, this message translates to:
  /// **'Show settings'**
  String get backupShowKeys;

  /// No description provided for @backupPassword.
  ///
  /// In en, this message translates to:
  /// **'Password (optional)'**
  String get backupPassword;

  /// No description provided for @backupPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Leave empty to use the default'**
  String get backupPasswordHint;

  /// No description provided for @backupSensitive.
  ///
  /// In en, this message translates to:
  /// **'Includes login tokens. Keep this file private'**
  String get backupSensitive;

  /// No description provided for @backupCreate.
  ///
  /// In en, this message translates to:
  /// **'Create backup'**
  String get backupCreate;

  /// No description provided for @backupSaved.
  ///
  /// In en, this message translates to:
  /// **'Backup saved to {name}'**
  String backupSaved(Object name);

  /// No description provided for @backupFailed.
  ///
  /// In en, this message translates to:
  /// **'Backup failed: {error}'**
  String backupFailed(Object error);

  /// No description provided for @backupPickFile.
  ///
  /// In en, this message translates to:
  /// **'Choose a backup file'**
  String get backupPickFile;

  /// No description provided for @backupPickFileDesc.
  ///
  /// In en, this message translates to:
  /// **'Pick a .json file made by Dartotsu'**
  String get backupPickFileDesc;

  /// No description provided for @backupChooseAnother.
  ///
  /// In en, this message translates to:
  /// **'Choose another file'**
  String get backupChooseAnother;

  /// No description provided for @backupCreatedAt.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get backupCreatedAt;

  /// No description provided for @backupAppVersion.
  ///
  /// In en, this message translates to:
  /// **'App version'**
  String get backupAppVersion;

  /// No description provided for @backupDevice.
  ///
  /// In en, this message translates to:
  /// **'Device'**
  String get backupDevice;

  /// No description provided for @backupAccounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get backupAccounts;

  /// No description provided for @backupSize.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get backupSize;

  /// No description provided for @backupEncrypted.
  ///
  /// In en, this message translates to:
  /// **'Password protected'**
  String get backupEncrypted;

  /// No description provided for @backupUnlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get backupUnlock;

  /// No description provided for @backupWrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Could not read this file. Check the password'**
  String get backupWrongPassword;

  /// No description provided for @backupRestoreSelected.
  ///
  /// In en, this message translates to:
  /// **'Restore selected'**
  String get backupRestoreSelected;

  /// No description provided for @backupRestoreConfirm.
  ///
  /// In en, this message translates to:
  /// **'Restore {count} settings? Existing values in these categories are overwritten.'**
  String backupRestoreConfirm(Object count);

  /// No description provided for @backupRestored.
  ///
  /// In en, this message translates to:
  /// **'Restored. Restart the app to apply everything'**
  String get backupRestored;

  /// No description provided for @backupRestoreFailed.
  ///
  /// In en, this message translates to:
  /// **'Restore failed: {error}'**
  String backupRestoreFailed(Object error);

  /// No description provided for @backupSelectOne.
  ///
  /// In en, this message translates to:
  /// **'Select at least one category'**
  String get backupSelectOne;

  /// No description provided for @backupCatTheme.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get backupCatTheme;

  /// No description provided for @backupCatThemeDesc.
  ///
  /// In en, this message translates to:
  /// **'Theme, colors, glass, fonts and card style'**
  String get backupCatThemeDesc;

  /// No description provided for @backupCatCommon.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get backupCatCommon;

  /// No description provided for @backupCatCommonDesc.
  ///
  /// In en, this message translates to:
  /// **'Language, storage, network and extension options'**
  String get backupCatCommonDesc;

  /// No description provided for @backupCatPlayer.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get backupCatPlayer;

  /// No description provided for @backupCatPlayerDesc.
  ///
  /// In en, this message translates to:
  /// **'Player preferences'**
  String get backupCatPlayerDesc;

  /// No description provided for @backupCatReader.
  ///
  /// In en, this message translates to:
  /// **'Reader'**
  String get backupCatReader;

  /// No description provided for @backupCatReaderDesc.
  ///
  /// In en, this message translates to:
  /// **'Reader preferences'**
  String get backupCatReaderDesc;

  /// No description provided for @backupCatProtected.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get backupCatProtected;

  /// No description provided for @backupCatProtectedDesc.
  ///
  /// In en, this message translates to:
  /// **'Login tokens and sign-in data'**
  String get backupCatProtectedDesc;

  /// No description provided for @backupCatOther.
  ///
  /// In en, this message translates to:
  /// **'Services and feeds'**
  String get backupCatOther;

  /// No description provided for @backupCatOtherDesc.
  ///
  /// In en, this message translates to:
  /// **'Feed layouts, lists and service options'**
  String get backupCatOtherDesc;

  /// No description provided for @logFile.
  ///
  /// In en, this message translates to:
  /// **'Log file'**
  String get logFile;

  /// No description provided for @logFileDesc.
  ///
  /// In en, this message translates to:
  /// **'Share the app log, or copy its path on Linux'**
  String get logFileDesc;

  /// No description provided for @logFileCopied.
  ///
  /// In en, this message translates to:
  /// **'Log path copied'**
  String get logFileCopied;

  /// No description provided for @donateSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Enjoying Dartotsu?'**
  String get donateSheetTitle;

  /// No description provided for @donateSheetMessage.
  ///
  /// In en, this message translates to:
  /// **'Dartotsu is built and maintained by one person. If it is useful to you, consider supporting development.'**
  String get donateSheetMessage;

  /// No description provided for @donateLater.
  ///
  /// In en, this message translates to:
  /// **'Maybe later'**
  String get donateLater;

  /// No description provided for @glassBackground.
  ///
  /// In en, this message translates to:
  /// **'Glass background'**
  String get glassBackground;

  /// No description provided for @glassBackgroundDesc.
  ///
  /// In en, this message translates to:
  /// **'Your profile banner unless you set an image link'**
  String get glassBackgroundDesc;

  /// No description provided for @glassBackgroundHint.
  ///
  /// In en, this message translates to:
  /// **'Image link (leave empty for your banner)'**
  String get glassBackgroundHint;

  /// No description provided for @followCover.
  ///
  /// In en, this message translates to:
  /// **'Follow cover'**
  String get followCover;

  /// No description provided for @followCoverDesc.
  ///
  /// In en, this message translates to:
  /// **'Colors follow the background, and the cover on detail pages'**
  String get followCoverDesc;

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

  /// No description provided for @currentlyUsing.
  ///
  /// In en, this message translates to:
  /// **'Currently: {value}'**
  String currentlyUsing(String value);

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

  /// No description provided for @proxyProtocol.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get proxyProtocol;

  /// No description provided for @proxyHost.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get proxyHost;

  /// No description provided for @proxyPort.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get proxyPort;

  /// No description provided for @proxyUsername.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get proxyUsername;

  /// No description provided for @proxyPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get proxyPassword;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

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

  /// No description provided for @contributors.
  ///
  /// In en, this message translates to:
  /// **'Contributors'**
  String get contributors;

  /// No description provided for @contributorsDesc.
  ///
  /// In en, this message translates to:
  /// **'The people who built Dartotsu'**
  String get contributorsDesc;

  /// No description provided for @contributorsLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load contributors'**
  String get contributorsLoadFailed;

  /// No description provided for @forks.
  ///
  /// In en, this message translates to:
  /// **'Forks'**
  String get forks;

  /// No description provided for @forksDesc.
  ///
  /// In en, this message translates to:
  /// **'Projects built on top of Dartotsu'**
  String get forksDesc;

  /// No description provided for @forksEmpty.
  ///
  /// In en, this message translates to:
  /// **'No forks found'**
  String get forksEmpty;

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

  /// No description provided for @onboardingBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get onboardingBack;

  /// No description provided for @onboardingNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardingNext;

  /// No description provided for @onboardingSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboardingSkip;

  /// No description provided for @onboardingPaletteTitle.
  ///
  /// In en, this message translates to:
  /// **'Make it yours'**
  String get onboardingPaletteTitle;

  /// No description provided for @onboardingPaletteBody.
  ///
  /// In en, this message translates to:
  /// **'Pick a palette. Every accent, from cards to the player, follows it.'**
  String get onboardingPaletteBody;

  /// No description provided for @themeModeAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get themeModeAuto;

  /// No description provided for @themeModeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeModeLight;

  /// No description provided for @themeModeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeModeDark;

  /// No description provided for @onboardingSyncTitle.
  ///
  /// In en, this message translates to:
  /// **'Sync your library'**
  String get onboardingSyncTitle;

  /// No description provided for @onboardingSyncBody.
  ///
  /// In en, this message translates to:
  /// **'Sign in with AniList to bring your lists, progress and scores with you. Or skip and browse as a guest.'**
  String get onboardingSyncBody;

  /// No description provided for @onboardingOpenLinks.
  ///
  /// In en, this message translates to:
  /// **'Open AniList and repo links in Dartotsu'**
  String get onboardingOpenLinks;

  /// No description provided for @linkOpenInApp.
  ///
  /// In en, this message translates to:
  /// **'Open links in Dartotsu'**
  String get linkOpenInApp;

  /// No description provided for @linkOpenInAppDesc.
  ///
  /// In en, this message translates to:
  /// **'Let AniList and repo links open the app'**
  String get linkOpenInAppDesc;

  /// No description provided for @reviewsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviewsTitle;

  /// No description provided for @reviewsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No reviews yet'**
  String get reviewsEmpty;

  /// No description provided for @reviewsFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load reviews'**
  String get reviewsFailed;

  /// No description provided for @reviewHelpful.
  ///
  /// In en, this message translates to:
  /// **'{n} of {total} found this helpful'**
  String reviewHelpful(int n, int total);

  /// No description provided for @calendarTitle.
  ///
  /// In en, this message translates to:
  /// **'Airing schedule'**
  String get calendarTitle;

  /// No description provided for @calendarToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get calendarToday;

  /// No description provided for @calendarEmpty.
  ///
  /// In en, this message translates to:
  /// **'Nothing airs this day'**
  String get calendarEmpty;

  /// No description provided for @calendarFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load the schedule'**
  String get calendarFailed;

  /// No description provided for @calendarEpisode.
  ///
  /// In en, this message translates to:
  /// **'Episode {n}'**
  String calendarEpisode(int n);

  /// No description provided for @shareAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Share anonymous usage data'**
  String get shareAnalytics;

  /// No description provided for @shareAnalyticsDesc.
  ///
  /// In en, this message translates to:
  /// **'Anonymous user counts and crash reports. No account or personal data'**
  String get shareAnalyticsDesc;

  /// No description provided for @linkOpenAnilist.
  ///
  /// In en, this message translates to:
  /// **'Open AniList links in Dartotsu'**
  String get linkOpenAnilist;

  /// No description provided for @linkOpenAnilistDesc.
  ///
  /// In en, this message translates to:
  /// **'Turn on link handling so anilist.co links open the app'**
  String get linkOpenAnilistDesc;

  /// No description provided for @linkSettingsFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open the system settings'**
  String get linkSettingsFailed;

  /// No description provided for @discordRichPresence.
  ///
  /// In en, this message translates to:
  /// **'Rich Presence'**
  String get discordRichPresence;

  /// No description provided for @discordRichPresenceTokenDesc.
  ///
  /// In en, this message translates to:
  /// **'Show what you are doing on your Discord profile. Needs your Discord token.'**
  String get discordRichPresenceTokenDesc;

  /// No description provided for @discordRichPresenceDesktopDesc.
  ///
  /// In en, this message translates to:
  /// **'Show what you are doing on your Discord profile. Needs the Discord desktop app running.'**
  String get discordRichPresenceDesktopDesc;

  /// No description provided for @discordBrowsing.
  ///
  /// In en, this message translates to:
  /// **'Show browsing activity'**
  String get discordBrowsing;

  /// No description provided for @discordBrowsingDesc.
  ///
  /// In en, this message translates to:
  /// **'Also show the tab, page or profile you are looking at, not only what you watch or read.'**
  String get discordBrowsingDesc;

  /// No description provided for @discordLookHeader.
  ///
  /// In en, this message translates to:
  /// **'Presence look'**
  String get discordLookHeader;

  /// No description provided for @discordActivityType.
  ///
  /// In en, this message translates to:
  /// **'Activity type'**
  String get discordActivityType;

  /// No description provided for @discordActivityTypeDesc.
  ///
  /// In en, this message translates to:
  /// **'How Discord words it: \"Watching …\" or \"Playing …\". Auto uses Watching for anime and Playing for everything else.'**
  String get discordActivityTypeDesc;

  /// No description provided for @discordWatching.
  ///
  /// In en, this message translates to:
  /// **'Watching'**
  String get discordWatching;

  /// No description provided for @discordPlaying.
  ///
  /// In en, this message translates to:
  /// **'Playing'**
  String get discordPlaying;

  /// No description provided for @discordCovers.
  ///
  /// In en, this message translates to:
  /// **'Show covers'**
  String get discordCovers;

  /// No description provided for @discordCoversDesc.
  ///
  /// In en, this message translates to:
  /// **'Cover art and the Dartotsu icon on the card.'**
  String get discordCoversDesc;

  /// No description provided for @discordTimer.
  ///
  /// In en, this message translates to:
  /// **'Show timer'**
  String get discordTimer;

  /// No description provided for @discordTimerDesc.
  ///
  /// In en, this message translates to:
  /// **'Elapsed or remaining time under the title.'**
  String get discordTimerDesc;

  /// No description provided for @discordButtons.
  ///
  /// In en, this message translates to:
  /// **'Show buttons'**
  String get discordButtons;

  /// No description provided for @discordButtonsDesc.
  ///
  /// In en, this message translates to:
  /// **'\"View anime / manga\" and \"Open Dartotsu\" buttons.'**
  String get discordButtonsDesc;

  /// No description provided for @discordHideTitles.
  ///
  /// In en, this message translates to:
  /// **'Hide titles'**
  String get discordHideTitles;

  /// No description provided for @discordHideTitlesDesc.
  ///
  /// In en, this message translates to:
  /// **'Replace anime and manga names (and their cover and link) with \"Something private\".'**
  String get discordHideTitlesDesc;

  /// No description provided for @discordConnectionHeader.
  ///
  /// In en, this message translates to:
  /// **'Connection'**
  String get discordConnectionHeader;

  /// No description provided for @discordToken.
  ///
  /// In en, this message translates to:
  /// **'Discord token'**
  String get discordToken;

  /// No description provided for @discordTokenSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved. Tap to replace, long press to remove.'**
  String get discordTokenSaved;

  /// No description provided for @discordTokenNotSet.
  ///
  /// In en, this message translates to:
  /// **'Not set. Tap to add.'**
  String get discordTokenNotSet;

  /// No description provided for @discordTokenPrompt.
  ///
  /// In en, this message translates to:
  /// **'Paste the token of the Discord account to show the presence on. It stays on this device.'**
  String get discordTokenPrompt;

  /// No description provided for @discordTokenHint.
  ///
  /// In en, this message translates to:
  /// **'Token'**
  String get discordTokenHint;

  /// No description provided for @discordTokenSavedSnack.
  ///
  /// In en, this message translates to:
  /// **'Discord token saved'**
  String get discordTokenSavedSnack;

  /// No description provided for @discordTokenRemovedSnack.
  ///
  /// In en, this message translates to:
  /// **'Discord token removed'**
  String get discordTokenRemovedSnack;

  /// No description provided for @discordRichPresenceRow.
  ///
  /// In en, this message translates to:
  /// **'Discord Rich Presence'**
  String get discordRichPresenceRow;

  /// No description provided for @discordRichPresenceRowOn.
  ///
  /// In en, this message translates to:
  /// **'On · tap to change how it looks'**
  String get discordRichPresenceRowOn;

  /// No description provided for @discordRichPresenceRowOff.
  ///
  /// In en, this message translates to:
  /// **'Show what you are doing on your Discord profile'**
  String get discordRichPresenceRowOff;
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
