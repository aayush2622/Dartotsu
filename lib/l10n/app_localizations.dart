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

  /// No description provided for @kitsu.
  ///
  /// In en, this message translates to:
  /// **'Kitsu'**
  String get kitsu;

  /// No description provided for @mangaBaka.
  ///
  /// In en, this message translates to:
  /// **'MangaBaka'**
  String get mangaBaka;

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

  /// No description provided for @colorPickerTransparent.
  ///
  /// In en, this message translates to:
  /// **'Transparent'**
  String get colorPickerTransparent;

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

  /// No description provided for @settingsNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get settingsNetwork;

  /// No description provided for @settingsNetworkDesc.
  ///
  /// In en, this message translates to:
  /// **'User agent, certificates, DNS and proxy'**
  String get settingsNetworkDesc;

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

  /// No description provided for @shelfFrame.
  ///
  /// In en, this message translates to:
  /// **'Frame around sections'**
  String get shelfFrame;

  /// No description provided for @shelfFrameDesc.
  ///
  /// In en, this message translates to:
  /// **'Show a card behind each shelf, or let the rows sit directly on the page'**
  String get shelfFrameDesc;

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

  /// No description provided for @notImplementedArea.
  ///
  /// In en, this message translates to:
  /// **'{area} — coming soon'**
  String notImplementedArea(String area);

  /// No description provided for @notImplementedService.
  ///
  /// In en, this message translates to:
  /// **'{service} doesn\'t support this yet.'**
  String notImplementedService(String service);

  /// No description provided for @couldNotLoadResults.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load results'**
  String get couldNotLoadResults;

  /// No description provided for @updateCheckFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t check for updates'**
  String get updateCheckFailed;

  /// No description provided for @highRefreshRate.
  ///
  /// In en, this message translates to:
  /// **'High refresh rate'**
  String get highRefreshRate;

  /// No description provided for @highRefreshRateDesc.
  ///
  /// In en, this message translates to:
  /// **'Use the highest refresh rate your screen supports'**
  String get highRefreshRateDesc;

  /// No description provided for @imageSave.
  ///
  /// In en, this message translates to:
  /// **'Save image'**
  String get imageSave;

  /// No description provided for @imageSavedTo.
  ///
  /// In en, this message translates to:
  /// **'Saved to {path}'**
  String imageSavedTo(String path);

  /// No description provided for @imageActionFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t download the image'**
  String get imageActionFailed;

  /// No description provided for @imageTitleCover.
  ///
  /// In en, this message translates to:
  /// **'Cover'**
  String get imageTitleCover;

  /// No description provided for @imageTitleBanner.
  ///
  /// In en, this message translates to:
  /// **'Banner'**
  String get imageTitleBanner;

  /// No description provided for @imageTitleAvatar.
  ///
  /// In en, this message translates to:
  /// **'Profile picture'**
  String get imageTitleAvatar;

  /// No description provided for @verifyTls.
  ///
  /// In en, this message translates to:
  /// **'Verify certificates'**
  String get verifyTls;

  /// No description provided for @verifyTlsDesc.
  ///
  /// In en, this message translates to:
  /// **'Reject servers with invalid HTTPS certificates. Turn off only for a source that uses a self-signed one'**
  String get verifyTlsDesc;

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

  /// No description provided for @onboardingPermsTitle.
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get onboardingPermsTitle;

  /// No description provided for @onboardingPermsBody.
  ///
  /// In en, this message translates to:
  /// **'Allow these now so downloads, updates and alerts work without interruptions. You can change them later in system settings.'**
  String get onboardingPermsBody;

  /// No description provided for @permNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get permNotifications;

  /// No description provided for @permNotificationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Download progress, new episodes and replies'**
  String get permNotificationsDesc;

  /// No description provided for @permStorage.
  ///
  /// In en, this message translates to:
  /// **'All files access'**
  String get permStorage;

  /// No description provided for @permStorageDesc.
  ///
  /// In en, this message translates to:
  /// **'Save downloads to the public Dartotsu folder'**
  String get permStorageDesc;

  /// No description provided for @permInstall.
  ///
  /// In en, this message translates to:
  /// **'Install updates'**
  String get permInstall;

  /// No description provided for @permInstallDesc.
  ///
  /// In en, this message translates to:
  /// **'Let Dartotsu install its own app updates'**
  String get permInstallDesc;

  /// No description provided for @permBattery.
  ///
  /// In en, this message translates to:
  /// **'Unrestricted battery'**
  String get permBattery;

  /// No description provided for @permBatteryDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep long downloads running in the background'**
  String get permBatteryDesc;

  /// No description provided for @permGrant.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get permGrant;

  /// No description provided for @permGranted.
  ///
  /// In en, this message translates to:
  /// **'Allowed'**
  String get permGranted;

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

  /// No description provided for @reviewHelpfulQuestion.
  ///
  /// In en, this message translates to:
  /// **'Was this review helpful?'**
  String get reviewHelpfulQuestion;

  /// No description provided for @reviewVoteFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save your vote'**
  String get reviewVoteFailed;

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

  /// No description provided for @listSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search this list'**
  String get listSearchHint;

  /// No description provided for @listSort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get listSort;

  /// No description provided for @listFilter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get listFilter;

  /// No description provided for @listRandom.
  ///
  /// In en, this message translates to:
  /// **'Random title'**
  String get listRandom;

  /// No description provided for @listReverse.
  ///
  /// In en, this message translates to:
  /// **'Reverse order'**
  String get listReverse;

  /// No description provided for @listSortDefault.
  ///
  /// In en, this message translates to:
  /// **'List order'**
  String get listSortDefault;

  /// No description provided for @listSortScore.
  ///
  /// In en, this message translates to:
  /// **'Your score'**
  String get listSortScore;

  /// No description provided for @listSortTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get listSortTitle;

  /// No description provided for @listSortUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated'**
  String get listSortUpdated;

  /// No description provided for @listSortProgress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get listSortProgress;

  /// No description provided for @listSortReleased.
  ///
  /// In en, this message translates to:
  /// **'Release date'**
  String get listSortReleased;

  /// No description provided for @listSortAverage.
  ///
  /// In en, this message translates to:
  /// **'Average score'**
  String get listSortAverage;

  /// No description provided for @listFilterFormat.
  ///
  /// In en, this message translates to:
  /// **'Format'**
  String get listFilterFormat;

  /// No description provided for @listFilterStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get listFilterStatus;

  /// No description provided for @listFilterGenres.
  ///
  /// In en, this message translates to:
  /// **'Genres'**
  String get listFilterGenres;

  /// No description provided for @listFilterClear.
  ///
  /// In en, this message translates to:
  /// **'Clear filters'**
  String get listFilterClear;

  /// No description provided for @listNoMatches.
  ///
  /// In en, this message translates to:
  /// **'Nothing in this list matches'**
  String get listNoMatches;

  /// No description provided for @discordLogin.
  ///
  /// In en, this message translates to:
  /// **'Log in to Discord'**
  String get discordLogin;

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

  /// No description provided for @loginCancelled.
  ///
  /// In en, this message translates to:
  /// **'Login cancelled'**
  String get loginCancelled;

  /// No description provided for @invalidToken.
  ///
  /// In en, this message translates to:
  /// **'Invalid token'**
  String get invalidToken;

  /// No description provided for @loginFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed: {error}'**
  String loginFailed(String error);

  /// No description provided for @malLoginFailed.
  ///
  /// In en, this message translates to:
  /// **'MyAnimeList login failed'**
  String get malLoginFailed;

  /// No description provided for @kitsuLoginFailed.
  ///
  /// In en, this message translates to:
  /// **'Kitsu login failed. Check your email and password.'**
  String get kitsuLoginFailed;

  /// No description provided for @kitsuLoginTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to Kitsu'**
  String get kitsuLoginTitle;

  /// No description provided for @emailOrUsername.
  ///
  /// In en, this message translates to:
  /// **'Email or username'**
  String get emailOrUsername;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @kitsuProfile.
  ///
  /// In en, this message translates to:
  /// **'Kitsu profile'**
  String get kitsuProfile;

  /// No description provided for @mangaBakaLoginFailed.
  ///
  /// In en, this message translates to:
  /// **'MangaBaka login failed'**
  String get mangaBakaLoginFailed;

  /// No description provided for @mangaBakaProfile.
  ///
  /// In en, this message translates to:
  /// **'MangaBaka profile'**
  String get mangaBakaProfile;

  /// No description provided for @refreshFromMangaBaka.
  ///
  /// In en, this message translates to:
  /// **'Refresh from MangaBaka'**
  String get refreshFromMangaBaka;

  /// No description provided for @artistsLabel.
  ///
  /// In en, this message translates to:
  /// **'Artists'**
  String get artistsLabel;

  /// No description provided for @authorsLabel.
  ///
  /// In en, this message translates to:
  /// **'Authors'**
  String get authorsLabel;

  /// No description provided for @publishersLabel.
  ///
  /// In en, this message translates to:
  /// **'Publishers'**
  String get publishersLabel;

  /// No description provided for @licensedLabel.
  ///
  /// In en, this message translates to:
  /// **'Licensed'**
  String get licensedLabel;

  /// No description provided for @contentRatingLabel.
  ///
  /// In en, this message translates to:
  /// **'Content rating'**
  String get contentRatingLabel;

  /// No description provided for @yesLabel.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yesLabel;

  /// No description provided for @noLabel.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get noLabel;

  /// No description provided for @ratingSteps.
  ///
  /// In en, this message translates to:
  /// **'Rating steps'**
  String get ratingSteps;

  /// No description provided for @hideNsfw.
  ///
  /// In en, this message translates to:
  /// **'Hide NSFW'**
  String get hideNsfw;

  /// No description provided for @hideNsfwDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep adult titles out of feeds and search, and list your own adult entries under Hidden Media.'**
  String get hideNsfwDesc;

  /// No description provided for @kitsuAccountOptions.
  ///
  /// In en, this message translates to:
  /// **'Kitsu account options'**
  String get kitsuAccountOptions;

  /// No description provided for @mangaBakaAccountOptions.
  ///
  /// In en, this message translates to:
  /// **'MangaBaka account options'**
  String get mangaBakaAccountOptions;

  /// No description provided for @couldNotUpdateKitsuSettings.
  ///
  /// In en, this message translates to:
  /// **'Could not update your Kitsu settings'**
  String get couldNotUpdateKitsuSettings;

  /// No description provided for @titleCanonical.
  ///
  /// In en, this message translates to:
  /// **'Canonical'**
  String get titleCanonical;

  /// No description provided for @titleRomanized.
  ///
  /// In en, this message translates to:
  /// **'Romanized'**
  String get titleRomanized;

  /// No description provided for @titleLocalized.
  ///
  /// In en, this message translates to:
  /// **'Localized'**
  String get titleLocalized;

  /// No description provided for @ratingSystem.
  ///
  /// In en, this message translates to:
  /// **'Rating system'**
  String get ratingSystem;

  /// No description provided for @ratingSimple.
  ///
  /// In en, this message translates to:
  /// **'Simple (3 faces)'**
  String get ratingSimple;

  /// No description provided for @ratingRegular.
  ///
  /// In en, this message translates to:
  /// **'Regular (5 stars)'**
  String get ratingRegular;

  /// No description provided for @ratingAdvanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced (10 points)'**
  String get ratingAdvanced;

  /// No description provided for @contentFilter.
  ///
  /// In en, this message translates to:
  /// **'Content filter'**
  String get contentFilter;

  /// No description provided for @contentSfw.
  ///
  /// In en, this message translates to:
  /// **'Safe for work only'**
  String get contentSfw;

  /// No description provided for @contentSometimes.
  ///
  /// In en, this message translates to:
  /// **'Mature content in searches'**
  String get contentSometimes;

  /// No description provided for @contentEverywhere.
  ///
  /// In en, this message translates to:
  /// **'Mature content everywhere'**
  String get contentEverywhere;

  /// No description provided for @shareToGlobal.
  ///
  /// In en, this message translates to:
  /// **'Share to global feed'**
  String get shareToGlobal;

  /// No description provided for @shareToGlobalDesc.
  ///
  /// In en, this message translates to:
  /// **'Let your activity appear in Kitsu\'s global feed.'**
  String get shareToGlobalDesc;

  /// No description provided for @memberSince.
  ///
  /// In en, this message translates to:
  /// **'Member since'**
  String get memberSince;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @accountType.
  ///
  /// In en, this message translates to:
  /// **'Account type'**
  String get accountType;

  /// No description provided for @accountSupporter.
  ///
  /// In en, this message translates to:
  /// **'Supporter'**
  String get accountSupporter;

  /// No description provided for @accountFree.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get accountFree;

  /// No description provided for @accountDetails.
  ///
  /// In en, this message translates to:
  /// **'Account details'**
  String get accountDetails;

  /// No description provided for @refreshFromKitsu.
  ///
  /// In en, this message translates to:
  /// **'Refresh from Kitsu'**
  String get refreshFromKitsu;

  /// No description provided for @simklReadOnly.
  ///
  /// In en, this message translates to:
  /// **'Simkl granted read-only access'**
  String get simklReadOnly;

  /// No description provided for @incognitoEditsBlocked.
  ///
  /// In en, this message translates to:
  /// **'Incognito: list edits are blocked'**
  String get incognitoEditsBlocked;

  /// No description provided for @serviceError.
  ///
  /// In en, this message translates to:
  /// **'{service}: {error}'**
  String serviceError(String service, String error);

  /// No description provided for @incognitoProgressNotSaved.
  ///
  /// In en, this message translates to:
  /// **'Incognito: progress not saved'**
  String get incognitoProgressNotSaved;

  /// No description provided for @progressSet.
  ///
  /// In en, this message translates to:
  /// **'Progress set to {progress}'**
  String progressSet(int progress);

  /// No description provided for @removedFromList.
  ///
  /// In en, this message translates to:
  /// **'Removed {title} from your list'**
  String removedFromList(String title);

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @homeSections.
  ///
  /// In en, this message translates to:
  /// **'Home sections'**
  String get homeSections;

  /// No description provided for @homeSectionsHint.
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder. Hidden sections are never fetched.'**
  String get homeSectionsHint;

  /// No description provided for @customListDeleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete custom list'**
  String get customListDeleteFailed;

  /// No description provided for @customListsSaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to save custom lists'**
  String get customListsSaveFailed;

  /// No description provided for @customListsSaved.
  ///
  /// In en, this message translates to:
  /// **'Custom lists saved'**
  String get customListsSaved;

  /// No description provided for @listName.
  ///
  /// In en, this message translates to:
  /// **'List name'**
  String get listName;

  /// No description provided for @addList.
  ///
  /// In en, this message translates to:
  /// **'Add list'**
  String get addList;

  /// No description provided for @voiceActorsIn.
  ///
  /// In en, this message translates to:
  /// **'Voice actors · {name}'**
  String voiceActorsIn(String name);

  /// No description provided for @animeAppearances.
  ///
  /// In en, this message translates to:
  /// **'Anime appearances'**
  String get animeAppearances;

  /// No description provided for @mangaAppearances.
  ///
  /// In en, this message translates to:
  /// **'Manga appearances'**
  String get mangaAppearances;

  /// No description provided for @voicedCharacters.
  ///
  /// In en, this message translates to:
  /// **'Voiced characters'**
  String get voicedCharacters;

  /// No description provided for @animeCredits.
  ///
  /// In en, this message translates to:
  /// **'Anime credits'**
  String get animeCredits;

  /// No description provided for @mangaCredits.
  ///
  /// In en, this message translates to:
  /// **'Manga credits'**
  String get mangaCredits;

  /// No description provided for @mainProductions.
  ///
  /// In en, this message translates to:
  /// **'Main productions'**
  String get mainProductions;

  /// No description provided for @otherWorks.
  ///
  /// In en, this message translates to:
  /// **'Other works'**
  String get otherWorks;

  /// No description provided for @prequelSequel.
  ///
  /// In en, this message translates to:
  /// **'Prequel & Sequel'**
  String get prequelSequel;

  /// No description provided for @previousSeason.
  ///
  /// In en, this message translates to:
  /// **'Previous season'**
  String get previousSeason;

  /// No description provided for @thisSeason.
  ///
  /// In en, this message translates to:
  /// **'This season'**
  String get thisSeason;

  /// No description provided for @nextSeason.
  ///
  /// In en, this message translates to:
  /// **'Next season'**
  String get nextSeason;

  /// No description provided for @voiceRoles.
  ///
  /// In en, this message translates to:
  /// **'Voice roles'**
  String get voiceRoles;

  /// No description provided for @staffPositions.
  ///
  /// In en, this message translates to:
  /// **'Staff positions'**
  String get staffPositions;

  /// No description provided for @mangaWorks.
  ///
  /// In en, this message translates to:
  /// **'Manga works'**
  String get mangaWorks;

  /// No description provided for @malProfile.
  ///
  /// In en, this message translates to:
  /// **'MyAnimeList profile'**
  String get malProfile;

  /// No description provided for @refreshFromMal.
  ///
  /// In en, this message translates to:
  /// **'Refresh from MyAnimeList'**
  String get refreshFromMal;

  /// No description provided for @repullProfileCounts.
  ///
  /// In en, this message translates to:
  /// **'Re-pull your profile and counts'**
  String get repullProfileCounts;

  /// No description provided for @refreshed.
  ///
  /// In en, this message translates to:
  /// **'Refreshed'**
  String get refreshed;

  /// No description provided for @simklProfile.
  ///
  /// In en, this message translates to:
  /// **'Simkl profile'**
  String get simklProfile;

  /// No description provided for @refreshFromSimkl.
  ///
  /// In en, this message translates to:
  /// **'Refresh from Simkl'**
  String get refreshFromSimkl;

  /// No description provided for @repullProfileLibrary.
  ///
  /// In en, this message translates to:
  /// **'Re-pull your profile and library'**
  String get repullProfileLibrary;

  /// No description provided for @simklSignInToSearch.
  ///
  /// In en, this message translates to:
  /// **'Sign in to Simkl to search'**
  String get simklSignInToSearch;

  /// No description provided for @dropRate.
  ///
  /// In en, this message translates to:
  /// **'Drop rate'**
  String get dropRate;

  /// No description provided for @simklAttribution.
  ///
  /// In en, this message translates to:
  /// **'Data and artwork provided by Simkl. View on Simkl'**
  String get simklAttribution;

  /// No description provided for @onHold.
  ///
  /// In en, this message translates to:
  /// **'On hold'**
  String get onHold;

  /// No description provided for @scoredBy.
  ///
  /// In en, this message translates to:
  /// **'Scored by'**
  String get scoredBy;

  /// No description provided for @planToWatch.
  ///
  /// In en, this message translates to:
  /// **'Plan to watch'**
  String get planToWatch;

  /// No description provided for @planToRead.
  ///
  /// In en, this message translates to:
  /// **'Plan to read'**
  String get planToRead;

  /// No description provided for @timesRewatched.
  ///
  /// In en, this message translates to:
  /// **'Times rewatched'**
  String get timesRewatched;

  /// No description provided for @timesReread.
  ///
  /// In en, this message translates to:
  /// **'Times reread'**
  String get timesReread;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @moviesAndSeries.
  ///
  /// In en, this message translates to:
  /// **'Movies & Series'**
  String get moviesAndSeries;

  /// No description provided for @trackingOnly.
  ///
  /// In en, this message translates to:
  /// **'Tracking only'**
  String get trackingOnly;

  /// No description provided for @signedIn.
  ///
  /// In en, this message translates to:
  /// **'Signed in'**
  String get signedIn;

  /// No description provided for @searchLanguage.
  ///
  /// In en, this message translates to:
  /// **'Search language'**
  String get searchLanguage;

  /// No description provided for @savedToList.
  ///
  /// In en, this message translates to:
  /// **'Saved to your list'**
  String get savedToList;

  /// No description provided for @removedFromYourList.
  ///
  /// In en, this message translates to:
  /// **'Removed from your list'**
  String get removedFromYourList;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @synopsis.
  ///
  /// In en, this message translates to:
  /// **'Synopsis'**
  String get synopsis;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @addToList.
  ///
  /// In en, this message translates to:
  /// **'Add to List'**
  String get addToList;

  /// No description provided for @trailer.
  ///
  /// In en, this message translates to:
  /// **'Trailer'**
  String get trailer;

  /// No description provided for @titleCopied.
  ///
  /// In en, this message translates to:
  /// **'Title copied'**
  String get titleCopied;

  /// No description provided for @linkCopied.
  ///
  /// In en, this message translates to:
  /// **'Link copied'**
  String get linkCopied;

  /// No description provided for @watchTrailer.
  ///
  /// In en, this message translates to:
  /// **'Watch trailer'**
  String get watchTrailer;

  /// No description provided for @copyTitle.
  ///
  /// In en, this message translates to:
  /// **'Copy title'**
  String get copyTitle;

  /// No description provided for @copyLink.
  ///
  /// In en, this message translates to:
  /// **'Copy link'**
  String get copyLink;

  /// No description provided for @openInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open in browser'**
  String get openInBrowser;

  /// No description provided for @viewOnSource.
  ///
  /// In en, this message translates to:
  /// **'View on {source}'**
  String viewOnSource(String source);

  /// No description provided for @episodeAirsIn.
  ///
  /// In en, this message translates to:
  /// **'Episode {ep} airs in {time}'**
  String episodeAirsIn(int ep, String time);

  /// No description provided for @nextEpisodeIn.
  ///
  /// In en, this message translates to:
  /// **'Next episode in {time}'**
  String nextEpisodeIn(String time);

  /// No description provided for @chapterExpectedIn.
  ///
  /// In en, this message translates to:
  /// **'Chapter {chapter} expected in about {time}'**
  String chapterExpectedIn(int chapter, String time);

  /// No description provided for @logPathCopied.
  ///
  /// In en, this message translates to:
  /// **'Log file path copied to clipboard'**
  String get logPathCopied;

  /// No description provided for @animeSource.
  ///
  /// In en, this message translates to:
  /// **'Anime source'**
  String get animeSource;

  /// No description provided for @mangaSource.
  ///
  /// In en, this message translates to:
  /// **'Manga source'**
  String get mangaSource;

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// No description provided for @latest.
  ///
  /// In en, this message translates to:
  /// **'Latest'**
  String get latest;

  /// No description provided for @saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// No description provided for @nothingMatched.
  ///
  /// In en, this message translates to:
  /// **'Nothing matched'**
  String get nothingMatched;

  /// No description provided for @nothingSavedFromSource.
  ///
  /// In en, this message translates to:
  /// **'Nothing saved from this source yet'**
  String get nothingSavedFromSource;

  /// No description provided for @sourceReturnedNothing.
  ///
  /// In en, this message translates to:
  /// **'This source returned nothing'**
  String get sourceReturnedNothing;

  /// No description provided for @checkConnectionOrSource.
  ///
  /// In en, this message translates to:
  /// **'Check your connection or try another source.'**
  String get checkConnectionOrSource;

  /// No description provided for @tryDifferentSearch.
  ///
  /// In en, this message translates to:
  /// **'Try a different search term.'**
  String get tryDifferentSearch;

  /// No description provided for @savedTitlesAppearHere.
  ///
  /// In en, this message translates to:
  /// **'Titles you add to your list appear here.'**
  String get savedTitlesAppearHere;

  /// No description provided for @tryOtherFeed.
  ///
  /// In en, this message translates to:
  /// **'Try the other feed or search instead.'**
  String get tryOtherFeed;

  /// No description provided for @searchSource.
  ///
  /// In en, this message translates to:
  /// **'Search {source}'**
  String searchSource(String source);

  /// No description provided for @animeExtensions.
  ///
  /// In en, this message translates to:
  /// **'Anime Extensions'**
  String get animeExtensions;

  /// No description provided for @mangaExtensions.
  ///
  /// In en, this message translates to:
  /// **'Manga Extensions'**
  String get mangaExtensions;

  /// No description provided for @nothingHereYet.
  ///
  /// In en, this message translates to:
  /// **'Nothing here yet'**
  String get nothingHereYet;

  /// No description provided for @savedOnDeviceUntilLogin.
  ///
  /// In en, this message translates to:
  /// **'Everything below is saved on this device until you do.'**
  String get savedOnDeviceUntilLogin;

  /// No description provided for @yourProfile.
  ///
  /// In en, this message translates to:
  /// **'Your profile'**
  String get yourProfile;

  /// No description provided for @activity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activity;

  /// No description provided for @extensions.
  ///
  /// In en, this message translates to:
  /// **'Extensions'**
  String get extensions;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @logIn.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get logIn;

  /// No description provided for @logOutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get logOutConfirm;

  /// No description provided for @incognitoMode.
  ///
  /// In en, this message translates to:
  /// **'Incognito mode'**
  String get incognitoMode;

  /// No description provided for @alsoBlockListEdits.
  ///
  /// In en, this message translates to:
  /// **'Also block list edits'**
  String get alsoBlockListEdits;

  /// No description provided for @offlineMode.
  ///
  /// In en, this message translates to:
  /// **'Offline mode'**
  String get offlineMode;

  /// No description provided for @switchService.
  ///
  /// In en, this message translates to:
  /// **'Switch service'**
  String get switchService;

  /// No description provided for @logOutOf.
  ///
  /// In en, this message translates to:
  /// **'Log out of {name}'**
  String logOutOf(String name);

  /// No description provided for @loggedIn.
  ///
  /// In en, this message translates to:
  /// **'Logged in'**
  String get loggedIn;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @nothingNew.
  ///
  /// In en, this message translates to:
  /// **'Nothing new'**
  String get nothingNew;

  /// No description provided for @thisWeek.
  ///
  /// In en, this message translates to:
  /// **'This week'**
  String get thisWeek;

  /// No description provided for @listOnly.
  ///
  /// In en, this message translates to:
  /// **'List Only'**
  String get listOnly;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @searchResults.
  ///
  /// In en, this message translates to:
  /// **'Search Results'**
  String get searchResults;

  /// No description provided for @recentSearches.
  ///
  /// In en, this message translates to:
  /// **'Recent searches'**
  String get recentSearches;

  /// No description provided for @searchOrSetFilter.
  ///
  /// In en, this message translates to:
  /// **'Search or set a filter'**
  String get searchOrSetFilter;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// No description provided for @showLess.
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get showLess;

  /// No description provided for @showAll.
  ///
  /// In en, this message translates to:
  /// **'Show all'**
  String get showAll;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @preset.
  ///
  /// In en, this message translates to:
  /// **'Preset'**
  String get preset;

  /// No description provided for @cardNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get cardNormal;

  /// No description provided for @cardOnCard.
  ///
  /// In en, this message translates to:
  /// **'On card'**
  String get cardOnCard;

  /// No description provided for @cardInCard.
  ///
  /// In en, this message translates to:
  /// **'In card'**
  String get cardInCard;

  /// No description provided for @size.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get size;

  /// No description provided for @cardWidth.
  ///
  /// In en, this message translates to:
  /// **'Card width'**
  String get cardWidth;

  /// No description provided for @compact.
  ///
  /// In en, this message translates to:
  /// **'Compact'**
  String get compact;

  /// No description provided for @coverAndTitleOnly.
  ///
  /// In en, this message translates to:
  /// **'Cover and title only'**
  String get coverAndTitleOnly;

  /// No description provided for @titleLines.
  ///
  /// In en, this message translates to:
  /// **'Title lines'**
  String get titleLines;

  /// No description provided for @shape.
  ///
  /// In en, this message translates to:
  /// **'Shape'**
  String get shape;

  /// No description provided for @posterShape.
  ///
  /// In en, this message translates to:
  /// **'Poster shape'**
  String get posterShape;

  /// No description provided for @cornerRadius.
  ///
  /// In en, this message translates to:
  /// **'Corner radius'**
  String get cornerRadius;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get off;

  /// No description provided for @topLeft.
  ///
  /// In en, this message translates to:
  /// **'Top left'**
  String get topLeft;

  /// No description provided for @topRight.
  ///
  /// In en, this message translates to:
  /// **'Top right'**
  String get topRight;

  /// No description provided for @bottomLeft.
  ///
  /// In en, this message translates to:
  /// **'Bottom left'**
  String get bottomLeft;

  /// No description provided for @bottomRight.
  ///
  /// In en, this message translates to:
  /// **'Bottom right'**
  String get bottomRight;

  /// No description provided for @overlays.
  ///
  /// In en, this message translates to:
  /// **'Overlays'**
  String get overlays;

  /// No description provided for @progressCount.
  ///
  /// In en, this message translates to:
  /// **'Progress / count'**
  String get progressCount;

  /// No description provided for @pill.
  ///
  /// In en, this message translates to:
  /// **'Pill'**
  String get pill;

  /// No description provided for @bar.
  ///
  /// In en, this message translates to:
  /// **'Bar'**
  String get bar;

  /// No description provided for @outside.
  ///
  /// In en, this message translates to:
  /// **'Outside'**
  String get outside;

  /// No description provided for @scoreBadge.
  ///
  /// In en, this message translates to:
  /// **'Score badge'**
  String get scoreBadge;

  /// No description provided for @airingDot.
  ///
  /// In en, this message translates to:
  /// **'Airing dot'**
  String get airingDot;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Update available'**
  String get updateAvailable;

  /// No description provided for @notInstalled.
  ///
  /// In en, this message translates to:
  /// **'Not installed'**
  String get notInstalled;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @searchOrEnterUrl.
  ///
  /// In en, this message translates to:
  /// **'Search or enter URL'**
  String get searchOrEnterUrl;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @characters.
  ///
  /// In en, this message translates to:
  /// **'Characters'**
  String get characters;

  /// No description provided for @staff.
  ///
  /// In en, this message translates to:
  /// **'Staff'**
  String get staff;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read more'**
  String get readMore;

  /// No description provided for @couldNotLoadList.
  ///
  /// In en, this message translates to:
  /// **'Could not load the list'**
  String get couldNotLoadList;

  /// No description provided for @logInToFavourite.
  ///
  /// In en, this message translates to:
  /// **'Log in to add favourites'**
  String get logInToFavourite;

  /// No description provided for @alsoKnownAs.
  ///
  /// In en, this message translates to:
  /// **'Also known as'**
  String get alsoKnownAs;

  /// No description provided for @hideSpoilerNames.
  ///
  /// In en, this message translates to:
  /// **'Hide spoiler names'**
  String get hideSpoilerNames;

  /// No description provided for @showSpoilerNames.
  ///
  /// In en, this message translates to:
  /// **'Show spoiler names'**
  String get showSpoilerNames;

  /// No description provided for @favourited.
  ///
  /// In en, this message translates to:
  /// **'Favourited'**
  String get favourited;

  /// No description provided for @favourite.
  ///
  /// In en, this message translates to:
  /// **'Favourite'**
  String get favourite;

  /// No description provided for @couldNotOpenTitle.
  ///
  /// In en, this message translates to:
  /// **'Could not open this title'**
  String get couldNotOpenTitle;

  /// No description provided for @nobodyHereYet.
  ///
  /// In en, this message translates to:
  /// **'Nobody here yet'**
  String get nobodyHereYet;

  /// No description provided for @noMatches.
  ///
  /// In en, this message translates to:
  /// **'No matches'**
  String get noMatches;

  /// No description provided for @gridView.
  ///
  /// In en, this message translates to:
  /// **'Grid view'**
  String get gridView;

  /// No description provided for @fullWidth.
  ///
  /// In en, this message translates to:
  /// **'Full width'**
  String get fullWidth;

  /// No description provided for @userNotFound.
  ///
  /// In en, this message translates to:
  /// **'User not found'**
  String get userNotFound;

  /// No description provided for @couldNotUpdateFollow.
  ///
  /// In en, this message translates to:
  /// **'Could not update follow'**
  String get couldNotUpdateFollow;

  /// No description provided for @followedUser.
  ///
  /// In en, this message translates to:
  /// **'Followed {name}'**
  String followedUser(String name);

  /// No description provided for @unfollowedUser.
  ///
  /// In en, this message translates to:
  /// **'Unfollowed {name}'**
  String unfollowedUser(String name);

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @logInToSeeMessages.
  ///
  /// In en, this message translates to:
  /// **'Log in to see your messages'**
  String get logInToSeeMessages;

  /// No description provided for @editActivity.
  ///
  /// In en, this message translates to:
  /// **'Edit activity'**
  String get editActivity;

  /// No description provided for @newActivity.
  ///
  /// In en, this message translates to:
  /// **'New activity'**
  String get newActivity;

  /// No description provided for @editMessage.
  ///
  /// In en, this message translates to:
  /// **'Edit message'**
  String get editMessage;

  /// No description provided for @writeMessage.
  ///
  /// In en, this message translates to:
  /// **'Write a message'**
  String get writeMessage;

  /// No description provided for @editReply.
  ///
  /// In en, this message translates to:
  /// **'Edit reply'**
  String get editReply;

  /// No description provided for @posted.
  ///
  /// In en, this message translates to:
  /// **'Posted'**
  String get posted;

  /// No description provided for @couldNotPost.
  ///
  /// In en, this message translates to:
  /// **'Could not post'**
  String get couldNotPost;

  /// No description provided for @nothingToPreview.
  ///
  /// In en, this message translates to:
  /// **'Nothing to preview'**
  String get nothingToPreview;

  /// No description provided for @writeSomethingHint.
  ///
  /// In en, this message translates to:
  /// **'Write something… AniList markdown works here'**
  String get writeSomethingHint;

  /// No description provided for @privateMessage.
  ///
  /// In en, this message translates to:
  /// **'Private message'**
  String get privateMessage;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @nothingHere.
  ///
  /// In en, this message translates to:
  /// **'Nothing here'**
  String get nothingHere;

  /// No description provided for @noAnimeProgress.
  ///
  /// In en, this message translates to:
  /// **'No anime progress'**
  String get noAnimeProgress;

  /// No description provided for @noMangaProgress.
  ///
  /// In en, this message translates to:
  /// **'No manga progress'**
  String get noMangaProgress;

  /// No description provided for @noMessages.
  ///
  /// In en, this message translates to:
  /// **'No messages'**
  String get noMessages;

  /// No description provided for @writeMessageHint.
  ///
  /// In en, this message translates to:
  /// **'Write a message…'**
  String get writeMessageHint;

  /// No description provided for @shareSomethingHint.
  ///
  /// In en, this message translates to:
  /// **'Share something…'**
  String get shareSomethingHint;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @anime.
  ///
  /// In en, this message translates to:
  /// **'Anime'**
  String get anime;

  /// No description provided for @manga.
  ///
  /// In en, this message translates to:
  /// **'Manga'**
  String get manga;

  /// No description provided for @count.
  ///
  /// In en, this message translates to:
  /// **'Count'**
  String get count;

  /// No description provided for @hoursWatched.
  ///
  /// In en, this message translates to:
  /// **'Hours watched'**
  String get hoursWatched;

  /// No description provided for @chaptersRead.
  ///
  /// In en, this message translates to:
  /// **'Chapters read'**
  String get chaptersRead;

  /// No description provided for @meanScore.
  ///
  /// In en, this message translates to:
  /// **'Mean score'**
  String get meanScore;

  /// No description provided for @noStatsYet.
  ///
  /// In en, this message translates to:
  /// **'No stats yet'**
  String get noStatsYet;

  /// No description provided for @totalEntries.
  ///
  /// In en, this message translates to:
  /// **'Total entries'**
  String get totalEntries;

  /// No description provided for @episodesWatched.
  ///
  /// In en, this message translates to:
  /// **'Episodes watched'**
  String get episodesWatched;

  /// No description provided for @daysWatched.
  ///
  /// In en, this message translates to:
  /// **'Days watched'**
  String get daysWatched;

  /// No description provided for @volumesRead.
  ///
  /// In en, this message translates to:
  /// **'Volumes read'**
  String get volumesRead;

  /// No description provided for @standardDeviation.
  ///
  /// In en, this message translates to:
  /// **'Standard deviation'**
  String get standardDeviation;

  /// No description provided for @showMore.
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get showMore;

  /// No description provided for @followsYou.
  ///
  /// In en, this message translates to:
  /// **'Follows you'**
  String get followsYou;

  /// No description provided for @nobodyYet.
  ///
  /// In en, this message translates to:
  /// **'Nobody yet'**
  String get nobodyYet;

  /// No description provided for @logInToLike.
  ///
  /// In en, this message translates to:
  /// **'Log in to like'**
  String get logInToLike;

  /// No description provided for @failedToLikeActivity.
  ///
  /// In en, this message translates to:
  /// **'Failed to like activity'**
  String get failedToLikeActivity;

  /// No description provided for @deleteActivityConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete activity?'**
  String get deleteActivityConfirm;

  /// No description provided for @deletedActivity.
  ///
  /// In en, this message translates to:
  /// **'Deleted activity'**
  String get deletedActivity;

  /// No description provided for @failedToDeleteActivity.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete activity'**
  String get failedToDeleteActivity;

  /// No description provided for @subscribed.
  ///
  /// In en, this message translates to:
  /// **'Subscribed'**
  String get subscribed;

  /// No description provided for @unsubscribed.
  ///
  /// In en, this message translates to:
  /// **'Unsubscribed'**
  String get unsubscribed;

  /// No description provided for @failedToUpdateSubscription.
  ///
  /// In en, this message translates to:
  /// **'Failed to update subscription'**
  String get failedToUpdateSubscription;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @likedBy.
  ///
  /// In en, this message translates to:
  /// **'Liked by'**
  String get likedBy;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @nameCopied.
  ///
  /// In en, this message translates to:
  /// **'Name copied'**
  String get nameCopied;

  /// No description provided for @followsEachOther.
  ///
  /// In en, this message translates to:
  /// **'Follows each other'**
  String get followsEachOther;

  /// No description provided for @unfollow.
  ///
  /// In en, this message translates to:
  /// **'Unfollow'**
  String get unfollow;

  /// No description provided for @userIdCopied.
  ///
  /// In en, this message translates to:
  /// **'User id copied'**
  String get userIdCopied;

  /// No description provided for @shareProfile.
  ///
  /// In en, this message translates to:
  /// **'Share profile'**
  String get shareProfile;

  /// No description provided for @copyUserId.
  ///
  /// In en, this message translates to:
  /// **'Copy user id'**
  String get copyUserId;

  /// No description provided for @failedToDelete.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete'**
  String get failedToDelete;

  /// No description provided for @failedToLike.
  ///
  /// In en, this message translates to:
  /// **'Failed to like'**
  String get failedToLike;

  /// No description provided for @replies.
  ///
  /// In en, this message translates to:
  /// **'Replies'**
  String get replies;

  /// No description provided for @reply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get reply;

  /// No description provided for @noRepliesYet.
  ///
  /// In en, this message translates to:
  /// **'No replies yet'**
  String get noRepliesYet;

  /// No description provided for @favouriteAnime.
  ///
  /// In en, this message translates to:
  /// **'Favourite anime'**
  String get favouriteAnime;

  /// No description provided for @favouriteManga.
  ///
  /// In en, this message translates to:
  /// **'Favourite manga'**
  String get favouriteManga;

  /// No description provided for @favouriteCharacters.
  ///
  /// In en, this message translates to:
  /// **'Favourite characters'**
  String get favouriteCharacters;

  /// No description provided for @favouriteStaff.
  ///
  /// In en, this message translates to:
  /// **'Favourite staff'**
  String get favouriteStaff;

  /// No description provided for @favouriteStudios.
  ///
  /// In en, this message translates to:
  /// **'Favourite studios'**
  String get favouriteStudios;

  /// No description provided for @noFavouritesYet.
  ///
  /// In en, this message translates to:
  /// **'No favourites yet'**
  String get noFavouritesYet;

  /// No description provided for @yourStory.
  ///
  /// In en, this message translates to:
  /// **'Your story'**
  String get yourStory;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// No description provided for @openImage.
  ///
  /// In en, this message translates to:
  /// **'Open image'**
  String get openImage;

  /// No description provided for @hideSpoiler.
  ///
  /// In en, this message translates to:
  /// **'Hide spoiler'**
  String get hideSpoiler;

  /// No description provided for @showSpoiler.
  ///
  /// In en, this message translates to:
  /// **'Show spoiler'**
  String get showSpoiler;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @score.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get score;

  /// No description provided for @started.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get started;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @private.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get private;

  /// No description provided for @hideFromStatusLists.
  ///
  /// In en, this message translates to:
  /// **'Hide from status lists'**
  String get hideFromStatusLists;

  /// No description provided for @totalRepeats.
  ///
  /// In en, this message translates to:
  /// **'Total repeats'**
  String get totalRepeats;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @customLists.
  ///
  /// In en, this message translates to:
  /// **'Custom lists'**
  String get customLists;

  /// No description provided for @activeDays.
  ///
  /// In en, this message translates to:
  /// **'Active days'**
  String get activeDays;

  /// No description provided for @longestStreak.
  ///
  /// In en, this message translates to:
  /// **'Longest streak'**
  String get longestStreak;

  /// No description provided for @currentStreak.
  ///
  /// In en, this message translates to:
  /// **'Current streak'**
  String get currentStreak;

  /// No description provided for @tapOrHoverDay.
  ///
  /// In en, this message translates to:
  /// **'Tap or hover a day'**
  String get tapOrHoverDay;

  /// No description provided for @less.
  ///
  /// In en, this message translates to:
  /// **'Less'**
  String get less;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @epIn.
  ///
  /// In en, this message translates to:
  /// **'Ep {ep} in {time}'**
  String epIn(int ep, String time);

  /// No description provided for @sectionLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get sectionLoading;

  /// No description provided for @querySize.
  ///
  /// In en, this message translates to:
  /// **'Query size'**
  String get querySize;

  /// No description provided for @querySizeDesc.
  ///
  /// In en, this message translates to:
  /// **'One big query loads every row (and a whole profile) in a single request. Split queries send a small request per row or per profile part: each is quick and parts appear as they arrive.'**
  String get querySizeDesc;

  /// No description provided for @oneBig.
  ///
  /// In en, this message translates to:
  /// **'One big'**
  String get oneBig;

  /// No description provided for @split.
  ///
  /// In en, this message translates to:
  /// **'Split'**
  String get split;

  /// No description provided for @sectionSocial.
  ///
  /// In en, this message translates to:
  /// **'Social'**
  String get sectionSocial;

  /// No description provided for @systemNotifications.
  ///
  /// In en, this message translates to:
  /// **'System notifications'**
  String get systemNotifications;

  /// No description provided for @feedLayout.
  ///
  /// In en, this message translates to:
  /// **'Feed layout'**
  String get feedLayout;

  /// No description provided for @sectionsShown.
  ///
  /// In en, this message translates to:
  /// **'{shown} of {total} shown — tap to pick and reorder'**
  String sectionsShown(int shown, int total);

  /// No description provided for @labelSections.
  ///
  /// In en, this message translates to:
  /// **'{label} sections'**
  String labelSections(String label);

  /// No description provided for @accountOptions.
  ///
  /// In en, this message translates to:
  /// **'Account options'**
  String get accountOptions;

  /// No description provided for @accountOptionsDesc.
  ///
  /// In en, this message translates to:
  /// **'Names, score format, list order, notifications and more'**
  String get accountOptionsDesc;

  /// No description provided for @anilistAccountOptions.
  ///
  /// In en, this message translates to:
  /// **'AniList account options'**
  String get anilistAccountOptions;

  /// No description provided for @sectionPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get sectionPrivacy;

  /// No description provided for @hidePrivateEntries.
  ///
  /// In en, this message translates to:
  /// **'Hide private entries'**
  String get hidePrivateEntries;

  /// No description provided for @hidePrivateEntriesDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep entries marked private on AniList out of the feed'**
  String get hidePrivateEntriesDesc;

  /// No description provided for @anilistExcludeList.
  ///
  /// In en, this message translates to:
  /// **'Exclude your list'**
  String get anilistExcludeList;

  /// No description provided for @anilistExcludeListDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep titles already on your AniList out of the anime and manga pages'**
  String get anilistExcludeListDesc;

  /// No description provided for @anilistProfile.
  ///
  /// In en, this message translates to:
  /// **'AniList profile'**
  String get anilistProfile;

  /// No description provided for @refreshFromAnilist.
  ///
  /// In en, this message translates to:
  /// **'Refresh from AniList'**
  String get refreshFromAnilist;

  /// No description provided for @couldNotUpdateAnilistSettings.
  ///
  /// In en, this message translates to:
  /// **'Could not update AniList settings'**
  String get couldNotUpdateAnilistSettings;

  /// No description provided for @sectionNames.
  ///
  /// In en, this message translates to:
  /// **'Names'**
  String get sectionNames;

  /// No description provided for @titleLanguage.
  ///
  /// In en, this message translates to:
  /// **'Title language'**
  String get titleLanguage;

  /// No description provided for @titleLanguageDesc.
  ///
  /// In en, this message translates to:
  /// **'How titles are written everywhere, e.g. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.'**
  String get titleLanguageDesc;

  /// No description provided for @staffCharacterNames.
  ///
  /// In en, this message translates to:
  /// **'Staff and character names'**
  String get staffCharacterNames;

  /// No description provided for @sectionLists.
  ///
  /// In en, this message translates to:
  /// **'Lists'**
  String get sectionLists;

  /// No description provided for @scoreFormat.
  ///
  /// In en, this message translates to:
  /// **'Score format'**
  String get scoreFormat;

  /// No description provided for @sortListsBy.
  ///
  /// In en, this message translates to:
  /// **'Sort lists by'**
  String get sortListsBy;

  /// No description provided for @labelCustomLists.
  ///
  /// In en, this message translates to:
  /// **'{label} custom lists'**
  String labelCustomLists(String label);

  /// No description provided for @customListsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} lists — tap to add or remove'**
  String customListsCount(int count);

  /// No description provided for @mergeActivities.
  ///
  /// In en, this message translates to:
  /// **'Merge activities'**
  String get mergeActivities;

  /// No description provided for @minutesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} mins'**
  String minutesCount(int count);

  /// No description provided for @timezone.
  ///
  /// In en, this message translates to:
  /// **'Timezone'**
  String get timezone;

  /// No description provided for @notSet.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get notSet;

  /// No description provided for @airingNotifications.
  ///
  /// In en, this message translates to:
  /// **'Airing notifications'**
  String get airingNotifications;

  /// No description provided for @airingNotificationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Get notified when an episode of a followed show airs'**
  String get airingNotificationsDesc;

  /// No description provided for @displayAdultContent.
  ///
  /// In en, this message translates to:
  /// **'Display adult content'**
  String get displayAdultContent;

  /// No description provided for @displayAdultContentDesc.
  ///
  /// In en, this message translates to:
  /// **'Include 18+ titles in browse, search and feeds'**
  String get displayAdultContentDesc;

  /// No description provided for @restrictMessages.
  ///
  /// In en, this message translates to:
  /// **'Restrict messages to following'**
  String get restrictMessages;

  /// No description provided for @restrictMessagesDesc.
  ///
  /// In en, this message translates to:
  /// **'Only people you follow can message you'**
  String get restrictMessagesDesc;

  /// No description provided for @sectionServices.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get sectionServices;

  /// No description provided for @novel.
  ///
  /// In en, this message translates to:
  /// **'Novel'**
  String get novel;

  /// No description provided for @labelService.
  ///
  /// In en, this message translates to:
  /// **'{label} service'**
  String labelService(String label);

  /// No description provided for @nameSettings.
  ///
  /// In en, this message translates to:
  /// **'{name} settings'**
  String nameSettings(String name);

  /// No description provided for @extensionBridgeOptions.
  ///
  /// In en, this message translates to:
  /// **'Options from the {name} extension bridge'**
  String extensionBridgeOptions(String name);

  /// No description provided for @extensionServiceFailed.
  ///
  /// In en, this message translates to:
  /// **'{name} could not start: {error}'**
  String extensionServiceFailed(String name, String error);

  /// No description provided for @importLists.
  ///
  /// In en, this message translates to:
  /// **'Import lists'**
  String get importLists;

  /// No description provided for @importListsDesc.
  ///
  /// In en, this message translates to:
  /// **'From Aniyomi, Mihon / Tachiyomi or Kotatsu backups'**
  String get importListsDesc;

  /// No description provided for @exportLists.
  ///
  /// In en, this message translates to:
  /// **'Export lists'**
  String get exportLists;

  /// No description provided for @exportListsDesc.
  ///
  /// In en, this message translates to:
  /// **'To an Aniyomi, Mihon or Kotatsu backup'**
  String get exportListsDesc;

  /// No description provided for @sectionBrowse.
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get sectionBrowse;

  /// No description provided for @readingTab.
  ///
  /// In en, this message translates to:
  /// **'Reading tab'**
  String get readingTab;

  /// No description provided for @readingTabDesc.
  ///
  /// In en, this message translates to:
  /// **'Which extensions the third tab shows'**
  String get readingTabDesc;

  /// No description provided for @defaultFeed.
  ///
  /// In en, this message translates to:
  /// **'Default feed'**
  String get defaultFeed;

  /// No description provided for @defaultFeedDesc.
  ///
  /// In en, this message translates to:
  /// **'Which list a source opens with'**
  String get defaultFeedDesc;

  /// No description provided for @noServiceSupports.
  ///
  /// In en, this message translates to:
  /// **'No service supports {type}'**
  String noServiceSupports(String type);

  /// No description provided for @sourcesLoading.
  ///
  /// In en, this message translates to:
  /// **'{name} · {loaded} of {installed} sources loading'**
  String sourcesLoading(String name, int loaded, int installed);

  /// No description provided for @noExtensionServiceSupportsHere.
  ///
  /// In en, this message translates to:
  /// **'No extension service supports {type} here.'**
  String noExtensionServiceSupportsHere(String type);

  /// No description provided for @loadDataFrom.
  ///
  /// In en, this message translates to:
  /// **'Load data from'**
  String get loadDataFrom;

  /// No description provided for @noInstalledSourcesYet.
  ///
  /// In en, this message translates to:
  /// **'No installed {type} sources yet.'**
  String noInstalledSourcesYet(String type);

  /// No description provided for @extensionNotInstalled.
  ///
  /// In en, this message translates to:
  /// **'The extension for {name} is not installed'**
  String extensionNotInstalled(String name);

  /// No description provided for @thisSource.
  ///
  /// In en, this message translates to:
  /// **'this source'**
  String get thisSource;

  /// No description provided for @failedToAddRepository.
  ///
  /// In en, this message translates to:
  /// **'Failed to add repository: {error}'**
  String failedToAddRepository(String error);

  /// No description provided for @installedType.
  ///
  /// In en, this message translates to:
  /// **'Installed {type}'**
  String installedType(String type);

  /// No description provided for @availableType.
  ///
  /// In en, this message translates to:
  /// **'Available {type}'**
  String availableType(String type);

  /// No description provided for @noInstalledExtensions.
  ///
  /// In en, this message translates to:
  /// **'No installed {type} extensions'**
  String noInstalledExtensions(String type);

  /// No description provided for @noAvailableExtensions.
  ///
  /// In en, this message translates to:
  /// **'No available {type} extensions'**
  String noAvailableExtensions(String type);

  /// No description provided for @nothingToShowYet.
  ///
  /// In en, this message translates to:
  /// **'Nothing to show yet'**
  String get nothingToShowYet;

  /// No description provided for @addTitlesHint.
  ///
  /// In en, this message translates to:
  /// **'Add some titles to your list and they\'ll appear here.'**
  String get addTitlesHint;

  /// No description provided for @couldntLoad.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load'**
  String get couldntLoad;

  /// No description provided for @progressStyleHint.
  ///
  /// In en, this message translates to:
  /// **'Pill and bar overlay the poster; outside shows the same count as plain text instead — pick one.'**
  String get progressStyleHint;

  /// No description provided for @nixManagedUpdate.
  ///
  /// In en, this message translates to:
  /// **'This build is managed by Nix — run \"nix flake update\" on your flake and rebuild instead of updating from here'**
  String get nixManagedUpdate;

  /// No description provided for @autoUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Automatic update failed ({error}) — opening the download page instead'**
  String autoUpdateFailed(String error);

  /// No description provided for @unknownPreference.
  ///
  /// In en, this message translates to:
  /// **'Unknown preference'**
  String get unknownPreference;

  /// No description provided for @unsupportedPreferenceType.
  ///
  /// In en, this message translates to:
  /// **'Unsupported preference type {type}'**
  String unsupportedPreferenceType(String type);

  /// No description provided for @notYetReleased.
  ///
  /// In en, this message translates to:
  /// **'Not Yet Released'**
  String get notYetReleased;

  /// No description provided for @notStarted.
  ///
  /// In en, this message translates to:
  /// **'Not Started'**
  String get notStarted;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// No description provided for @chooseBackupDialog.
  ///
  /// In en, this message translates to:
  /// **'Choose an Aniyomi, Mihon or Kotatsu backup'**
  String get chooseBackupDialog;

  /// No description provided for @importListsHint.
  ///
  /// In en, this message translates to:
  /// **'Bring a library over from Aniyomi, Mihon / Tachiyomi or Kotatsu. Titles, covers, progress and categories are kept.'**
  String get importListsHint;

  /// No description provided for @chooseBackupFile.
  ///
  /// In en, this message translates to:
  /// **'Choose backup file'**
  String get chooseBackupFile;

  /// No description provided for @importAnimeCount.
  ///
  /// In en, this message translates to:
  /// **'Import {count} anime'**
  String importAnimeCount(int count);

  /// No description provided for @importMangaCount.
  ///
  /// In en, this message translates to:
  /// **'Import {count} manga'**
  String importMangaCount(int count);

  /// No description provided for @mergeWithExisting.
  ///
  /// In en, this message translates to:
  /// **'Merge with existing lists'**
  String get mergeWithExisting;

  /// No description provided for @mergeWithExistingDesc.
  ///
  /// In en, this message translates to:
  /// **'Keeps what you already have; off replaces matching titles'**
  String get mergeWithExistingDesc;

  /// No description provided for @chooseAnother.
  ///
  /// In en, this message translates to:
  /// **'Choose another'**
  String get chooseAnother;

  /// No description provided for @import.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get import;

  /// No description provided for @animeCount.
  ///
  /// In en, this message translates to:
  /// **'{count} anime'**
  String animeCount(int count);

  /// No description provided for @mangaCount.
  ///
  /// In en, this message translates to:
  /// **'{count} manga'**
  String mangaCount(int count);

  /// No description provided for @chooseSaveLocation.
  ///
  /// In en, this message translates to:
  /// **'Choose where to save the backup'**
  String get chooseSaveLocation;

  /// No description provided for @savedPath.
  ///
  /// In en, this message translates to:
  /// **'Saved {path}'**
  String savedPath(String path);

  /// No description provided for @exportFailed.
  ///
  /// In en, this message translates to:
  /// **'Export failed: {error}'**
  String exportFailed(String error);

  /// No description provided for @nothingInLocalLists.
  ///
  /// In en, this message translates to:
  /// **'Nothing in your local lists yet.'**
  String get nothingInLocalLists;

  /// No description provided for @exportsSummary.
  ///
  /// In en, this message translates to:
  /// **'Exports {anime} anime and {manga} manga from your local lists. Kotatsu only supports manga.'**
  String exportsSummary(int anime, int manga);

  /// No description provided for @saveToFolder.
  ///
  /// In en, this message translates to:
  /// **'Save to folder'**
  String get saveToFolder;

  /// No description provided for @formatAnimeManga.
  ///
  /// In en, this message translates to:
  /// **'Anime and manga · .tachibk'**
  String get formatAnimeManga;

  /// No description provided for @formatMangaTachibk.
  ///
  /// In en, this message translates to:
  /// **'Manga only · .tachibk'**
  String get formatMangaTachibk;

  /// No description provided for @formatMangaZip.
  ///
  /// In en, this message translates to:
  /// **'Manga only · .zip'**
  String get formatMangaZip;

  /// No description provided for @genres.
  ///
  /// In en, this message translates to:
  /// **'Genres'**
  String get genres;

  /// No description provided for @relations.
  ///
  /// In en, this message translates to:
  /// **'Relations'**
  String get relations;

  /// No description provided for @recommendations.
  ///
  /// In en, this message translates to:
  /// **'Recommendations'**
  String get recommendations;

  /// No description provided for @openings.
  ///
  /// In en, this message translates to:
  /// **'Openings'**
  String get openings;

  /// No description provided for @endings.
  ///
  /// In en, this message translates to:
  /// **'Endings'**
  String get endings;

  /// No description provided for @background.
  ///
  /// In en, this message translates to:
  /// **'Background'**
  String get background;

  /// No description provided for @links.
  ///
  /// In en, this message translates to:
  /// **'Links'**
  String get links;

  /// No description provided for @rank.
  ///
  /// In en, this message translates to:
  /// **'Rank'**
  String get rank;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get members;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @episodes.
  ///
  /// In en, this message translates to:
  /// **'Episodes'**
  String get episodes;

  /// No description provided for @chapters.
  ///
  /// In en, this message translates to:
  /// **'Chapters'**
  String get chapters;

  /// No description provided for @volumes.
  ///
  /// In en, this message translates to:
  /// **'Volumes'**
  String get volumes;

  /// No description provided for @format.
  ///
  /// In en, this message translates to:
  /// **'Format'**
  String get format;

  /// No description provided for @source.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get source;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @minutesPerEpisode.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min per ep'**
  String minutesPerEpisode(int minutes);

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @studio.
  ///
  /// In en, this message translates to:
  /// **'Studio'**
  String get studio;

  /// No description provided for @serialization.
  ///
  /// In en, this message translates to:
  /// **'Serialization'**
  String get serialization;

  /// No description provided for @season.
  ///
  /// In en, this message translates to:
  /// **'Season'**
  String get season;

  /// No description provided for @broadcast.
  ///
  /// In en, this message translates to:
  /// **'Broadcast'**
  String get broadcast;

  /// No description provided for @aired.
  ///
  /// In en, this message translates to:
  /// **'Aired'**
  String get aired;

  /// No description provided for @published.
  ///
  /// In en, this message translates to:
  /// **'Published'**
  String get published;

  /// No description provided for @popularity.
  ///
  /// In en, this message translates to:
  /// **'Popularity'**
  String get popularity;

  /// No description provided for @community.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get community;

  /// No description provided for @watching.
  ///
  /// In en, this message translates to:
  /// **'Watching'**
  String get watching;

  /// No description provided for @reading.
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get reading;

  /// No description provided for @dropped.
  ///
  /// In en, this message translates to:
  /// **'Dropped'**
  String get dropped;

  /// No description provided for @planned.
  ///
  /// In en, this message translates to:
  /// **'Planned'**
  String get planned;

  /// No description provided for @trailers.
  ///
  /// In en, this message translates to:
  /// **'Trailers'**
  String get trailers;

  /// No description provided for @ratings.
  ///
  /// In en, this message translates to:
  /// **'Ratings'**
  String get ratings;

  /// No description provided for @originalTitle.
  ///
  /// In en, this message translates to:
  /// **'Original'**
  String get originalTitle;

  /// No description provided for @titleLabel.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get titleLabel;

  /// No description provided for @votes.
  ///
  /// In en, this message translates to:
  /// **'Votes'**
  String get votes;

  /// No description provided for @watchedStat.
  ///
  /// In en, this message translates to:
  /// **'Watched'**
  String get watchedStat;

  /// No description provided for @runtime.
  ///
  /// In en, this message translates to:
  /// **'Runtime'**
  String get runtime;

  /// No description provided for @director.
  ///
  /// In en, this message translates to:
  /// **'Director'**
  String get director;

  /// No description provided for @network.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get network;

  /// No description provided for @certification.
  ///
  /// In en, this message translates to:
  /// **'Certification'**
  String get certification;

  /// No description provided for @airs.
  ///
  /// In en, this message translates to:
  /// **'Airs'**
  String get airs;

  /// No description provided for @budget.
  ///
  /// In en, this message translates to:
  /// **'Budget'**
  String get budget;

  /// No description provided for @revenue.
  ///
  /// In en, this message translates to:
  /// **'Revenue'**
  String get revenue;

  /// No description provided for @released.
  ///
  /// In en, this message translates to:
  /// **'Released'**
  String get released;

  /// No description provided for @tags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get tags;

  /// No description provided for @author.
  ///
  /// In en, this message translates to:
  /// **'Author'**
  String get author;

  /// No description provided for @born.
  ///
  /// In en, this message translates to:
  /// **'Born'**
  String get born;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website;

  /// No description provided for @established.
  ///
  /// In en, this message translates to:
  /// **'Established'**
  String get established;

  /// No description provided for @manhwa.
  ///
  /// In en, this message translates to:
  /// **'Manhwa'**
  String get manhwa;

  /// No description provided for @manhua.
  ///
  /// In en, this message translates to:
  /// **'Manhua'**
  String get manhua;

  /// No description provided for @novels.
  ///
  /// In en, this message translates to:
  /// **'Novels'**
  String get novels;

  /// No description provided for @thisMonth.
  ///
  /// In en, this message translates to:
  /// **'This month'**
  String get thisMonth;

  /// No description provided for @movies.
  ///
  /// In en, this message translates to:
  /// **'Movies'**
  String get movies;

  /// No description provided for @shows.
  ///
  /// In en, this message translates to:
  /// **'Shows'**
  String get shows;

  /// No description provided for @rewatching.
  ///
  /// In en, this message translates to:
  /// **'Rewatching'**
  String get rewatching;

  /// No description provided for @rereading.
  ///
  /// In en, this message translates to:
  /// **'Rereading'**
  String get rereading;

  /// No description provided for @watchedStatus.
  ///
  /// In en, this message translates to:
  /// **'Watched'**
  String get watchedStatus;

  /// No description provided for @planning.
  ///
  /// In en, this message translates to:
  /// **'Planning'**
  String get planning;

  /// No description provided for @paused.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get paused;

  /// No description provided for @watch.
  ///
  /// In en, this message translates to:
  /// **'Watch'**
  String get watch;

  /// No description provided for @read.
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get read;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get finished;

  /// No description provided for @releasing.
  ///
  /// In en, this message translates to:
  /// **'Releasing'**
  String get releasing;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @hiatus.
  ///
  /// In en, this message translates to:
  /// **'Hiatus'**
  String get hiatus;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @syncToService.
  ///
  /// In en, this message translates to:
  /// **'Sync to {service}'**
  String syncToService(String service);

  /// No description provided for @syncedToService.
  ///
  /// In en, this message translates to:
  /// **'Synced to {service}'**
  String syncedToService(String service);

  /// No description provided for @latestReleases.
  ///
  /// In en, this message translates to:
  /// **'Latest Releases'**
  String get latestReleases;

  /// No description provided for @topRated.
  ///
  /// In en, this message translates to:
  /// **'Top Rated'**
  String get topRated;

  /// No description provided for @localSection.
  ///
  /// In en, this message translates to:
  /// **'{title} · Local'**
  String localSection(String title);

  /// No description provided for @localEntryNote.
  ///
  /// In en, this message translates to:
  /// **'This title is only in your local list on this device. Editing is turned off here because it could clash with your account list; you can still remove it.'**
  String get localEntryNote;

  /// No description provided for @cardPresetPoster.
  ///
  /// In en, this message translates to:
  /// **'Poster'**
  String get cardPresetPoster;

  /// No description provided for @cardPresetCard.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get cardPresetCard;

  /// No description provided for @cardPresetCozy.
  ///
  /// In en, this message translates to:
  /// **'Cozy'**
  String get cardPresetCozy;

  /// No description provided for @sortTopRated.
  ///
  /// In en, this message translates to:
  /// **'Top rated'**
  String get sortTopRated;

  /// No description provided for @sortMostPopular.
  ///
  /// In en, this message translates to:
  /// **'Most popular'**
  String get sortMostPopular;

  /// No description provided for @sortTrending.
  ///
  /// In en, this message translates to:
  /// **'Trending'**
  String get sortTrending;

  /// No description provided for @sortNewest.
  ///
  /// In en, this message translates to:
  /// **'Newest'**
  String get sortNewest;

  /// No description provided for @sortAz.
  ///
  /// In en, this message translates to:
  /// **'A–Z'**
  String get sortAz;

  /// No description provided for @sortMostFavourited.
  ///
  /// In en, this message translates to:
  /// **'Most favourited'**
  String get sortMostFavourited;

  /// No description provided for @anyCountry.
  ///
  /// In en, this message translates to:
  /// **'Any country'**
  String get anyCountry;

  /// No description provided for @orderScore.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get orderScore;

  /// No description provided for @orderTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get orderTitle;

  /// No description provided for @orderLastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last Updated'**
  String get orderLastUpdated;

  /// No description provided for @orderLastAdded.
  ///
  /// In en, this message translates to:
  /// **'Last Added'**
  String get orderLastAdded;

  /// No description provided for @never.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get never;

  /// No description provided for @always.
  ///
  /// In en, this message translates to:
  /// **'Always'**
  String get always;

  /// No description provided for @scorePoint100.
  ///
  /// In en, this message translates to:
  /// **'100 Point'**
  String get scorePoint100;

  /// No description provided for @scorePoint10Decimal.
  ///
  /// In en, this message translates to:
  /// **'10 Point Decimal'**
  String get scorePoint10Decimal;

  /// No description provided for @scorePoint10.
  ///
  /// In en, this message translates to:
  /// **'10 Point'**
  String get scorePoint10;

  /// No description provided for @scorePoint5.
  ///
  /// In en, this message translates to:
  /// **'5 Star'**
  String get scorePoint5;

  /// No description provided for @scorePoint3.
  ///
  /// In en, this message translates to:
  /// **'3 Point Smiley'**
  String get scorePoint3;

  /// No description provided for @hoursCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 hour} other{{count} hours}}'**
  String hoursCount(int count);

  /// No description provided for @daysCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day} other{{count} days}}'**
  String daysCount(int count);

  /// No description provided for @weeksCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 week} other{{count} weeks}}'**
  String weeksCount(int count);

  /// No description provided for @resumeTitle.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get resumeTitle;

  /// No description provided for @resumeSourceMissing.
  ///
  /// In en, this message translates to:
  /// **'Install this title\'s source to resume'**
  String get resumeSourceMissing;

  /// No description provided for @resumeRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove from resume'**
  String get resumeRemove;

  /// No description provided for @resumeMissing.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t find {title} in this source'**
  String resumeMissing(String title);

  /// No description provided for @resumeAt.
  ///
  /// In en, this message translates to:
  /// **'{time} left'**
  String resumeAt(String time);

  /// No description provided for @resumePage.
  ///
  /// In en, this message translates to:
  /// **'Page {page} of {total}'**
  String resumePage(int page, int total);

  /// No description provided for @continueWatching.
  ///
  /// In en, this message translates to:
  /// **'Continue Watching'**
  String get continueWatching;

  /// No description provided for @continueReading.
  ///
  /// In en, this message translates to:
  /// **'Continue Reading'**
  String get continueReading;

  /// No description provided for @favouriteAnimeSection.
  ///
  /// In en, this message translates to:
  /// **'Favourite Anime'**
  String get favouriteAnimeSection;

  /// No description provided for @favouriteMangaSection.
  ///
  /// In en, this message translates to:
  /// **'Favourite Manga'**
  String get favouriteMangaSection;

  /// No description provided for @plannedAnime.
  ///
  /// In en, this message translates to:
  /// **'Planned Anime'**
  String get plannedAnime;

  /// No description provided for @plannedManga.
  ///
  /// In en, this message translates to:
  /// **'Planned Manga'**
  String get plannedManga;

  /// No description provided for @completedAnime.
  ///
  /// In en, this message translates to:
  /// **'Completed Anime'**
  String get completedAnime;

  /// No description provided for @completedManga.
  ///
  /// In en, this message translates to:
  /// **'Completed Manga'**
  String get completedManga;

  /// No description provided for @hiddenMedia.
  ///
  /// In en, this message translates to:
  /// **'Hidden Media'**
  String get hiddenMedia;

  /// No description provided for @recentUpdates.
  ///
  /// In en, this message translates to:
  /// **'Recent Updates'**
  String get recentUpdates;

  /// No description provided for @trendingNow.
  ///
  /// In en, this message translates to:
  /// **'Trending Now'**
  String get trendingNow;

  /// No description provided for @popularThisSeason.
  ///
  /// In en, this message translates to:
  /// **'Popular This Season'**
  String get popularThisSeason;

  /// No description provided for @trendingMovies.
  ///
  /// In en, this message translates to:
  /// **'Trending Movies'**
  String get trendingMovies;

  /// No description provided for @topRatedSeries.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Series'**
  String get topRatedSeries;

  /// No description provided for @mostFavouriteSeries.
  ///
  /// In en, this message translates to:
  /// **'Most Favourite Series'**
  String get mostFavouriteSeries;

  /// No description provided for @popularAnime.
  ///
  /// In en, this message translates to:
  /// **'Popular Anime'**
  String get popularAnime;

  /// No description provided for @trendingManhwa.
  ///
  /// In en, this message translates to:
  /// **'Trending Manhwa'**
  String get trendingManhwa;

  /// No description provided for @trendingNovels.
  ///
  /// In en, this message translates to:
  /// **'Trending Novels'**
  String get trendingNovels;

  /// No description provided for @topRatedManga.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Manga'**
  String get topRatedManga;

  /// No description provided for @mostFavouriteManga.
  ///
  /// In en, this message translates to:
  /// **'Most Favourite Manga'**
  String get mostFavouriteManga;

  /// No description provided for @popularManga.
  ///
  /// In en, this message translates to:
  /// **'Popular Manga'**
  String get popularManga;

  /// No description provided for @topMovies.
  ///
  /// In en, this message translates to:
  /// **'Top Movies'**
  String get topMovies;

  /// No description provided for @topOna.
  ///
  /// In en, this message translates to:
  /// **'Top ONA'**
  String get topOna;

  /// No description provided for @topOva.
  ///
  /// In en, this message translates to:
  /// **'Top OVA'**
  String get topOva;

  /// No description provided for @mostPopular.
  ///
  /// In en, this message translates to:
  /// **'Most Popular'**
  String get mostPopular;

  /// No description provided for @mostFavourite.
  ///
  /// In en, this message translates to:
  /// **'Most Favourite'**
  String get mostFavourite;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @topManga.
  ///
  /// In en, this message translates to:
  /// **'Top Manga'**
  String get topManga;

  /// No description provided for @topManhwa.
  ///
  /// In en, this message translates to:
  /// **'Top Manhwa'**
  String get topManhwa;

  /// No description provided for @topManhua.
  ///
  /// In en, this message translates to:
  /// **'Top Manhua'**
  String get topManhua;

  /// No description provided for @topNovels.
  ///
  /// In en, this message translates to:
  /// **'Top Novels'**
  String get topNovels;

  /// No description provided for @topOneShots.
  ///
  /// In en, this message translates to:
  /// **'Top One-shots'**
  String get topOneShots;

  /// No description provided for @trendingMoviesToday.
  ///
  /// In en, this message translates to:
  /// **'Trending Movies Today'**
  String get trendingMoviesToday;

  /// No description provided for @trendingShowsToday.
  ///
  /// In en, this message translates to:
  /// **'Trending Shows Today'**
  String get trendingShowsToday;

  /// No description provided for @trendingMoviesWeek.
  ///
  /// In en, this message translates to:
  /// **'Trending Movies This Week'**
  String get trendingMoviesWeek;

  /// No description provided for @trendingShowsWeek.
  ///
  /// In en, this message translates to:
  /// **'Trending Shows This Week'**
  String get trendingShowsWeek;

  /// No description provided for @mostWatchedMoviesMonth.
  ///
  /// In en, this message translates to:
  /// **'Most Watched Movies This Month'**
  String get mostWatchedMoviesMonth;

  /// No description provided for @mostWatchedShowsMonth.
  ///
  /// In en, this message translates to:
  /// **'Most Watched Shows This Month'**
  String get mostWatchedShowsMonth;

  /// No description provided for @trendingThisWeek.
  ///
  /// In en, this message translates to:
  /// **'Trending This Week'**
  String get trendingThisWeek;

  /// No description provided for @mostWatchedThisMonth.
  ///
  /// In en, this message translates to:
  /// **'Most Watched This Month'**
  String get mostWatchedThisMonth;

  /// No description provided for @repoLinksAdded.
  ///
  /// In en, this message translates to:
  /// **'Added Repo Links Successfully!'**
  String get repoLinksAdded;

  /// No description provided for @errorGettingAnilistData.
  ///
  /// In en, this message translates to:
  /// **'Error getting data from AniList.'**
  String get errorGettingAnilistData;

  /// No description provided for @navInfo.
  ///
  /// In en, this message translates to:
  /// **'INFO'**
  String get navInfo;

  /// No description provided for @navComments.
  ///
  /// In en, this message translates to:
  /// **'COMMENTS'**
  String get navComments;

  /// No description provided for @playerNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'The player is not available yet'**
  String get playerNotAvailable;

  /// No description provided for @deepLinkInitialError.
  ///
  /// In en, this message translates to:
  /// **'Error getting initial deep link: {error}'**
  String deepLinkInitialError(String error);

  /// No description provided for @deepLinkOpenError.
  ///
  /// In en, this message translates to:
  /// **'Error Opening link: {error}'**
  String deepLinkOpenError(String error);

  /// No description provided for @linkCantBeOpened.
  ///
  /// In en, this message translates to:
  /// **'This link can\'t be opened: {link}'**
  String linkCantBeOpened(String link);

  /// No description provided for @linkOpenError.
  ///
  /// In en, this message translates to:
  /// **'Error opening link: {error}'**
  String linkOpenError(String error);

  /// No description provided for @forReleasingTitles.
  ///
  /// In en, this message translates to:
  /// **'for currently releasing titles'**
  String get forReleasingTitles;

  /// No description provided for @progress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @serviceNotFound.
  ///
  /// In en, this message translates to:
  /// **'Service \"{id}\" not found'**
  String serviceNotFound(String id);

  /// No description provided for @glassEffectEnabled.
  ///
  /// In en, this message translates to:
  /// **'Glass effect enabled'**
  String get glassEffectEnabled;

  /// No description provided for @glassEffectDisabled.
  ///
  /// In en, this message translates to:
  /// **'Glass effect disabled'**
  String get glassEffectDisabled;

  /// No description provided for @materialYouEnabled.
  ///
  /// In en, this message translates to:
  /// **'Material You enabled'**
  String get materialYouEnabled;

  /// No description provided for @materialYouDisabled.
  ///
  /// In en, this message translates to:
  /// **'Material You disabled'**
  String get materialYouDisabled;

  /// No description provided for @darkModeEnabled.
  ///
  /// In en, this message translates to:
  /// **'Dark mode enabled'**
  String get darkModeEnabled;

  /// No description provided for @darkModeDisabled.
  ///
  /// In en, this message translates to:
  /// **'Dark mode disabled'**
  String get darkModeDisabled;

  /// No description provided for @animeList.
  ///
  /// In en, this message translates to:
  /// **'Anime list'**
  String get animeList;

  /// No description provided for @mangaList.
  ///
  /// In en, this message translates to:
  /// **'Manga list'**
  String get mangaList;

  /// No description provided for @ownerAnimeList.
  ///
  /// In en, this message translates to:
  /// **'{owner}\'s anime list'**
  String ownerAnimeList(String owner);

  /// No description provided for @ownerMangaList.
  ///
  /// In en, this message translates to:
  /// **'{owner}\'s manga list'**
  String ownerMangaList(String owner);

  /// No description provided for @loadingList.
  ///
  /// In en, this message translates to:
  /// **'Loading list'**
  String get loadingList;

  /// No description provided for @earlier.
  ///
  /// In en, this message translates to:
  /// **'Earlier'**
  String get earlier;

  /// No description provided for @daysAgo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day ago} other{{count} days ago}}'**
  String daysAgo(int count);

  /// No description provided for @hoursAgo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 hour ago} other{{count} hours ago}}'**
  String hoursAgo(int count);

  /// No description provided for @minutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 minute ago} other{{count} minutes ago}}'**
  String minutesAgo(int count);

  /// No description provided for @minutesAgoShort.
  ///
  /// In en, this message translates to:
  /// **'{count}m ago'**
  String minutesAgoShort(int count);

  /// No description provided for @hoursAgoShort.
  ///
  /// In en, this message translates to:
  /// **'{count}h ago'**
  String hoursAgoShort(int count);

  /// No description provided for @daysAgoShort.
  ///
  /// In en, this message translates to:
  /// **'{count}d ago'**
  String daysAgoShort(int count);

  /// No description provided for @weeksAgoShort.
  ///
  /// In en, this message translates to:
  /// **'{count}w ago'**
  String weeksAgoShort(int count);

  /// No description provided for @couldntLoadSource.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load this source'**
  String get couldntLoadSource;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// No description provided for @couldntLoadTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load {title}'**
  String couldntLoadTitle(String title);

  /// No description provided for @userTitle.
  ///
  /// In en, this message translates to:
  /// **'{name} · {title}'**
  String userTitle(String name, String title);

  /// No description provided for @couldntLoadProfile.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load this profile'**
  String get couldntLoadProfile;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @feed.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get feed;

  /// No description provided for @stats.
  ///
  /// In en, this message translates to:
  /// **'Stats'**
  String get stats;

  /// No description provided for @received.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get received;

  /// No description provided for @sent.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get sent;

  /// No description provided for @global.
  ///
  /// In en, this message translates to:
  /// **'Global'**
  String get global;

  /// No description provided for @couldntLoadPage.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load this page'**
  String get couldntLoadPage;

  /// No description provided for @couldntLoadAllDetails.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load all details'**
  String get couldntLoadAllDetails;

  /// No description provided for @series.
  ///
  /// In en, this message translates to:
  /// **'Series'**
  String get series;

  /// No description provided for @studios.
  ///
  /// In en, this message translates to:
  /// **'Studios'**
  String get studios;

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get users;

  /// No description provided for @repositoriesTitle.
  ///
  /// In en, this message translates to:
  /// **'{type} Repositories'**
  String repositoriesTitle(String type);

  /// No description provided for @repositoryUrl.
  ///
  /// In en, this message translates to:
  /// **'Repository URL'**
  String get repositoryUrl;

  /// No description provided for @downloadingRepository.
  ///
  /// In en, this message translates to:
  /// **'Downloading repository…'**
  String get downloadingRepository;

  /// No description provided for @noRepositories.
  ///
  /// In en, this message translates to:
  /// **'No repositories added'**
  String get noRepositories;

  /// No description provided for @repoExtensionsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} extensions'**
  String repoExtensionsCount(String count);

  /// No description provided for @searchExtensions.
  ///
  /// In en, this message translates to:
  /// **'Search extensions...'**
  String get searchExtensions;

  /// No description provided for @deletePluginTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete {name}?'**
  String deletePluginTitle(String name);

  /// No description provided for @deletePluginMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this plugin?'**
  String get deletePluginMessage;

  /// No description provided for @pluginDeleted.
  ///
  /// In en, this message translates to:
  /// **'{name} deleted'**
  String pluginDeleted(String name);

  /// No description provided for @pluginNotInRepo.
  ///
  /// In en, this message translates to:
  /// **'{name} is not available in the configured repo'**
  String pluginNotInRepo(String name);

  /// No description provided for @pluginFetchFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch plugin info'**
  String get pluginFetchFailed;

  /// No description provided for @installPluginTitle.
  ///
  /// In en, this message translates to:
  /// **'Install {name}'**
  String installPluginTitle(String name);

  /// No description provided for @sizeLabel.
  ///
  /// In en, this message translates to:
  /// **'Size: {size}'**
  String sizeLabel(String size);

  /// No description provided for @installedState.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get installedState;

  /// No description provided for @errorLabel.
  ///
  /// In en, this message translates to:
  /// **'Error:'**
  String get errorLabel;

  /// No description provided for @stackTraceDetails.
  ///
  /// In en, this message translates to:
  /// **'Details (Stack Trace)'**
  String get stackTraceDetails;

  /// No description provided for @shareLogFile.
  ///
  /// In en, this message translates to:
  /// **'Share log file'**
  String get shareLogFile;

  /// No description provided for @copyLogs.
  ///
  /// In en, this message translates to:
  /// **'Copy Logs'**
  String get copyLogs;

  /// No description provided for @noListToEdit.
  ///
  /// In en, this message translates to:
  /// **'{service} has no list to edit'**
  String noListToEdit(String service);

  /// No description provided for @couldNotReadFile.
  ///
  /// In en, this message translates to:
  /// **'Could not read that file'**
  String get couldNotReadFile;

  /// No description provided for @importedSummary.
  ///
  /// In en, this message translates to:
  /// **'Imported {anime} anime and {manga} manga'**
  String importedSummary(int anime, int manga);

  /// No description provided for @alreadyThere.
  ///
  /// In en, this message translates to:
  /// **' · {count} already there'**
  String alreadyThere(int count);

  /// No description provided for @airingNow.
  ///
  /// In en, this message translates to:
  /// **'Airing now'**
  String get airingNow;

  /// No description provided for @topRatedMovies.
  ///
  /// In en, this message translates to:
  /// **'Top rated movies'**
  String get topRatedMovies;

  /// No description provided for @koreanDramas.
  ///
  /// In en, this message translates to:
  /// **'Korean Dramas'**
  String get koreanDramas;

  /// No description provided for @chineseDramas.
  ///
  /// In en, this message translates to:
  /// **'Chinese Dramas'**
  String get chineseDramas;

  /// No description provided for @japaneseDramas.
  ///
  /// In en, this message translates to:
  /// **'Japanese Dramas'**
  String get japaneseDramas;

  /// No description provided for @thaiDramas.
  ///
  /// In en, this message translates to:
  /// **'Thai Dramas'**
  String get thaiDramas;

  /// No description provided for @turkishDramas.
  ///
  /// In en, this message translates to:
  /// **'Turkish Dramas'**
  String get turkishDramas;

  /// No description provided for @miniSeries.
  ///
  /// In en, this message translates to:
  /// **'Mini Series'**
  String get miniSeries;

  /// No description provided for @topRatedShows.
  ///
  /// In en, this message translates to:
  /// **'Top rated shows'**
  String get topRatedShows;

  /// No description provided for @recommendedSection.
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get recommendedSection;

  /// No description provided for @syncRow.
  ///
  /// In en, this message translates to:
  /// **'Sync lists'**
  String get syncRow;

  /// No description provided for @syncRowDesc.
  ///
  /// In en, this message translates to:
  /// **'Mirror one service\'s list onto your other accounts'**
  String get syncRowDesc;

  /// No description provided for @syncTitle.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get syncTitle;

  /// No description provided for @syncMainService.
  ///
  /// In en, this message translates to:
  /// **'Main service'**
  String get syncMainService;

  /// No description provided for @syncMainServiceDesc.
  ///
  /// In en, this message translates to:
  /// **'Its list is the source of truth; every other signed-in service is updated to match'**
  String get syncMainServiceDesc;

  /// No description provided for @syncAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto sync'**
  String get syncAuto;

  /// No description provided for @syncAutoDesc.
  ///
  /// In en, this message translates to:
  /// **'Fetch and sync in the background when the app opens and every 30 minutes'**
  String get syncAutoDesc;

  /// No description provided for @syncAddMissing.
  ///
  /// In en, this message translates to:
  /// **'Add missing entries'**
  String get syncAddMissing;

  /// No description provided for @syncAddMissingDesc.
  ///
  /// In en, this message translates to:
  /// **'Also add entries the other service doesn\'t have yet'**
  String get syncAddMissingDesc;

  /// No description provided for @syncOnlyForward.
  ///
  /// In en, this message translates to:
  /// **'Keep further progress'**
  String get syncOnlyForward;

  /// No description provided for @syncOnlyForwardDesc.
  ///
  /// In en, this message translates to:
  /// **'Don\'t lower the progress of a service that is already ahead'**
  String get syncOnlyForwardDesc;

  /// No description provided for @syncFetch.
  ///
  /// In en, this message translates to:
  /// **'Fetch'**
  String get syncFetch;

  /// No description provided for @syncFetchAgain.
  ///
  /// In en, this message translates to:
  /// **'Fetch again'**
  String get syncFetchAgain;

  /// No description provided for @syncAll.
  ///
  /// In en, this message translates to:
  /// **'Sync all'**
  String get syncAll;

  /// No description provided for @syncStop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get syncStop;

  /// No description provided for @syncResume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get syncResume;

  /// No description provided for @syncNothingToSync.
  ///
  /// In en, this message translates to:
  /// **'This service can\'t be synced for this type'**
  String get syncNothingToSync;

  /// No description provided for @syncNoTargets.
  ///
  /// In en, this message translates to:
  /// **'Sign in to another service to sync with'**
  String get syncNoTargets;

  /// No description provided for @syncLoadingMap.
  ///
  /// In en, this message translates to:
  /// **'Loading ID mapping'**
  String get syncLoadingMap;

  /// No description provided for @syncComparing.
  ///
  /// In en, this message translates to:
  /// **'Comparing lists'**
  String get syncComparing;

  /// No description provided for @syncIntro.
  ///
  /// In en, this message translates to:
  /// **'Pick a main service and press Fetch. Each service is queried once for your list, then compared with the main one.'**
  String get syncIntro;

  /// No description provided for @syncStateSynced.
  ///
  /// In en, this message translates to:
  /// **'Synced'**
  String get syncStateSynced;

  /// No description provided for @syncStateOutdated.
  ///
  /// In en, this message translates to:
  /// **'Out of sync'**
  String get syncStateOutdated;

  /// No description provided for @syncStateMissing.
  ///
  /// In en, this message translates to:
  /// **'Not in list'**
  String get syncStateMissing;

  /// No description provided for @syncStateUnmapped.
  ///
  /// In en, this message translates to:
  /// **'No match'**
  String get syncStateUnmapped;

  /// No description provided for @syncPaused.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the rate limit, resumes in {time}'**
  String syncPaused(String time);

  /// No description provided for @syncOnlyIn.
  ///
  /// In en, this message translates to:
  /// **'{count} only on {name}, left untouched'**
  String syncOnlyIn(int count, String name);

  /// No description provided for @syncProgressOf.
  ///
  /// In en, this message translates to:
  /// **'{done} of {total}'**
  String syncProgressOf(int done, int total);

  /// No description provided for @syncNothingHere.
  ///
  /// In en, this message translates to:
  /// **'Nothing to show'**
  String get syncNothingHere;

  /// No description provided for @syncLimits.
  ///
  /// In en, this message translates to:
  /// **'{used} of {max} requests used this {window}'**
  String syncLimits(int used, int max, String window);

  /// No description provided for @syncMinute.
  ///
  /// In en, this message translates to:
  /// **'minute'**
  String get syncMinute;

  /// No description provided for @syncDay.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get syncDay;

  /// No description provided for @syncNotInList.
  ///
  /// In en, this message translates to:
  /// **'Not in list yet'**
  String get syncNotInList;

  /// No description provided for @syncCleared.
  ///
  /// In en, this message translates to:
  /// **'Plan cleared'**
  String get syncCleared;

  /// No description provided for @syncClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get syncClear;

  /// No description provided for @syncOptions.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get syncOptions;

  /// No description provided for @syncShared.
  ///
  /// In en, this message translates to:
  /// **'Shares its entry with another item'**
  String get syncShared;

  /// No description provided for @syncNotFound.
  ///
  /// In en, this message translates to:
  /// **'Not found on {service}'**
  String syncNotFound(String service);

  /// No description provided for @syncService.
  ///
  /// In en, this message translates to:
  /// **'Sync {service} ({count})'**
  String syncService(String service, int count);

  /// No description provided for @syncOnEdit.
  ///
  /// In en, this message translates to:
  /// **'Sync changes instantly'**
  String get syncOnEdit;

  /// No description provided for @syncOnEditDesc.
  ///
  /// In en, this message translates to:
  /// **'Push every progress update and list edit to your other signed-in services right away'**
  String get syncOnEditDesc;

  /// No description provided for @syncPushed.
  ///
  /// In en, this message translates to:
  /// **'Synced to {services}'**
  String syncPushed(String services);

  /// No description provided for @syncPushFailed.
  ///
  /// In en, this message translates to:
  /// **'{service}: {error}'**
  String syncPushFailed(String service, String error);

  /// No description provided for @syncRateLimited.
  ///
  /// In en, this message translates to:
  /// **'Rate limited, try again in a moment'**
  String get syncRateLimited;

  /// No description provided for @syncAhead.
  ///
  /// In en, this message translates to:
  /// **'Whichever is ahead'**
  String get syncAhead;

  /// No description provided for @syncAheadDesc.
  ///
  /// In en, this message translates to:
  /// **'Two-way: for every title the entry that is furthest along wins and is copied to all your other services'**
  String get syncAheadDesc;

  /// No description provided for @syncAheadFrom.
  ///
  /// In en, this message translates to:
  /// **'From {service}'**
  String syncAheadFrom(String service);

  /// No description provided for @syncConfirm.
  ///
  /// In en, this message translates to:
  /// **'Review before syncing'**
  String get syncConfirm;

  /// No description provided for @syncConfirmDesc.
  ///
  /// In en, this message translates to:
  /// **'Show what Sync all will change and how many requests it needs'**
  String get syncConfirmDesc;

  /// No description provided for @syncPreviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Ready to sync'**
  String get syncPreviewTitle;

  /// No description provided for @syncPreviewLine.
  ///
  /// In en, this message translates to:
  /// **'{updates} updates, {adds} to add'**
  String syncPreviewLine(int updates, int adds);

  /// No description provided for @syncPreviewRequests.
  ///
  /// In en, this message translates to:
  /// **'About {count} requests'**
  String syncPreviewRequests(int count);

  /// No description provided for @syncPreviewLookups.
  ///
  /// In en, this message translates to:
  /// **'{count} ids need a lookup first'**
  String syncPreviewLookups(int count);

  /// No description provided for @syncPreviewNothing.
  ///
  /// In en, this message translates to:
  /// **'Nothing to change'**
  String get syncPreviewNothing;

  /// No description provided for @syncStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get syncStart;

  /// No description provided for @syncRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get syncRetry;

  /// No description provided for @syncSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip this item'**
  String get syncSkip;

  /// No description provided for @syncInclude.
  ///
  /// In en, this message translates to:
  /// **'Include this item again'**
  String get syncInclude;

  /// No description provided for @syncSkippedLabel.
  ///
  /// In en, this message translates to:
  /// **'Skipped'**
  String get syncSkippedLabel;

  /// No description provided for @syncChanges.
  ///
  /// In en, this message translates to:
  /// **'Differences'**
  String get syncChanges;

  /// No description provided for @syncChangeStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get syncChangeStatus;

  /// No description provided for @syncChangeProgress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get syncChangeProgress;

  /// No description provided for @syncChangeScore.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get syncChangeScore;

  /// No description provided for @syncChangeDates.
  ///
  /// In en, this message translates to:
  /// **'Dates'**
  String get syncChangeDates;

  /// No description provided for @syncChangeRepeat.
  ///
  /// In en, this message translates to:
  /// **'Rewatch count'**
  String get syncChangeRepeat;

  /// No description provided for @syncFailedReason.
  ///
  /// In en, this message translates to:
  /// **'Why it failed'**
  String get syncFailedReason;

  /// No description provided for @syncSkippedHint.
  ///
  /// In en, this message translates to:
  /// **'Skipped items are left alone, even after fetching again'**
  String get syncSkippedHint;

  /// No description provided for @commentsRules.
  ///
  /// In en, this message translates to:
  /// **'Commenting rules'**
  String get commentsRules;

  /// No description provided for @commentsRulesBody.
  ///
  /// In en, this message translates to:
  /// **'BREAK ANY RULE = YOU\'RE GONE\n\n1. No racism, discrimination or hate speech\n2. No spamming or self-promotion\n3. Absolutely no NSFW content\n4. English only, no exceptions\n5. No impersonation, harassment or abuse\n6. No illegal content or extreme disrespect towards any fandom\n7. Do not request or share repositories or extensions\n8. Spoilers only with spoiler tags and a warning\n9. No sexualising or inappropriate comments about minor characters\n10. If it\'s wrong, don\'t post it!'**
  String get commentsRulesBody;

  /// No description provided for @commentsRulesAccept.
  ///
  /// In en, this message translates to:
  /// **'I understand'**
  String get commentsRulesAccept;

  /// No description provided for @commentsSortNewest.
  ///
  /// In en, this message translates to:
  /// **'Newest'**
  String get commentsSortNewest;

  /// No description provided for @commentsSortOldest.
  ///
  /// In en, this message translates to:
  /// **'Oldest'**
  String get commentsSortOldest;

  /// No description provided for @commentsSortHighest.
  ///
  /// In en, this message translates to:
  /// **'Highest rated'**
  String get commentsSortHighest;

  /// No description provided for @commentsSortLowest.
  ///
  /// In en, this message translates to:
  /// **'Lowest rated'**
  String get commentsSortLowest;

  /// No description provided for @commentsEpisodeShort.
  ///
  /// In en, this message translates to:
  /// **'Ep {number}'**
  String commentsEpisodeShort(int number);

  /// No description provided for @commentsChapterShort.
  ///
  /// In en, this message translates to:
  /// **'Ch {number}'**
  String commentsChapterShort(int number);

  /// No description provided for @commentsFilterEpisodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Filter by episode'**
  String get commentsFilterEpisodeTitle;

  /// No description provided for @commentsFilterChapterTitle.
  ///
  /// In en, this message translates to:
  /// **'Filter by chapter'**
  String get commentsFilterChapterTitle;

  /// No description provided for @commentsFilterTagTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter an episode or chapter number'**
  String get commentsFilterTagTitle;

  /// No description provided for @commentsFilterHint.
  ///
  /// In en, this message translates to:
  /// **'Number'**
  String get commentsFilterHint;

  /// No description provided for @commentsFilterApply.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get commentsFilterApply;

  /// No description provided for @commentsFilterClear.
  ///
  /// In en, this message translates to:
  /// **'Show all'**
  String get commentsFilterClear;

  /// No description provided for @commentsPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Add a comment…'**
  String get commentsPlaceholder;

  /// No description provided for @commentsReplyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to {name}'**
  String commentsReplyingTo(String name);

  /// No description provided for @commentsSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get commentsSend;

  /// No description provided for @commentsTagButton.
  ///
  /// In en, this message translates to:
  /// **'Tag'**
  String get commentsTagButton;

  /// No description provided for @commentsTagTitle.
  ///
  /// In en, this message translates to:
  /// **'Tag {label} (optional)'**
  String commentsTagTitle(String label);

  /// No description provided for @commentsTagEpisode.
  ///
  /// In en, this message translates to:
  /// **'episode'**
  String get commentsTagEpisode;

  /// No description provided for @commentsTagChapter.
  ///
  /// In en, this message translates to:
  /// **'chapter'**
  String get commentsTagChapter;

  /// No description provided for @commentsTagRange.
  ///
  /// In en, this message translates to:
  /// **'1–{total}'**
  String commentsTagRange(int total);

  /// No description provided for @commentsTagNumber.
  ///
  /// In en, this message translates to:
  /// **'{label} number'**
  String commentsTagNumber(String label);

  /// No description provided for @commentsTagTooHigh.
  ///
  /// In en, this message translates to:
  /// **'Tag cannot exceed the total ({total})'**
  String commentsTagTooHigh(int total);

  /// No description provided for @commentsNoTag.
  ///
  /// In en, this message translates to:
  /// **'No tag'**
  String get commentsNoTag;

  /// No description provided for @commentsSpoiler.
  ///
  /// In en, this message translates to:
  /// **'Spoiler'**
  String get commentsSpoiler;

  /// No description provided for @commentsGif.
  ///
  /// In en, this message translates to:
  /// **'GIF'**
  String get commentsGif;

  /// No description provided for @commentsGifSearch.
  ///
  /// In en, this message translates to:
  /// **'Search GIFs'**
  String get commentsGifSearch;

  /// No description provided for @commentsGifEmpty.
  ///
  /// In en, this message translates to:
  /// **'No GIFs found'**
  String get commentsGifEmpty;

  /// No description provided for @commentsEmptyText.
  ///
  /// In en, this message translates to:
  /// **'Comment cannot be empty'**
  String get commentsEmptyText;

  /// No description provided for @commentsBannedYou.
  ///
  /// In en, this message translates to:
  /// **'You are banned from commenting'**
  String get commentsBannedYou;

  /// No description provided for @commentsEdited.
  ///
  /// In en, this message translates to:
  /// **'Comment edited'**
  String get commentsEdited;

  /// No description provided for @commentsDeleted.
  ///
  /// In en, this message translates to:
  /// **'Comment deleted'**
  String get commentsDeleted;

  /// No description provided for @commentsDeletedPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'[deleted]'**
  String get commentsDeletedPlaceholder;

  /// No description provided for @commentsReported.
  ///
  /// In en, this message translates to:
  /// **'Comment reported'**
  String get commentsReported;

  /// No description provided for @commentsUserBanned.
  ///
  /// In en, this message translates to:
  /// **'User banned'**
  String get commentsUserBanned;

  /// No description provided for @commentsReport.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get commentsReport;

  /// No description provided for @commentsReportAsk.
  ///
  /// In en, this message translates to:
  /// **'Report this comment to the moderators?'**
  String get commentsReportAsk;

  /// No description provided for @commentsDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get commentsDelete;

  /// No description provided for @commentsDeleteAsk.
  ///
  /// In en, this message translates to:
  /// **'This comment will be removed for everyone.'**
  String get commentsDeleteAsk;

  /// No description provided for @commentsBan.
  ///
  /// In en, this message translates to:
  /// **'Ban'**
  String get commentsBan;

  /// No description provided for @commentsBanAsk.
  ///
  /// In en, this message translates to:
  /// **'Ban this user from commenting?'**
  String get commentsBanAsk;

  /// No description provided for @commentsCopy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get commentsCopy;

  /// No description provided for @commentsViewReply.
  ///
  /// In en, this message translates to:
  /// **'View 1 reply'**
  String get commentsViewReply;

  /// No description provided for @commentsViewReplies.
  ///
  /// In en, this message translates to:
  /// **'View {count} replies'**
  String commentsViewReplies(int count);

  /// No description provided for @commentsHideReplies.
  ///
  /// In en, this message translates to:
  /// **'Hide replies'**
  String get commentsHideReplies;

  /// No description provided for @commentsLoadMore.
  ///
  /// In en, this message translates to:
  /// **'Load more comments'**
  String get commentsLoadMore;

  /// No description provided for @commentsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No comments yet. Be the first!'**
  String get commentsEmpty;

  /// No description provided for @commentsEmptyFiltered.
  ///
  /// In en, this message translates to:
  /// **'No comments for this filter'**
  String get commentsEmptyFiltered;

  /// No description provided for @commentsSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in to AniList to read and write comments'**
  String get commentsSignIn;

  /// No description provided for @commentsSignInMessage.
  ///
  /// In en, this message translates to:
  /// **'Comments are shared between every service and use your AniList account.'**
  String get commentsSignInMessage;

  /// No description provided for @commentsUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Comments aren\'t available for this title'**
  String get commentsUnavailable;

  /// No description provided for @commentsUnavailableMessage.
  ///
  /// In en, this message translates to:
  /// **'It couldn\'t be matched to an AniList entry.'**
  String get commentsUnavailableMessage;

  /// No description provided for @commentsDisabled.
  ///
  /// In en, this message translates to:
  /// **'Comments are turned off'**
  String get commentsDisabled;

  /// No description provided for @commentsDisabledMessage.
  ///
  /// In en, this message translates to:
  /// **'You can turn them back on in Settings › General.'**
  String get commentsDisabledMessage;

  /// No description provided for @commentsOffline.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load comments'**
  String get commentsOffline;

  /// No description provided for @commentsSingleTitle.
  ///
  /// In en, this message translates to:
  /// **'Showing one comment'**
  String get commentsSingleTitle;

  /// No description provided for @commentsShowAll.
  ///
  /// In en, this message translates to:
  /// **'Show all comments'**
  String get commentsShowAll;

  /// No description provided for @commentsSettingsHeader.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get commentsSettingsHeader;

  /// No description provided for @commentsSettingEnabled.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get commentsSettingEnabled;

  /// No description provided for @commentsSettingEnabledDesc.
  ///
  /// In en, this message translates to:
  /// **'Show the Comments tab on titles and sign in to the comment server with your AniList account'**
  String get commentsSettingEnabledDesc;

  /// No description provided for @commentsSettingAlerts.
  ///
  /// In en, this message translates to:
  /// **'Reply notifications'**
  String get commentsSettingAlerts;

  /// No description provided for @commentsSettingAlertsDesc.
  ///
  /// In en, this message translates to:
  /// **'Notify me when someone replies to my comments'**
  String get commentsSettingAlertsDesc;

  /// No description provided for @commentsNoticeReplyTitle.
  ///
  /// In en, this message translates to:
  /// **'New comment reply'**
  String get commentsNoticeReplyTitle;

  /// No description provided for @commentsNoticeReply.
  ///
  /// In en, this message translates to:
  /// **'{name} replied to your comment'**
  String commentsNoticeReply(String name);

  /// No description provided for @commentsNoticeWarningTitle.
  ///
  /// In en, this message translates to:
  /// **'You received a warning'**
  String get commentsNoticeWarningTitle;

  /// No description provided for @commentsNoticeWarning.
  ///
  /// In en, this message translates to:
  /// **'Be more thoughtful with your comments'**
  String get commentsNoticeWarning;

  /// No description provided for @commentsNoticeUpdateTitle.
  ///
  /// In en, this message translates to:
  /// **'Update from Dantotsu'**
  String get commentsNoticeUpdateTitle;

  /// No description provided for @barcodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Scan a barcode'**
  String get barcodeTitle;

  /// No description provided for @barcodeTooltip.
  ///
  /// In en, this message translates to:
  /// **'Find a manga or novel from its barcode'**
  String get barcodeTooltip;

  /// No description provided for @barcodeIntro.
  ///
  /// In en, this message translates to:
  /// **'Point the camera at the barcode on the back of a volume, or type its ISBN.'**
  String get barcodeIntro;

  /// No description provided for @barcodeIntroManual.
  ///
  /// In en, this message translates to:
  /// **'Type the ISBN printed above the barcode on the back of a volume.'**
  String get barcodeIntroManual;

  /// No description provided for @barcodeIsbnHint.
  ///
  /// In en, this message translates to:
  /// **'ISBN'**
  String get barcodeIsbnHint;

  /// No description provided for @barcodeInvalid.
  ///
  /// In en, this message translates to:
  /// **'That is not a valid ISBN'**
  String get barcodeInvalid;

  /// No description provided for @barcodeNotFound.
  ///
  /// In en, this message translates to:
  /// **'No book found for {isbn}'**
  String barcodeNotFound(String isbn);

  /// No description provided for @barcodeCameraDenied.
  ///
  /// In en, this message translates to:
  /// **'The camera is not available. Allow camera access or type the ISBN instead.'**
  String get barcodeCameraDenied;

  /// No description provided for @themesTitle.
  ///
  /// In en, this message translates to:
  /// **'Openings & endings'**
  String get themesTitle;

  /// No description provided for @themesOpening.
  ///
  /// In en, this message translates to:
  /// **'Opening'**
  String get themesOpening;

  /// No description provided for @themesEnding.
  ///
  /// In en, this message translates to:
  /// **'Ending'**
  String get themesEnding;

  /// No description provided for @themesPlayVideo.
  ///
  /// In en, this message translates to:
  /// **'Play video'**
  String get themesPlayVideo;

  /// No description provided for @themesPlayAudio.
  ///
  /// In en, this message translates to:
  /// **'Play audio only'**
  String get themesPlayAudio;

  /// No description provided for @themesOpenSite.
  ///
  /// In en, this message translates to:
  /// **'Open on AnimeThemes'**
  String get themesOpenSite;

  /// No description provided for @themesCredit.
  ///
  /// In en, this message translates to:
  /// **'Themes from AnimeThemes'**
  String get themesCredit;

  /// No description provided for @themesVersions.
  ///
  /// In en, this message translates to:
  /// **'Versions'**
  String get themesVersions;

  /// No description provided for @muTitle.
  ///
  /// In en, this message translates to:
  /// **'MangaUpdates'**
  String get muTitle;

  /// No description provided for @muReleases.
  ///
  /// In en, this message translates to:
  /// **'Recent releases'**
  String get muReleases;

  /// No description provided for @muNoReleases.
  ///
  /// In en, this message translates to:
  /// **'No recent releases'**
  String get muNoReleases;

  /// No description provided for @muLicensed.
  ///
  /// In en, this message translates to:
  /// **'Licensed'**
  String get muLicensed;

  /// No description provided for @muOpen.
  ///
  /// In en, this message translates to:
  /// **'View on MangaUpdates'**
  String get muOpen;

  /// No description provided for @muCredit.
  ///
  /// In en, this message translates to:
  /// **'Data from MangaUpdates'**
  String get muCredit;

  /// No description provided for @muPublishers.
  ///
  /// In en, this message translates to:
  /// **'Publishers'**
  String get muPublishers;

  /// No description provided for @sauceTitle.
  ///
  /// In en, this message translates to:
  /// **'Find the source'**
  String get sauceTitle;

  /// No description provided for @sauceIntro.
  ///
  /// In en, this message translates to:
  /// **'Upload a manga page or an artwork, or paste its link, to find where it comes from.'**
  String get sauceIntro;

  /// No description provided for @sauceKeyTitle.
  ///
  /// In en, this message translates to:
  /// **'SauceNAO API key'**
  String get sauceKeyTitle;

  /// No description provided for @sauceKeyHint.
  ///
  /// In en, this message translates to:
  /// **'Optional, raises the daily search limit'**
  String get sauceKeyHint;

  /// No description provided for @sauceKeyDesc.
  ///
  /// In en, this message translates to:
  /// **'Get a free key at saucenao.com/user.php'**
  String get sauceKeyDesc;

  /// No description provided for @sauceSearchTitle.
  ///
  /// In en, this message translates to:
  /// **'Search this title'**
  String get sauceSearchTitle;

  /// No description provided for @sauceOpen.
  ///
  /// In en, this message translates to:
  /// **'Open source'**
  String get sauceOpen;

  /// No description provided for @sauceCredit.
  ///
  /// In en, this message translates to:
  /// **'Image search by SauceNAO'**
  String get sauceCredit;

  /// No description provided for @sauceEmpty.
  ///
  /// In en, this message translates to:
  /// **'No match found'**
  String get sauceEmpty;

  /// No description provided for @sauceTooltip.
  ///
  /// In en, this message translates to:
  /// **'Find the source of a manga page or artwork'**
  String get sauceTooltip;

  /// No description provided for @sauceLowMatch.
  ///
  /// In en, this message translates to:
  /// **'Low match'**
  String get sauceLowMatch;

  /// No description provided for @trendzTitle.
  ///
  /// In en, this message translates to:
  /// **'Anime charts'**
  String get trendzTitle;

  /// No description provided for @trendzAnime.
  ///
  /// In en, this message translates to:
  /// **'Anime'**
  String get trendzAnime;

  /// No description provided for @trendzFemale.
  ///
  /// In en, this message translates to:
  /// **'Female characters'**
  String get trendzFemale;

  /// No description provided for @trendzMale.
  ///
  /// In en, this message translates to:
  /// **'Male characters'**
  String get trendzMale;

  /// No description provided for @trendzCouple.
  ///
  /// In en, this message translates to:
  /// **'Couples'**
  String get trendzCouple;

  /// No description provided for @trendzCredit.
  ///
  /// In en, this message translates to:
  /// **'Weekly charts by AniTrendz'**
  String get trendzCredit;

  /// No description provided for @trendzNew.
  ///
  /// In en, this message translates to:
  /// **'NEW'**
  String get trendzNew;

  /// No description provided for @trendzSearch.
  ///
  /// In en, this message translates to:
  /// **'Search this title'**
  String get trendzSearch;

  /// No description provided for @trendzEmpty.
  ///
  /// In en, this message translates to:
  /// **'The chart is empty'**
  String get trendzEmpty;

  /// No description provided for @shareCard.
  ///
  /// In en, this message translates to:
  /// **'Share card'**
  String get shareCard;

  /// No description provided for @shareCardList.
  ///
  /// In en, this message translates to:
  /// **'Share list card'**
  String get shareCardList;

  /// No description provided for @muNotFound.
  ///
  /// In en, this message translates to:
  /// **'No MangaUpdates match for this title'**
  String get muNotFound;

  /// No description provided for @shareCardWorking.
  ///
  /// In en, this message translates to:
  /// **'Making the card…'**
  String get shareCardWorking;

  /// No description provided for @shareCardSaved.
  ///
  /// In en, this message translates to:
  /// **'Card saved'**
  String get shareCardSaved;

  /// No description provided for @shareCardFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not make the card'**
  String get shareCardFailed;

  /// No description provided for @shareCardListEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your list has nothing to share yet'**
  String get shareCardListEmpty;

  /// No description provided for @shareCardTop.
  ///
  /// In en, this message translates to:
  /// **'My top picks'**
  String get shareCardTop;

  /// No description provided for @themesEpisodes.
  ///
  /// In en, this message translates to:
  /// **'Episodes {eps}'**
  String themesEpisodes(String eps);

  /// No description provided for @muLatest.
  ///
  /// In en, this message translates to:
  /// **'Chapter {count}'**
  String muLatest(String count);

  /// No description provided for @muRating.
  ///
  /// In en, this message translates to:
  /// **'{rating} from {votes} votes'**
  String muRating(String rating, String votes);

  /// No description provided for @sauceSimilarity.
  ///
  /// In en, this message translates to:
  /// **'{percent}% match'**
  String sauceSimilarity(String percent);

  /// No description provided for @trendzWeek.
  ///
  /// In en, this message translates to:
  /// **'Week {week} · {season}'**
  String trendzWeek(String week, String season);

  /// No description provided for @trendzVotes.
  ///
  /// In en, this message translates to:
  /// **'{count} votes'**
  String trendzVotes(String count);

  /// No description provided for @trendzPeak.
  ///
  /// In en, this message translates to:
  /// **'Peak #{rank}'**
  String trendzPeak(String rank);

  /// No description provided for @trendzWeeks.
  ///
  /// In en, this message translates to:
  /// **'{count} weeks in the top ten'**
  String trendzWeeks(String count);

  /// No description provided for @shareCardEntries.
  ///
  /// In en, this message translates to:
  /// **'{count} titles'**
  String shareCardEntries(String count);

  /// No description provided for @imageSearchTitle.
  ///
  /// In en, this message translates to:
  /// **'Search by image'**
  String get imageSearchTitle;

  /// No description provided for @imageSearchTooltip.
  ///
  /// In en, this message translates to:
  /// **'Find an anime from a screenshot'**
  String get imageSearchTooltip;

  /// No description provided for @imageSearchIntro.
  ///
  /// In en, this message translates to:
  /// **'Pick a screenshot or paste an image link and trace.moe will find the episode and the moment it comes from.'**
  String get imageSearchIntro;

  /// No description provided for @imageSearchPick.
  ///
  /// In en, this message translates to:
  /// **'Choose image'**
  String get imageSearchPick;

  /// No description provided for @imageSearchLinkHint.
  ///
  /// In en, this message translates to:
  /// **'Paste an image link'**
  String get imageSearchLinkHint;

  /// No description provided for @imageSearchGo.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get imageSearchGo;

  /// No description provided for @imageSearchEmpty.
  ///
  /// In en, this message translates to:
  /// **'No match found'**
  String get imageSearchEmpty;

  /// No description provided for @imageSearchAdult.
  ///
  /// In en, this message translates to:
  /// **'18+'**
  String get imageSearchAdult;

  /// No description provided for @imageSearchEpisode.
  ///
  /// In en, this message translates to:
  /// **'Episode {number}'**
  String imageSearchEpisode(String number);

  /// No description provided for @imageSearchAt.
  ///
  /// In en, this message translates to:
  /// **'at {time}'**
  String imageSearchAt(String time);

  /// No description provided for @imageSearchPreview.
  ///
  /// In en, this message translates to:
  /// **'Preview clip'**
  String get imageSearchPreview;

  /// No description provided for @imageSearchSimilarity.
  ///
  /// In en, this message translates to:
  /// **'{percent}% match'**
  String imageSearchSimilarity(int percent);

  /// No description provided for @imageSearchCredit.
  ///
  /// In en, this message translates to:
  /// **'Powered by trace.moe'**
  String get imageSearchCredit;

  /// No description provided for @imageSearchOpenFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open this title'**
  String get imageSearchOpenFailed;

  /// No description provided for @groups.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get groups;

  /// No description provided for @groupsYours.
  ///
  /// In en, this message translates to:
  /// **'Your groups'**
  String get groupsYours;

  /// No description provided for @groupsPopular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get groupsPopular;

  /// No description provided for @groupsNew.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get groupsNew;

  /// No description provided for @groupsFeatured.
  ///
  /// In en, this message translates to:
  /// **'Featured'**
  String get groupsFeatured;

  /// No description provided for @groupsSearch.
  ///
  /// In en, this message translates to:
  /// **'Search groups'**
  String get groupsSearch;

  /// No description provided for @groupsAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get groupsAll;

  /// No description provided for @groupsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No groups found'**
  String get groupsEmpty;

  /// No description provided for @groupsEmptyYours.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t joined any groups yet'**
  String get groupsEmptyYours;

  /// No description provided for @groupsSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in to see the groups you joined'**
  String get groupsSignIn;

  /// No description provided for @groupsMembersCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 member} other{{count} members}}'**
  String groupsMembersCount(int count);

  /// No description provided for @groupsJoin.
  ///
  /// In en, this message translates to:
  /// **'Join'**
  String get groupsJoin;

  /// No description provided for @groupsJoined.
  ///
  /// In en, this message translates to:
  /// **'Joined'**
  String get groupsJoined;

  /// No description provided for @groupsLeave.
  ///
  /// In en, this message translates to:
  /// **'Leave group'**
  String get groupsLeave;

  /// No description provided for @groupsLeaveAsk.
  ///
  /// In en, this message translates to:
  /// **'You\'ll stop seeing this group\'s posts in your feed.'**
  String get groupsLeaveAsk;

  /// No description provided for @groupsJoinFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t join this group, it may be invite only'**
  String get groupsJoinFailed;

  /// No description provided for @groupsLeaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t leave this group'**
  String get groupsLeaveFailed;

  /// No description provided for @groupsPosts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get groupsPosts;

  /// No description provided for @groupsMembersTab.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get groupsMembersTab;

  /// No description provided for @groupsAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get groupsAbout;

  /// No description provided for @groupsRules.
  ///
  /// In en, this message translates to:
  /// **'Rules'**
  String get groupsRules;

  /// No description provided for @groupsPrivacyOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get groupsPrivacyOpen;

  /// No description provided for @groupsPrivacyRestricted.
  ///
  /// In en, this message translates to:
  /// **'Restricted'**
  String get groupsPrivacyRestricted;

  /// No description provided for @groupsPrivacyClosed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get groupsPrivacyClosed;

  /// No description provided for @groupsAdult.
  ///
  /// In en, this message translates to:
  /// **'18+'**
  String get groupsAdult;

  /// No description provided for @groupsRoleAdmin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get groupsRoleAdmin;

  /// No description provided for @groupsRoleMod.
  ///
  /// In en, this message translates to:
  /// **'Mod'**
  String get groupsRoleMod;

  /// No description provided for @groupsCouldntLoad.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load this group'**
  String get groupsCouldntLoad;

  /// No description provided for @groupsNewPost.
  ///
  /// In en, this message translates to:
  /// **'Post to group'**
  String get groupsNewPost;

  /// No description provided for @groupsPostHint.
  ///
  /// In en, this message translates to:
  /// **'Share something with the group'**
  String get groupsPostHint;

  /// No description provided for @groupsOpenInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open in browser'**
  String get groupsOpenInBrowser;

  /// No description provided for @groupsCategory.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get groupsCategory;

  /// No description provided for @groupsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get groupsLanguage;

  /// No description provided for @groupsCreated.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get groupsCreated;

  /// No description provided for @groupsLeaders.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 leader} other{{count} leaders}}'**
  String groupsLeaders(int count);

  /// No description provided for @groupsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get groupsPrivacy;

  /// No description provided for @notificationsAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get notificationsAll;

  /// No description provided for @notificationsAiring.
  ///
  /// In en, this message translates to:
  /// **'Airing'**
  String get notificationsAiring;

  /// No description provided for @notificationsMedia.
  ///
  /// In en, this message translates to:
  /// **'New titles'**
  String get notificationsMedia;

  /// No description provided for @notificationsReplies.
  ///
  /// In en, this message translates to:
  /// **'Replies'**
  String get notificationsReplies;

  /// No description provided for @notificationsMentions.
  ///
  /// In en, this message translates to:
  /// **'Mentions'**
  String get notificationsMentions;

  /// No description provided for @notificationsMessages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get notificationsMessages;

  /// No description provided for @notificationsLikes.
  ///
  /// In en, this message translates to:
  /// **'Likes'**
  String get notificationsLikes;

  /// No description provided for @notificationsFollows.
  ///
  /// In en, this message translates to:
  /// **'Follows'**
  String get notificationsFollows;

  /// No description provided for @notificationsNoServices.
  ///
  /// In en, this message translates to:
  /// **'No signed-in service has notifications'**
  String get notificationsNoServices;

  /// No description provided for @notificationsNoServicesMessage.
  ///
  /// In en, this message translates to:
  /// **'Sign in to a service that sends notifications and they will show up here.'**
  String get notificationsNoServicesMessage;

  /// No description provided for @notificationsEmptyKind.
  ///
  /// In en, this message translates to:
  /// **'Nothing in this category yet'**
  String get notificationsEmptyKind;

  /// No description provided for @notificationsCommentsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No comment notifications'**
  String get notificationsCommentsEmpty;

  /// No description provided for @notificationsCommentsEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Replies to your comments and announcements from Dantotsu show up here.'**
  String get notificationsCommentsEmptyMessage;

  /// No description provided for @notificationsSettings.
  ///
  /// In en, this message translates to:
  /// **'Notification settings'**
  String get notificationsSettings;

  /// No description provided for @notificationsPollTitle.
  ///
  /// In en, this message translates to:
  /// **'Check for new notifications'**
  String get notificationsPollTitle;

  /// No description provided for @notificationsPollDesc.
  ///
  /// In en, this message translates to:
  /// **'Every {minutes} minutes while the app is open'**
  String notificationsPollDesc(int minutes);

  /// No description provided for @notificationsNotifyAbout.
  ///
  /// In en, this message translates to:
  /// **'Notify me about'**
  String get notificationsNotifyAbout;

  /// No description provided for @notificationsCommentsHeader.
  ///
  /// In en, this message translates to:
  /// **'Comment notifications'**
  String get notificationsCommentsHeader;

  /// No description provided for @systemNotificationsDescFor.
  ///
  /// In en, this message translates to:
  /// **'Show a system notification for each unread {service} notification while the app is running.'**
  String systemNotificationsDescFor(String service);

  /// No description provided for @notificationsTestSent.
  ///
  /// In en, this message translates to:
  /// **'Test notification sent'**
  String get notificationsTestSent;

  /// No description provided for @notificationsTestDenied.
  ///
  /// In en, this message translates to:
  /// **'Notifications are not allowed for Dartotsu. Turn them on in system settings.'**
  String get notificationsTestDenied;

  /// No description provided for @notificationsTestHint.
  ///
  /// In en, this message translates to:
  /// **'Long press to send a test notification'**
  String get notificationsTestHint;

  /// No description provided for @notificationsTestSample.
  ///
  /// In en, this message translates to:
  /// **'This is a test notification'**
  String get notificationsTestSample;

  /// No description provided for @commentsNoticeReplyIn.
  ///
  /// In en, this message translates to:
  /// **'{name} replied to your comment in {media}'**
  String commentsNoticeReplyIn(String name, String media);

  /// No description provided for @imageSearchNotLink.
  ///
  /// In en, this message translates to:
  /// **'That doesn\'t look like a link'**
  String get imageSearchNotLink;

  /// No description provided for @imageSearchQuota.
  ///
  /// In en, this message translates to:
  /// **'Search quota exceeded'**
  String get imageSearchQuota;

  /// No description provided for @imageSearchBusy.
  ///
  /// In en, this message translates to:
  /// **'Too many requests, try again in a moment'**
  String get imageSearchBusy;

  /// No description provided for @imageSearchFailed.
  ///
  /// In en, this message translates to:
  /// **'Search failed ({code})'**
  String imageSearchFailed(int code);

  /// No description provided for @notificationsNewCount.
  ///
  /// In en, this message translates to:
  /// **'{count} new notifications'**
  String notificationsNewCount(int count);

  /// No description provided for @reactionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reactions'**
  String get reactionsTitle;

  /// No description provided for @reactionsNeedEntry.
  ///
  /// In en, this message translates to:
  /// **'Add this title to your list before reacting'**
  String get reactionsNeedEntry;

  /// No description provided for @reactionsAdd.
  ///
  /// In en, this message translates to:
  /// **'Add a reaction'**
  String get reactionsAdd;

  /// No description provided for @reactionsHint.
  ///
  /// In en, this message translates to:
  /// **'What did you think? (short and spoiler-free)'**
  String get reactionsHint;

  /// No description provided for @reactionsPost.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get reactionsPost;

  /// No description provided for @reactionsFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update the reaction'**
  String get reactionsFailed;

  /// No description provided for @settingsWatch.
  ///
  /// In en, this message translates to:
  /// **'Watch & read'**
  String get settingsWatch;

  /// No description provided for @settingsWatchDesc.
  ///
  /// In en, this message translates to:
  /// **'Episode lists, source matching and episode details'**
  String get settingsWatchDesc;

  /// No description provided for @watchSettingsLayout.
  ///
  /// In en, this message translates to:
  /// **'Episode list'**
  String get watchSettingsLayout;

  /// No description provided for @watchSettingsSources.
  ///
  /// In en, this message translates to:
  /// **'Sources'**
  String get watchSettingsSources;

  /// No description provided for @watchSettingsMetadata.
  ///
  /// In en, this message translates to:
  /// **'Episode details'**
  String get watchSettingsMetadata;

  /// No description provided for @watchLayout.
  ///
  /// In en, this message translates to:
  /// **'Layout'**
  String get watchLayout;

  /// No description provided for @watchListView.
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get watchListView;

  /// No description provided for @watchGridView.
  ///
  /// In en, this message translates to:
  /// **'Grid'**
  String get watchGridView;

  /// No description provided for @watchCompactView.
  ///
  /// In en, this message translates to:
  /// **'Compact'**
  String get watchCompactView;

  /// No description provided for @watchDefaultLayoutDesc.
  ///
  /// In en, this message translates to:
  /// **'How episodes and chapters are laid out until you change it for a title'**
  String get watchDefaultLayoutDesc;

  /// No description provided for @watchChunkSize.
  ///
  /// In en, this message translates to:
  /// **'Range size'**
  String get watchChunkSize;

  /// No description provided for @watchChunkSizeDesc.
  ///
  /// In en, this message translates to:
  /// **'How many episodes or chapters each range tab holds'**
  String get watchChunkSizeDesc;

  /// No description provided for @watchShowDescription.
  ///
  /// In en, this message translates to:
  /// **'Show descriptions'**
  String get watchShowDescription;

  /// No description provided for @watchShowDescriptionDesc.
  ///
  /// In en, this message translates to:
  /// **'Show the episode summary under each title in the list layout'**
  String get watchShowDescriptionDesc;

  /// No description provided for @watchShowFiller.
  ///
  /// In en, this message translates to:
  /// **'Show filler episodes'**
  String get watchShowFiller;

  /// No description provided for @watchShowFillerDesc.
  ///
  /// In en, this message translates to:
  /// **'Turn off to hide episodes marked as filler'**
  String get watchShowFillerDesc;

  /// No description provided for @watchBlurUnwatched.
  ///
  /// In en, this message translates to:
  /// **'Hide spoiler thumbnails'**
  String get watchBlurUnwatched;

  /// No description provided for @watchBlurUnwatchedDesc.
  ///
  /// In en, this message translates to:
  /// **'Blur the thumbnail of episodes you have not watched yet'**
  String get watchBlurUnwatchedDesc;

  /// No description provided for @watchResumeShelf.
  ///
  /// In en, this message translates to:
  /// **'Resume shelf'**
  String get watchResumeShelf;

  /// No description provided for @watchResumeShelfDesc.
  ///
  /// In en, this message translates to:
  /// **'Show the Resume row on Home'**
  String get watchResumeShelfDesc;

  /// No description provided for @watchMarkOnLongPress.
  ///
  /// In en, this message translates to:
  /// **'Long press marks progress'**
  String get watchMarkOnLongPress;

  /// No description provided for @watchMarkOnLongPressDesc.
  ///
  /// In en, this message translates to:
  /// **'Long press an episode or chapter to mark it watched or unwatched'**
  String get watchMarkOnLongPressDesc;

  /// No description provided for @watchMatching.
  ///
  /// In en, this message translates to:
  /// **'Source matching'**
  String get watchMatching;

  /// No description provided for @watchMatchingDesc.
  ///
  /// In en, this message translates to:
  /// **'Closest takes the best search result. Exact only accepts a near-identical title and leaves the rest for you to pick.'**
  String get watchMatchingDesc;

  /// No description provided for @watchMatchClosest.
  ///
  /// In en, this message translates to:
  /// **'Closest match'**
  String get watchMatchClosest;

  /// No description provided for @watchMatchExact.
  ///
  /// In en, this message translates to:
  /// **'Exact match only'**
  String get watchMatchExact;

  /// No description provided for @watchMetadataDesc.
  ///
  /// In en, this message translates to:
  /// **'Where episode titles, summaries, thumbnails, air dates and filler flags come from. Drag to set priority; the first source with a value wins.'**
  String get watchMetadataDesc;

  /// No description provided for @watchMetaAniZipDesc.
  ///
  /// In en, this message translates to:
  /// **'Episode titles, summaries, stills and air dates'**
  String get watchMetaAniZipDesc;

  /// No description provided for @watchMetaKitsuDesc.
  ///
  /// In en, this message translates to:
  /// **'Episode titles, descriptions and thumbnails'**
  String get watchMetaKitsuDesc;

  /// No description provided for @watchMetaSimklDesc.
  ///
  /// In en, this message translates to:
  /// **'Episode titles, descriptions, stills and air dates'**
  String get watchMetaSimklDesc;

  /// No description provided for @watchMetaAniListDesc.
  ///
  /// In en, this message translates to:
  /// **'Streaming episode titles, thumbnails and the airing schedule'**
  String get watchMetaAniListDesc;

  /// No description provided for @watchMetaTenraiDesc.
  ///
  /// In en, this message translates to:
  /// **'MyAnimeList episode titles, air dates, filler and recap flags through Tenrai'**
  String get watchMetaTenraiDesc;

  /// No description provided for @watchClearMetadata.
  ///
  /// In en, this message translates to:
  /// **'Refresh episode details'**
  String get watchClearMetadata;

  /// No description provided for @watchClearMetadataDesc.
  ///
  /// In en, this message translates to:
  /// **'Forget the cached episode details so they are fetched again'**
  String get watchClearMetadataDesc;

  /// No description provided for @watchMetadataCleared.
  ///
  /// In en, this message translates to:
  /// **'Episode details will be fetched again'**
  String get watchMetadataCleared;

  /// No description provided for @watchEpisodeCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 Episode} other{{count} Episodes}}'**
  String watchEpisodeCount(int count);

  /// No description provided for @watchChapterCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 Chapter} other{{count} Chapters}}'**
  String watchChapterCount(int count);

  /// No description provided for @watchEpisodeNumber.
  ///
  /// In en, this message translates to:
  /// **'Episode {number}'**
  String watchEpisodeNumber(String number);

  /// No description provided for @watchChapterNumber.
  ///
  /// In en, this message translates to:
  /// **'Chapter {number}'**
  String watchChapterNumber(String number);

  /// No description provided for @watchSearching.
  ///
  /// In en, this message translates to:
  /// **'Searching…'**
  String get watchSearching;

  /// No description provided for @watchSearchingFor.
  ///
  /// In en, this message translates to:
  /// **'Searching: {term}'**
  String watchSearchingFor(String term);

  /// No description provided for @watchSelected.
  ///
  /// In en, this message translates to:
  /// **'Selected: {title}'**
  String watchSelected(String title);

  /// No description provided for @watchFound.
  ///
  /// In en, this message translates to:
  /// **'Found: {title}'**
  String watchFound(String title);

  /// No description provided for @watchNothingFound.
  ///
  /// In en, this message translates to:
  /// **'Nothing found on this source'**
  String get watchNothingFound;

  /// No description provided for @watchSearchFailed.
  ///
  /// In en, this message translates to:
  /// **'The source search failed'**
  String get watchSearchFailed;

  /// No description provided for @watchLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load the list'**
  String get watchLoadFailed;

  /// No description provided for @watchSignInToTrack.
  ///
  /// In en, this message translates to:
  /// **'Sign in to track your progress'**
  String get watchSignInToTrack;

  /// No description provided for @watchInstallSource.
  ///
  /// In en, this message translates to:
  /// **'Install an extension to start {action}'**
  String watchInstallSource(String action);

  /// No description provided for @watchSourceMissing.
  ///
  /// In en, this message translates to:
  /// **'This source isn\'t installed'**
  String get watchSourceMissing;

  /// No description provided for @watchWrongTitle.
  ///
  /// In en, this message translates to:
  /// **'Wrong title?'**
  String get watchWrongTitle;

  /// No description provided for @watchSearchAgain.
  ///
  /// In en, this message translates to:
  /// **'Search again'**
  String get watchSearchAgain;

  /// No description provided for @watchSearchSource.
  ///
  /// In en, this message translates to:
  /// **'Search {source}'**
  String watchSearchSource(String source);

  /// No description provided for @watchSource.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get watchSource;

  /// No description provided for @watchOptions.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get watchOptions;

  /// No description provided for @watchReverse.
  ///
  /// In en, this message translates to:
  /// **'Reverse order'**
  String get watchReverse;

  /// No description provided for @watchScanlators.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get watchScanlators;

  /// No description provided for @watchResetOptions.
  ///
  /// In en, this message translates to:
  /// **'Reset these options'**
  String get watchResetOptions;

  /// No description provided for @watchContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get watchContinue;

  /// No description provided for @watchStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get watchStart;

  /// No description provided for @watchPlay.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get watchPlay;

  /// No description provided for @watchRead.
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get watchRead;

  /// No description provided for @watchMarkWatched.
  ///
  /// In en, this message translates to:
  /// **'Mark watched'**
  String get watchMarkWatched;

  /// No description provided for @watchMarkUnwatched.
  ///
  /// In en, this message translates to:
  /// **'Mark unwatched'**
  String get watchMarkUnwatched;

  /// No description provided for @watchMarkRead.
  ///
  /// In en, this message translates to:
  /// **'Mark read'**
  String get watchMarkRead;

  /// No description provided for @watchMarkUnread.
  ///
  /// In en, this message translates to:
  /// **'Mark unread'**
  String get watchMarkUnread;

  /// No description provided for @watchFiller.
  ///
  /// In en, this message translates to:
  /// **'Filler'**
  String get watchFiller;

  /// No description provided for @watchRecap.
  ///
  /// In en, this message translates to:
  /// **'Recap'**
  String get watchRecap;

  /// No description provided for @watchNoEpisodes.
  ///
  /// In en, this message translates to:
  /// **'No episodes found'**
  String get watchNoEpisodes;

  /// No description provided for @watchNoChapters.
  ///
  /// In en, this message translates to:
  /// **'No chapters found'**
  String get watchNoChapters;

  /// No description provided for @watchSourceTools.
  ///
  /// In en, this message translates to:
  /// **'Source tools'**
  String get watchSourceTools;

  /// No description provided for @watchSourceSettings.
  ///
  /// In en, this message translates to:
  /// **'Source settings'**
  String get watchSourceSettings;

  /// No description provided for @watchOpenWebView.
  ///
  /// In en, this message translates to:
  /// **'Open in web view'**
  String get watchOpenWebView;

  /// No description provided for @watchOpenWebViewDesc.
  ///
  /// In en, this message translates to:
  /// **'Solve a Cloudflare check or log in; the cookies are shared with the source requests'**
  String get watchOpenWebViewDesc;

  /// No description provided for @watchCookieCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No cookies saved for {host}} =1{1 cookie saved for {host}} other{{count} cookies saved for {host}}}'**
  String watchCookieCount(int count, String host);

  /// No description provided for @watchClearanceActive.
  ///
  /// In en, this message translates to:
  /// **'Cloudflare clearance active, {time}'**
  String watchClearanceActive(String time);

  /// No description provided for @watchClearanceMissing.
  ///
  /// In en, this message translates to:
  /// **'No Cloudflare clearance cookie'**
  String get watchClearanceMissing;

  /// No description provided for @watchClearanceSession.
  ///
  /// In en, this message translates to:
  /// **'lasts until the app closes'**
  String get watchClearanceSession;

  /// No description provided for @watchAgentShared.
  ///
  /// In en, this message translates to:
  /// **'Requests use the web view\'s user agent, which Cloudflare checks'**
  String get watchAgentShared;

  /// No description provided for @watchAgentCustom.
  ///
  /// In en, this message translates to:
  /// **'A custom user agent is set, so a Cloudflare clearance from the web view may be rejected'**
  String get watchAgentCustom;

  /// No description provided for @watchTestConnection.
  ///
  /// In en, this message translates to:
  /// **'Test connection'**
  String get watchTestConnection;

  /// No description provided for @watchSolveChallenge.
  ///
  /// In en, this message translates to:
  /// **'Solve it'**
  String get watchSolveChallenge;

  /// No description provided for @watchProbeOk.
  ///
  /// In en, this message translates to:
  /// **'Reachable (HTTP {code})'**
  String watchProbeOk(int code);

  /// No description provided for @watchProbeChallenge.
  ///
  /// In en, this message translates to:
  /// **'Cloudflare is still asking for a check'**
  String get watchProbeChallenge;

  /// No description provided for @watchProbeBlocked.
  ///
  /// In en, this message translates to:
  /// **'Blocked by the site (HTTP {code})'**
  String watchProbeBlocked(int code);

  /// No description provided for @watchProbeFailed.
  ///
  /// In en, this message translates to:
  /// **'The site could not be reached'**
  String get watchProbeFailed;

  /// No description provided for @watchClearCookies.
  ///
  /// In en, this message translates to:
  /// **'Clear cookies for this site'**
  String get watchClearCookies;

  /// No description provided for @watchCookiesCleared.
  ///
  /// In en, this message translates to:
  /// **'Cookies cleared'**
  String get watchCookiesCleared;

  /// No description provided for @watchResults.
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get watchResults;

  /// No description provided for @watchMetaSource.
  ///
  /// In en, this message translates to:
  /// **'Episode details from'**
  String get watchMetaSource;

  /// No description provided for @watchMetaAuto.
  ///
  /// In en, this message translates to:
  /// **'Automatic'**
  String get watchMetaAuto;

  /// No description provided for @watchMetaOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get watchMetaOff;

  /// No description provided for @settingsPlayer.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get settingsPlayer;

  /// No description provided for @settingsPlayerDesc.
  ///
  /// In en, this message translates to:
  /// **'Playback, subtitles, shaders, mpv and opening files'**
  String get settingsPlayerDesc;

  /// No description provided for @playerSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Player settings'**
  String get playerSettingsTitle;

  /// No description provided for @playerSectionPlayback.
  ///
  /// In en, this message translates to:
  /// **'Playback'**
  String get playerSectionPlayback;

  /// No description provided for @playerSectionSkip.
  ///
  /// In en, this message translates to:
  /// **'Skipping'**
  String get playerSectionSkip;

  /// No description provided for @playerSectionGestures.
  ///
  /// In en, this message translates to:
  /// **'Controls'**
  String get playerSectionGestures;

  /// No description provided for @playerSectionSubtitles.
  ///
  /// In en, this message translates to:
  /// **'Subtitles'**
  String get playerSectionSubtitles;

  /// No description provided for @playerSectionShaders.
  ///
  /// In en, this message translates to:
  /// **'Shaders'**
  String get playerSectionShaders;

  /// No description provided for @playerSectionEngine.
  ///
  /// In en, this message translates to:
  /// **'Engine'**
  String get playerSectionEngine;

  /// No description provided for @playerSectionMpv.
  ///
  /// In en, this message translates to:
  /// **'mpv'**
  String get playerSectionMpv;

  /// No description provided for @playerSectionOpen.
  ///
  /// In en, this message translates to:
  /// **'Open media'**
  String get playerSectionOpen;

  /// No description provided for @playerSpeed.
  ///
  /// In en, this message translates to:
  /// **'Playback speed'**
  String get playerSpeed;

  /// No description provided for @playerCursedSpeed.
  ///
  /// In en, this message translates to:
  /// **'Extra speeds'**
  String get playerCursedSpeed;

  /// No description provided for @playerCursedSpeedDesc.
  ///
  /// In en, this message translates to:
  /// **'Add speeds up to 10x to the list'**
  String get playerCursedSpeedDesc;

  /// No description provided for @playerResize.
  ///
  /// In en, this message translates to:
  /// **'Resize mode'**
  String get playerResize;

  /// No description provided for @playerFitFit.
  ///
  /// In en, this message translates to:
  /// **'Fit'**
  String get playerFitFit;

  /// No description provided for @playerFitCover.
  ///
  /// In en, this message translates to:
  /// **'Cover'**
  String get playerFitCover;

  /// No description provided for @playerFitStretch.
  ///
  /// In en, this message translates to:
  /// **'Stretch'**
  String get playerFitStretch;

  /// No description provided for @playerSkipDuration.
  ///
  /// In en, this message translates to:
  /// **'Skip button length'**
  String get playerSkipDuration;

  /// No description provided for @playerSkipDurationDesc.
  ///
  /// In en, this message translates to:
  /// **'Seconds the skip button jumps outside openings and endings'**
  String get playerSkipDurationDesc;

  /// No description provided for @playerSeekDuration.
  ///
  /// In en, this message translates to:
  /// **'Double tap seek'**
  String get playerSeekDuration;

  /// No description provided for @playerSeekDurationDesc.
  ///
  /// In en, this message translates to:
  /// **'Seconds to jump on a double tap or arrow key'**
  String get playerSeekDurationDesc;

  /// No description provided for @playerAutoPlay.
  ///
  /// In en, this message translates to:
  /// **'Play next automatically'**
  String get playerAutoPlay;

  /// No description provided for @playerAutoPlayDesc.
  ///
  /// In en, this message translates to:
  /// **'Start the next episode when this one ends'**
  String get playerAutoPlayDesc;

  /// No description provided for @playerResume.
  ///
  /// In en, this message translates to:
  /// **'Resume where you left off'**
  String get playerResume;

  /// No description provided for @playerResumeDesc.
  ///
  /// In en, this message translates to:
  /// **'Continue an episode from its last position'**
  String get playerResumeDesc;

  /// No description provided for @playerOrientation.
  ///
  /// In en, this message translates to:
  /// **'Orientation'**
  String get playerOrientation;

  /// No description provided for @playerOrientationAuto.
  ///
  /// In en, this message translates to:
  /// **'Follow the device'**
  String get playerOrientationAuto;

  /// No description provided for @playerOrientationLandscape.
  ///
  /// In en, this message translates to:
  /// **'Landscape'**
  String get playerOrientationLandscape;

  /// No description provided for @playerOrientationPortrait.
  ///
  /// In en, this message translates to:
  /// **'Portrait'**
  String get playerOrientationPortrait;

  /// No description provided for @playerAutoSkipOpening.
  ///
  /// In en, this message translates to:
  /// **'Skip openings'**
  String get playerAutoSkipOpening;

  /// No description provided for @playerAutoSkipEnding.
  ///
  /// In en, this message translates to:
  /// **'Skip endings'**
  String get playerAutoSkipEnding;

  /// No description provided for @playerAutoSkipRecap.
  ///
  /// In en, this message translates to:
  /// **'Skip recaps'**
  String get playerAutoSkipRecap;

  /// No description provided for @playerAutoSkipDesc.
  ///
  /// In en, this message translates to:
  /// **'Jump past it as soon as it starts, using AniSkip and stream timestamps'**
  String get playerAutoSkipDesc;

  /// No description provided for @playerSkipOnce.
  ///
  /// In en, this message translates to:
  /// **'Skip once only'**
  String get playerSkipOnce;

  /// No description provided for @playerSkipOnceDesc.
  ///
  /// In en, this message translates to:
  /// **'Don\'t skip the same part again if you seek back into it'**
  String get playerSkipOnceDesc;

  /// No description provided for @playerAdjustBrightness.
  ///
  /// In en, this message translates to:
  /// **'Brightness gesture'**
  String get playerAdjustBrightness;

  /// No description provided for @playerAdjustBrightnessDesc.
  ///
  /// In en, this message translates to:
  /// **'Swipe up and down on the right half of the screen'**
  String get playerAdjustBrightnessDesc;

  /// No description provided for @playerAdjustVolume.
  ///
  /// In en, this message translates to:
  /// **'Volume gesture'**
  String get playerAdjustVolume;

  /// No description provided for @playerAdjustVolumeDesc.
  ///
  /// In en, this message translates to:
  /// **'Swipe up and down on the left half of the screen'**
  String get playerAdjustVolumeDesc;

  /// No description provided for @playerHoldToSpeed.
  ///
  /// In en, this message translates to:
  /// **'Hold to speed up'**
  String get playerHoldToSpeed;

  /// No description provided for @playerHoldToSpeedDesc.
  ///
  /// In en, this message translates to:
  /// **'Press and hold the video to play faster, drag sideways to change the speed'**
  String get playerHoldToSpeedDesc;

  /// No description provided for @playerThumbless.
  ///
  /// In en, this message translates to:
  /// **'Thicker seek bar'**
  String get playerThumbless;

  /// No description provided for @playerThumblessDesc.
  ///
  /// In en, this message translates to:
  /// **'A thick bar without a thumb'**
  String get playerThumblessDesc;

  /// No description provided for @playerShowSubtitles.
  ///
  /// In en, this message translates to:
  /// **'Show subtitles'**
  String get playerShowSubtitles;

  /// No description provided for @playerShowSubtitlesDesc.
  ///
  /// In en, this message translates to:
  /// **'Turn off to hide every subtitle track'**
  String get playerShowSubtitlesDesc;

  /// No description provided for @playerSubtitleLanguage.
  ///
  /// In en, this message translates to:
  /// **'Preferred subtitle language'**
  String get playerSubtitleLanguage;

  /// No description provided for @playerSubtitleSize.
  ///
  /// In en, this message translates to:
  /// **'Subtitle size'**
  String get playerSubtitleSize;

  /// No description provided for @playerSubtitleWeight.
  ///
  /// In en, this message translates to:
  /// **'Subtitle weight'**
  String get playerSubtitleWeight;

  /// No description provided for @playerSubtitleBottom.
  ///
  /// In en, this message translates to:
  /// **'Subtitle bottom padding'**
  String get playerSubtitleBottom;

  /// No description provided for @playerSubtitleFont.
  ///
  /// In en, this message translates to:
  /// **'Subtitle font'**
  String get playerSubtitleFont;

  /// No description provided for @playerSubtitleColor.
  ///
  /// In en, this message translates to:
  /// **'Subtitle colour'**
  String get playerSubtitleColor;

  /// No description provided for @playerSubtitleBackground.
  ///
  /// In en, this message translates to:
  /// **'Subtitle background'**
  String get playerSubtitleBackground;

  /// No description provided for @playerSubtitleOutline.
  ///
  /// In en, this message translates to:
  /// **'Subtitle outline'**
  String get playerSubtitleOutline;

  /// No description provided for @playerLibass.
  ///
  /// In en, this message translates to:
  /// **'Use libass'**
  String get playerLibass;

  /// No description provided for @playerLibassDesc.
  ///
  /// In en, this message translates to:
  /// **'Render styled .ass subtitles. The size, colour and font above then no longer apply'**
  String get playerLibassDesc;

  /// No description provided for @playerShaders.
  ///
  /// In en, this message translates to:
  /// **'Shaders'**
  String get playerShaders;

  /// No description provided for @playerShadersEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable shaders'**
  String get playerShadersEnable;

  /// No description provided for @playerShadersEnableDesc.
  ///
  /// In en, this message translates to:
  /// **'Upscale and clean the picture with GLSL shaders such as Anime4K'**
  String get playerShadersEnableDesc;

  /// No description provided for @playerShadersOff.
  ///
  /// In en, this message translates to:
  /// **'Shaders off'**
  String get playerShadersOff;

  /// No description provided for @playerShadersMissing.
  ///
  /// In en, this message translates to:
  /// **'Anime4K is not installed'**
  String get playerShadersMissing;

  /// No description provided for @playerShadersMissingDesc.
  ///
  /// In en, this message translates to:
  /// **'Download the Anime4K shader pack (about 0.8 MB) to use the built-in modes.'**
  String get playerShadersMissingDesc;

  /// No description provided for @playerShadersDownload.
  ///
  /// In en, this message translates to:
  /// **'Download Anime4K'**
  String get playerShadersDownload;

  /// No description provided for @playerShadersPreview.
  ///
  /// In en, this message translates to:
  /// **'Preview on this frame'**
  String get playerShadersPreview;

  /// No description provided for @playerShadersUse.
  ///
  /// In en, this message translates to:
  /// **'Use this'**
  String get playerShadersUse;

  /// No description provided for @playerPicture.
  ///
  /// In en, this message translates to:
  /// **'Picture'**
  String get playerPicture;

  /// No description provided for @playerColors.
  ///
  /// In en, this message translates to:
  /// **'Colors'**
  String get playerColors;

  /// No description provided for @playerColorDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get playerColorDefault;

  /// No description provided for @playerColorVivid.
  ///
  /// In en, this message translates to:
  /// **'Vivid'**
  String get playerColorVivid;

  /// No description provided for @playerColorPop.
  ///
  /// In en, this message translates to:
  /// **'Anime pop'**
  String get playerColorPop;

  /// No description provided for @playerColorSoft.
  ///
  /// In en, this message translates to:
  /// **'Soft'**
  String get playerColorSoft;

  /// No description provided for @playerColorCinematic.
  ///
  /// In en, this message translates to:
  /// **'Cinematic'**
  String get playerColorCinematic;

  /// No description provided for @playerColorBright.
  ///
  /// In en, this message translates to:
  /// **'Bright'**
  String get playerColorBright;

  /// No description provided for @playerColorNight.
  ///
  /// In en, this message translates to:
  /// **'Night'**
  String get playerColorNight;

  /// No description provided for @playerColorMono.
  ///
  /// In en, this message translates to:
  /// **'Mono'**
  String get playerColorMono;

  /// No description provided for @playerColorCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get playerColorCustom;

  /// No description provided for @playerColorBrightness.
  ///
  /// In en, this message translates to:
  /// **'Brightness'**
  String get playerColorBrightness;

  /// No description provided for @playerColorContrast.
  ///
  /// In en, this message translates to:
  /// **'Contrast'**
  String get playerColorContrast;

  /// No description provided for @playerColorSaturation.
  ///
  /// In en, this message translates to:
  /// **'Saturation'**
  String get playerColorSaturation;

  /// No description provided for @playerColorGamma.
  ///
  /// In en, this message translates to:
  /// **'Gamma'**
  String get playerColorGamma;

  /// No description provided for @playerColorHue.
  ///
  /// In en, this message translates to:
  /// **'Hue'**
  String get playerColorHue;

  /// No description provided for @playerColorReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get playerColorReset;

  /// No description provided for @playerColorAdjust.
  ///
  /// In en, this message translates to:
  /// **'Adjust'**
  String get playerColorAdjust;

  /// No description provided for @playerShadersOriginal.
  ///
  /// In en, this message translates to:
  /// **'Original'**
  String get playerShadersOriginal;

  /// No description provided for @playerShadersPreviewFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t grab a frame to preview'**
  String get playerShadersPreviewFailed;

  /// No description provided for @playerShadersCustomFiles.
  ///
  /// In en, this message translates to:
  /// **'Your shaders'**
  String get playerShadersCustomFiles;

  /// No description provided for @playerShadersCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom shaders'**
  String get playerShadersCustom;

  /// No description provided for @playerShadersImport.
  ///
  /// In en, this message translates to:
  /// **'Import .glsl'**
  String get playerShadersImport;

  /// No description provided for @playerShadersNone.
  ///
  /// In en, this message translates to:
  /// **'Import your own .glsl or .hook files and tick them to chain them'**
  String get playerShadersNone;

  /// No description provided for @playerShadersBadFile.
  ///
  /// In en, this message translates to:
  /// **'Choose a .glsl or .hook shader file'**
  String get playerShadersBadFile;

  /// No description provided for @playerDecoder.
  ///
  /// In en, this message translates to:
  /// **'Decoder'**
  String get playerDecoder;

  /// No description provided for @playerDecoderAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get playerDecoderAuto;

  /// No description provided for @playerDecoderAutoSafe.
  ///
  /// In en, this message translates to:
  /// **'Auto (safe)'**
  String get playerDecoderAutoSafe;

  /// No description provided for @playerDecoderSoftware.
  ///
  /// In en, this message translates to:
  /// **'Software'**
  String get playerDecoderSoftware;

  /// No description provided for @playerDecoderHardware.
  ///
  /// In en, this message translates to:
  /// **'Hardware'**
  String get playerDecoderHardware;

  /// No description provided for @playerDecoderHardwarePlus.
  ///
  /// In en, this message translates to:
  /// **'Hardware+'**
  String get playerDecoderHardwarePlus;

  /// No description provided for @playerVideoOutput.
  ///
  /// In en, this message translates to:
  /// **'Video output'**
  String get playerVideoOutput;

  /// No description provided for @playerAudioChannels.
  ///
  /// In en, this message translates to:
  /// **'Audio channels'**
  String get playerAudioChannels;

  /// No description provided for @playerBuffer.
  ///
  /// In en, this message translates to:
  /// **'Buffer size (MB)'**
  String get playerBuffer;

  /// No description provided for @playerBufferDesc.
  ///
  /// In en, this message translates to:
  /// **'Memory the player may use to buffer a stream'**
  String get playerBufferDesc;

  /// No description provided for @playerUseMpvConf.
  ///
  /// In en, this message translates to:
  /// **'Use mpv.conf'**
  String get playerUseMpvConf;

  /// No description provided for @playerUseMpvConfDesc.
  ///
  /// In en, this message translates to:
  /// **'Apply the options in your mpv.conf when playback starts'**
  String get playerUseMpvConfDesc;

  /// No description provided for @playerMpvConf.
  ///
  /// In en, this message translates to:
  /// **'mpv.conf'**
  String get playerMpvConf;

  /// No description provided for @playerMpvConfEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit the mpv configuration'**
  String get playerMpvConfEdit;

  /// No description provided for @playerMpvConfDesc.
  ///
  /// In en, this message translates to:
  /// **'One option per line, like --hwdec=auto in a normal mpv.conf. Profiles in [brackets] are ignored.'**
  String get playerMpvConfDesc;

  /// No description provided for @playerMpvConfSaved.
  ///
  /// In en, this message translates to:
  /// **'mpv.conf saved'**
  String get playerMpvConfSaved;

  /// No description provided for @playerUseScripts.
  ///
  /// In en, this message translates to:
  /// **'Use mpv scripts'**
  String get playerUseScripts;

  /// No description provided for @playerUseScriptsDesc.
  ///
  /// In en, this message translates to:
  /// **'Load the plugins from the scripts folder. They need a libmpv build with Lua or JavaScript support'**
  String get playerUseScriptsDesc;

  /// No description provided for @playerScripts.
  ///
  /// In en, this message translates to:
  /// **'mpv scripts'**
  String get playerScripts;

  /// No description provided for @playerScriptsManage.
  ///
  /// In en, this message translates to:
  /// **'Add, remove and switch plugins'**
  String get playerScriptsManage;

  /// No description provided for @playerScriptsAdd.
  ///
  /// In en, this message translates to:
  /// **'Add script'**
  String get playerScriptsAdd;

  /// No description provided for @playerScriptsDesc.
  ///
  /// In en, this message translates to:
  /// **'Lua, JavaScript and native plugins placed here are loaded when playback starts.'**
  String get playerScriptsDesc;

  /// No description provided for @playerScriptsNone.
  ///
  /// In en, this message translates to:
  /// **'No scripts yet'**
  String get playerScriptsNone;

  /// No description provided for @playerScriptsBadFile.
  ///
  /// In en, this message translates to:
  /// **'Choose a .lua, .js or native plugin file'**
  String get playerScriptsBadFile;

  /// No description provided for @playerTuning.
  ///
  /// In en, this message translates to:
  /// **'Advanced video tuning'**
  String get playerTuning;

  /// No description provided for @playerTuningDesc.
  ///
  /// In en, this message translates to:
  /// **'Override sync, caching, scaling and tone mapping. Wrong values can hurt playback'**
  String get playerTuningDesc;

  /// No description provided for @playerVideoSync.
  ///
  /// In en, this message translates to:
  /// **'Video sync'**
  String get playerVideoSync;

  /// No description provided for @playerInterpolation.
  ///
  /// In en, this message translates to:
  /// **'Frame interpolation'**
  String get playerInterpolation;

  /// No description provided for @playerInterpolationDesc.
  ///
  /// In en, this message translates to:
  /// **'Smooth motion, needs display-resample sync'**
  String get playerInterpolationDesc;

  /// No description provided for @playerPitch.
  ///
  /// In en, this message translates to:
  /// **'Pitch correction'**
  String get playerPitch;

  /// No description provided for @playerPitchDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep voices natural at other speeds'**
  String get playerPitchDesc;

  /// No description provided for @playerCacheSeconds.
  ///
  /// In en, this message translates to:
  /// **'Cache (seconds)'**
  String get playerCacheSeconds;

  /// No description provided for @playerReadahead.
  ///
  /// In en, this message translates to:
  /// **'Read ahead (seconds)'**
  String get playerReadahead;

  /// No description provided for @playerThreads.
  ///
  /// In en, this message translates to:
  /// **'Decoder threads'**
  String get playerThreads;

  /// No description provided for @playerDeband.
  ///
  /// In en, this message translates to:
  /// **'Deband'**
  String get playerDeband;

  /// No description provided for @playerDebandDesc.
  ///
  /// In en, this message translates to:
  /// **'Reduce colour banding in gradients'**
  String get playerDebandDesc;

  /// No description provided for @playerDebandIterations.
  ///
  /// In en, this message translates to:
  /// **'Deband iterations'**
  String get playerDebandIterations;

  /// No description provided for @playerDebandThreshold.
  ///
  /// In en, this message translates to:
  /// **'Deband threshold'**
  String get playerDebandThreshold;

  /// No description provided for @playerCorrectDownscaling.
  ///
  /// In en, this message translates to:
  /// **'Correct downscaling'**
  String get playerCorrectDownscaling;

  /// No description provided for @playerSigmoid.
  ///
  /// In en, this message translates to:
  /// **'Sigmoid upscaling'**
  String get playerSigmoid;

  /// No description provided for @playerScale.
  ///
  /// In en, this message translates to:
  /// **'Upscaler'**
  String get playerScale;

  /// No description provided for @playerCscale.
  ///
  /// In en, this message translates to:
  /// **'Chroma upscaler'**
  String get playerCscale;

  /// No description provided for @playerDscale.
  ///
  /// In en, this message translates to:
  /// **'Downscaler'**
  String get playerDscale;

  /// No description provided for @playerToneMapping.
  ///
  /// In en, this message translates to:
  /// **'Tone mapping'**
  String get playerToneMapping;

  /// No description provided for @playerTargetPeak.
  ///
  /// In en, this message translates to:
  /// **'Target peak'**
  String get playerTargetPeak;

  /// No description provided for @playerOpenFiles.
  ///
  /// In en, this message translates to:
  /// **'Open video files'**
  String get playerOpenFiles;

  /// No description provided for @playerOpenFilesDesc.
  ///
  /// In en, this message translates to:
  /// **'Play files from this device'**
  String get playerOpenFilesDesc;

  /// No description provided for @playerOpenFolder.
  ///
  /// In en, this message translates to:
  /// **'Open a folder'**
  String get playerOpenFolder;

  /// No description provided for @playerOpenFolderDesc.
  ///
  /// In en, this message translates to:
  /// **'Play every video in a folder as a playlist'**
  String get playerOpenFolderDesc;

  /// No description provided for @playerNetworkStream.
  ///
  /// In en, this message translates to:
  /// **'Network stream'**
  String get playerNetworkStream;

  /// No description provided for @playerNetworkStreamDesc.
  ///
  /// In en, this message translates to:
  /// **'Open a direct video or HLS link'**
  String get playerNetworkStreamDesc;

  /// No description provided for @playerStreamUrl.
  ///
  /// In en, this message translates to:
  /// **'Stream URL'**
  String get playerStreamUrl;

  /// No description provided for @playerStreamReferer.
  ///
  /// In en, this message translates to:
  /// **'Referer (optional)'**
  String get playerStreamReferer;

  /// No description provided for @playerTorrent.
  ///
  /// In en, this message translates to:
  /// **'Torrent'**
  String get playerTorrent;

  /// No description provided for @playerTorrentDesc.
  ///
  /// In en, this message translates to:
  /// **'Stream a magnet link or .torrent file'**
  String get playerTorrentDesc;

  /// No description provided for @playerMagnetLink.
  ///
  /// In en, this message translates to:
  /// **'Magnet link or torrent URL'**
  String get playerMagnetLink;

  /// No description provided for @playerPickTorrent.
  ///
  /// In en, this message translates to:
  /// **'Choose a .torrent file'**
  String get playerPickTorrent;

  /// No description provided for @playerTorrentMissing.
  ///
  /// In en, this message translates to:
  /// **'Install the torrent addon from Settings > Addons first'**
  String get playerTorrentMissing;

  /// No description provided for @playerNoVideos.
  ///
  /// In en, this message translates to:
  /// **'No playable videos found'**
  String get playerNoVideos;

  /// No description provided for @playerReset.
  ///
  /// In en, this message translates to:
  /// **'Reset player settings'**
  String get playerReset;

  /// No description provided for @playerResetDesc.
  ///
  /// In en, this message translates to:
  /// **'Restore every player option to its default'**
  String get playerResetDesc;

  /// No description provided for @playerResetConfirm.
  ///
  /// In en, this message translates to:
  /// **'Reset all player settings?'**
  String get playerResetConfirm;

  /// No description provided for @playerResetDone.
  ///
  /// In en, this message translates to:
  /// **'Player settings reset'**
  String get playerResetDone;

  /// No description provided for @playerQuality.
  ///
  /// In en, this message translates to:
  /// **'Quality'**
  String get playerQuality;

  /// No description provided for @playerStreams.
  ///
  /// In en, this message translates to:
  /// **'Streams'**
  String get playerStreams;

  /// No description provided for @playerAutoSelect.
  ///
  /// In en, this message translates to:
  /// **'Auto select stream'**
  String get playerAutoSelect;

  /// No description provided for @playerAutoSelectDesc.
  ///
  /// In en, this message translates to:
  /// **'Pick the stream most like your last choice for this title'**
  String get playerAutoSelectDesc;

  /// No description provided for @playerLoadingStreams.
  ///
  /// In en, this message translates to:
  /// **'Looking for streams…'**
  String get playerLoadingStreams;

  /// No description provided for @playerNoStreams.
  ///
  /// In en, this message translates to:
  /// **'This episode has no streams'**
  String get playerNoStreams;

  /// No description provided for @playerNoStreamsTitle.
  ///
  /// In en, this message translates to:
  /// **'No streams found'**
  String get playerNoStreamsTitle;

  /// No description provided for @playerFailed.
  ///
  /// In en, this message translates to:
  /// **'Playback failed'**
  String get playerFailed;

  /// No description provided for @playerTorrentNeeded.
  ///
  /// In en, this message translates to:
  /// **'This stream is a torrent'**
  String get playerTorrentNeeded;

  /// No description provided for @playerTorrentNeededDesc.
  ///
  /// In en, this message translates to:
  /// **'Install the torrent addon to play magnet links and .torrent files'**
  String get playerTorrentNeededDesc;

  /// No description provided for @playerOpenAddons.
  ///
  /// In en, this message translates to:
  /// **'Open addons'**
  String get playerOpenAddons;

  /// No description provided for @playerTryAnotherStream.
  ///
  /// In en, this message translates to:
  /// **'Try another stream'**
  String get playerTryAnotherStream;

  /// No description provided for @playerEpisodes.
  ///
  /// In en, this message translates to:
  /// **'Episodes'**
  String get playerEpisodes;

  /// No description provided for @playerLock.
  ///
  /// In en, this message translates to:
  /// **'Lock controls'**
  String get playerLock;

  /// No description provided for @playerFullscreen.
  ///
  /// In en, this message translates to:
  /// **'Fullscreen'**
  String get playerFullscreen;

  /// No description provided for @settingsReader.
  ///
  /// In en, this message translates to:
  /// **'Reader'**
  String get settingsReader;

  /// No description provided for @settingsReaderDesc.
  ///
  /// In en, this message translates to:
  /// **'Manga, manhwa and novel reading'**
  String get settingsReaderDesc;

  /// No description provided for @readerChapters.
  ///
  /// In en, this message translates to:
  /// **'Chapters'**
  String get readerChapters;

  /// No description provided for @readerSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reader settings'**
  String get readerSettingsTitle;

  /// No description provided for @readerPreviousChapter.
  ///
  /// In en, this message translates to:
  /// **'Previous chapter'**
  String get readerPreviousChapter;

  /// No description provided for @readerNextChapter.
  ///
  /// In en, this message translates to:
  /// **'Next chapter'**
  String get readerNextChapter;

  /// No description provided for @readerFirstChapter.
  ///
  /// In en, this message translates to:
  /// **'This is the first chapter'**
  String get readerFirstChapter;

  /// No description provided for @readerLastChapter.
  ///
  /// In en, this message translates to:
  /// **'You\'re all caught up'**
  String get readerLastChapter;

  /// No description provided for @readerFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open this chapter'**
  String get readerFailed;

  /// No description provided for @readerNoText.
  ///
  /// In en, this message translates to:
  /// **'This chapter has no text'**
  String get readerNoText;

  /// No description provided for @readerPerTitle.
  ///
  /// In en, this message translates to:
  /// **'Only for this title'**
  String get readerPerTitle;

  /// No description provided for @readerPerTitleDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep these reader settings for this title only'**
  String get readerPerTitleDesc;

  /// No description provided for @readerSectionReading.
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get readerSectionReading;

  /// No description provided for @readerSectionControls.
  ///
  /// In en, this message translates to:
  /// **'Controls'**
  String get readerSectionControls;

  /// No description provided for @readerSectionDisplay.
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get readerSectionDisplay;

  /// No description provided for @readerSectionNovel.
  ///
  /// In en, this message translates to:
  /// **'Novel'**
  String get readerSectionNovel;

  /// No description provided for @readerSectionReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get readerSectionReset;

  /// No description provided for @readerMode.
  ///
  /// In en, this message translates to:
  /// **'Reading mode'**
  String get readerMode;

  /// No description provided for @readerModeRtl.
  ///
  /// In en, this message translates to:
  /// **'Right to left'**
  String get readerModeRtl;

  /// No description provided for @readerModeLtr.
  ///
  /// In en, this message translates to:
  /// **'Left to right'**
  String get readerModeLtr;

  /// No description provided for @readerModeVertical.
  ///
  /// In en, this message translates to:
  /// **'Vertical pages'**
  String get readerModeVertical;

  /// No description provided for @readerModeWebtoon.
  ///
  /// In en, this message translates to:
  /// **'Webtoon'**
  String get readerModeWebtoon;

  /// No description provided for @readerModeContinuous.
  ///
  /// In en, this message translates to:
  /// **'Continuous scroll'**
  String get readerModeContinuous;

  /// No description provided for @readerScale.
  ///
  /// In en, this message translates to:
  /// **'Image scale'**
  String get readerScale;

  /// No description provided for @readerScaleFit.
  ///
  /// In en, this message translates to:
  /// **'Fit screen'**
  String get readerScaleFit;

  /// No description provided for @readerScaleWidth.
  ///
  /// In en, this message translates to:
  /// **'Fit width'**
  String get readerScaleWidth;

  /// No description provided for @readerScaleHeight.
  ///
  /// In en, this message translates to:
  /// **'Fit height'**
  String get readerScaleHeight;

  /// No description provided for @readerScaleOriginal.
  ///
  /// In en, this message translates to:
  /// **'Original size'**
  String get readerScaleOriginal;

  /// No description provided for @readerScaleSmart.
  ///
  /// In en, this message translates to:
  /// **'Smart fit'**
  String get readerScaleSmart;

  /// No description provided for @readerDoublePage.
  ///
  /// In en, this message translates to:
  /// **'Double pages'**
  String get readerDoublePage;

  /// No description provided for @readerDoublePageDesc.
  ///
  /// In en, this message translates to:
  /// **'Show two pages side by side in landscape'**
  String get readerDoublePageDesc;

  /// No description provided for @readerDoubleTapZoom.
  ///
  /// In en, this message translates to:
  /// **'Double tap to zoom'**
  String get readerDoubleTapZoom;

  /// No description provided for @readerDoubleTapZoomDesc.
  ///
  /// In en, this message translates to:
  /// **'Zoom a page in and out with a double tap'**
  String get readerDoubleTapZoomDesc;

  /// No description provided for @readerAnimate.
  ///
  /// In en, this message translates to:
  /// **'Page animation'**
  String get readerAnimate;

  /// No description provided for @readerAnimateDesc.
  ///
  /// In en, this message translates to:
  /// **'Animate page turns'**
  String get readerAnimateDesc;

  /// No description provided for @readerSidePadding.
  ///
  /// In en, this message translates to:
  /// **'Side padding'**
  String get readerSidePadding;

  /// No description provided for @readerSidePaddingDesc.
  ///
  /// In en, this message translates to:
  /// **'Space beside the pages in percent'**
  String get readerSidePaddingDesc;

  /// No description provided for @readerPageGap.
  ///
  /// In en, this message translates to:
  /// **'Page gap'**
  String get readerPageGap;

  /// No description provided for @readerPageGapDesc.
  ///
  /// In en, this message translates to:
  /// **'Space between pages'**
  String get readerPageGapDesc;

  /// No description provided for @readerAutoNext.
  ///
  /// In en, this message translates to:
  /// **'Continue into the next chapter'**
  String get readerAutoNext;

  /// No description provided for @readerAutoNextDesc.
  ///
  /// In en, this message translates to:
  /// **'Load the next chapter while you read the end of this one'**
  String get readerAutoNextDesc;

  /// No description provided for @readerPreload.
  ///
  /// In en, this message translates to:
  /// **'Preload pages'**
  String get readerPreload;

  /// No description provided for @readerPreloadDesc.
  ///
  /// In en, this message translates to:
  /// **'How many pages to download ahead'**
  String get readerPreloadDesc;

  /// No description provided for @readerTapZones.
  ///
  /// In en, this message translates to:
  /// **'Tap zones'**
  String get readerTapZones;

  /// No description provided for @readerTapDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get readerTapDefault;

  /// No description provided for @readerTapLShaped.
  ///
  /// In en, this message translates to:
  /// **'L-shaped'**
  String get readerTapLShaped;

  /// No description provided for @readerTapKindle.
  ///
  /// In en, this message translates to:
  /// **'Kindle-like'**
  String get readerTapKindle;

  /// No description provided for @readerTapEdge.
  ///
  /// In en, this message translates to:
  /// **'Edges only'**
  String get readerTapEdge;

  /// No description provided for @readerTapOff.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get readerTapOff;

  /// No description provided for @readerInvertTaps.
  ///
  /// In en, this message translates to:
  /// **'Invert tap zones'**
  String get readerInvertTaps;

  /// No description provided for @readerInvertTapsDesc.
  ///
  /// In en, this message translates to:
  /// **'Swap the previous and next areas'**
  String get readerInvertTapsDesc;

  /// No description provided for @readerBackground.
  ///
  /// In en, this message translates to:
  /// **'Background'**
  String get readerBackground;

  /// No description provided for @readerBackgroundBlack.
  ///
  /// In en, this message translates to:
  /// **'Black'**
  String get readerBackgroundBlack;

  /// No description provided for @readerBackgroundGray.
  ///
  /// In en, this message translates to:
  /// **'Gray'**
  String get readerBackgroundGray;

  /// No description provided for @readerBackgroundWhite.
  ///
  /// In en, this message translates to:
  /// **'White'**
  String get readerBackgroundWhite;

  /// No description provided for @readerBackgroundTheme.
  ///
  /// In en, this message translates to:
  /// **'App theme'**
  String get readerBackgroundTheme;

  /// No description provided for @readerFilter.
  ///
  /// In en, this message translates to:
  /// **'Color filter'**
  String get readerFilter;

  /// No description provided for @readerFilterNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get readerFilterNone;

  /// No description provided for @readerFilterGrayscale.
  ///
  /// In en, this message translates to:
  /// **'Grayscale'**
  String get readerFilterGrayscale;

  /// No description provided for @readerFilterInvert.
  ///
  /// In en, this message translates to:
  /// **'Invert'**
  String get readerFilterInvert;

  /// No description provided for @readerFilterSepia.
  ///
  /// In en, this message translates to:
  /// **'Sepia'**
  String get readerFilterSepia;

  /// No description provided for @readerFilterQuality.
  ///
  /// In en, this message translates to:
  /// **'Image filter quality'**
  String get readerFilterQuality;

  /// No description provided for @readerFilterQualityNone.
  ///
  /// In en, this message translates to:
  /// **'None (Nearest neighbor)'**
  String get readerFilterQualityNone;

  /// No description provided for @readerFilterQualityLow.
  ///
  /// In en, this message translates to:
  /// **'Low (Bilinear)'**
  String get readerFilterQualityLow;

  /// No description provided for @readerFilterQualityMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium (Trilinear)'**
  String get readerFilterQualityMedium;

  /// No description provided for @readerFilterQualityHigh.
  ///
  /// In en, this message translates to:
  /// **'High (Bicubic)'**
  String get readerFilterQualityHigh;

  /// No description provided for @readerFilterQualityLanczos.
  ///
  /// In en, this message translates to:
  /// **'Lanczos (Rust high quality)'**
  String get readerFilterQualityLanczos;

  /// No description provided for @readerFilterQualityDesc.
  ///
  /// In en, this message translates to:
  /// **'Resampling quality used when scaling manga pages'**
  String get readerFilterQualityDesc;

  /// No description provided for @readerDim.
  ///
  /// In en, this message translates to:
  /// **'Dim'**
  String get readerDim;

  /// No description provided for @readerDimDesc.
  ///
  /// In en, this message translates to:
  /// **'Darken the pages'**
  String get readerDimDesc;

  /// No description provided for @readerPageNumber.
  ///
  /// In en, this message translates to:
  /// **'Page number'**
  String get readerPageNumber;

  /// No description provided for @readerPageNumberDesc.
  ///
  /// In en, this message translates to:
  /// **'Show the page number while reading'**
  String get readerPageNumberDesc;

  /// No description provided for @readerFullscreen.
  ///
  /// In en, this message translates to:
  /// **'Fullscreen'**
  String get readerFullscreen;

  /// No description provided for @readerFullscreenDesc.
  ///
  /// In en, this message translates to:
  /// **'Hide the system bars'**
  String get readerFullscreenDesc;

  /// No description provided for @readerCropBorders.
  ///
  /// In en, this message translates to:
  /// **'Crop borders'**
  String get readerCropBorders;

  /// No description provided for @readerCropBordersDesc.
  ///
  /// In en, this message translates to:
  /// **'Trim blank white or black margins from pages'**
  String get readerCropBordersDesc;

  /// No description provided for @readerVolumeKeys.
  ///
  /// In en, this message translates to:
  /// **'Volume keys turn pages'**
  String get readerVolumeKeys;

  /// No description provided for @readerVolumeKeysDesc.
  ///
  /// In en, this message translates to:
  /// **'Volume down goes forward, volume up goes back'**
  String get readerVolumeKeysDesc;

  /// No description provided for @readerBookmarks.
  ///
  /// In en, this message translates to:
  /// **'Bookmarks'**
  String get readerBookmarks;

  /// No description provided for @readerBookmarkAdd.
  ///
  /// In en, this message translates to:
  /// **'Add bookmark'**
  String get readerBookmarkAdd;

  /// No description provided for @readerBookmarkRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove bookmark'**
  String get readerBookmarkRemove;

  /// No description provided for @readerBookmarksEmpty.
  ///
  /// In en, this message translates to:
  /// **'No bookmarks yet'**
  String get readerBookmarksEmpty;

  /// No description provided for @readerBookmarkPage.
  ///
  /// In en, this message translates to:
  /// **'Page {page} of {total}'**
  String readerBookmarkPage(int page, int total);

  /// No description provided for @readerAutoScroll.
  ///
  /// In en, this message translates to:
  /// **'Auto scroll'**
  String get readerAutoScroll;

  /// No description provided for @readerAutoScrollStop.
  ///
  /// In en, this message translates to:
  /// **'Stop auto scroll'**
  String get readerAutoScrollStop;

  /// No description provided for @readerAutoScrollSpeed.
  ///
  /// In en, this message translates to:
  /// **'Auto scroll speed'**
  String get readerAutoScrollSpeed;

  /// No description provided for @readerAutoScrollSpeedDesc.
  ///
  /// In en, this message translates to:
  /// **'How fast pages scroll or turn on their own'**
  String get readerAutoScrollSpeedDesc;

  /// No description provided for @readerKeepOn.
  ///
  /// In en, this message translates to:
  /// **'Keep screen on'**
  String get readerKeepOn;

  /// No description provided for @readerKeepOnDesc.
  ///
  /// In en, this message translates to:
  /// **'Stop the screen from turning off while reading'**
  String get readerKeepOnDesc;

  /// No description provided for @readerOrientation.
  ///
  /// In en, this message translates to:
  /// **'Orientation'**
  String get readerOrientation;

  /// No description provided for @readerOrientationFree.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get readerOrientationFree;

  /// No description provided for @readerOrientationPortrait.
  ///
  /// In en, this message translates to:
  /// **'Portrait'**
  String get readerOrientationPortrait;

  /// No description provided for @readerOrientationLandscape.
  ///
  /// In en, this message translates to:
  /// **'Landscape'**
  String get readerOrientationLandscape;

  /// No description provided for @readerSaveProgress.
  ///
  /// In en, this message translates to:
  /// **'Save progress'**
  String get readerSaveProgress;

  /// No description provided for @readerSaveProgressDesc.
  ///
  /// In en, this message translates to:
  /// **'Remember your page and mark chapters as read'**
  String get readerSaveProgressDesc;

  /// No description provided for @readerReset.
  ///
  /// In en, this message translates to:
  /// **'Reset reader settings'**
  String get readerReset;

  /// No description provided for @readerResetDesc.
  ///
  /// In en, this message translates to:
  /// **'Back to the defaults'**
  String get readerResetDesc;

  /// No description provided for @novelSize.
  ///
  /// In en, this message translates to:
  /// **'Text size'**
  String get novelSize;

  /// No description provided for @novelFont.
  ///
  /// In en, this message translates to:
  /// **'Font'**
  String get novelFont;

  /// No description provided for @novelLineHeight.
  ///
  /// In en, this message translates to:
  /// **'Line height'**
  String get novelLineHeight;

  /// No description provided for @novelParagraph.
  ///
  /// In en, this message translates to:
  /// **'Paragraph spacing'**
  String get novelParagraph;

  /// No description provided for @novelMargin.
  ///
  /// In en, this message translates to:
  /// **'Margins'**
  String get novelMargin;

  /// No description provided for @novelTheme.
  ///
  /// In en, this message translates to:
  /// **'Reader theme'**
  String get novelTheme;

  /// No description provided for @novelThemeApp.
  ///
  /// In en, this message translates to:
  /// **'App theme'**
  String get novelThemeApp;

  /// No description provided for @novelThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get novelThemeLight;

  /// No description provided for @novelThemeSepia.
  ///
  /// In en, this message translates to:
  /// **'Sepia'**
  String get novelThemeSepia;

  /// No description provided for @novelThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get novelThemeDark;

  /// No description provided for @novelThemeBlack.
  ///
  /// In en, this message translates to:
  /// **'Black'**
  String get novelThemeBlack;

  /// No description provided for @novelJustify.
  ///
  /// In en, this message translates to:
  /// **'Justify text'**
  String get novelJustify;

  /// No description provided for @novelJustifyDesc.
  ///
  /// In en, this message translates to:
  /// **'Align text to both edges'**
  String get novelJustifyDesc;

  /// No description provided for @trackProgressTitle.
  ///
  /// In en, this message translates to:
  /// **'Save progress?'**
  String get trackProgressTitle;

  /// No description provided for @trackProgressAnime.
  ///
  /// In en, this message translates to:
  /// **'Track {name} on your list as you watch? Choose \"This device only\" to keep it local, or No to save nothing.'**
  String trackProgressAnime(String name);

  /// No description provided for @trackProgressManga.
  ///
  /// In en, this message translates to:
  /// **'Track {name} on your list when you finish a chapter? Choose \"This device only\" to keep it local, or No to save nothing.'**
  String trackProgressManga(String name);

  /// No description provided for @trackProgressRemember.
  ///
  /// In en, this message translates to:
  /// **'Remember my choice'**
  String get trackProgressRemember;

  /// No description provided for @trackProgressYes.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get trackProgressYes;

  /// No description provided for @trackProgressReset.
  ///
  /// In en, this message translates to:
  /// **'Save progress prompt reset for this type, it will ask again'**
  String get trackProgressReset;

  /// No description provided for @trackProgressNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get trackProgressNo;

  /// No description provided for @trackProgressOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get trackProgressOff;

  /// No description provided for @trackProgressLocal.
  ///
  /// In en, this message translates to:
  /// **'This device only'**
  String get trackProgressLocal;

  /// No description provided for @trackProgressSettingAnime.
  ///
  /// In en, this message translates to:
  /// **'Track anime progress'**
  String get trackProgressSettingAnime;

  /// No description provided for @trackProgressSettingManga.
  ///
  /// In en, this message translates to:
  /// **'Track manga and novel progress'**
  String get trackProgressSettingManga;

  /// No description provided for @trackProgressSettingDesc.
  ///
  /// In en, this message translates to:
  /// **'What to do when you open an episode or finish a chapter'**
  String get trackProgressSettingDesc;

  /// No description provided for @trackProgressAsk.
  ///
  /// In en, this message translates to:
  /// **'Ask'**
  String get trackProgressAsk;

  /// No description provided for @trackProgressAlways.
  ///
  /// In en, this message translates to:
  /// **'Always'**
  String get trackProgressAlways;

  /// No description provided for @trackProgressNever.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get trackProgressNever;

  /// No description provided for @dantotsuImport.
  ///
  /// In en, this message translates to:
  /// **'Import from Dantotsu'**
  String get dantotsuImport;

  /// No description provided for @dantotsuImportDesc.
  ///
  /// In en, this message translates to:
  /// **'Read a Dantotsu settings backup (.ani, or encrypted .sani)'**
  String get dantotsuImportDesc;

  /// No description provided for @dantotsuPick.
  ///
  /// In en, this message translates to:
  /// **'Choose a Dantotsu backup'**
  String get dantotsuPick;

  /// No description provided for @dantotsuNothing.
  ///
  /// In en, this message translates to:
  /// **'Nothing in this file can be imported'**
  String get dantotsuNothing;

  /// No description provided for @dantotsuApply.
  ///
  /// In en, this message translates to:
  /// **'Import selected'**
  String get dantotsuApply;

  /// No description provided for @dantotsuDone.
  ///
  /// In en, this message translates to:
  /// **'Imported {done} of {total}'**
  String dantotsuDone(int done, int total);

  /// No description provided for @dantotsuGroupAccounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get dantotsuGroupAccounts;

  /// No description provided for @dantotsuGroupAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get dantotsuGroupAppearance;

  /// No description provided for @dantotsuGroupExtensions.
  ///
  /// In en, this message translates to:
  /// **'Extensions'**
  String get dantotsuGroupExtensions;

  /// No description provided for @dantotsuGroupApp.
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get dantotsuGroupApp;

  /// No description provided for @dantotsuGroupPlayer.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get dantotsuGroupPlayer;

  /// No description provided for @dantotsuAnilist.
  ///
  /// In en, this message translates to:
  /// **'AniList login'**
  String get dantotsuAnilist;

  /// No description provided for @dantotsuMal.
  ///
  /// In en, this message translates to:
  /// **'MyAnimeList login'**
  String get dantotsuMal;

  /// No description provided for @dantotsuDiscord.
  ///
  /// In en, this message translates to:
  /// **'Discord Rich Presence token'**
  String get dantotsuDiscord;

  /// No description provided for @dantotsuTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get dantotsuTheme;

  /// No description provided for @dantotsuReposAnime.
  ///
  /// In en, this message translates to:
  /// **'Anime extension repositories'**
  String get dantotsuReposAnime;

  /// No description provided for @dantotsuReposManga.
  ///
  /// In en, this message translates to:
  /// **'Manga extension repositories'**
  String get dantotsuReposManga;

  /// No description provided for @dantotsuReposNovel.
  ///
  /// In en, this message translates to:
  /// **'Novel extension repositories'**
  String get dantotsuReposNovel;

  /// No description provided for @dantotsuUpdates.
  ///
  /// In en, this message translates to:
  /// **'Update check'**
  String get dantotsuUpdates;

  /// No description provided for @dantotsuComments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get dantotsuComments;

  /// No description provided for @dantotsuActivity.
  ///
  /// In en, this message translates to:
  /// **'AniList notification polling'**
  String get dantotsuActivity;

  /// No description provided for @dantotsuDns.
  ///
  /// In en, this message translates to:
  /// **'DNS provider'**
  String get dantotsuDns;

  /// No description provided for @dantotsuPlayer.
  ///
  /// In en, this message translates to:
  /// **'Player speed and subtitle colours'**
  String get dantotsuPlayer;

  /// No description provided for @dantotsuWarning.
  ///
  /// In en, this message translates to:
  /// **'This file holds login tokens. Keep it private.'**
  String get dantotsuWarning;

  /// No description provided for @novelIndent.
  ///
  /// In en, this message translates to:
  /// **'Indent paragraphs'**
  String get novelIndent;

  /// No description provided for @novelIndentDesc.
  ///
  /// In en, this message translates to:
  /// **'Start each paragraph with a first-line indent'**
  String get novelIndentDesc;

  /// No description provided for @novelLetterSpacing.
  ///
  /// In en, this message translates to:
  /// **'Letter spacing'**
  String get novelLetterSpacing;

  /// No description provided for @novelSectionTranslate.
  ///
  /// In en, this message translates to:
  /// **'Translation'**
  String get novelSectionTranslate;

  /// No description provided for @sectionExperimental.
  ///
  /// In en, this message translates to:
  /// **'Experimental'**
  String get sectionExperimental;

  /// No description provided for @kitsuGraphqlDetail.
  ///
  /// In en, this message translates to:
  /// **'Faster detail pages (GraphQL)'**
  String get kitsuGraphqlDetail;

  /// No description provided for @kitsuGraphqlDetailDesc.
  ///
  /// In en, this message translates to:
  /// **'Load a title with its characters, staff and your entry in one request'**
  String get kitsuGraphqlDetailDesc;

  /// No description provided for @togetherTitle.
  ///
  /// In en, this message translates to:
  /// **'Watch together'**
  String get togetherTitle;

  /// No description provided for @togetherIntro.
  ///
  /// In en, this message translates to:
  /// **'Paste the room link your friend sent you. You join straight away and the player opens when they start watching.'**
  String get togetherIntro;

  /// No description provided for @togetherName.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get togetherName;

  /// No description provided for @togetherRoom.
  ///
  /// In en, this message translates to:
  /// **'Room'**
  String get togetherRoom;

  /// No description provided for @togetherNewRoom.
  ///
  /// In en, this message translates to:
  /// **'New random room'**
  String get togetherNewRoom;

  /// No description provided for @togetherServer.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get togetherServer;

  /// No description provided for @togetherPort.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get togetherPort;

  /// No description provided for @togetherPassword.
  ///
  /// In en, this message translates to:
  /// **'Server password (optional)'**
  String get togetherPassword;

  /// No description provided for @togetherPublicNote.
  ///
  /// In en, this message translates to:
  /// **'Public servers have no password and rooms are open. Use a long room name and share it only with friends.'**
  String get togetherPublicNote;

  /// No description provided for @togetherConnect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get togetherConnect;

  /// No description provided for @togetherConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting…'**
  String get togetherConnecting;

  /// No description provided for @togetherLeave.
  ///
  /// In en, this message translates to:
  /// **'Leave room'**
  String get togetherLeave;

  /// No description provided for @togetherLeftRoom.
  ///
  /// In en, this message translates to:
  /// **'You left the room'**
  String get togetherLeftRoom;

  /// No description provided for @togetherReady.
  ///
  /// In en, this message translates to:
  /// **'Ready'**
  String get togetherReady;

  /// No description provided for @togetherYou.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get togetherYou;

  /// No description provided for @togetherNoChat.
  ///
  /// In en, this message translates to:
  /// **'No messages yet'**
  String get togetherNoChat;

  /// No description provided for @togetherChatHint.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get togetherChatHint;

  /// No description provided for @togetherCopyInvite.
  ///
  /// In en, this message translates to:
  /// **'Copy invite'**
  String get togetherCopyInvite;

  /// No description provided for @togetherInviteCopied.
  ///
  /// In en, this message translates to:
  /// **'Server and room copied'**
  String get togetherInviteCopied;

  /// No description provided for @togetherFileMismatch.
  ///
  /// In en, this message translates to:
  /// **'Different file or length'**
  String get togetherFileMismatch;

  /// No description provided for @togetherConnectionLost.
  ///
  /// In en, this message translates to:
  /// **'Connection lost'**
  String get togetherConnectionLost;

  /// No description provided for @togetherConnectedTo.
  ///
  /// In en, this message translates to:
  /// **'Connected to {room}'**
  String togetherConnectedTo(String room);

  /// No description provided for @togetherFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t connect: {error}'**
  String togetherFailed(String error);

  /// No description provided for @togetherJoined.
  ///
  /// In en, this message translates to:
  /// **'{name} joined'**
  String togetherJoined(String name);

  /// No description provided for @togetherLeft.
  ///
  /// In en, this message translates to:
  /// **'{name} left'**
  String togetherLeft(String name);

  /// No description provided for @togetherPaused.
  ///
  /// In en, this message translates to:
  /// **'{name} paused'**
  String togetherPaused(String name);

  /// No description provided for @togetherResumed.
  ///
  /// In en, this message translates to:
  /// **'{name} resumed'**
  String togetherResumed(String name);

  /// No description provided for @togetherSeeked.
  ///
  /// In en, this message translates to:
  /// **'{name} jumped to {time}'**
  String togetherSeeked(String name, String time);

  /// No description provided for @togetherOtherService.
  ///
  /// In en, this message translates to:
  /// **'The host is on {service}, syncing is off'**
  String togetherOtherService(String service);

  /// No description provided for @togetherFollowFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open the host\'s episode. Open it yourself.'**
  String get togetherFollowFailed;

  /// No description provided for @togetherHostRole.
  ///
  /// In en, this message translates to:
  /// **'Host a room'**
  String get togetherHostRole;

  /// No description provided for @togetherJoinRole.
  ///
  /// In en, this message translates to:
  /// **'Join a room'**
  String get togetherJoinRole;

  /// No description provided for @togetherFollow.
  ///
  /// In en, this message translates to:
  /// **'Follow the host\'s episode'**
  String get togetherFollow;

  /// No description provided for @togetherFollowDesc.
  ///
  /// In en, this message translates to:
  /// **'Opens and switches episodes automatically when you use the same service'**
  String get togetherFollowDesc;

  /// No description provided for @togetherOpenHost.
  ///
  /// In en, this message translates to:
  /// **'Open host\'s episode'**
  String get togetherOpenHost;

  /// No description provided for @togetherHostWatching.
  ///
  /// In en, this message translates to:
  /// **'Host: {title}'**
  String togetherHostWatching(String title);

  /// No description provided for @togetherLiveChat.
  ///
  /// In en, this message translates to:
  /// **'Live chat'**
  String get togetherLiveChat;

  /// No description provided for @togetherShowChat.
  ///
  /// In en, this message translates to:
  /// **'Show live chat'**
  String get togetherShowChat;

  /// No description provided for @togetherWaitingHost.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the host to start an episode'**
  String get togetherWaitingHost;

  /// No description provided for @togetherDifferentService.
  ///
  /// In en, this message translates to:
  /// **'The host is on another service, syncing is off'**
  String get togetherDifferentService;

  /// No description provided for @togetherNoSource.
  ///
  /// In en, this message translates to:
  /// **'Install an anime extension to follow the host'**
  String get togetherNoSource;

  /// No description provided for @togetherNoMatch.
  ///
  /// In en, this message translates to:
  /// **'{source} has no match for the host\'s title'**
  String togetherNoMatch(String source);

  /// No description provided for @togetherNoEpisode.
  ///
  /// In en, this message translates to:
  /// **'{source} doesn\'t have the host\'s episode'**
  String togetherNoEpisode(String source);

  /// No description provided for @togetherRoomLink.
  ///
  /// In en, this message translates to:
  /// **'Room link'**
  String get togetherRoomLink;

  /// No description provided for @togetherBadLink.
  ///
  /// In en, this message translates to:
  /// **'That isn\'t a room link'**
  String get togetherBadLink;

  /// No description provided for @togetherHostClosed.
  ///
  /// In en, this message translates to:
  /// **'The host closed the room'**
  String get togetherHostClosed;

  /// No description provided for @togetherHostBadge.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get togetherHostBadge;

  /// No description provided for @togetherNowPlaying.
  ///
  /// In en, this message translates to:
  /// **'Now playing'**
  String get togetherNowPlaying;

  /// No description provided for @togetherWatchingCount.
  ///
  /// In en, this message translates to:
  /// **'{count} watching'**
  String togetherWatchingCount(int count);

  /// No description provided for @togetherWantsPause.
  ///
  /// In en, this message translates to:
  /// **'{user} wants to pause'**
  String togetherWantsPause(String user);

  /// No description provided for @togetherWantsResume.
  ///
  /// In en, this message translates to:
  /// **'{user} wants to resume'**
  String togetherWantsResume(String user);

  /// No description provided for @togetherChip.
  ///
  /// In en, this message translates to:
  /// **'Together'**
  String get togetherChip;

  /// No description provided for @togetherSettingsDesc.
  ///
  /// In en, this message translates to:
  /// **'Join a friend\'s room with a link'**
  String get togetherSettingsDesc;

  /// No description provided for @togetherNoPlayer.
  ///
  /// In en, this message translates to:
  /// **'Open an episode and it syncs with the room automatically. Chat and the member list work right now.'**
  String get togetherNoPlayer;

  /// No description provided for @togetherWatching.
  ///
  /// In en, this message translates to:
  /// **'{name} is watching {file}'**
  String togetherWatching(String name, String file);

  /// No description provided for @novelBilingual.
  ///
  /// In en, this message translates to:
  /// **'Show original and translation'**
  String get novelBilingual;

  /// No description provided for @novelBilingualDesc.
  ///
  /// In en, this message translates to:
  /// **'Each paragraph shows the original text with its translation below it'**
  String get novelBilingualDesc;

  /// No description provided for @novelTranslateTo.
  ///
  /// In en, this message translates to:
  /// **'Translate to'**
  String get novelTranslateTo;

  /// No description provided for @novelTranslateOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get novelTranslateOff;

  /// No description provided for @novelSectionSpeech.
  ///
  /// In en, this message translates to:
  /// **'Text to speech'**
  String get novelSectionSpeech;

  /// No description provided for @novelSpeechRate.
  ///
  /// In en, this message translates to:
  /// **'Speech speed'**
  String get novelSpeechRate;

  /// No description provided for @novelSpeechPitch.
  ///
  /// In en, this message translates to:
  /// **'Speech pitch'**
  String get novelSpeechPitch;

  /// No description provided for @novelSpeak.
  ///
  /// In en, this message translates to:
  /// **'Read aloud'**
  String get novelSpeak;

  /// No description provided for @novelSpeakStop.
  ///
  /// In en, this message translates to:
  /// **'Stop reading aloud'**
  String get novelSpeakStop;

  /// No description provided for @novelTranslate.
  ///
  /// In en, this message translates to:
  /// **'Translate chapter'**
  String get novelTranslate;

  /// No description provided for @novelTranslateShowOriginal.
  ///
  /// In en, this message translates to:
  /// **'Show original'**
  String get novelTranslateShowOriginal;

  /// No description provided for @novelTranslating.
  ///
  /// In en, this message translates to:
  /// **'Translating…'**
  String get novelTranslating;

  /// No description provided for @novelTranslateFailed.
  ///
  /// In en, this message translates to:
  /// **'Translation failed: {error}'**
  String novelTranslateFailed(String error);

  /// No description provided for @novelSpeechUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Text to speech is not available on this device'**
  String get novelSpeechUnavailable;

  /// No description provided for @novelSpeechVoice.
  ///
  /// In en, this message translates to:
  /// **'Voice'**
  String get novelSpeechVoice;

  /// No description provided for @novelSpeechVoiceDefault.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get novelSpeechVoiceDefault;

  /// No description provided for @novelSpeakPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous line'**
  String get novelSpeakPrevious;

  /// No description provided for @novelSpeakNext.
  ///
  /// In en, this message translates to:
  /// **'Next line'**
  String get novelSpeakNext;

  /// No description provided for @novelTapPaging.
  ///
  /// In en, this message translates to:
  /// **'Tap edges to turn page'**
  String get novelTapPaging;

  /// No description provided for @novelTapPagingDesc.
  ///
  /// In en, this message translates to:
  /// **'Tap the left or right side to scroll a page, the middle shows the controls'**
  String get novelTapPagingDesc;

  /// No description provided for @novelMinutesLeft.
  ///
  /// In en, this message translates to:
  /// **'{count} min left'**
  String novelMinutesLeft(int count);

  /// No description provided for @novelBold.
  ///
  /// In en, this message translates to:
  /// **'Bold text'**
  String get novelBold;

  /// No description provided for @novelBoldDesc.
  ///
  /// In en, this message translates to:
  /// **'Use a heavier weight'**
  String get novelBoldDesc;

  /// No description provided for @readerFinishedChapter.
  ///
  /// In en, this message translates to:
  /// **'Finished {chapter}'**
  String readerFinishedChapter(String chapter);

  /// No description provided for @readerNextUp.
  ///
  /// In en, this message translates to:
  /// **'Next: {chapter}'**
  String readerNextUp(String chapter);

  /// No description provided for @readerPreviousUp.
  ///
  /// In en, this message translates to:
  /// **'Previous: {chapter}'**
  String readerPreviousUp(String chapter);

  /// No description provided for @readerNoPages.
  ///
  /// In en, this message translates to:
  /// **'This chapter has no pages'**
  String get readerNoPages;

  /// No description provided for @readerLoadingPages.
  ///
  /// In en, this message translates to:
  /// **'Loading pages…'**
  String get readerLoadingPages;

  /// No description provided for @readerSlowPage.
  ///
  /// In en, this message translates to:
  /// **'Still loading this page…'**
  String get readerSlowPage;

  /// No description provided for @readerPageFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load this page'**
  String get readerPageFailed;

  /// No description provided for @playerShowComments.
  ///
  /// In en, this message translates to:
  /// **'Show comments'**
  String get playerShowComments;

  /// No description provided for @playerHideComments.
  ///
  /// In en, this message translates to:
  /// **'Hide comments'**
  String get playerHideComments;

  /// No description provided for @playerSubtitles.
  ///
  /// In en, this message translates to:
  /// **'Subtitles'**
  String get playerSubtitles;

  /// No description provided for @playerSubtitlesOff.
  ///
  /// In en, this message translates to:
  /// **'Subtitles off'**
  String get playerSubtitlesOff;

  /// No description provided for @playerAudio.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get playerAudio;

  /// No description provided for @playerAddSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add subtitle file'**
  String get playerAddSubtitle;

  /// No description provided for @playerAddAudio.
  ///
  /// In en, this message translates to:
  /// **'Add audio file'**
  String get playerAddAudio;

  /// No description provided for @playerChapters.
  ///
  /// In en, this message translates to:
  /// **'Chapters'**
  String get playerChapters;

  /// No description provided for @playerNoChapters.
  ///
  /// In en, this message translates to:
  /// **'No chapters'**
  String get playerNoChapters;

  /// No description provided for @playerTimestamp.
  ///
  /// In en, this message translates to:
  /// **'Timestamp'**
  String get playerTimestamp;

  /// No description provided for @playerAutoPlayDelay.
  ///
  /// In en, this message translates to:
  /// **'Next episode countdown'**
  String get playerAutoPlayDelay;

  /// No description provided for @playerWatchedAt.
  ///
  /// In en, this message translates to:
  /// **'Count as watched at'**
  String get playerWatchedAt;

  /// No description provided for @playerNextIn.
  ///
  /// In en, this message translates to:
  /// **'Next episode in {seconds}s'**
  String playerNextIn(int seconds);

  /// No description provided for @playerPlayNow.
  ///
  /// In en, this message translates to:
  /// **'Play now'**
  String get playerPlayNow;

  /// No description provided for @playerAutoSkipOn.
  ///
  /// In en, this message translates to:
  /// **'{name}: will skip automatically for this title'**
  String playerAutoSkipOn(String name);

  /// No description provided for @playerAutoSkipOff.
  ///
  /// In en, this message translates to:
  /// **'{name}: will not skip automatically for this title'**
  String playerAutoSkipOff(String name);

  /// No description provided for @playerAudioLanguage.
  ///
  /// In en, this message translates to:
  /// **'Preferred audio language'**
  String get playerAudioLanguage;

  /// No description provided for @playerLanguageOrderHint.
  ///
  /// In en, this message translates to:
  /// **'Separate languages with commas. The first one found is used.'**
  String get playerLanguageOrderHint;

  /// No description provided for @playerPip.
  ///
  /// In en, this message translates to:
  /// **'Picture in picture'**
  String get playerPip;

  /// No description provided for @playerPipRestore.
  ///
  /// In en, this message translates to:
  /// **'Back to the player'**
  String get playerPipRestore;

  /// No description provided for @playerAutoPip.
  ///
  /// In en, this message translates to:
  /// **'Picture in picture on leave'**
  String get playerAutoPip;

  /// No description provided for @playerAutoPipDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep playing in a small window when you leave the app'**
  String get playerAutoPipDesc;

  /// No description provided for @playerAutoPlaying.
  ///
  /// In en, this message translates to:
  /// **'Playing {title} next…'**
  String playerAutoPlaying(String title);

  /// No description provided for @playerShadersFailed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t install the shaders: {error}'**
  String playerShadersFailed(String error);

  /// No description provided for @playerChapter.
  ///
  /// In en, this message translates to:
  /// **'Chapter {number}'**
  String playerChapter(int number);

  /// No description provided for @playerPerTitle.
  ///
  /// In en, this message translates to:
  /// **'Only for this title'**
  String get playerPerTitle;

  /// No description provided for @playerPerTitleDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep these options for this title and leave your defaults alone'**
  String get playerPerTitleDesc;

  /// No description provided for @playerSwapGestures.
  ///
  /// In en, this message translates to:
  /// **'Swap swipe sides'**
  String get playerSwapGestures;

  /// No description provided for @playerSwapGesturesDesc.
  ///
  /// In en, this message translates to:
  /// **'Brightness on the left and volume on the right'**
  String get playerSwapGesturesDesc;

  /// No description provided for @playerHoldSpeed.
  ///
  /// In en, this message translates to:
  /// **'Hold speed'**
  String get playerHoldSpeed;

  /// No description provided for @playerAudioOutput.
  ///
  /// In en, this message translates to:
  /// **'Audio output'**
  String get playerAudioOutput;

  /// No description provided for @fontAppDefault.
  ///
  /// In en, this message translates to:
  /// **'App font'**
  String get fontAppDefault;

  /// No description provided for @fontImport.
  ///
  /// In en, this message translates to:
  /// **'Import font'**
  String get fontImport;

  /// No description provided for @fontSample.
  ///
  /// In en, this message translates to:
  /// **'The quick brown fox jumps over the lazy dog'**
  String get fontSample;

  /// No description provided for @playerSubtitleDelay.
  ///
  /// In en, this message translates to:
  /// **'Subtitle delay'**
  String get playerSubtitleDelay;

  /// No description provided for @playerAudioDelay.
  ///
  /// In en, this message translates to:
  /// **'Audio delay'**
  String get playerAudioDelay;

  /// No description provided for @playerDelayReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get playerDelayReset;

  /// No description provided for @playerOnlineSubtitles.
  ///
  /// In en, this message translates to:
  /// **'Online subtitles'**
  String get playerOnlineSubtitles;

  /// No description provided for @playerOnlineSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Title and episode'**
  String get playerOnlineSearchHint;

  /// No description provided for @playerOnlineNone.
  ///
  /// In en, this message translates to:
  /// **'No subtitles found'**
  String get playerOnlineNone;

  /// No description provided for @playerOnlineFailed.
  ///
  /// In en, this message translates to:
  /// **'Subtitle search failed: {error}'**
  String playerOnlineFailed(String error);

  /// No description provided for @playerOnlineDownloadFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not download this subtitle: {error}'**
  String playerOnlineDownloadFailed(String error);

  /// No description provided for @playerOnlineMatch.
  ///
  /// In en, this message translates to:
  /// **'Matches this file'**
  String get playerOnlineMatch;

  /// No description provided for @playerOnlineEpisode.
  ///
  /// In en, this message translates to:
  /// **'Episode match'**
  String get playerOnlineEpisode;

  /// No description provided for @playerOnlineDownloads.
  ///
  /// In en, this message translates to:
  /// **'{count} downloads'**
  String playerOnlineDownloads(int count);

  /// No description provided for @playerSeekPreview.
  ///
  /// In en, this message translates to:
  /// **'Seek preview'**
  String get playerSeekPreview;

  /// No description provided for @playerSeekPreviewDesc.
  ///
  /// In en, this message translates to:
  /// **'Show a small frame preview above the seek bar while scrubbing. Opens a second low resolution decoder, so it uses extra data on streams.'**
  String get playerSeekPreviewDesc;

  /// No description provided for @playerSettingsChip.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get playerSettingsChip;

  /// No description provided for @playerAudioDevice.
  ///
  /// In en, this message translates to:
  /// **'Audio device'**
  String get playerAudioDevice;

  /// No description provided for @settingsDownloads.
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get settingsDownloads;

  /// No description provided for @settingsDownloadsDesc.
  ///
  /// In en, this message translates to:
  /// **'Offline episodes, queue and offline mode'**
  String get settingsDownloadsDesc;

  /// No description provided for @downloadsTitle.
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get downloadsTitle;

  /// No description provided for @downloadsOpenDesc.
  ///
  /// In en, this message translates to:
  /// **'See the queue and everything saved on this device'**
  String get downloadsOpenDesc;

  /// No description provided for @downloadTitle.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get downloadTitle;

  /// No description provided for @downloadAlready.
  ///
  /// In en, this message translates to:
  /// **'Already downloaded or in the queue'**
  String get downloadAlready;

  /// No description provided for @downloadPickStream.
  ///
  /// In en, this message translates to:
  /// **'Download which stream?'**
  String get downloadPickStream;

  /// No description provided for @downloadPickSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Download which subtitle?'**
  String get downloadPickSubtitle;

  /// No description provided for @downloadPickAudio.
  ///
  /// In en, this message translates to:
  /// **'Download which audio track?'**
  String get downloadPickAudio;

  /// No description provided for @downloadNoAudio.
  ///
  /// In en, this message translates to:
  /// **'No extra audio'**
  String get downloadNoAudio;

  /// No description provided for @downloadAudio.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get downloadAudio;

  /// No description provided for @downloadNoSubtitle.
  ///
  /// In en, this message translates to:
  /// **'No subtitle'**
  String get downloadNoSubtitle;

  /// No description provided for @downloadHlsNeedsFfmpeg.
  ///
  /// In en, this message translates to:
  /// **'This stream is an HLS playlist. Downloading it needs the FFmpeg addon.'**
  String get downloadHlsNeedsFfmpeg;

  /// No description provided for @downloadSourceMissing.
  ///
  /// In en, this message translates to:
  /// **'The source for this episode is not installed'**
  String get downloadSourceMissing;

  /// No description provided for @downloadWaitingConnection.
  ///
  /// In en, this message translates to:
  /// **'Waiting for a connection'**
  String get downloadWaitingConnection;

  /// No description provided for @downloadSubtitles.
  ///
  /// In en, this message translates to:
  /// **'Subtitles'**
  String get downloadSubtitles;

  /// No description provided for @downloadDownloaded.
  ///
  /// In en, this message translates to:
  /// **'Downloaded'**
  String get downloadDownloaded;

  /// No description provided for @downloadOffline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get downloadOffline;

  /// No description provided for @downloadDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete download'**
  String get downloadDelete;

  /// No description provided for @downloadCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get downloadCancel;

  /// No description provided for @downloadPause.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get downloadPause;

  /// No description provided for @downloadPaused.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get downloadPaused;

  /// No description provided for @downloadResume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get downloadResume;

  /// No description provided for @downloadPauseAll.
  ///
  /// In en, this message translates to:
  /// **'Pause all'**
  String get downloadPauseAll;

  /// No description provided for @downloadResumeAll.
  ///
  /// In en, this message translates to:
  /// **'Resume all'**
  String get downloadResumeAll;

  /// No description provided for @downloadQueuedState.
  ///
  /// In en, this message translates to:
  /// **'Waiting in the queue'**
  String get downloadQueuedState;

  /// No description provided for @downloadResolving.
  ///
  /// In en, this message translates to:
  /// **'Getting the stream…'**
  String get downloadResolving;

  /// No description provided for @downloadUsedFallback.
  ///
  /// In en, this message translates to:
  /// **'No matching stream, used the first one'**
  String get downloadUsedFallback;

  /// No description provided for @downloadTabQueue.
  ///
  /// In en, this message translates to:
  /// **'Queue'**
  String get downloadTabQueue;

  /// No description provided for @downloadTabDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get downloadTabDone;

  /// No description provided for @downloadTabFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get downloadTabFailed;

  /// No description provided for @downloadEmptyQueue.
  ///
  /// In en, this message translates to:
  /// **'Nothing is downloading'**
  String get downloadEmptyQueue;

  /// No description provided for @downloadEmptyDone.
  ///
  /// In en, this message translates to:
  /// **'Nothing downloaded yet'**
  String get downloadEmptyDone;

  /// No description provided for @downloadEmptyFailed.
  ///
  /// In en, this message translates to:
  /// **'No failed downloads'**
  String get downloadEmptyFailed;

  /// No description provided for @downloadNext.
  ///
  /// In en, this message translates to:
  /// **'Next episode'**
  String get downloadNext;

  /// No description provided for @downloadNextN.
  ///
  /// In en, this message translates to:
  /// **'Next {count} episodes'**
  String downloadNextN(int count);

  /// No description provided for @downloadUnwatched.
  ///
  /// In en, this message translates to:
  /// **'All unwatched ({count})'**
  String downloadUnwatched(int count);

  /// No description provided for @downloadRange.
  ///
  /// In en, this message translates to:
  /// **'This range ({count})'**
  String downloadRange(int count);

  /// No description provided for @downloadAll.
  ///
  /// In en, this message translates to:
  /// **'All episodes ({count})'**
  String downloadAll(int count);

  /// No description provided for @downloadQueued.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 episode queued} other{{count} episodes queued}}'**
  String downloadQueued(int count);

  /// No description provided for @downloadFinished.
  ///
  /// In en, this message translates to:
  /// **'{name} downloaded'**
  String downloadFinished(String name);

  /// No description provided for @downloadFailedBody.
  ///
  /// In en, this message translates to:
  /// **'{name} failed to download'**
  String downloadFailedBody(String name);

  /// No description provided for @downloadStorage.
  ///
  /// In en, this message translates to:
  /// **'{size} used by downloads'**
  String downloadStorage(String size);

  /// No description provided for @downloadQueueHeader.
  ///
  /// In en, this message translates to:
  /// **'Queue'**
  String get downloadQueueHeader;

  /// No description provided for @downloadParallel.
  ///
  /// In en, this message translates to:
  /// **'Downloads at once'**
  String get downloadParallel;

  /// No description provided for @downloadParallelDesc.
  ///
  /// In en, this message translates to:
  /// **'Run one download at a time or several together'**
  String get downloadParallelDesc;

  /// No description provided for @downloadOneByOne.
  ///
  /// In en, this message translates to:
  /// **'One by one'**
  String get downloadOneByOne;

  /// No description provided for @downloadNotifications.
  ///
  /// In en, this message translates to:
  /// **'Download notifications'**
  String get downloadNotifications;

  /// No description provided for @downloadNotificationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Live progress where the system supports it, otherwise a note when a download finishes'**
  String get downloadNotificationsDesc;

  /// No description provided for @downloadNotifyLive.
  ///
  /// In en, this message translates to:
  /// **'Live'**
  String get downloadNotifyLive;

  /// No description provided for @downloadNotifyDone.
  ///
  /// In en, this message translates to:
  /// **'When done'**
  String get downloadNotifyDone;

  /// No description provided for @downloadNotifyOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get downloadNotifyOff;

  /// No description provided for @downloadInfoFile.
  ///
  /// In en, this message translates to:
  /// **'Write an info file next to each download'**
  String get downloadInfoFile;

  /// No description provided for @downloadInfoFileDesc.
  ///
  /// In en, this message translates to:
  /// **'Saves the stream, quality, subtitle and skip times as a small .json file'**
  String get downloadInfoFileDesc;

  /// No description provided for @offlineHeader.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get offlineHeader;

  /// No description provided for @offlineModeDesc.
  ///
  /// In en, this message translates to:
  /// **'Auto goes offline only when the app starts without a connection. Always stays offline until you change it.'**
  String get offlineModeDesc;

  /// No description provided for @offlineModeOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get offlineModeOff;

  /// No description provided for @offlineModeAlways.
  ///
  /// In en, this message translates to:
  /// **'Always'**
  String get offlineModeAlways;

  /// No description provided for @offlineModeOn.
  ///
  /// In en, this message translates to:
  /// **'Offline mode is on. Changes are saved here and sent when you are back online.'**
  String get offlineModeOn;

  /// No description provided for @offlineLost.
  ///
  /// In en, this message translates to:
  /// **'You\'re offline. Changes are saved on this device'**
  String get offlineLost;

  /// No description provided for @offlineBack.
  ///
  /// In en, this message translates to:
  /// **'Back online. Syncing your changes'**
  String get offlineBack;

  /// No description provided for @offlineSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved on this device, it will sync when you are online'**
  String get offlineSaved;

  /// No description provided for @offlineSynced.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 change synced} other{{count} changes synced}}'**
  String offlineSynced(int count);

  /// No description provided for @offlinePending.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 change waiting to sync} other{{count} changes waiting to sync}}'**
  String offlinePending(int count);

  /// No description provided for @offlinePendingTitle.
  ///
  /// In en, this message translates to:
  /// **'Changes waiting to sync'**
  String get offlinePendingTitle;

  /// No description provided for @offlinePendingNone.
  ///
  /// In en, this message translates to:
  /// **'Nothing waiting'**
  String get offlinePendingNone;

  /// No description provided for @offlineSyncNow.
  ///
  /// In en, this message translates to:
  /// **'Sync now'**
  String get offlineSyncNow;

  /// No description provided for @offlineDiscard.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get offlineDiscard;

  /// No description provided for @downloadNotOffline.
  ///
  /// In en, this message translates to:
  /// **'This episode is not downloaded, so it is not available offline'**
  String get downloadNotOffline;

  /// No description provided for @offlineModeChip.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get offlineModeChip;

  /// No description provided for @downloadNextChapter.
  ///
  /// In en, this message translates to:
  /// **'Next chapter'**
  String get downloadNextChapter;

  /// No description provided for @downloadNextChapters.
  ///
  /// In en, this message translates to:
  /// **'Next {count} chapters'**
  String downloadNextChapters(int count);

  /// No description provided for @downloadUnread.
  ///
  /// In en, this message translates to:
  /// **'All unread ({count})'**
  String downloadUnread(int count);

  /// No description provided for @downloadAllChapters.
  ///
  /// In en, this message translates to:
  /// **'All chapters ({count})'**
  String downloadAllChapters(int count);

  /// No description provided for @downloadPagesProgress.
  ///
  /// In en, this message translates to:
  /// **'{done} / {total} pages'**
  String downloadPagesProgress(int done, int total);

  /// No description provided for @downloadPagesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} pages'**
  String downloadPagesCount(int count);

  /// No description provided for @downloadFfmpegTitle.
  ///
  /// In en, this message translates to:
  /// **'FFmpeg addon needed'**
  String get downloadFfmpegTitle;

  /// No description provided for @downloadFfmpegBody.
  ///
  /// In en, this message translates to:
  /// **'This stream is an HLS playlist. The FFmpeg addon joins its pieces into one mp4 file. Without it the pieces are kept in an episode folder and play from there.'**
  String get downloadFfmpegBody;

  /// No description provided for @downloadFfmpegInstall.
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get downloadFfmpegInstall;

  /// No description provided for @downloadFfmpegInstalling.
  ///
  /// In en, this message translates to:
  /// **'Installing FFmpeg, this can take a while…'**
  String get downloadFfmpegInstalling;

  /// No description provided for @downloadFinishing.
  ///
  /// In en, this message translates to:
  /// **'Joining the pieces into one file…'**
  String get downloadFinishing;

  /// No description provided for @downloadSegmentsProgress.
  ///
  /// In en, this message translates to:
  /// **'{done} / {total} parts'**
  String downloadSegmentsProgress(int done, int total);

  /// No description provided for @downloadTorrentNoFile.
  ///
  /// In en, this message translates to:
  /// **'The torrent has no video file to download'**
  String get downloadTorrentNoFile;

  /// No description provided for @downloadServiceText.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Downloading 1 item} other{Downloading {count} items}}'**
  String downloadServiceText(int count);

  /// No description provided for @downloadAutoDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete watched downloads'**
  String get downloadAutoDelete;

  /// No description provided for @downloadAutoDeleteDesc.
  ///
  /// In en, this message translates to:
  /// **'Removes a download once your progress reaches that episode or chapter'**
  String get downloadAutoDeleteDesc;

  /// No description provided for @downloadConnections.
  ///
  /// In en, this message translates to:
  /// **'Connections per download'**
  String get downloadConnections;

  /// No description provided for @downloadConnectionsDesc.
  ///
  /// In en, this message translates to:
  /// **'Splits a big file into parts fetched at the same time. Some servers limit this.'**
  String get downloadConnectionsDesc;

  /// No description provided for @downloadPlayChoice.
  ///
  /// In en, this message translates to:
  /// **'Play from'**
  String get downloadPlayChoice;

  /// No description provided for @downloadPlayLocalDesc.
  ///
  /// In en, this message translates to:
  /// **'The file saved on this device'**
  String get downloadPlayLocalDesc;

  /// No description provided for @downloadPlayStream.
  ///
  /// In en, this message translates to:
  /// **'Stream online'**
  String get downloadPlayStream;

  /// No description provided for @downloadPlayStreamDesc.
  ///
  /// In en, this message translates to:
  /// **'Load the episode from the source'**
  String get downloadPlayStreamDesc;

  /// No description provided for @offlineFeedTitle.
  ///
  /// In en, this message translates to:
  /// **'Downloaded on this device'**
  String get offlineFeedTitle;

  /// No description provided for @offlineFeedEmpty.
  ///
  /// In en, this message translates to:
  /// **'Download something while you are online and it shows up here'**
  String get offlineFeedEmpty;

  /// No description provided for @offlineEnabled.
  ///
  /// In en, this message translates to:
  /// **'Offline mode is on'**
  String get offlineEnabled;

  /// No description provided for @offlineDisabled.
  ///
  /// In en, this message translates to:
  /// **'Offline mode is off'**
  String get offlineDisabled;

  /// No description provided for @downloadReadChoice.
  ///
  /// In en, this message translates to:
  /// **'Read from'**
  String get downloadReadChoice;

  /// No description provided for @downloadReadLocalDesc.
  ///
  /// In en, this message translates to:
  /// **'The pages saved on this device'**
  String get downloadReadLocalDesc;

  /// No description provided for @downloadReadOnline.
  ///
  /// In en, this message translates to:
  /// **'Read online'**
  String get downloadReadOnline;

  /// No description provided for @downloadReadOnlineDesc.
  ///
  /// In en, this message translates to:
  /// **'Load the chapter from the source'**
  String get downloadReadOnlineDesc;

  /// No description provided for @downloadDeleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete {name} from this device?'**
  String downloadDeleteConfirm(String name);

  /// No description provided for @downloadCancelConfirm.
  ///
  /// In en, this message translates to:
  /// **'Cancel the download of {name}? What was already downloaded is deleted.'**
  String downloadCancelConfirm(String name);

  /// No description provided for @downloadFfmpegFolder.
  ///
  /// In en, this message translates to:
  /// **'Keep as folder'**
  String get downloadFfmpegFolder;

  /// No description provided for @offlineDiscardConfirm.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Throw away the change that was never sent? This can\'t be undone.} other{Throw away {count} changes that were never sent? This can\'t be undone.}}'**
  String offlineDiscardConfirm(int count);

  /// No description provided for @downloadWaitingWifi.
  ///
  /// In en, this message translates to:
  /// **'Waiting for Wi-Fi'**
  String get downloadWaitingWifi;

  /// No description provided for @downloadWaitingMetered.
  ///
  /// In en, this message translates to:
  /// **'Paused on a metered connection'**
  String get downloadWaitingMetered;

  /// No description provided for @downloadWifiOnly.
  ///
  /// In en, this message translates to:
  /// **'Wi-Fi only'**
  String get downloadWifiOnly;

  /// No description provided for @downloadWifiOnlyDesc.
  ///
  /// In en, this message translates to:
  /// **'Downloads wait while you are on mobile data'**
  String get downloadWifiOnlyDesc;

  /// No description provided for @downloadMetered.
  ///
  /// In en, this message translates to:
  /// **'Pause on metered connections'**
  String get downloadMetered;

  /// No description provided for @downloadMeteredDesc.
  ///
  /// In en, this message translates to:
  /// **'Also waits on Wi-Fi that your device marks as metered'**
  String get downloadMeteredDesc;

  /// No description provided for @downloadSpeedLimit.
  ///
  /// In en, this message translates to:
  /// **'Speed limit'**
  String get downloadSpeedLimit;

  /// No description provided for @downloadSpeedLimitDesc.
  ///
  /// In en, this message translates to:
  /// **'Caps the total download speed'**
  String get downloadSpeedLimitDesc;

  /// No description provided for @downloadUnlimited.
  ///
  /// In en, this message translates to:
  /// **'Unlimited'**
  String get downloadUnlimited;

  /// No description provided for @downloadMoveToTop.
  ///
  /// In en, this message translates to:
  /// **'Move to top'**
  String get downloadMoveToTop;

  /// No description provided for @downloadSwarm.
  ///
  /// In en, this message translates to:
  /// **'{seeds} seeds · {peers} peers'**
  String downloadSwarm(int seeds, int peers);

  /// No description provided for @downloadTorrentFile.
  ///
  /// In en, this message translates to:
  /// **'Which file?'**
  String get downloadTorrentFile;

  /// No description provided for @downloadTorrentAuto.
  ///
  /// In en, this message translates to:
  /// **'Match the episode automatically'**
  String get downloadTorrentAuto;

  /// No description provided for @downloadTorrentLoading.
  ///
  /// In en, this message translates to:
  /// **'Reading the torrent…'**
  String get downloadTorrentLoading;

  /// No description provided for @watchAutoSource.
  ///
  /// In en, this message translates to:
  /// **'Switch to the next source automatically'**
  String get watchAutoSource;

  /// No description provided for @watchAutoSourceDesc.
  ///
  /// In en, this message translates to:
  /// **'If the source can\'t find the title or fails to load, try the next installed source'**
  String get watchAutoSourceDesc;

  /// No description provided for @extensionTest.
  ///
  /// In en, this message translates to:
  /// **'Test extensions'**
  String get extensionTest;

  /// No description provided for @extensionTestCopy.
  ///
  /// In en, this message translates to:
  /// **'Copy the failures and their logs'**
  String get extensionTestCopy;

  /// No description provided for @extensionTestQuery.
  ///
  /// In en, this message translates to:
  /// **'Search term'**
  String get extensionTestQuery;

  /// No description provided for @extensionTestRun.
  ///
  /// In en, this message translates to:
  /// **'Run'**
  String get extensionTestRun;

  /// No description provided for @extensionTestStop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get extensionTestStop;

  /// No description provided for @extensionTestNone.
  ///
  /// In en, this message translates to:
  /// **'No installed extensions of this type'**
  String get extensionTestNone;

  /// No description provided for @extensionTestNotRun.
  ///
  /// In en, this message translates to:
  /// **'Not tested yet'**
  String get extensionTestNotRun;

  /// No description provided for @extensionTestSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get extensionTestSearch;

  /// No description provided for @extensionTestDetail.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get extensionTestDetail;

  /// No description provided for @extensionTestUnits.
  ///
  /// In en, this message translates to:
  /// **'Episodes / chapters'**
  String get extensionTestUnits;

  /// No description provided for @extensionTestLinks.
  ///
  /// In en, this message translates to:
  /// **'Streams / pages'**
  String get extensionTestLinks;

  /// No description provided for @extensionTestFailedAt.
  ///
  /// In en, this message translates to:
  /// **'Failed at {step}'**
  String extensionTestFailedAt(String step);

  /// No description provided for @extensionTestSummary.
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} tested · {passed} passed · {failed} failed'**
  String extensionTestSummary(int done, int total, int passed, int failed);

  /// No description provided for @extensionTestCopyLogs.
  ///
  /// In en, this message translates to:
  /// **'Copy everything with the full logs'**
  String get extensionTestCopyLogs;

  /// No description provided for @onboardingFeaturesTitle.
  ///
  /// In en, this message translates to:
  /// **'All of it in one place'**
  String get onboardingFeaturesTitle;

  /// No description provided for @onboardingFeaturesBody.
  ///
  /// In en, this message translates to:
  /// **'Everything you track, watch and read, without juggling apps.'**
  String get onboardingFeaturesBody;

  /// No description provided for @onboardingFeatureTrack.
  ///
  /// In en, this message translates to:
  /// **'Track everything'**
  String get onboardingFeatureTrack;

  /// No description provided for @onboardingFeatureTrackDesc.
  ///
  /// In en, this message translates to:
  /// **'Lists, progress and scores on AniList, MyAnimeList, Simkl, Kitsu and MangaBaka.'**
  String get onboardingFeatureTrackDesc;

  /// No description provided for @onboardingFeatureWatch.
  ///
  /// In en, this message translates to:
  /// **'Watch and read'**
  String get onboardingFeatureWatch;

  /// No description provided for @onboardingFeatureWatchDesc.
  ///
  /// In en, this message translates to:
  /// **'Install extensions and stream anime or read manga and novels right in the app.'**
  String get onboardingFeatureWatchDesc;

  /// No description provided for @onboardingFeatureOffline.
  ///
  /// In en, this message translates to:
  /// **'Take it offline'**
  String get onboardingFeatureOffline;

  /// No description provided for @onboardingFeatureOfflineDesc.
  ///
  /// In en, this message translates to:
  /// **'Download episodes and chapters, and keep going without a connection.'**
  String get onboardingFeatureOfflineDesc;

  /// No description provided for @onboardingFeatureSync.
  ///
  /// In en, this message translates to:
  /// **'Keep lists in sync'**
  String get onboardingFeatureSync;

  /// No description provided for @onboardingFeatureSyncDesc.
  ///
  /// In en, this message translates to:
  /// **'Mirror your list across services, or let whichever is ahead win.'**
  String get onboardingFeatureSyncDesc;

  /// No description provided for @onboardingThemeShape.
  ///
  /// In en, this message translates to:
  /// **'Colours'**
  String get onboardingThemeShape;

  /// No description provided for @onboardingServices.
  ///
  /// In en, this message translates to:
  /// **'Works with'**
  String get onboardingServices;
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
